---@diagnostic disable: undefined-global

-- Check the length of the text in the game and adjust it so that the descriptions do not extend the card beyond the screen.
-- If you can't shorten it, you can simply hide the least useful line by adding "--" before that line.
-- Extended descriptions have a lower priority than the main description, imho.

-- If you added/changed something, then you need to duplicate/change the same entry in the list below.
-- For example, you change "ED_CritChncBst_rgb_ru" to "ED_CritChncBst_rgb_ru_urlang", then at the bottom you need to find (CTRL+F) the "ED_CritChncBst_rgb_ru" entries and also rename them from "ED_CritChncBst_rgb_ru = ED_CritChncBst_rgb_ru," to "ED_CritChncBst_rgb_ru_urlang = ED_CritChncBst_rgb_ru_urlang,".
-- If you add a new entry (ex. MyEntry_rgb_ru), just duplicate it in the list below (MyEntry_rgb_ru = MyEntry_rgb_ru,).

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

local ppp___ppp = "+++-------------------------------------------------+++"
local stacks_add_w_health_buff_cur = "- Складывается с усилениями здоровья от редкостей."
local stacks_add_w_sm_mel_dmg_nodes = "- Складывается с другими малыми узлами повышения урона  ближнего боя и другими связанными с ними усилениями урона."
local stacks_mult_power_lvl_weap_bless = "- Перемножается с усилениями уровня силы от благословений оружия."
local also_appl_2_health_wl_downed = "- Также применяется к здоровью, если вы выведены из строя."
local stacks_add_w_sm_tghnss_nodes = "- Складывается с другими малыми узлами повышения стойкости."
local cur_max_tghnss_mult_by_tghnss_pc = "- Текущая максимальная стойкость умножается на процентные усиления стойкости от редкостей."

--[+ ++ENHANCED DESCRIPTIONS - РАСШИРЕННЫЕ ОПИСАНИЯ++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ +NODES - УЗЛЫ+ +]--
	--[+ Critical Chance Boost - Повышение шанса Критического удара +]--
	local ED_CritChncBst_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Работает для всех атак, которые могут наносить критические удары.",
		"- Складывается с другими источниками шанса критического удара.",
	}, "\n"), enhdesc_col) -- Псайкер, Ветеран

	--[+ Health Boost Low +]--
	local ED_HeathBst_L_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		"-- ОГРИН: Например, одна редкость с +21% к здоровью и с повышением характеристики +5% к здоровью, а также этот узел с +5% к здоровью увеличивают максимальное здоровье Огрина с 300 до 393 единиц здоровья (300x(0,21+0,05+0,05)=93).",
		"-- ВЕТЕРАН: Например, одна редкость с +21% к здоровью и с повышением характеристики +5% к здоровью, а также этот узел с +5% к здоровью увеличивают максимальное здоровье Ветерана со 150 единиц до 196,5 единиц здоровья (150x(0,21+0,05+0,05)=46,5), HUD округляет в большую сторону: 197.",
	}, "\n"), enhdesc_col) -- Ветеран

	--[+ Health Boost Medium +]--
	local ED_HeathBst_M_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		"-- ПСАЙКЕР: Например, одна редкость с +21% к здоровью и с повышением характеристики +10% к здоровью, а также этот узел с +5% к здоровью увеличивают максимальное здоровье Псайкера со 150 до 204 единиц здоровья (150x(0,21+0,05+0,1)=54).",
		"-- ОГРИН: Например, одна редкость с +21% к здоровью и с повышением характеристики +10% к здоровью, а также этот узел с +5% к здоровью увеличивают максимальное здоровье Огрина с 300 до 408 здоровья (300x(0,21+0,05+0,1)=108).",
		"-- ИЗУВЕР: Например, одна редкость с +21% к здоровью и с повышением характеристики +10% к здоровью, а также этот узел с +5% к здоровью увеличивают максимальное здоровье Изувера с 200 до 272 единиц здоровья (200x(0,21+0,05+0,1)=72).",
	}, "\n"), enhdesc_col) -- Псайкер, Огрин, Изувер

	--[+ Heavy Melee Damage Boost Low + Medium +]--
	local ED_HMeleeDmgBst_LM_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
		"- Это также относится к специальным атакам ближнего боя дробовиков-потрошителей, гренадёрских перчаток (ближний бой), гранатомётов, тяжёлых стабберов и дробовиков.",
	}, "\n"), enhdesc_col) -- Огрин

	--[+ Inspiring Presence +]--
	local ED_InspiringP_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Складывается с аурой огрина «Держись рядом!» и с повышением скорости восстановления стойкости от редкостей.",
		"- Увеличивает базовое количество Восстанавливаемой Стойкости в Сплочённости(ВСС) в секунду за каждого союзника(Союзн) в сплочённости:",
		"_______________________________",
		"Союзн: |ВСС:               |После 5 секунд:",
		"0            |0.00 -> 0.00  |0.00",
		"1             |3.75 -> 4.13    |20.63 (HUD: 21)",
		"2            |5.63 -> 6.19    |30.94 (HUD: 31)",
		"3            |7.50 -> 8.25    |41.25 (HUD: 42)",
		"_______________________________",
	}, "\n"), enhdesc_col) -- Ветеран

	--[+ Melee Damage Boost Low + Medium +]--
	local ED_MeleeDmgBst_L_M_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
		"- Применяется к специальным атакам ближнего боя дальнобойного оружия.",
	}, "\n"), enhdesc_col) -- Огрин, Ветеран, Изувер

	--[+ Movement Speed Boost +]--
	local ED_MoveSpdBst_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- ПСАЙКЕР: суммируется с соответствующими усилениями от: «Прерывания судьбы», «Ретивостью», «Варп-скоростью» и благословениями оружия, такими как «Ускорься».",
		"- ИЗУВЕР: суммируется с другими малыми узлами повышения скорости передвижения и баффами скорости передвижения от талантов «Покров», «Твой гнев будет быстр» и благословениями оружия, такими как «Ускорься».",
		"-- Перемножается с усилением скорости бега таланта «Быстрая уверенность».",
		"- ВЕТЕРАН: суммируется с усилениями скорости передвижения от способностей «Проникновение», «Никого не оставлять позади», аурой «Приблизиться и убить» и благословениями оружия, такими как «Ускорься».",
	}, "\n"), enhdesc_col) -- Псайкер, Ветеран, Изувер

	--[+ Peril Resistance +]--
	local ED_PerilRes_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Перемножается с другими малыми узлами и соответствующими эффектами снижения стоимости опасности от талантов «Треск костей», «Успокаивающее извержение», «Эмпирическая решимость», «Внутреннее спокойствие», «Кинетический резонанс», «Якорь реальности» и с боевыми стимуляторами.",
	}, "\n"), enhdesc_col) -- Псайкер,

	--[+ Ranged Damage Boost +]--
	local ED_RangDmgBst_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Складывается с другими малыми узлами повышения урона дальнего боя и другими связанными с ними усилениями урона.",
		stacks_mult_power_lvl_weap_bless,
	}, "\n"), enhdesc_col) -- Псайкер, Огрин, Ветеран

	--[+ Reload Boost +]--
	local ED_ReloadBst_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- ОГРИН: суммируется с усилениями скорости перезарядки от талантов «Задающий ритм», «Беспощадный обстрел в упор», характеристиками и благословениями оружия, а также с стимулятором стремительности.",
		"- ВЕТЕРАН: суммируется с усилениями скорости перезарядки от талантов «Беглый огонь», «Концентрация снайпера», «Тактическая перезарядка», «Адепт залпа», характеристиками и благословениями оружия, а также с стимулятором стремительности.",
		"-- Это также увеличивает скорость зарядки специальных патронов в боевые дробовики.",
	}, "\n"), enhdesc_col) -- Огрин, Ветеран

	--[+ Rending Boost +]--
	local ED_RendingBst_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Применяется ко всем атакам, увеличивающим урон по типам брони: панцирная, противоосколочная, маньяк, несгибаемый (включая урон от взрывов и DoT-эффектов, таких как кровотечение и горение, наносимых огрином).",
		"- Влияет только на собственный урон огрина.",
		"- Складывается с другими эффектами пробивания и хрупкости брони.",
	}, "\n"), enhdesc_col) -- Огрин,

	--[+ Stamina Boost +]--
	local ED_StaminaBst_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Складывается со значениями выносливости от редкостей, характеристик и шаблонов выносливости оружия.",
		"- Каждый сегмент шкалы выносливости в интерфейсе игрока представляет 1 единицу выносливости.",
	}, "\n"), enhdesc_col) -- Ветеран, Изувер

	--[+ Suppression Boost +]--
	local ED_SuppressionBst_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- ОГРИН: суммируется с усилением подавления врагов от благословения оружия «Непрерывный обстрел».",
		"- ИЗУВЕР: суммируется с усилением подавления врагов от благословения оружия «Пороховой ожог».",
		"- ВЕТЕРАН: суммируется с эффектами подавления врагов от талантов «Соревновательный инстинкт», «Не давай им поднять головы!» и благословения оружия «Пороховой ожог».",
	}, "\n"), enhdesc_col) -- Огрин, Ветеран, Изувер

	--[+ Stamina Regeneration Boost +]--
	local ED_StamRegenBst_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Уменьшает базовую задержку восстановления выносливости с 1 до 0,75 секунды.",
		"- Это время задержки перед началом восстановления выносливости после её расходования.",
		"- Складывается с другим небольшим узлом снижения задержки восстановления выносливости.",
	}, "\n"), enhdesc_col) -- Ветеран

	--[+ Toughness Boost Low +]--
	local ED_TghnsBst_L_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		"-- ПСАЙКЕР: Например, при максимальной стойкости 105 (базовая стойкость псайкера 60 и три узла +15 стойкости) с одной редкостью +17% к стойкости и с повышением характеристики +5% к стойкости, максимальная стойкость псайкера 105 увеличивается до 128,1 стойкости (105x(0,17+0,05)=23,1), HUD округляет в большую сторону: 129.",
		"-- ИЗУВЕР: Например, при максимальной стойкости 85 (базовая стойкость изувера 70 и один узел +15 стойкости) с одной редкостью +17% к стойкости с повышением характеристики +5% к стойкости, максимальная стойкость изувера 85 увеличивается до 103,7 стойкости (85x(0,17+0,05)=18,7), HUD округляет в большую сторону: 104.",
		"- Максимальная стойкость персонажа — это базовое значение, которое используется при расчете восполняемой стойкости большинства талантов и благословений.",
	}, "\n"), enhdesc_col) -- Псайкер, Огрин, Ветеран, Изувер

	--[+ Toughness Boost Medium +]--
	local ED_TghnsBst_M_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		"-- ОГРИН: Например, при максимальной стойкости 75 (базовая стойкость огрина 50 и один узел +25 стойкости) с одной редкостью +17% к стойкости с повышением характеристики +5% к стойкости, максимальная стойкость огрина 75 увеличивается до 90,75 стойкости (75x(0,17+0,05)=15,75), HUD округляет в большую сторону: 91.",
		"-- ВЕТЕРАН: Например, при максимальной стойкости 150 (базовая стойкость ветерана 100 и два узла +25 стойкости) с одной редкостью +15% к стойкости с повышением характеристики +4% к стойкости, максимальная стойкость Ветерана 150 увеличивается до 178,5 стойкости (150x(0,15+0,04)=28,5), HUD округляет в большую сторону: 179.",
		"- Максимальная стойкость персонажа — это базовое значение, которое используется при расчете восполняемой стойкости большинства талантов и благословений.",
	}, "\n"), enhdesc_col) -- Огрин, Ветеран

	--[+ Toughness Damage Reduction Low + Medium +]--
	local ED_TghnsDmgRed_LM_rgb_ru = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Складывается с другими малыми узлами снижения урона стойкости.",
		"- Их сумма перемножается с другими усилениями снижения урона.",
		"-- ИЗУВЕР: суммируется с талантом «Я не паду».",
	}, "\n"), enhdesc_col) -- Псайкер, Огрин, Ветеран, Изувер

-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_TghnsBst_L_rgb_ru = ED_TghnsBst_L_rgb_ru,
	ED_TghnsBst_M_rgb_ru = ED_TghnsBst_M_rgb_ru,
	ED_TghnsDmgRed_LM_rgb_ru = ED_TghnsDmgRed_LM_rgb_ru,
	ED_PerilRes_rgb_ru = ED_PerilRes_rgb_ru,
	ED_InspiringP_rgb_ru = ED_InspiringP_rgb_ru,
	ED_RangDmgBst_rgb_ru = ED_RangDmgBst_rgb_ru,
	ED_HeathBst_L_rgb_ru = ED_HeathBst_L_rgb_ru,
	ED_HeathBst_M_rgb_ru = ED_HeathBst_M_rgb_ru,
	ED_CritChncBst_rgb_ru = ED_CritChncBst_rgb_ru,
	ED_MoveSpdBst_rgb_ru = ED_MoveSpdBst_rgb_ru,
	ED_MeleeDmgBst_L_M_rgb_ru = ED_MeleeDmgBst_L_M_rgb_ru,
	ED_StaminaBst_rgb_ru = ED_StaminaBst_rgb_ru,
	ED_SuppressionBst_rgb_ru = ED_SuppressionBst_rgb_ru,
	ED_ReloadBst_rgb_ru = ED_ReloadBst_rgb_ru,
	ED_StamRegenBst_rgb_ru = ED_StamRegenBst_rgb_ru,
	ED_RendingBst_rgb_ru = ED_RendingBst_rgb_ru,
	ED_HMeleeDmgBst_LM_rgb_ru = ED_HMeleeDmgBst_LM_rgb_ru,
}