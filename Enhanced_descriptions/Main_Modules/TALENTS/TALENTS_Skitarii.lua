---@diagnostic disable: undefined-global
-- SKITARII TALENT MODULE -- МОДУЛЬ ТАЛАНТОВ СКИТАРИЯ

local mod = get_mod("Enhanced_descriptions")

-- Using cached utilities - Используем кэшированные утилиты
local Utils = mod.get_utils()

-- Importing all necessary functions and constants - Импорт всех нужных функций и констант
local create_template = Utils.create_template
local loc_text = Utils.loc_text
local CKWord = Utils.CKWord
local CNumb = Utils.CNumb
local CPhrs = Utils.CPhrs
local CNote = Utils.CNote
local Dot_nc = Utils.DOT_NC or "•"
local Dot_red = Utils.DOT_RED or "•"
local Dot_green = Utils.DOT_GREEN or "•"

-- Localization of Skitarii talents -- Локализации талантов скитария
local skitarii_localizations = {
--[+ ++SKITARII - СКИТАРИЙ++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ - БЛИЦ - 0 - Servo-Skull +]--	08.08.2026
	["loc_talent_cryptic_servo_skull_base_burn_desc"] = { -- +colors
		en = "You are accompanied by a "..CKWord("Servo-Skull", "Servoskull_rgb").." that you can order by double-tapping your Tag input. You can order it to Shoot at nearby Enemies. You can also order it to complete a data interrogation.\n"
			.."\n"
			.."Activating the Blitz empowers your "..CKWord("Servo-Skull", "Servoskull_rgb").." and it gains for {duration:%s} seconds:\n"
			..Dot_green.." {attack_speed:%s} Fire Rate,\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.\n"
			.."\n"
			.."Its Attacks apply:\n"
			..Dot_green.." {burn_stacks:%s} Stack of "..CKWord("Burn", "Burn_rgb")..".\n"
			..Dot_nc.." Up to {max_stacks:%s} Stacks.\n"
			.."\n"
			.."Burning enemies receive for {debuff_duration:%s} seconds:\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..CPhrs("Can_be_refr"),
		ru = "Вас сопровождает "..CKWord("сервочереп", "servocherep_rgb_ru")..", которому вы можете отдавать приказы двойным нажатием кнопки метки. Вы можете приказать ему стрелять в ближайших врагов или отправить расшифровывать данные.\n"
			.."\n"
			.."Активация блица усиливает ваш "..CKWord("сервочереп", "servocherep_rgb_ru")..", и он получает на {duration:%s} секунд:\n"
			..Dot_green.." {attack_speed:%s} к скорострельности,\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			.."Его атаки накладывают:\n"
			..Dot_green.." {burn_stacks:%s} заряд "..CKWord("горения", "gorenia_rgb_ru")..".\n"
			..Dot_nc.." Вплоть до {max_stacks:%s} зарядов.\n"
			.."\n"
			.."Горящие враги получают в течение {debuff_duration:%s} секунд:\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("урона", "urona_rgb_ru")..".\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = "你有一個隨行的"..CKWord("伺服頭骨", "Servoskull_rgb_tw").."；連按兩次標記鍵即可下令。你可以命令它射擊附近敵人，也可以命令它完成資料審訊。\n"
			.."\n"
			.."啟用閃擊會強化你的"..CKWord("伺服頭骨", "Servoskull_rgb_tw").."，使其在 {duration:%s} 秒內獲得：\n"
			..Dot_green.." {attack_speed:%s} 射速，\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 冷卻時間 {cooldown:%s} 秒。\n"
			.."\n"
			.."它的攻擊會施加：\n"
			..Dot_green.." {burn_stacks:%s} 層"..CKWord("燃燒", "Burn_rgb_tw").."。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			.."\n"
			.."燃燒中的敵人會在 {debuff_duration:%s} 秒內：\n"
			..Dot_green.." 受到的"..CKWord("傷害", "Damage_rgb_tw").."增加 {damage_taken:%s}。\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = "你伴有一个"..CKWord("伺服颅骨", "Servoskull_rgb_zh_cn").."，双击标记键可以命令它。你可以命令它射击附近的敌人，也可以命令它完成数据审讯。\n"
			.."\n"
			.."激活闪击技能会增强你的"..CKWord("伺服颅骨", "Servoskull_rgb_zh_cn").."，它在{duration:%s}秒内获得：\n"
			..Dot_green.." {attack_speed:%s} 射速，\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 冷却时间 {cooldown:%s} 秒。\n"
			.."\n"
			.."它的攻击施加：\n"
			..Dot_green.." {burn_stacks:%s} 层"..CKWord("燃烧", "Burn_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 层。\n"
			.."\n"
			.."燃烧的敌人在 {debuff_duration:%s} 秒内承受：\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ BLITZ - БЛИЦ - 1 - Artificer Servo-Skull - Сервочереп-техник] +]--	08.08.2026
	["loc_talent_cryptic_servo_skull_improved_clarified_desc"] = { -- +colors
		en = "You are accompanied by a "..CKWord("Servo-Skull", "Servoskull_rgb").." that you can order by Double Tapping your Tag input.\n"
			.."You can order it to Shoot at nearby Enemies.\n"
			.."You can also order it to complete a data interrogation.\n"
			.."\n"
			.."The Activated bonuses from the "..CKWord("Servo-Skull", "Servoskull_rgb").." Blitz base Ability are now permanent.\n"
			.."\n"
			.."Your "..CKWord("Servo-Skull", "Servoskull_rgb").." gains:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." Fire Rate,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."Its Attacks apply:\n"
			..Dot_green.." {burn_stacks:%s} Stack of "..CKWord("Burn", "Burn_rgb")..".\n"
			..Dot_nc.." Up to "..CNumb("8", "n_8_rgb").." Stacks.\n"
			.."\n"
			.."Burning enemies receive for {debuff_duration:%s} seconds:\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..CPhrs("Can_be_refr"),
		ru = "Вас сопровождает "..CKWord("сервочереп", "servocherep_rgb_ru")..", которому вы можете отдавать приказы двойным нажатием кнопки метки.\n"
			.."Вы можете приказать ему стрелять в ближайших врагов.\n"
			.."Вы также можете отправить его на расшифровку данных.\n"
			.."\n"
			.."Усиления от активации базового блица "..CKWord("сервочерепа", "servocherep_rgb_ru").." теперь постоянны.\n"
			.."\n"
			.."Ваш "..CKWord("сервочереп", "servocherep_rgb_ru").." получает:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." к скорострельности,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			.."Его атаки накладывают:\n"
			..Dot_green.." {burn_stacks:%s} заряд "..CKWord("горения", "gorenia_rgb_ru")..".\n"
			..Dot_nc.." Вплоть до "..CNumb("8", "n_8_rgb").." зарядов.\n"
			.."\n"
			.."Горящие враги получают в течение {debuff_duration:%s} секунд:\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("урона", "urona_rgb_ru")..".\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = "你有一個隨行的"..CKWord("伺服頭骨", "Servoskull_rgb_tw").."；連按兩次標記鍵即可下令。\n"
			.."你可以命令它射擊附近敵人。\n"
			.."你也可以命令它完成資料審訊。\n"
			.."\n"
			..CKWord("伺服頭骨", "Servoskull_rgb_tw").."基礎閃擊啟用時提供的加成現在永久生效。\n"
			.."\n"
			.."你的"..CKWord("伺服頭骨", "Servoskull_rgb_tw").."獲得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." 射速，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			.."它的攻擊會施加：\n"
			..Dot_green.." {burn_stacks:%s} 層"..CKWord("燃燒", "Burn_rgb_tw").."。\n"
			..Dot_nc.." 最多 "..CNumb("8", "n_8_rgb").." 層。\n"
			.."\n"
			.."燃燒中的敵人會在 {debuff_duration:%s} 秒內：\n"
			..Dot_green.." 受到的"..CKWord("傷害", "Damage_rgb_tw").."增加 {damage_taken:%s}。\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = "你伴有一个"..CKWord("伺服颅骨", "Servoskull_rgb_zh_cn").."，双击标记键可以命令它。你可以命令它射击附近的敌人，也可以命令它完成数据审讯。\n"
			.."\n"
			.."闪击基础技能激活后的增益现在永久生效。\n"
			.."\n"
			.."你的"..CKWord("伺服颅骨", "Servoskull_rgb_zh_cn").."获得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." 射速，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			.."它的攻击施加：\n"
			..Dot_green.." {burn_stacks:%s} 层"..CKWord("燃烧", "Burn_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多 "..CNumb("8", "n_8_rgb").." 层。\n"
			.."\n"
			.."燃烧的敌人在 {debuff_duration:%s} 秒内承受：\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..CPhrs("Can_be_refr"),
	},
		--[+ BLITZ - БЛИЦ - 1-1 - Medicae Servo-Skull - Сервочереп-медик +]--	08.08.2026
		["loc_talent_cryptic_servo_skull_inject_ally_revive_desc"] = { -- talent_name: , : 4, +colors
			en = "You have an additional "..CKWord("Servo-Skull", "Servoskull_rgb").." equipped with "..CKWord("Adapted Medicae Syringes", "AdMedSyringe_rgb")..". Target a Knocked Down, Hogtied, or Netted Ally to inject them.\n"
				.."\n"
				.."The injection Revives them, as well as granting them per second:\n"
				..Dot_green.." {toughness_per_second:%s} "..CKWord("Toughness", "Toughness_rgb").." and\n"
				..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
				..Dot_nc.." Lasts for {duration:%s} seconds.",
			ru = "У вас есть дополнительный "..CKWord("сервочереп", "servocherep_rgb_ru").." со встроенными "..CKWord("адаптированными медике-шприцами", "AdMedSyringe_rgb_ru")..". Выберите целью сбитого с ног, связанного или опутанного сетью союзника, чтобы сделать ему инъекцию.\n"
				.."\n"
				.."Инъекция оживляет его, а также даёт ему за каждую секунду:\n"
				..Dot_green.." {toughness_per_second:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
				..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
				..Dot_nc.." Длится {duration:%s} секунд.",
			["zh-tw"] = "你額外配備一個裝有"..CKWord("適應型醫療注射器", "AdMedSyringe_rgb_tw").."的"..CKWord("伺服頭骨", "Servoskull_rgb_tw").."。指定一名倒地、被俘或被網住的盟友，對其進行注射。\n"
				.."\n"
				.."注射會救起該盟友，並使其：\n"
				..Dot_green.." 每秒恢復 {toughness_per_second:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，且\n"
				..Dot_green.." 獲得 {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
				..Dot_nc.." 持續 {duration:%s} 秒。",
			["zh-cn"] = "你有一个额外的"..CKWord("伺服颅骨", "Servoskull_rgb_zh_cn").."装备了"..CKWord("改造医疗注射器", "AdMedSyringe_rgb").."。瞄准一名倒地、被捆绑或被网住的队友为其注射。\n"
				.."\n"
				.."注射会将其救起，并每秒提供：\n"
				..Dot_green.." {toughness_per_second:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."和\n"
				..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。\n"
				..Dot_nc.." 持续 {duration:%s} 秒。",
		},
		--[+ BLITZ - БЛИЦ - 1-2 - Purgator Servo-Skull - Сервочереп-очиститель +]--	08.08.2026
		["loc_talent_cryptic_servo_skull_flamethrower_desc"] = { -- talent_name: Arc Grenades, : 8, : 12, m->meters, s->seconds, +colors
			en = "You have an additional "..CKWord("Servo-Skull", "Servoskull_rgb").." equipped with a "..CKWord("Flamer", "Flamer_rgb")..".\n"
				.."\n"
				.."Target an Area to deploy it.\n"
				.."\n"
				.."Use your Primary Action to switch between\n"
				..Dot_nc.." Dispersed or\n"
				..Dot_nc.." Focused Fire Mode.",
			ru = "У вас есть дополнительный "..CKWord("сервочереп", "servocherep_rgb_ru")..", оснащённый "..CKWord("огнемётом", "Flamer_rgb_ru")..".\n"
				.."\n"
				.."Укажите область для его размещения.\n"
				.."\n"
				.."Удерживая кнопку блица, нажимайте кнопку основного действия, чтобы переключаться между режимами огня:\n"
				..Dot_nc.." По области и\n"
				..Dot_nc.." Направленный.",
			["zh-tw"] = "你額外配備一個裝有"..CKWord("淨化噴火器", "Flamer_rgb_tw").."的"..CKWord("伺服頭骨", "Servoskull_rgb_tw").."。\n"
				.."\n"
				.."指定一個區域來部署它。\n"
				.."\n"
				.."使用主要攻擊即可切換：\n"
				..Dot_nc.." 分散火力模式，或\n"
				..Dot_nc.." 集中火力模式。",
			["zh-cn"] = "你有一个额外的"..CKWord("伺服颅骨", "Servoskull_rgb_zh_cn").."装备了"..CKWord("喷火器", "Flamer_rgb").."。\n"
				.."\n"
				.."指定一个区域部署它。\n"
				.."\n"
				.."使用主行动键在以下模式间切换：\n"
				..Dot_nc.." 分散射击或\n"
				..Dot_nc.." 集中射击。",
		},
		--[+ BLITZ - БЛИЦ - 1-3 - Noospheric Command - Ноосферная команда +]--	08.08.2026
		["loc_talent_cryptic_servo_skull_improved_tagging_fire_rate_cost_desc"] = { -- talent_name: Arc Grenades, : 8, : 12, m->meters, s->seconds, +colors
			en = "Ordering your "..CKWord("Servo-Skull", "Servoskull_rgb").." to attack an Enemy will greatly increase its Fire Rate for {duration:%s} seconds.\n"
				.."\n"
				..Dot_red.." Costs {capacitance:%s} "..CKWord("Capacitance", "Capacitance_rgb")..".",
			ru = "Вы приказываете вашему "..CKWord("сервочерепу", "servocherepu_rgb_ru").." атаковать врага, что значительно увеличивает его скорострельность на {duration:%s} секунды.\n"
				.."\n"
				..Dot_red.." Тратится {capacitance:%s} "..CKWord("ёмкости", "emkosti_rgb_ru")..".",
			["zh-tw"] = "命令你的"..CKWord("伺服頭骨", "Servoskull_rgb_tw").."攻擊敵人時，會大幅提高其射速，持續 {duration:%s} 秒。\n"
				.."\n"
				..Dot_red.." 消耗 {capacitance:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."。",
			["zh-cn"] = "命令你的"..CKWord("伺服颅骨", "Servoskull_rgb_zh_cn").."攻击一名敌人，会在 {duration:%s} 秒内大幅提高其射速。\n"
				.."\n"
				..Dot_red.." 消耗 {capacitance:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."。",
		},

	--[+ BLITZ - БЛИЦ - 2 - Arc Grenades - Электродуговые гранаты +]--	08.08.2026
	["loc_talent_cryptic_arc_grenades_desc"] = { -- talent_name: Arc Grenades, : 4, +colors
		en = "Throw an "..CKWord("Arc Grenade", "Arcgren_rgb")..", creating an electrical explosion that "..CKWord("Arcs", "Arcs_rgb").." {number:%s} times.\n"
				.."\n"
				..CKWord("Arcs", "Arcs_rgb").." prioritising Armoured and Specialist Enemies, dealing massive "..CKWord("Damage", "Damage_rgb").." and "..CKWord("Impact", "Impact_rgb")..".",
		ru = "Вы бросаете "..CKWord("Электродуговую гранату", "Arcgren_rgb_ru")..", создающую электрический взрыв, который поражает врагов "..CKWord("электродугами", "elektrodugami_rgb_ru").." {number:%s} раза.\n"
				.."\n"
				..CKWord("Электродуги", "Elektrodugi_rgb_ru").." отдают приоритет бронированным врагам и специалистам, нанося им огромный "..CKWord("урон", "uron_rgb_ru").." и "..CKWord("ошеломление", "oshelomlenie_rgb_ru")..".",
		["zh-tw"] = "投擲一枚"..CKWord("電弧手榴彈", "Arcgren_rgb_tw").."，引發會產生 {number:%s} 次"..CKWord("電弧", "Arcs_rgb_tw").."的電氣爆炸。\n"
			.."\n"
			..CKWord("電弧", "Arcs_rgb_tw").."會優先攻擊裝甲敵人與專家，造成大量"..CKWord("傷害", "Damage_rgb_tw").."和"..CKWord("衝擊", "Impact_rgb_tw").."。",
		["zh-cn"] = "投掷一枚"..CKWord("电弧手雷", "Arcgren_rgb_zh_cn").."，造成电击爆炸，产生 {number:%s} 道"..CKWord("电弧", "Arcs_rgb_zh_cn").."。\n"
				.."\n"
				..CKWord("电弧", "Arcs_rgb_zh_cn").."会优先攻击装甲和专家敌人，造成大量"..CKWord("伤害", "Damage_rgb_zh_cn").."和"..CKWord("冲击", "Impact_rgb_zh_cn").."。",
	},
		--[+ BLITZ - БЛИЦ - 2-1 - Overcharged Arc Grenades - Перегруженные электродуговые гранаты +]--	08.08.2026
		["loc_talent_cryptic_arc_grenades_brittleness_desc"] = { -- talent_name: Arc Grenades, : 4, +colors
			en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{number:%s} "..CKWord("Arcs", "Arcs_rgb").." created by your {talent_name:%s}.\n"
				.."\n"
				.."The "..CKWord("Arcs", "Arcs_rgb").." apply to enemies on hit:\n"
				..Dot_green.." {stacks:%s} Stacks of "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Brittleness", "Brittleness_rgb")..".",
			ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{number:%s} к количеству "..CKWord("электродуг", "elektrodug_rgb_ru")..", которые создают ваши {talent_name:%s}.\n"
				.."\n"
				.."Враги, при поражении "..CKWord("электродугами", "elektrodugami_rgb_ru")..", получают:\n"
				..Dot_green.." {stacks:%s} зарядов "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони.",
			["zh-tw"] = Dot_green.." 你的 {talent_name:%s} 產生的"..CKWord("電弧", "Arcs_rgb_tw").."數量 "..CNumb("+", "n_plus_rgb").."{number:%s}。\n"
				.."\n"
				..CKWord("電弧", "Arcs_rgb_tw").."命中時會對敵人施加：\n"
				..Dot_green.." {stacks:%s} 層"..CKWord("脆弱", "Brittleness_rgb_tw").."，每層 "..CNumb("2.5%", "pc_2_5_rgb").."。",
			["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{number:%s} 你的 {talent_name:%s} 产生的"..CKWord("电弧", "Arcs_rgb_zh_cn").."数量。\n"
				.."\n"
				..CKWord("电弧", "Arcs_rgb_zh_cn").."命中敌人时施加：\n"
				..Dot_green.." {stacks:%s} 层 "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."。",
		},
		--[+ BLITZ - БЛИЦ - 2-2 - Enhanced Arc Grenades - Улучшенные электродуговые гранаты +]--	08.08.2026
		["loc_talent_cryptic_arc_grenades_weapon_malfunction_desc"] = { -- talent_name: Arc Grenades, : 8, : 12, m->meters, s->seconds, +colors
			en = "Your {talent_name:%s} also cause Ranged Enemies within {range:%s} meters to have their Ranged weapons Malfunction, making them unable to use them for {duration:%s} seconds.",
			ru = "Ваши {talent_name:%s} также блокируют на {duration:%s} секунд дальнобойное оружие у стрелков в радиусе {range:%s} метров.",
			["zh-tw"] = "你的 {talent_name:%s} 還會使 {range:%s} 公尺內遠程敵人的遠程武器發生故障，使其在 {duration:%s} 秒內無法使用該武器。",
			["zh-cn"] = "你的 {talent_name:%s} 还会使 {range:%s} 米内的远程敌人武器发生故障，使其在 {duration:%s} 秒内无法使用。",
		},

	--[+ BLITZ - БЛИЦ - 3 - Integrated Refraction Emitter - Встроенный рефракционный излучатель +]--	08.08.2026
	["loc_talent_cryptic_grenade_ability_force_field_clarified_desc"] = { -- +colors
		en = "Surround yourself in a shield that absorbs all incoming Ranged "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			.."Upon activation, and again when it ends, cause an electric explosion around you, applying "..CKWord("Electrocution", "Electrocution_rgb").." to enemies within {range:%s} meters.",
		ru = "Вы окружаете себя щитом, поглощающим весь входящий "..CKWord("урон", "uron_rgb_ru").." дальнего боя.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			.."При активации и по окончании действия вокруг вас происходит электрический взрыв, накладывающий "..CKWord("электрошок", "elektroshok_rgb_ru").." на врагов в радиусе {range:%s} метров.",
		["zh-tw"] = "以護盾包圍自己，吸收所有受到的遠程"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。\n"
			.."\n"
			.."啟用時及效果結束時，會在你周圍引發電氣爆炸，對 {range:%s} 公尺內的敵人施加"..CKWord("電擊", "Electrocution_rgb_tw").."。",
		["zh-cn"] = "为自己施加一个护盾，吸收所有远程"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续 {duration:%s} 秒。\n"
			.."\n"
			.."激活时和结束时，都会在自身周围产生电击爆炸，对 {range:%s} 米内的敌人施加"..CKWord("电击", "Electrocute_rgb_zh_cn").."。",
	},
		--[+ BLITZ - БЛИЦ - 3-1 - Overcharged Refraction Emitter - Перегруженный рефракционный излучатель +]--	08.08.2026
		["loc_talent_cryptic_force_field_duration_increase_desc"] = { -- talent_name: Arc Grenades, : 4, +colors
			en = Dot_green.." Increase the field duration to {increased_duration:%s} seconds.\n"
				.."\n"
				..Dot_green.." In addition, you "..CKWord("Electrocute", "Electrocute_rgb").." nearby enemies an additional time at the midpoint of its duration.",
			ru = Dot_green.." Увеличивает длительность действия поля до {increased_duration:%s} секунд.\n"
				.."\n"
				..Dot_green.." Кроме того, вы поражаете "..CKWord("электрошоком", "elektroshokom_rgb_ru").." ближайших врагов дополнительный раз в середине действия поля.",
			["zh-tw"] = Dot_green.." 將力場持續時間延長至 {increased_duration:%s} 秒。\n"
				.."\n"
				..Dot_green.." 此外，在持續時間過半時，會額外"..CKWord("電擊", "Electrocute_rgb_tw").."附近敵人一次。",
			["zh-cn"] = Dot_green.." 将力场持续时间延长至 {increased_duration:%s} 秒。\n"
				.."\n"
				..Dot_green.." 此外，在持续时间中点，你会额外"..CKWord("电击", "Electrocute_rgb_zh_cn").."附近的敌人一次。",
		},
		--[+ BLITZ - БЛИЦ - 3-2 - Voltaic Resistance - Вольтаическое сопротивление +]--	08.08.2026
		["loc_talent_cryptic_force_field_arcs_desc"] = { -- talent_name: Arc Grenades, : 8, : 12, m->meters, s->seconds, +colors
			en = "When your Refraction Emitter ends, shoot up to {max_arcs:%s} "..CKWord("Arcs", "Arcs_rgb").." towards enemies in front of you, based on the number of attacks absorbed.",
			ru = "Когда ваш рефракционный излучатель заканчивает действие, он выпускает до {max_arcs:%s} "..CKWord("электродуг", "elektrodug_rgb_ru").." во врагов перед вами, в зависимости от количества поглощённых атак.",
			["zh-tw"] = "艾曼納圖斯力場結束時，依吸收的攻擊次數，向前方敵人射出最多 {max_arcs:%s} 道"..CKWord("電弧", "Arcs_rgb_tw").."。",
			["zh-cn"] = "当折射发射器结束时，根据吸收的攻击次数，向前方敌人发射最多 {max_arcs:%s} 道"..CKWord("电弧", "Arcs_rgb_zh_cn").."。",
		},
		--[+ BLITZ - БЛИЦ - 3-3 - Kinetic Repulsion - Кинетическое отталкивание +]--	08.08.2026
		["loc_talent_cryptic_force_field_health_damage_limit_desc"] = { -- talent_name: Arc Grenades, : 8, : 12, m->meters, s->seconds, +colors
			en = "Limit all "..CKWord("Health", "Health_rgb").." "..CKWord("Damage", "Damage_rgb").." Taken while {force_field_name:%s} is active to {limit:%s}.",
			ru = "Пока активен блиц {force_field_name:%s}, весь получаемый "..CKWord("урон", "uron_rgb_ru").." "..CKWord("здоровью", "zdoroviu_rgb_ru").." ограничивается до {limit:%s} единиц.",
			["zh-tw"] = "{force_field_name:%s} 啟用期間，受到的所有"..CKWord("生命值", "Health_rgb_tw")..CKWord("傷害", "Damage_rgb_tw").."上限為 {limit:%s}。",
			["zh-cn"] = "在 {force_field_name:%s} 激活期间，将所有受到的生命"..CKWord("伤害", "Damage_rgb_zh_cn").."限制为 {limit:%s}。",
		},
--[+ +AURA - АУРЫ+ +]--
	--[+ AURA - АУРА - 0 - Resurgence - Возрождение +]--	08.08.2026
	["loc_talent_cryptic_coherency_regen_aura_desc"] = { -- damage_reduction: +7.5%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Coherency", "Coherency_rgb").." "..CKWord("Toughness", "Toughness_rgb").." regenerated by you and Allies in "..CKWord("Coherency", "Coherency_rgb").." regardless of enemy proximity.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." от "..CKWord("сплочённости", "splochennosti_rgb_ru").." восстанавливается вам и союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru").." независимо от близости врагов.",
		["zh-tw"] = Dot_green.." 無論敵人是否在附近，你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友都能恢復 {toughness:%s} "..CKWord("協同", "Coherency_rgb_tw")..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {toughness:%s} "..CKWord("协同", "Coherency_rgb_zh_cn").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."，由你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友恢复，不受敌人距离影响。",
	},
	--[+ AURA - АУРА - 1 - Resurgence - Возрождение +]--	08.08.2026
	["loc_talent_cryptic_coherency_regen_aura_improved_desc"] = { -- damage_reduction: +15%, talent_name: The Emperor's Will, +colors
		en = Dot_green.." {toughness_flat:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			..Dot_green.." {toughness:%s} "..CKWord("Coherency", "Coherency_rgb").." "..CKWord("Toughness", "Toughness_rgb").." regenerated by you and Allies in "..CKWord("Coherency", "Coherency_rgb")..",  regardless of enemy proximity.\n",
		ru = Dot_green.." {toughness_flat:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." от "..CKWord("сплочённости", "splochennosti_rgb_ru").." восстанавливается вам и союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru").." независимо от близости врагов.",
		["zh-tw"] = Dot_green.." {toughness_flat:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 無論敵人是否在附近，你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友都能恢復 {toughness:%s} "..CKWord("協同", "Coherency_rgb_tw")..CKWord("韌性", "Toughness_rgb_tw").."。\n",
		["zh-cn"] = Dot_green.." {toughness_flat:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." {toughness:%s} "..CKWord("协同", "Coherency_rgb_zh_cn").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."，由你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友恢复，不受敌人距离影响。\n",
	},
	--[+ AURA - АУРА - 2 - Ammunition Deposit - Запас боеприпасов +]--	08.08.2026
	["loc_talent_cryptic_ammo_aura_toughness_desc"] = { -- corruption: 1.5, interval: 1, s->second, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			..Dot_green.." {ammo:%s} Ammo Reserve to you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." {ammo:%s} к запасу боеприпасов для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".",
		["zh-tw"] = Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友獲得 {ammo:%s} 彈藥儲備。\n",
		["zh-cn"] = Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." {ammo:%s} 备弹量，对你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友生效。\n",
	},
	--[+ AURA - АУРА - 3 - Foe-Render Creed - Кредо терзателя врагов +]--	08.08.2026
	["loc_talent_cryptic_aura_weapon_improved_desc"] = { -- stamina_cost_multiplier: -15%, stamina_delay: 0.15, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			.."You and Allies in "..CKWord("Coherency", "Coherency_rgb").." gain:\n"
			..Dot_green.." {cleave:%s} "..CKWord("Cleave", "Cleave_rgb").." and\n"
			..Dot_green.." {rending:%s} "..CKWord("Rending", "Rending_rgb")..".\n",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			.."Вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете:\n"
			..Dot_green.." {cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru").." врагов и\n"
			..Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони.",
		["zh-tw"] = Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			.."你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友獲得：\n"
			..Dot_green.." {cleave:%s} "..CKWord("順劈攻擊", "Cleave_rgb_tw").."，以及\n"
			..Dot_green.." {rending:%s} "..CKWord("撕裂", "Rending_rgb_tw").."。\n",
		["zh-cn"] = Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			.."你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友获得：\n"
			..Dot_green.." {cleave:%s} "..CKWord("顺劈", "Cleave_rgb_zh_cn").."和\n"
			..Dot_green.." {rending:%s} "..CKWord("撕裂", "Rending_rgb_zh_cn").."。\n",
	},

--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY - СПОСОБНОСТЬ - 0 - Voltaic Expander - Вольтаический расширитель +]--	08.08.2026
	["loc_talent_cryptic_discharge_base_desc"] = { -- +colors
		en = "Unleash an "..CKWord("Electric Discharge", "ElectrDisch_rgb").." around you. Enemies within {range:%s} meters are "..CKWord("Electrocuted", "Electrocuted_rgb").." for {duration:%s} seconds, "..CKWord("Stunning", "Stunning_rgb").." them and dealing "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."When using {talent_name:%s} at {charge_two:%s} charges, extend the Range to {range_two:%s} meters.\n"
			.."\n"
			.."When using {talent_name:%s} at {charge_three:%s} charges or above, extend the Range to {range_three:%s} meters.",
		ru = "Вы выпускаете "..CKWord("Электрический разряд", "ElectrDisch_rgb_ru").." вокруг себя и враги в радиусе {range:%s} метров поражаются "..CKWord("электрошоком", "elektroshokom_rgb_ru").." на {duration:%s} секунды, "..CKWord("ошеломляются", "oshelomlautsa_rgb_ru").." и получают "..CKWord("урон", "uron_rgb_ru")..".\n"
			.."\n"
			.."При использовании способности {talent_name:%s} с {charge_two:%s} и более зарядами, радиус поражения увеличивается до {range_two:%s} метров.\n"
			.."\n"
			.."При использовании способности {talent_name:%s} с {charge_three:%s} и более зарядами, радиус поражения увеличивается до {range_three:%s} метров.",
		["zh-tw"] = "在周圍釋放"..CKWord("電能放電", "ElectrDisch_rgb_tw").."。{range:%s} 公尺內的敵人會被"..CKWord("電擊", "Electrocuted_rgb_tw").." {duration:%s} 秒，使其"..CKWord("眩暈", "Stunning_rgb_tw").."並受到"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			.."以 {charge_two:%s} 層充能使用 {talent_name:%s} 時，範圍擴大至 {range_two:%s} 公尺。\n"
			.."\n"
			.."以 {charge_three:%s} 層或以上充能使用 {talent_name:%s} 時，範圍擴大至 {range_three:%s} 公尺。",
		["zh-cn"] = "释放一次"..CKWord("电流释放", "ElectrDisch_rgb_zh_cn").."。{range:%s} 米内的敌人被"..CKWord("电击", "Electrocuted_rgb_zh_cn").."{duration:%s} 秒，"..CKWord("眩晕", "Stun_rgb_zh_cn").."并受到"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			.."当有 {charge_two:%s} 充能时使用 {talent_name:%s}，范围扩大至 {range_two:%s} 米。\n"
			.."\n"
			.."当充能数达到 {charge_three:%s} 或以上时使用 {talent_name:%s}，范围扩大至 {range_three:%s} 米。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 1 - Voltaic Emitter - Вольтаический излучатель +]--	08.08.2026
	["loc_talent_cryptic_discharge_desc"] = { -- toughness: 50%, attack_speed: +20%, time: 10, damage: +25%, cooldown: 30, talent_name: Chastise the Wicked, &->and, s->seconds, +colors
		en = "Unleash an "..CKWord("Electric Discharge", "ElectrDisch_rgb").." around you. Enemies within {range:%s} meters are "..CKWord("Electrocuted", "Electrocuted_rgb").." for {duration:%s} seconds, "..CKWord("Stunning", "Stunning_rgb").." them and dealing "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."When using {talent_name:%s} at {charge_two:%s} charges or above, Ranged Enemies, within {far_range:%s} meters, have their weapons Malfunction for {malfunction_duration:%s} seconds.\n"
			.."\n"
			.."When using {talent_name:%s} at {charge_three:%s} charges or above, for the next {buff_duration:%s} seconds your attacks "..CKWord("Electrocute", "Electrocute_rgb").." enemies hit for {short_duration:%s} seconds, dealing "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."This is an enhanced version of the "..CKWord("Voltaic Expander", "VoltaicExpander_rgb").." Ability.",
		ru = "Вы выпускаете "..CKWord("Электрический разряд", "ElectrDisch_rgb_ru").." вокруг себя и враги в радиусе {range:%s} метров поражаются "..CKWord("электрошоком", "elektroshokom_rgb_ru").." на {duration:%s} секунды, "..CKWord("ошеломляются", "oshelomlautsa_rgb_ru").." и получают "..CKWord("урон", "uron_rgb_ru")..".\n"
			.."\n"
			.."При использовании способности {talent_name:%s} с {charge_two:%s} и более зарядами, у стрелков в радиусе {far_range:%s} метров выходит из строя оружие на {malfunction_duration:%s} секунд.\n"
			.."\n"
			.."При использовании способности {talent_name:%s} с {charge_three:%s} и более зарядами, в течение {buff_duration:%s} секунд ваши атаки поражают врагов "..CKWord("электрошоком", "elektroshokom_rgb_ru").." на {short_duration:%s} секунды, нанося "..CKWord("урон", "uron_rgb_ru")..".\n"
			.."\n"
			.."Это улучшенная версия способности "..CKWord("Вольтаический расширитель", "VoltaicExpander_rgb_ru")..".",
		["zh-tw"] = "在周圍釋放"..CKWord("電能放電", "ElectrDisch_rgb_tw").."。{range:%s} 公尺內的敵人會被"..CKWord("電擊", "Electrocuted_rgb_tw").." {duration:%s} 秒，使其"..CKWord("眩暈", "Stunning_rgb_tw").."並受到"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			.."以 {charge_two:%s} 層或以上充能使用 {talent_name:%s} 時，使 {far_range:%s} 公尺內遠程敵人的武器發生故障，持續 {malfunction_duration:%s} 秒。\n"
			.."\n"
			.."以 {charge_three:%s} 層或以上充能使用 {talent_name:%s} 時，接下來 {buff_duration:%s} 秒內，你的攻擊會"..CKWord("電擊", "Electrocute_rgb_tw").."命中的敵人 {short_duration:%s} 秒並造成"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			.."這是"..CKWord("電能擴張器", "VoltaicExpander_rgb_tw").."技能的強化版本。",
		["zh-cn"] = "释放一次"..CKWord("电流释放", "ElectrDisch_rgb_zh_cn").."。{range:%s} 米内的敌人被"..CKWord("电击", "Electrocuted_rgb_zh_cn").."{duration:%s} 秒，"..CKWord("眩晕", "Stun_rgb_zh_cn").."并受到"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			.."当有 {charge_two:%s} 充能或以上时使用 {talent_name:%s}，{far_range:%s} 米内的远程敌人武器故障 {malfunction_duration:%s} 秒。\n"
			.."\n"
			.."当充能数达到 {charge_three:%s} 或以上时使用 {talent_name:%s}，在接下来 {buff_duration:%s} 秒内，你的攻击所击中的敌人会被"..CKWord("电击", "Electrocute_rgb_zh_cn").."{short_duration:%s} 秒，造成"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			.."这是"..CKWord("电压扩展", "VoltaicExpander_rgb_zh_cn").."技能的增强版本。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 1-1 - Voltaic Overcharge - Вольтаическая перегруз +]--	08.08.2026
	["loc_talent_cryptic_discharge_toughness_desc"] = { -- duration: 5, talent_name: Fury of the Faithful, cooldown: +20%, s->seconds, +colors
		en = "{ability_name:%s} restores:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").."\n"
			.."Plus an additional:\n"
			..Dot_green.." {toughness_per_hit:%s} "..CKWord("Toughness", "Toughness_rgb").." per each enemy hit by the "..CKWord("Electric Discharge", "ElectrDisch_rgb")..".",
		ru = "Способность {ability_name:%s} восстанавливает:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").."\n"
			.."И дополнительно:\n"
			..Dot_green.." {toughness_per_hit:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждого врага, поражённого "..CKWord("Электрическим разрядом", "ElectrDischom_rgb_ru")..".",
		["zh-tw"] = "{ability_name:%s} 會恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，\n"
			.."此外，"..CKWord("電能放電", "ElectrDisch_rgb_tw").."每命中一名敵人會額外恢復：\n"
			..Dot_green.." {toughness_per_hit:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = "{ability_name:%s} 恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."\n"
			.."额外恢复：\n"
			..Dot_green.." {toughness_per_hit:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."，每有一个敌人被"..CKWord("电流释放", "ElectrDisch_rgb_zh_cn").."击中。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 1-2 - Voltaic Motivator - Вольтаический мотиватор +]--	08.08.2026
	["loc_talent_cryptic_discharge_two_charge_bonus_desc"] = { -- talent_name: Fury of the Faithful, charges: 2
		en = "When using {talent_name:%s} at {charge:%s} charge or above, gain for {duration:%s} seconds:\n"
			..Dot_green.." {attack_speed:%s} Attack Speed.",
		ru = "При использовании способности {talent_name:%s} с {charge:%s} и более зарядами, вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки.",
		["zh-tw"] = "以 {charge:%s} 層或以上充能使用 {talent_name:%s} 時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {attack_speed:%s} 攻擊速度。",
		["zh-cn"] = "当充能数达到 {charge:%s} 或以上时使用 {talent_name:%s}，在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {attack_speed:%s} 攻击速度。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 1-3 - Voltaic Arcs - Вольтаические электродуги +]--	08.08.2026
	["loc_talent_cryptic_discharge_arc_bonus_desc"] = { -- talent_name: Fury of the Faithful, charges: 2
		en = "When using {ability_name:%s}, you release {num_arcs:%s} forward-facing "..CKWord("Arcs", "Arcs_rgb").." per Charge spent.\n"
			.."\n"
			.."Each "..CKWord("Arc", "Arc_rgb").." deals high "..CKWord("Damage", "Damage_rgb").." and "..CKWord("Impact", "Impact_rgb")..".",
		ru = "При использовании способности {ability_name:%s} вы выпускаете {num_arcs:%s} направленных вперёд "..CKWord("электродуг", "elektrodug_rgb_ru").." за каждый потраченный заряд.\n"
			.."\n"
			.."Каждая "..CKWord("электродуга", "elektroduga_rgb_ru").." наносит высокий "..CKWord("урон", "uron_rgb_ru").." и "..CKWord("ошеломление", "oshelomlenie_rgb_ru")..".",
		["zh-tw"] = "使用 {ability_name:%s} 時，每消耗一層充能會向前釋放 {num_arcs:%s} 道"..CKWord("電弧", "Arcs_rgb_tw").."。\n"
			.."\n"
			.."每道"..CKWord("電弧", "Arc_rgb_tw").."都會造成大量"..CKWord("傷害", "Damage_rgb_tw").."與"..CKWord("衝擊", "Impact_rgb_tw").."。",
		["zh-cn"] = "当使用 {ability_name:%s} 时，每消耗一层充能，释放 {num_arcs:%s} 道向前的"..CKWord("电弧", "Arcs_rgb_zh_cn").."。\n"
			.."\n"
			.."每道"..CKWord("电弧", "Arcs_rgb_zh_cn").."造成高额"..CKWord("伤害", "Damage_rgb_zh_cn").."和"..CKWord("冲击", "Impact_rgb_zh_cn").."。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 2 - Chordclaw Strike - Удар аккордовыми когтями +]--	08.08.2026
	["loc_talent_cryptic_chordclaw_desc"] = { -- interval: 0.8, toughness: 45%, flat_toughness: +20, max_toughness: +100, cooldown: 60, s->seconds, +colors
		en = "Perform a Powerful Heavy Melee Attack using a "..CKWord("Chordclaw", "Chordclaw_rgb")..".\n"
			.."\n"
			.."The Attack is a Guaranteed "..CKWord("Critical Strike", "Crit_strike_rgb").." and has:\n"
			..Dot_green.." {rending:%s} "..CKWord("Rending", "Rending_rgb")..".",
		ru = "Вы выполняете мощную тяжёлую атаку ближнего боя с помощью "..CKWord("Аккордовых когтей", "Chordclaw_rgb_ru")..".\n"
			.."\n"
			.."Атака гарантированно будет "..CKWord("критическим ударом", "krit_udarom_rgb_ru").." и даёт:\n"
			..Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони.",
		["zh-tw"] = "使用"..CKWord("弦爪", "Chordclaw_rgb_tw").."施展強力的近戰重攻擊。\n"
			.."\n"
			.."此攻擊必定造成"..CKWord("致命一擊", "Crit_strike_rgb_tw").."，並具有：\n"
			..Dot_green.." {rending:%s} "..CKWord("撕裂", "Rending_rgb_tw").."。",
		["zh-cn"] = "使用"..CKWord("弦爪", "Chordclaw_rgb_zh_cn").."发动一次强力近战重击。\n"
			.."\n"
			.."该攻击必定为"..CKWord("暴击", "Crit_hit_rgb_zh_cn").."并拥有：\n"
			..Dot_green.." {rending:%s} "..CKWord("撕裂", "Rending_rgb_zh_cn").."。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 2-1 - Satiated Steel - Насыщенная сталь +]--	08.08.2026
	["loc_talent_cryptic_chordclaw_capacitance_restoration_desc"] = { -- stacks: 5, toughness: +30%, duration: 10, s->seconds, +colors
		en = CKWord("Chordclaw", "Chordclaw_rgb").." Kills restore over {duration:%s} seconds:\n"
			..Dot_green.." {capacitance_percent:%s} "..CKWord("Capacitance", "Capacitance_rgb")..".",
		ru = "Убийства "..CKWord("Аккордовыми когтями", "Chordclaws_rgb_ru").." восстанавливают в течение {duration:%s} секунд:\n"
			..Dot_green.." {capacitance_percent:%s} "..CKWord("ёмкости", "emkosti_rgb_ru")..".",
		["zh-tw"] = CKWord("弦爪", "Chordclaw_rgb_tw").."擊殺會在 {duration:%s} 秒內恢復：\n"
			..Dot_green.." {capacitance_percent:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."。",
		["zh-cn"] = CKWord("弦爪", "Chordclaw_rgb_zh_cn").."击杀在 {duration:%s} 秒内恢复：\n"
			..Dot_green.." {capacitance_percent:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 2-2 - Axial Slash - Горизонтальный разрез +]--	08.08.2026
	["loc_talent_cryptic_chordclaw_horizontal_swipe_desc"] = { -- stacks: 5, damage: +20%, duration: 10, s->seconds, +colors
		en = "Your "..CKWord("Chordclaw", "Chordclaw_rgb").." now executes a Horizontal Sweep attack.",
		ru = "Ваши "..CKWord("Аккордовые когти", "Chordclawe_rgb_ru").." теперь делают горизонтальный рассекающий удар.",
		["zh-tw"] = "你的"..CKWord("弦爪", "Chordclaw_rgb_tw").."現在會施展水平橫掃攻擊。",
		["zh-cn"] = "你的"..CKWord("弦爪", "Chordclaw_rgb_zh_cn").."现在发动水平横扫攻击。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 2-3 - Probing Strikes - Зондирующие удары +]--	08.08.2026
	["loc_talent_cryptic_chordclaw_quick_stab_combo_desc"] = { -- stacks: 5, damage: +20%, duration: 10, s->seconds, +colors
		en = "Your "..CKWord("Chordclaw", "Chordclaw_rgb").." now executes {num_stab:%s} Quick Stab attacks, that apply:\n"
			..Dot_green.." {bleed_stacks:%s} Stack of "..CKWord("Bleed", "Bleed_rgb")..".",
		ru = "Ваши "..CKWord("Аккордовые когти", "Chordclawe_rgb_ru").." теперь делают {num_stab:%s} быстрые колющие атаки, накладывающие:\n"
			..Dot_green.." {bleed_stacks:%s} зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".",
		["zh-tw"] = "你的"..CKWord("弦爪", "Chordclaw_rgb_tw").."現在會施展 {num_stab:%s} 次快速刺擊，施加：\n"
			..Dot_green.." {bleed_stacks:%s} 層"..CKWord("流血", "Bleed_rgb_tw").."。",
		["zh-cn"] = "你的"..CKWord("弦爪", "Chordclaw_rgb_zh_cn").."现在发动 {num_stab:%s} 次快速刺击，施加：\n"
			..Dot_green.." {bleed_stacks:%s} 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 2-4 - Slice and Dice - Нарежь и измельчи +]--	08.08.2026
	["loc_talent_cryptic_chordclaw_consecutive_bonus_desc"] = { -- stacks: 5, damage: +20%, duration: 10, s->seconds, +colors
		en = "Using the "..CKWord("Chordclaw", "Chordclaw_rgb").." Ability grants Stacks.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			..Dot_nc.." Stacks last {duration:%s} seconds.\n"
			.."\n"
			.."Per Stack you gain:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("Damage", "Damage_rgb").." to your "..CKWord("Chordclaw", "Chordclaw_rgb")..".\n"
			.."\n"
			..CPhrs("Cant_be_refr"),
		ru = "Использование способности "..CKWord("Аккордовые когти", "Chordclawe_rgb_ru").." даёт заряды.\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			..Dot_nc.." Заряды длятся {duration:%s} секунд.\n"
			.."\n"
			.."За каждый заряд вы получаете:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для ваших "..CKWord("Аккордовых когтей", "Chordclaw_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Cant_be_refr"),
		["zh-tw"] = "使用"..CKWord("弦爪", "Chordclaw_rgb_tw").."技能會獲得層數。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			..Dot_nc.." 層數持續 {duration:%s} 秒。\n"
			.."\n"
			.."每層使你的"..CKWord("弦爪", "Chordclaw_rgb_tw").."獲得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..CPhrs("Cant_be_refr"),
		["zh-cn"] = "使用"..CKWord("弦爪", "Chordclaw_rgb_zh_cn").."技能获得层数。\n"
			..Dot_nc.." 最多叠加 {max_stacks:%s} 层。\n"
			..Dot_nc.." 层数持续 {duration:%s} 秒。\n"
			.."\n"
			.."每层提供：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."到你的"..CKWord("弦爪", "Chordclaw_rgb_zh_cn").."。\n"
			.."\n"
			..CPhrs("Cant_be_refr"),
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 3 - Advanced Combat Doctrines - Передовые боевые доктрины +]--	08.08.2026
	["loc_talent_cryptic_precision_stance_drain_cost_desc"] = { -- duration: 3, movement_speed: +20%, backstab_damage: +100%, finesse_damage: +100%, crit_chance: +100%, cooldown: 30, s->seconds, &->and, +colors
		en = "Spend {capacitance_instant:%s} "..CKWord("Capacitance", "Capacitance_rgb").." and Swap to your Secondary Weapon.\n"
			.."Your weapon locks onto enemies close to your targeting reticule, granting you inhuman accuracy.\n"
			.."Activation increases the remaining "..CKWord("Cooldown", "Cd_rgb").." of a Charge by "..CNumb("25%", "pc_25_rgb").." (default: "..CNumb("12.5", "n_12_5_rgb").." seconds).\n"
			.."\n"
			.."While active, you gain:\n"
			..Dot_green.." {spread:%s} Spread and\n"
			..Dot_green.." {recoil:%s} Recoil.\n"
			.."but you drain:\n"
			..Dot_red.." {capacitance_drain:%s} "..CKWord("Capacitance", "Capacitance_rgb").." per second, and also\n"
			..Dot_red.." {capacitance_shot:%s} "..CKWord("Capacitance", "Capacitance_rgb").." per shot.\n"
			..Dot_green.." Drain is paused while reloading.\n"
			.."\n"
			.."While Ability active, it increases the remaining "..CKWord("Cooldown", "Cd_rgb").." by:\n"
			..Dot_red.." "..CNumb("10%", "pc_10_rgb").." per second,\n"
			..Dot_red.." "..CNumb("1%", "pc_1_rgb").." per shot fired.\n"
			.."\n"
			.."The Ability ends if you reach:\n"
			..Dot_red.." {zero_capacitance:%s} "..CKWord("Capacitance", "Capacitance_rgb").." and\n"
			..Dot_red.." {zero_charges:%s} Charges, or\n"
			..Dot_red.." Switch Weapon, or\n"
			..Dot_red.." Reactivate Ability.\n"
			.."\n"
			..Dot_nc.." Only usable if you have at least {charge_min:%s} Charge available.\n"
			..Dot_nc.." No Cooldown.",
		ru = "Вы тратите {capacitance_instant:%s} "..CKWord("ёмкости", "emkosti_rgb_ru").." и переключитесь на оружие дальнего боя. Ваше оружие наводится на врагов рядом с прицелом, обеспечивая нечеловеческую точность.\n"
			.."Активация увеличивает оставшееся время "..CKWord("восстановления", "vosstanovlenia_rgb_ru").." заряда на "..CNumb("25%", "pc_25_rgb").." (по умолчанию: "..CNumb("12.5", "n_12_5_rgb").." секунд).\n"
			.."\n"
			.."Пока активна способность, вы получаете:\n"
			..Dot_green.." {spread:%s} к разбросу и\n"
			..Dot_green.." {recoil:%s} к отдаче.\n"
			.."но тратите:\n"
			..Dot_red.." {capacitance_drain:%s} "..CKWord("ёмкости", "emkosti_rgb_ru").." в секунду и ещё\n"
			..Dot_red.." {capacitance_shot:%s} "..CKWord("ёмкости", "emkosti_rgb_ru").." за каждый выстрел.\n"
			..Dot_green.." Расход останавливается во время перезарядки.\n"
			.."\n"
			.."Пока активна способность, оставшееся время "..CKWord("восстановления", "vosstanovlenia_rgb_ru").." увеличивается:\n"
			..Dot_red.." на "..CNumb("10%", "pc_10_rgb").." в секунду и ещё\n"
			..Dot_red.." на "..CNumb("1%", "pc_1_rgb").." за каждый выстрел.\n"
			.."\n"
			.."Способность прекращает действие, если вы достигнете:\n"
			..Dot_red.." {zero_capacitance:%s} "..CKWord("Ёмкости", "emkosti_rgb_ru").." и\n"
			..Dot_red.." {zero_charges:%s} зарядов, или\n"
			..Dot_red.." Смените оружие, или\n"
			..Dot_red.." Активируете способность снова.\n"
			.."\n"
			..Dot_nc.." Можно использовать только при наличии хотя бы {charge_min:%s} заряда.\n"
			..Dot_nc.." Без восстановления.",
		["zh-tw"] = "消耗 {capacitance_instant:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."並切換至次要武器。武器會鎖定瞄準準星附近的敵人，賦予你超乎常人的準確度。\n"
			.."啟用時會使一層充能的剩餘"..CKWord("冷卻", "Cd_rgb_tw").."增加 "..CNumb("25%", "pc_25_rgb").."（預設："..CNumb("12.5", "n_12_5_rgb").." 秒）。\n"
			.."\n"
			.."啟用期間獲得：\n"
			..Dot_green.." {spread:%s} 散布，\n"
			..Dot_green.." {recoil:%s} 後座力。\n"
			.."但會消耗：\n"
			..Dot_red.." 每秒 {capacitance_drain:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."，以及\n"
			..Dot_red.." 每次射擊 {capacitance_shot:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."。\n"
			..Dot_green.." 裝填期間會暫停消耗。\n"
			.."\n"
			.."技能啟用期間，剩餘"..CKWord("冷卻", "Cd_rgb_tw").."增加：\n"
			..Dot_red.." 每秒 "..CNumb("10%", "pc_10_rgb").."，\n"
			..Dot_red.." 每次射擊 "..CNumb("1%", "pc_1_rgb").."。\n"
			.."\n"
			.."符合以下任一條件時技能結束：\n"
			..Dot_red.." "..CKWord("電容量", "Capacitance_rgb_tw").."降至 {zero_capacitance:%s} 且充能降至 {zero_charges:%s}，或\n"
			..Dot_red.." 切換武器，或\n"
			..Dot_red.." 再次啟用技能。\n"
			.."\n"
			..Dot_nc.." 至少有 {charge_min:%s} 層可用充能時才能使用。\n"
			..Dot_nc.." 無冷卻時間。",
		["zh-cn"] = "消耗 {capacitance_instant:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."并切换至副武器。\n"
			.."你的武器会锁定准星附近的敌人，提供非人的精准度。\n"
			.."激活会使一次充能的剩余"..CKWord("冷却", "Cd_rgb_zh_cn").."增加 "..CNumb("25%", "pc_25_rgb").."（默认 "..CNumb("12.5", "n_12_5_rgb").." 秒）。\n"
			.."\n"
			.."激活期间，获得：\n"
			..Dot_green.." {spread:%s} 散射和\n"
			..Dot_green.." {recoil:%s} 后坐力。\n"
			.."但你会消耗：\n"
			..Dot_red.." {capacitance_drain:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").." 每秒，此外\n"
			..Dot_red.." {capacitance_shot:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").." 每发。\n"
			..Dot_green.." 换弹期间消耗暂停。\n"
			.."\n"
			.."技能激活时，会使剩余"..CKWord("冷却", "Cd_rgb_zh_cn").."增加：\n"
			..Dot_red.." "..CNumb("10%", "pc_10_rgb").." 每秒，\n"
			..Dot_red.." "..CNumb("1%", "pc_1_rgb").." 每发。\n"
			.."\n"
			.."技能在以下情况结束时：\n"
			..Dot_red.." {zero_capacitance:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").." 且\n"
			..Dot_red.." {zero_charges:%s} 充能，或\n"
			..Dot_red.." 切换武器，或\n"
			..Dot_red.." 再次激活技能。\n"
			.."\n"
			..Dot_nc.." 只有至少拥有 {charge_min:%s} 充能时才能使用。\n"
			..Dot_nc.." 无冷却时间。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 3-1 - Restoration Protocol - Протокол восстановления +]--	08.08.2026
	["loc_talent_cryptic_precision_stance_toughness_suppression_desc"] = { -- talent_name: Shroudfield, duration: 2, buff_duration: 5, threat: -75%, damage: 50%, s->seconds, +colors
		en = "{talent_name:%s} restores for its duration:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second.\n"
			.."\n"
			..Dot_green.." On activation, instantly clears all Suppression.",
		ru = "Способность {talent_name:%s} восстанавливает на время действия:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду.\n"
			.."\n"
			..Dot_green.." При активации мгновенно снимает всё подавление, наложенное врагами на вас.",
		["zh-tw"] = "{talent_name:%s} 啟用期間會恢復：\n"
			..Dot_green.." 每秒 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 啟用時立即清除所有壓制。",
		["zh-cn"] = "{talent_name:%s} 在其持续时间内恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." 每秒。\n"
			.."\n"
			..Dot_green.." 激活时立即清除所有压制。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 3-2 - Writ of Ammunition Enumeration - Приказ Учёта боеприпасов +]--	08.08.2026
	["loc_talent_cryptic_precision_stance_fire_rate_increased_desc"] = { -- toughness: 40%, time: 5, damage: +20%, time: 5, s->seconds, +colors
		en = "While {talent_name:%s} is active you gain:\n"
			..Dot_green.." {fire_rate:%s} Fire Rate.\n"
			.."\n"
			.."After {duration:%s} seconds, this increases to:\n"
			..Dot_green.." {fire_rate_increased:%s} Fire rate.",
		ru = "Пока активна способность {talent_name:%s}, вы получаете:\n"
			..Dot_green.." {fire_rate:%s} к скорострельности.\n"
			.."\n"
			.."Через {duration:%s} секунды это значение увеличивается до:\n"
			..Dot_green.." {fire_rate_increased:%s} к скорострельности.",
		["zh-tw"] = "{talent_name:%s} 啟用期間獲得：\n"
			..Dot_green.." {fire_rate:%s} 射速。\n"
			.."\n"
			.."經過 {duration:%s} 秒後提高至：\n"
			..Dot_green.." {fire_rate_increased:%s} 射速。",
		["zh-cn"] = "{talent_name:%s} 激活期间获得：\n"
			..Dot_green.." {fire_rate:%s} 射速。\n"
			.."\n"
			.."{duration:%s} 秒后，该效果提升至：\n"
			..Dot_green.." {fire_rate_increased:%s} 射速。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 3-3 - Calculated Priority - Рассчитанный приоритет +]--	08.08.2026
	["loc_talent_cryptic_precision_stance_damage_on_elite_kill_desc"] = { -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, +colors
		en = "While {talent_name:%s} is active, Elite Kills grant per Stack:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Up to "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			..Dot_nc.." Stacks last {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_proc_mult_str"),
		ru = "Пока активна способность {talent_name:%s}, убийства элитных врагов дают за каждый заряд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Вплоть до "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.\n"
			..Dot_nc.." Заряды длятся {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_proc_mult_str"),
		["zh-tw"] = "{talent_name:%s} 啟用期間，每次擊殺精英會獲得一層，每層提供：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 最多 "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			..Dot_nc.." 層數持續 {duration:%s} 秒。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_proc_mult_str"),
		["zh-cn"] = "{talent_name:%s} 激活期间，精英击杀每层提供：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多 "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn")..".\n"
			.."\n"
			..Dot_nc.." 叠加 {stacks:%s} 次。\n"
			..Dot_nc.." 层数持续 {duration:%s} 秒。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_proc_mult_str"),
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 3-4 - Readiness Doctrines - Доктрины готовности +]--	08.08.2026
	["loc_talent_cryptic_precision_stance_reload_speed_desc"] = { -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, +colors
		en = "While {ability_name:%s} is active, and for {duration:%s} seconds after it ends, you gain:\n"
			..Dot_green.." {reload_speed:%s} Reload Speed.",
		ru = "Пока активна способность {ability_name:%s} и в течение {duration:%s} секунд после её окончания, вы получаете:\n"
			..Dot_green.." {reload_speed:%s} к скорости перезарядки.",
		["zh-tw"] = "{ability_name:%s} 啟用期間及結束後 {duration:%s} 秒內，獲得：\n"
			..Dot_green.." {reload_speed:%s} 裝填速度。",
		["zh-cn"] = "{ability_name:%s} 激活期间及结束后 {duration:%s} 秒内，获得：\n"
			..Dot_green.." {reload_speed:%s} 换弹速度。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 3-5 - Piercing Sight - Пронзающий взгляд +]--	08.08.2026
	["loc_talent_cryptic_precision_stance_crit_cleave_desc"] = { -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, +colors
		en = "While {talent_name:%s} is active you gain:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{cleave:%s} Ranged "..CKWord("Cleave", "Cleave_rgb").." and\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} Ranged "..CKWord("Critical Strike Chance", "Crt_chnc_r_rgb")..".\n"
			.."\n"
			.."After {duration:%s} seconds, these increase to:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{increased_cleave:%s} Ranged "..CKWord("Cleave", "Cleave_rgb").." and\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{increased_crit_chance:%s} Ranged "..CKWord("Critical Strike Chance", "Crt_chnc_r_rgb")..".",
		ru = "Пока активна способность {talent_name:%s} вы получаете:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{cleave:%s} к "..CKWord("прострелу", "prostrelu_rgb_ru").." и\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..".\n"
			.."\n"
			.."Через {duration:%s} секунды эти значения увеличиваются до:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{increased_cleave:%s} к "..CKWord("прострелу", "prostrelu_rgb_ru").." и\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{increased_crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..".",
		["zh-tw"] = "{talent_name:%s} 啟用期間獲得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{cleave:%s} 遠程"..CKWord("順劈攻擊", "Cleave_rgb_tw").."，以及\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} 遠程"..CKWord("爆擊率", "Crt_chnc_r_rgb_tw").."。\n"
			.."\n"
			.."經過 {duration:%s} 秒後提高至：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{increased_cleave:%s} 遠程"..CKWord("順劈攻擊", "Cleave_rgb_tw").."，以及\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{increased_crit_chance:%s} 遠程"..CKWord("爆擊率", "Crt_chnc_r_rgb_tw").."。",
		["zh-cn"] = "{talent_name:%s} 激活期间获得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{cleave:%s} 远程"..CKWord("顺劈", "Cleave_rgb_zh_cn").."和\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn")..".\n"
			.."\n"
			.."{duration:%s} 秒后，这些数值提升至：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{increased_cleave:%s} 远程"..CKWord("顺劈", "Cleave_rgb_zh_cn").."和\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{increased_crit_chance:%s} 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 4 - Capacitor Reclamation Loop - Контур восстановления конденсатора +]--	08.08.2026
	["loc_talent_cryptic_multi_hits_grant_power_desc"] = { -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, +colors
		en = "On hitting {number:%s} or more enemies with a single Attack, you restore:\n"
			..Dot_green.." {power:%s} "..CKWord("Capacitance", "Capacitance_rgb")..".",
		ru = "При попадании по {number:%s} или более врагам одной атакой, вы восстанавливаете:\n"
			..Dot_green.." {power:%s} "..CKWord("ёмкости", "emkosti_rgb_ru")..".",
		["zh-tw"] = "單次攻擊命中 {number:%s} 名或以上敵人時，恢復：\n"
			..Dot_green.." {power:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."。",
		["zh-cn"] = "单次攻击命中 {number:%s} 个或更多敌人时，恢复：\n"
			..Dot_green.." {power:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 5 - Augmented Power-Cycle - Усиленный силовой цикл +]--	08.08.2026
	["loc_talent_cryptic_increased_passive_cooldown_regen_desc"] = { -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, +colors
		en = Dot_green.." {power:%s} "..CKWord("Capacitance", "Capacitance_rgb").." generated per second.",
		ru = Dot_green.." {power:%s} "..CKWord("ёмкости", "emkosti_rgb_ru").." генерируется в секунду.",
		["zh-tw"] = Dot_green.." 每秒產生 {power:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 每秒生成 {power:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 6 - Flux Conduit Build-Up - Проводник накопления потока +]--	08.08.2026
	["loc_talent_cryptic_crits_grant_power_desc"] = { -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, +colors
		en = Dot_green.." {power:%s} "..CKWord("Capacitance", "Capacitance_rgb").." generated over {duration:%s} seconds on "..CKWord("Critical Hits", "Crit_hits_rgb")..".",
		ru = Dot_green.." {power:%s} "..CKWord("ёмкости", "emkosti_rgb_ru").." генерируется в течение {duration:%s} секунд при "..CKWord("критических ударах", "krit_udarah_rgb_ru")..".",
		["zh-tw"] = Dot_green.." 造成"..CKWord("致命一擊", "Critical_rgb_tw").."時，在 {duration:%s} 秒內產生 {power:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 暴击时在 {duration:%s} 秒内生成 {power:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."。",
	},
	--[+ ABILITY - СПОСОБНОСТЬ - 7 - Reactor Coil Recharge - Перезарядка катушки реактора +]--	08.08.2026
	["loc_talent_cryptic_weakspot_kills_grant_power_desc"] = { -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, +colors
		en = Dot_green.." {power:%s} "..CKWord("Capacitance", "Capacitance_rgb").." generated on "..CKWord("Weakspot", "Weakspot_rgb").." Kills.",
		ru = Dot_green.." {power:%s} "..CKWord("ёмкости", "emkosti_rgb_ru").." генерируется при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".",
		["zh-tw"] = Dot_green.." 命中"..CKWord("弱點", "Weakspot_rgb_tw").."並擊殺時產生 {power:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 弱点击杀时生成 {power:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."。",
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 1 - Redline Capacitors - Конденсаторы предельной нагрузки +]--	08.08.2026
	["loc_talent_cryptic_redline_charge_stacking_clarified_desc"] = { -- crit_chance: +15%, duration: 8, max_stacks: 25, radius: 25, m->meters, s->seconds, +colors
		en = "Spending or gaining a "..CKWord("Combat Ability", "Cmbt_abil_rgb").." charge grants you for {duration:%s} seconds:\n"
			..Dot_green.." {capacitance:%s} "..CKWord("Capacitance", "Capacitance_rgb").." generation and\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			.."\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			..Dot_nc.." Stacks decay one at a time.\n"
			.."\n"
			..Dot_green.." {max_charges:%s} Max Ability Charges.",
		ru = "Трата или получение "..CKWord("Заряда", "Charga_rgb_ru").." даёт вам на {duration:%s} секунд:\n"
			..Dot_green.." {capacitance:%s} к генерации "..CKWord("ёмкости", "emkosti_rgb_ru").." и\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			..Dot_nc.." Заряды сбрасываются по одному.\n"
			.."\n"
			..Dot_green.." {max_charges:%s} к максимуму зарядов способности.",
		["zh-tw"] = "消耗或獲得一層"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."充能時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {capacitance:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."產生量，以及\n"
			..Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			..Dot_nc.." 層數會逐一衰減。\n"
			.."\n"
			..Dot_green.." "..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."最大充能數 {max_charges:%s}。",
		["zh-cn"] = "消耗或获得一层"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能时，在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {capacitance:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."生成和\n"
			..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 叠加 {max_stacks:%s} 次。\n"
			..Dot_nc.." 层数逐一衰减。\n"
			.."\n"
			..Dot_green.." {max_charges:%s} 最大技能充能数。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 1-1 - Advanced Power Management - Улучшенное управление питанием +]--	08.08.2026
	["loc_talent_cryptic_redline_strength_clarified_desc"] = { -- crit_chance: +10%, talent_name: Blazing Piety, +colors
		en = "On "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use, you gain for {duration:%s} seconds:\n"
			..Dot_green.." {strength:%s} "..CKWord("Strength", "Strength_rgb").." per "..CKWord("Combat Ability", "Cmbt_abil_rgb").." charge you had on use.",
		ru = "При использовании "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {strength:%s} к "..CKWord("силе", "sile_rgb_ru").." за каждый имеющийся "..CKWord("Заряд", "Charge_rgb_ru").." на момент активации.",
		["zh-tw"] = "使用"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." 使用時每有一層"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."充能，便獲得 {strength:%s} "..CKWord("威力", "Strength_rgb_tw").."。",
		["zh-cn"] = "使用"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."时，在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {strength:%s} "..CKWord("威力", "Strength_rgb_zh_cn").."，根据使用时拥有的每层"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 1-2 - Resource Optimisation Canticles  - Славословие оптимизации ресурсов +]--	08.08.2026
	["loc_talent_cryptic_redline_stacks_clarified_desc"] = { -- crit_chance: +10%, talent_name: Blazing Piety, +colors
		en = Dot_green.." {charges:%s} Max "..CKWord("Combat Ability", "Cmbt_abil_rgb").." charges.\n"
			.."\n"
			..Dot_green.." {redline_stack:%s} Max {talent_name:%s} Stacks.",
		ru = Dot_green.." {charges:%s} к максимуму зарядов "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." {redline_stack:%s} к максимуму зарядов таланта {talent_name:%s}.",
		["zh-tw"] = Dot_green.." "..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."最大充能數 {charges:%s}。\n"
			.."\n"
			..Dot_green.." {talent_name:%s} 最大層數 {redline_stack:%s}。",
		["zh-cn"] = Dot_green.." {charges:%s} 最大"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能。\n"
			.."\n"
			..Dot_green.." {redline_stack:%s} 最大 {talent_name:%s} 层数。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 1-3 - Capacitory Limit Override - Обход лимита ёмкости +]--	08.08.2026
	["loc_talent_cryptic_redline_rending_clarified_desc"] = { -- toughness: 50%, toughness_damage_reduction: +25%, toughness_small: 2%, +colors
		en = "While at {stacks:%s} {talent_name:%s} Stacks or above you gain:\n"
			..Dot_green.." {rending:%s} "..CKWord("Rending", "Rending_rgb")..".",
		ru = "При наличии {stacks:%s} или более зарядов таланта {talent_name:%s} вы получаете:\n"
			..Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони.",
		["zh-tw"] = "{talent_name:%s} 達 {stacks:%s} 層或以上時獲得：\n"
			..Dot_green.." {rending:%s} "..CKWord("撕裂", "Rending_rgb_tw").."。",
		["zh-cn"] = "拥有 {stacks:%s} 层或以上 {talent_name:%s} 时获得：\n"
			..Dot_green.." {rending:%s} "..CKWord("撕裂", "Rending_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 1-4 - Surge-Extension - Расширение импульса +]--	08.08.2026
	["loc_talent_cryptic_redline_toughness_clarified_desc"] = { -- cooldown_regen: +100%, duration: 3, +colors
		en = "Gaining a {talent_name:%s} Stack replenishes:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.",
		ru = "Получение заряда таланта {talent_name:%s} восстанавливает:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение {duration:%s} секунд.",
		["zh-tw"] = "獲得一層 {talent_name:%s} 時，會在 {duration:%s} 秒內恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = "获得一层 {talent_name:%s} 恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."，在 {duration:%s} 秒内。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 2 - Power Overload - Перегрузка питания +]--	08.08.2026
	["loc_talent_cryptic_overload_keystone_coherency_desc"] = { -- damage: +10%, max_wounds: 5, +colors
		en = "Kills by you and Allies in "..CKWord("Coherency", "Coherency_rgb").." grant:\n"
			..Dot_nc.." {low_stack:%s} Stack of {talent_name:%s}.\n"
			..Dot_nc.." {elite_stacks:%s} Stacks on Elite and Specialist Kills.\n"
			..Dot_nc.." Max {max_stacks:%s} Stacks.\n"
			.."\n"
			.."Reaching max Stacks triggers an "..CKWord("Overload", "Overload_rgb").." and resets to {zero:%s} Stacks.\n"
			.."\n"
			.."The "..CKWord("Overload", "Overload_rgb").." grants you and Allies in "..CKWord("Coherency", "Coherency_rgb").." for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".",
		ru = "Убийства совершённые вами или союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." дают:\n"
			..Dot_nc.." {low_stack:%s} заряд таланта {talent_name:%s}.\n"
			..Dot_nc.." {elite_stacks:%s} заряда вы получаете за убийство элитного врага или специалиста.\n"
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.\n"
			.."\n"
			.."Достижение максимума зарядов вызывает "..CKWord("Перегрузку", "Overloadu_rgb_ru").." и сбрасывает заряды до {zero:%s}.\n"
			.."\n"
			..CKWord("Перегрузка", "Overloada_rgb_ru").." даёт вам и союзникам в пределах "..CKWord("сплочённости", "splochennosti_rgb_ru").." на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".",
		["zh-tw"] = "你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友擊殺敵人時，會提供：\n"
			..Dot_nc.." {low_stack:%s} 層 {talent_name:%s}。\n"
			..Dot_nc.." 擊殺精英或專家時提供 {elite_stacks:%s} 層。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			.."\n"
			.."達到最大層數時觸發"..CKWord("超載", "Overload_rgb_tw").."，並重設為 {zero:%s} 層。\n"
			.."\n"
			..CKWord("超載", "Overload_rgb_tw").."會使你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，以及\n"
			..Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。",
		["zh-cn"] = "你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友击杀给予：\n"
			..Dot_nc.." {low_stack:%s} 层 {talent_name:%s}。\n"
			..Dot_nc.." 精英和专家击杀给予 {elite_stacks:%s} 层。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 层。\n"
			.."\n"
			.."达到最大层数时触发"..CKWord("过载", "Overload_rgb_zh_cn").."，并将层数重置为 {zero:%s}。\n"
			.."\n"
			..CKWord("过载", "Overload_rgb_zh_cn").."为你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友在 {duration:%s} 秒内提供：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."和\n"
			..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 2-1 - Critical Power Overload - Критическая перегрузка питания +]--	08.08.2026
	["loc_talent_cryptic_overload_keystone_bigger_explosion_desc"] = { -- talent_name: Martyrdom, toughness_damage_reduction: +7.5%, +colors
		en = "The "..CKWord("Overload", "Overload_rgb").." now applies "..CKWord("Electrocution", "Electrocution_rgb").." to enemies in melee range.\n"
			.."\n"
			.."Affected enemies take for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} "..CKWord("Damage", "Damage_rgb")..".",
		ru = "Теперь "..CKWord("Перегрузка", "Overloada_rgb_ru").." также накладывает "..CKWord("электрошок", "elektroshok_rgb_ru").." на врагов в радиусе ближнего боя.\n"
			.."\n"
			.."Поражённые враги получают в течение {duration:%s} секунд:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} "..CKWord("урона", "urona_rgb_ru")..".",
		["zh-tw"] = CKWord("超載", "Overload_rgb_tw").."現在也會對近戰範圍內的敵人施加"..CKWord("電擊", "Electrocution_rgb_tw").."。\n"
			.."\n"
			.."受影響的敵人在 {duration:%s} 秒內：\n"
			..Dot_green.." 受到的"..CKWord("傷害", "Damage_rgb_tw").." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s}。",
		["zh-cn"] = "现在"..CKWord("过载", "Overload_rgb_zh_cn").."还会对近战范围内的敌人施加"..CKWord("电击", "Electrocute_rgb_zh_cn").."。\n"
			.."\n"
			.."受影响的敌人在 {duration:%s} 秒内承受：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 2-2 - Invigorating Overload - Оживляющая перегрузка +]--	08.08.2026
	["loc_talent_cryptic_overload_keystone_toughness_stamina_desc"] = { -- talent_name: Martyrdom, corruption_resistance: +10%, +colors
		en = "When the "..CKWord("Overload", "Overload_rgb").." occurs, you and Allies in "..CKWord("Coherency", "Coherency_rgb").." restore:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." and\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".",
		ru = "При возникновении "..CKWord("Перегрузки", "Overloadki_rgb_ru").." вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." восстанавливаете:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".",
		["zh-tw"] = CKWord("超載", "Overload_rgb_tw").."發生時，你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，以及\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_tw").."。",
		["zh-cn"] = "当"..CKWord("过载", "Overload_rgb_zh_cn").."发生时，你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."和\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 2-3 - Static Capacitor Drain - Статический разряд конденсатора +]--	08.08.2026
	["loc_talent_cryptic_overload_keystone_permastack_desc"] = { -- talent_name: Martyrdom, attack_speed: +6%, +colors
		en = "After "..CKWord("overloading", "overloading_rgb").." {first_threshold:%s} times, you gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."After "..CKWord("overloading", "overloading_rgb").." {second_threshold:%s} times, you gain:\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			.."\n"
			.."After "..CKWord("overloading", "overloading_rgb").." {third_threshold:%s} times, you gain:\n"
			..Dot_green.." {power:%s} "..CKWord("Capacitance", "Capacitance_rgb").." generation.\n"
			.."\n"
			..Dot_nc.." Bonuses last until death.",
		ru = "После получения "..CKWord("перегрузки", "overloading_rgb_ru").." в {first_threshold:%s} раз вы получаете:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			.."После получения "..CKWord("перегрузки", "Overload_rgb_ru").." в {second_threshold:%s} раз вы получаете:\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			.."\n"
			.."После получения "..CKWord("перегрузки", "Overload_rgb_ru").." в {third_threshold:%s} раз вы получаете:\n"
			..Dot_green.." {power:%s} к генерации "..CKWord("ёмкости", "emkosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Бонусы действуют до смерти.",
		["zh-tw"] = CKWord("超載", "overloading_rgb_tw").." {first_threshold:%s} 次後獲得：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..CKWord("超載", "overloading_rgb_tw").." {second_threshold:%s} 次後獲得：\n"
			..Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			.."\n"
			..CKWord("超載", "overloading_rgb_tw").." {third_threshold:%s} 次後獲得：\n"
			..Dot_green.." {power:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."產生量。\n"
			.."\n"
			..Dot_nc.." 加成會持續至死亡。",
		["zh-cn"] = "过载 {first_threshold:%s} 次后，获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			.."过载 {second_threshold:%s} 次后，获得：\n"
			..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。\n"
			.."\n"
			.."过载 {third_threshold:%s} 次后，获得：\n"
			..Dot_green.." {power:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."生成。\n"
			.."\n"
			..Dot_nc.." 增益持续至死亡。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 2-4 - Powerdrive - Силовой привод +]--	08.08.2026
	["loc_talent_cryptic_overload_keystone_abilities_desc"] = { -- talent_name: Martyrdom, toughness_modifier: 5%, +colors
		en = "Per each "..CKWord("Combat Ability", "Cmbt_abil_rgb").." charge spent, you gain:\n"
			..Dot_green.." {stacks:%s} Stacks of "..CKWord("Power Overload", "PowerOverload_rgb")..".",
		ru = "За каждый потраченный заряд "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." вы получаете:\n"
			..Dot_green.." {stacks:%s} зарядов таланта "..CKWord("Перегрузка питания", "PowerOverload_rgb_ru")..".",
		["zh-tw"] = "每消耗一層"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."充能，獲得：\n"
			..Dot_green.." {stacks:%s} 層"..CKWord("能量超載", "PowerOverload_rgb_tw").."。",
		["zh-cn"] = "每消耗一层"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能，获得：\n"
			..Dot_green.." {stacks:%s} 层"..CKWord("能量过载", "PowerOverload_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 3 - Flensing Protocols - Протоколы свежевания +]--	08.08.2026
	["loc_talent_cryptic_dissector_desc"] = { -- talent_name: Martyrdom, cooldown_regen: +50%, current_health: 25%, +colors
		en = "You have up to {max_stacks:%s} Stacks of {talent_name:%s}.\n"
			.."\n"
			.."Each Stack grants:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			.."\n"
			.."Taking Damage removes:\n"
			..Dot_red.." {removed_stacks:%s} Stack.\n"
			..Dot_nc.." Can only occur once every second.\n" -- {icd:%s}
			.."\n"
			.."Elite and Specialist Kills restore:\n"
			..Dot_green.." {elite_special_stack:%s} Stacks and\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".",
		ru = "У вас может быть до {max_stacks:%s} зарядов таланта {talent_name:%s}.\n"
			.."\n"
			.."Каждый заряд даёт:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			.."\n"
			.."Получение "..CKWord("урона", "urona_rgb_ru").." снимает:\n"
			..Dot_red.." {removed_stacks:%s} заряд.\n"
			..Dot_nc.." Срабатывает раз в секунду.\n" -- {icd:%s}
			.."\n"
			.."Убийства элитных врагов и специалистов восстанавливают:\n"
			..Dot_green.." {elite_special_stack:%s} заряда и\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".",
		["zh-tw"] = "你最多可擁有 {max_stacks:%s} 層 {talent_name:%s}。\n"
			.."\n"
			.."每層提供：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，以及\n"
			..Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			.."\n"
			.."受到傷害時移除：\n"
			..Dot_red.." {removed_stacks:%s} 層。\n"
			..Dot_nc.." 每秒最多發生一次。\n"
			.."\n"
			.."擊殺精英或專家時恢復：\n"
			..Dot_green.." {elite_special_stack:%s} 層，以及\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = "你拥有最多 {max_stacks:%s} 层 {talent_name:%s}。\n"
			.."\n"
			.."每层提供：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."和\n"
			..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。\n"
			.."\n"
			.."受到伤害移除：\n"
			..Dot_red.." {removed_stacks:%s} 层。\n"
			..Dot_nc.." 每秒最多触发一次。\n"
			.."\n"
			.."精英和专家击杀恢复：\n"
			..Dot_green.." {elite_special_stack:%s} 层和\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 3-1 - Servo-Sinew Surge - Импульс сервосухожилий +]--	08.08.2026
	["loc_talent_cryptic_dissector_crit_attack_speed_desc"] = { -- toughness: 0.4%, +colors
		en = "Each Stack also grants:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb").." and\n"
			..Dot_green.." {attack_speed:%s} Melee Attack Speed.",
		ru = "Каждый заряд также даёт:\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." и\n"
			..Dot_green.." {attack_speed:%s} к скорости атак ближнего боя.",
		["zh-tw"] = "每層還會提供：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("爆擊率", "Crt_hit_chnc_rgb_tw").."，以及\n"
			..Dot_green.." {attack_speed:%s} 近戰攻擊速度。",
		["zh-cn"] = "每层还额外提供：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("暴击命中几率", "Crt_hit_chnc_rgb_zh_cn").."和\n"
			..Dot_green.." {attack_speed:%s} 近战攻击速度。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 3-2 - Higher Purpose - Высшая цель +]--	08.08.2026
	["loc_talent_cryptic_dissector_power_desc"] = { -- stacks: 3, +colors
		en = "Elite and Specialist Kills restore an additional:\n"
			..Dot_green.." {power:%s} "..CKWord("Capacitance", "Capacitance_rgb")..".",
		ru = "Убийства элитных врагов и специалистов восстанавливают дополнительно:\n"
			..Dot_green.." {power:%s} "..CKWord("ёмкости", "emkosti_rgb_ru")..".",
		["zh-tw"] = "擊殺精英或專家時額外恢復：\n"
			..Dot_green.." {power:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."。",
		["zh-cn"] = "精英和专家击杀额外恢复：\n"
			..Dot_green.." {power:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 3-3 - Enhanced Capacitance Protocols - Усиленные протоколы ёмкости +]--	08.08.2026
	["loc_talent_cryptic_dissector_ability_stacks_desc"] = { -- duration: 10, +colors
		en = Dot_green.." Using an "..CKWord("Ability", "Ability_rgb").." replenishes All Stacks.",
		ru = Dot_green.." Использование "..CKWord("способности", "sposobnosti_rgb_ru").." восполняет все заряды.",
		["zh-tw"] = Dot_green.." 使用"..CKWord("技能", "Ability_rgb_tw").."會恢復所有層數。",
		["zh-cn"] = Dot_green.." 使用"..CKWord("技能", "Ability_rgb_zh_cn").."时恢复所有层数。",
	},
	--[+ KEYSTONE - КЛЮЧЕВОЙ ТАЛАНТ - 3-4 - Honed Dissector - Отточенный диссектор +]--	08.08.2026
	["loc_talent_cryptic_dissector_max_stacks_desc"] = { -- cooldown: +75%, duration: 2, +colors
		en = Dot_green.." Increase Max Stacks to {max_stacks:%s}.",
		ru = Dot_green.." Максимум зарядов увеличивается до {max_stacks:%s}.",
		["zh-cn"] = Dot_green.." 最大层数增加至 {max_stacks:%s}。",
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ PASSIVES - ПАССИВНЫЙ - 1 - Overcharge Transfer Lattice - Решётка переноса перегрузки +]--	08.08.2026
	["loc_talent_cryptic_electrocution_defense_desc"] = { -- damage: +25%, +colors
		en = "When an Enemy hits you with a Melee Attack, they and Enemies within {range:%s} meters are "..CKWord("Electrocuted", "Electrocuted_rgb")..".\n"
			.."\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "Когда враг попадает по вам атакой ближнего боя, он и враги в радиусе {range:%s} метров поражаются "..CKWord("электрошоком", "elektroshokom_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
		["zh-tw"] = "敵人以近戰攻擊命中你時，該敵人及 {range:%s} 公尺內的敵人會被"..CKWord("電擊", "Electrocuted_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 冷卻時間：{cooldown:%s} 秒。",
		["zh-cn"] = "当敌人用近战攻击击中你时，该敌人及其周围 {range:%s} 米内的敌人都会被"..CKWord("电击", "Electrocuted_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 冷却时间：{cooldown:%s} 秒。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 2 - Retribution Conduit - Проводник возмездия +]--	08.08.2026
	["loc_talent_cryptic_damage_vs_electrocuted_scaling_on_charge_desc"] = { -- damage: +5%, max_stacks: 5, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs "..CKWord("Electrocuted", "Electrocuted_rgb")..".\n"
			.."\n"
			..Dot_green.." {more_damage:%s} more "..CKWord("Damage", "Damage_rgb").." per current "..CKWord("Combat Ability", "Cmbt_abil_rgb").." сharge.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против поражённых "..CKWord("электрошоком", "elektroshokom_rgb_ru").." врагов.\n"
			.."\n"
			..Dot_green.." {more_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." дополнительно за каждый заряд "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".",
		["zh-tw"] = Dot_green.." 對"..CKWord("電擊", "Electrocuted_rgb_tw").."敵人的"..CKWord("傷害", "Damage_rgb_tw").."增加 {damage:%s}。\n"
			.."\n"
			..Dot_green.." 每層現有"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."充能再使"..CKWord("傷害", "Damage_rgb_tw").."增加 {more_damage:%s}。",
		["zh-cn"] = Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."对受"..CKWord("电击", "Electrocuted_rgb_zh_cn").."的敌人。\n"
			.."\n"
			..Dot_green.." 每层当前"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能额外提供 {more_damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 3 - Kinetic Energy Distribution - Распределение кинетической энергии +]--	08.08.2026
	["loc_talent_cryptic_toughness_on_damage_taken_desc"] = { -- damage: +25%, +colors
		en = "On taking "..CKWord("Damage", "Damage_rgb")..", you restore:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "При получении "..CKWord("урона", "urona_rgb_ru")..", вы восстанавливаете:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение {duration:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
		["zh-tw"] = "受到"..CKWord("傷害", "Damage_rgb_tw").."時，會在 {duration:%s} 秒內恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 冷卻時間：{cooldown:%s} 秒。",
		["zh-cn"] = "受到"..CKWord("伤害", "Damage_rgb_zh_cn").."时，在 {duration:%s} 秒内恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 冷却时间：{cooldown:%s} 秒。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 4 - System Shock - Системный шок +]--	08.08.2026
	["loc_talent_cryptic_electrocution_applies_brittleness_desc"] = { -- toughness: 4%, +colors
		en = Dot_green.." {stacks:%s} Stacks of "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." applied to enemies on "..CKWord("Electrocution", "Electrocution_rgb")..".",
		ru = Dot_green.." {stacks:%s} заряда "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." накладывается на врагов при поражении их "..CKWord("электрошоком", "elektroshokom_rgb_ru")..".",
		["zh-tw"] = Dot_green.." "..CKWord("電擊", "Electrocution_rgb_tw").."敵人時，對其施加 {stacks:%s} 層"..CKWord("脆弱", "Brittleness_rgb_tw").."，每層 "..CNumb("2.5%", "pc_2_5_rgb").."。",
		["zh-cn"] = Dot_green.." 电击敌人时施加 {stacks:%s} 层 "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 5 - Entropic Transfer - Энтропийный перенос +]--	08.08.2026
	["loc_talent_cryptic_electrocution_toughness_desc"] = { -- toughness: +2.5%, range: 5, more_toughness: +1%, monster_count: 5, max: +7.5%, +colors
		en = "On "..CKWord("Electrocuting", "Electrocuting_rgb").." an Enemy, you restore:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.",
		ru = "При поражении врага "..CKWord("электрошоком", "elektroshokom_rgb_ru")..", вы восстанавливаете:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение {duration:%s} секунд.",
		["zh-tw"] = CKWord("電擊", "Electrocuting_rgb_tw").."敵人時，會在 {duration:%s} 秒內恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = "电击一名敌人时，在 {duration:%s} 秒内恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 6 - Weakness Analysis Doctrine - Доктрина анализа уязвимостей +]--	08.08.2026
	["loc_talent_cryptic_afflicted_increased_damage_desc"] = { -- toughness: +100%, +colors
		en = "Hitting an Enemy afflicted with any of the following effects grants for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."Effects:\n"
			..Dot_nc.." "..CKWord("Electrocuted", "Electrocuted_rgb")..",\n"
			..Dot_nc.." "..CKWord("Soulblaze", "Soulblaze_rgb")..",\n"
			..Dot_nc.." "..CKWord("Burn", "Burn_rgb")..",\n"
			..Dot_nc.." "..CKWord("Bleed", "Bleed_rgb")..",\n"
			..Dot_nc.." "..CKWord("Chem Toxin", "Chem_Tox_rgb")..".\n"
			.."\n"
			..Dot_nc.." Triggers on both Melee and Ranged attacks.",
		ru = "Попадание по врагу, поражённому любым из нижеследующих эффектов, даёт на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			.."Эффекты:\n"
			..Dot_nc.." "..CKWord("Электрошок", "Elektroshok_rgb_ru")..",\n"
			..Dot_nc.." "..CKWord("Горение души", "Gorenie_dushi_rgb_ru")..",\n"
			..Dot_nc.." "..CKWord("Горение", "Gorenie_rgb_ru")..",\n"
			..Dot_nc.." "..CKWord("Кровотечение", "Krovotechenie_rgb_ru")..",\n"
			..Dot_nc.." "..CKWord("Хим-токсин", "Chem_Tox_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Срабатывает для атак ближнего и дальнего боя.",
		["zh-tw"] = "命中受下列任一效果影響的敵人時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			.."效果：\n"
			..Dot_nc.." "..CKWord("電擊", "Electrocuted_rgb_tw").."，\n"
			..Dot_nc.." "..CKWord("靈魂之火", "Soulblaze_rgb_tw").."，\n"
			..Dot_nc.." "..CKWord("燃燒", "Burn_rgb_tw").."，\n"
			..Dot_nc.." "..CKWord("流血", "Bleed_rgb_tw").."，\n"
			..Dot_nc.." "..CKWord("化學毒素", "Chem_Tox_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 近戰與遠程攻擊皆可觸發。",
		["zh-cn"] = "命中带有以下效果的敌人时，在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			.."效果：\n"
			..Dot_nc.." "..CKWord("电击", "Electrocuted_rgb_zh_cn")..",\n"
			..Dot_nc.." "..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn")..",\n"
			..Dot_nc.." "..CKWord("燃烧", "Burn_rgb_zh_cn")..",\n"
			..Dot_nc.." "..CKWord("流血", "Bleed_rgb_zh_cn")..",\n"
			..Dot_nc.." "..CKWord("化学毒素", "Chem_Tox_rgb_zh_cn")..".\n"
			.."\n"
			..Dot_nc.." 近战与远程攻击均可触发。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 7 - Voltaic Burst - Вольтаическая вспышка +]--	08.08.2026
	["loc_talent_cryptic_electrocution_push_desc"] = { -- toughness: 15%, +colors
		en = "Pushing an Enemy applies "..CKWord("Electrocution", "Electrocution_rgb")..", dealing "..CKWord("Damage", "Damage_rgb").." and "..CKWord("Stunning", "Stunning_rgb").." them.\n"
			.."\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "Отталкивание врагов накладывает на них "..CKWord("электрошок", "elektroshok_rgb_ru")..", наносит "..CKWord("урон", "uron_rgb_ru").." и "..CKWord("оглушает", "oglushaet_rgb_ru").." их.\n"
			.."\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
		["zh-tw"] = "推擊敵人時會施加"..CKWord("電擊", "Electrocution_rgb_tw").."，造成"..CKWord("傷害", "Damage_rgb_tw").."並使其"..CKWord("眩暈", "Stunning_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 冷卻時間：{cooldown:%s} 秒。",
		["zh-cn"] = "推击敌人会施加"..CKWord("电击", "Electrocute_rgb_zh_cn").."，造成"..CKWord("伤害", "Damage_rgb_zh_cn").."并"..CKWord("眩晕", "Stun_rgb_zh_cn").."他们。\n"
			.."\n"
			..Dot_nc.." 冷却时间：{cooldown:%s} 秒。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 8 - Ablative Wards - Абляционные барьеры +]--	08.08.2026
	["loc_talent_cryptic_corruption_resistance_doom_desc"] = { -- toughness: 10%, +colors
		en = Dot_green.." {corruption_resistance:%s} "..CKWord("Corruption", "Corruption_rgb").." Resistance.\n"
			.."\n"
			..Dot_red.." {corruption_damage_flat:%s} "..CKWord("Corruption Damage", "Corruptdmg_rgb").." taken every {interval:%s} seconds.",
		ru = Dot_green.." {corruption_resistance:%s} к сопротивлению "..CKWord("порче", "porche_rgb_ru")..".\n"
			.."\n"
			..Dot_red.." {corruption_damage_flat:%s} "..CKWord("урона от порчи", "porchi_urona_rgb_ru").." накладывается каждые {interval:%s} секунд.",
		["zh-tw"] = Dot_green.." {corruption_resistance:%s} "..CKWord("腐敗", "Corruption_rgb_tw").."抗性。\n"
			.."\n"
			..Dot_red.." 每 {interval:%s} 秒受到 {corruption_damage_flat:%s} "..CKWord("腐敗傷害", "Corruptdmg_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {corruption_resistance:%s} "..CKWord("腐化", "Corrupted_rgb_zh_cn").."抗性。\n"
			.."\n"
			..Dot_red.." 每 {interval:%s} 秒受到 {corruption_damage_flat:%s} "..CKWord("腐化伤害", "Corruptdmg_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 9 - Shockline Breach Protocol - Протокол прорыва шоковой линии +]--	08.08.2026
	["loc_talent_cryptic_pushing_grants_cleave_alt_desc"] = { -- damage: +20%, &->and, +colors
		en = "On Pushing an Enemy, you gain for {duration:%s} seconds:\n"
			..Dot_green.." {cleave:%s} Melee "..CKWord("Cleave", "Cleave_rgb")..".",
		ru = "При отталкивании врага вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru").." врагов в ближнем бою.",
		["zh-tw"] = "推擊敵人時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {cleave:%s} 近戰"..CKWord("順劈攻擊", "Cleave_rgb_tw").."。",
		["zh-cn"] = "推击敌人时，在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {cleave:%s} 近战"..CKWord("顺劈", "Cleave_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 10 - Galvanized Coating - Оцинкованное покрытие +]--	08.08.2026
	["loc_talent_cryptic_stun_dr_power_desc"] = { -- damage: +50%, duration: 3, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity.\n"
			.."\n"
			.."Taking Melee "..CKWord("Damage", "Damage_rgb").." spends:\n"
			..Dot_red.." {power:%s} "..CKWord("Capacitance", "Capacitance_rgb")..".",
		ru = Dot_green.." {damage:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru")..".\n"
			.."\n"
			.."Получение "..CKWord("урона", "urona_rgb_ru").." в ближнем бою тратит:\n"
			..Dot_red.." {power:%s} "..CKWord("ёмкости", "emkosti_rgb_ru")..".",
		["zh-tw"] = Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."抗性。\n"
			..Dot_green.." 免疫"..CKWord("眩暈", "Stun_rgb_tw").."。\n"
			.."\n"
			.."受到近戰"..CKWord("傷害", "Damage_rgb_tw").."時消耗：\n"
			..Dot_red.." {power:%s} "..CKWord("電容量", "Capacitance_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性。\n"
			..Dot_green.." "..CKWord("眩晕", "Stun_rgb_zh_cn").."免疫。\n"
			.."\n"
			.."受到近战"..CKWord("伤害", "Damage_rgb_zh_cn").."消耗：\n"
			..Dot_red.." {power:%s} "..CKWord("电容", "Capacitance_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 11 - Electro-Strike Conduit - Проводник электроудара +]--	08.08.2026
	["loc_talent_cryptic_melee_crits_electrocute_first_desc"] = { -- active_duration: 5, cooldown_duration: 120, s->seconds, +colors
		en = "Melee "..CKWord("Critical Hits", "Crit_hits_rgb").." "..CKWord("Electrocute", "Electrocute_rgb").." the first Enemy hit.",
		ru = CKWord("Критические удары", "Krit_udary_rgb_ru").." в ближнем бою накладывают "..CKWord("электрошок", "elektroshok_rgb_ru").." на первого поражённого врага.",
		["zh-tw"] = "近戰攻擊造成"..CKWord("致命一擊", "Critical_rgb_tw").."時，會"..CKWord("電擊", "Electrocute_rgb_tw").."首名命中的敵人。",
		["zh-cn"] = "近战"..CKWord("暴击", "Crit_hit_rgb_zh_cn").."会"..CKWord("电击", "Electrocute_rgb_zh_cn").."第一个命中的敌人。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 12 - Data Sensor Protocol - Протокол сенсора данных +]--	08.08.2026
	["loc_talent_cryptic_ally_coherency_defenses_desc"] = { -- damage: +4%, time: 5, amount: 5, s->seconds, +colors
		en = "When you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." take "..CKWord("Toughness Damage", "Tghns_dmg_rgb")..", they restore:\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".\n"
			..Dot_nc.." Cooldown: {stamina_cd:%s} seconds.\n"
			.."\n"
			.."When you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." take "..CKWord("Health", "Health_rgb").." "..CKWord("Damage", "Damage_rgb")..", they restore:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			..Dot_nc.." Cooldown: {toughness_cd:%s} seconds.",
		ru = "Когда вы или союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете "..CKWord("урон стойкости", "stoikosti_uron_rgb_ru")..", вы восстанавливаете:\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n"
			..Dot_nc.." Восстановление: {stamina_cd:%s} секунд.\n"
			.."\n"
			.."Когда вы или союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете "..CKWord("урон", "uron_rgb_ru").." "..CKWord("здоровью", "zdoroviu_rgb_ru")..", вы восстанавливаете:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Восстановление: {toughness_cd:%s} секунд.",
		["zh-tw"] = "你或"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友受到"..CKWord("韌性傷害", "Tghns_dmg_rgb_tw").."時，會恢復：\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_tw").."。\n"
			..Dot_nc.." 冷卻時間：{stamina_cd:%s} 秒。\n"
			.."\n"
			.."你或"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友受到"..CKWord("生命值", "Health_rgb_tw")..CKWord("傷害", "Damage_rgb_tw").."時，會恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			..Dot_nc.." 冷卻時間：{toughness_cd:%s} 秒。",
		["zh-cn"] = "当你或"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友受到"..CKWord("韧性伤害", "Tghns_dmg_rgb_zh_cn").."时，恢复：\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn")..".\n"
			..Dot_nc.." 冷却：{stamina_cd:%s} 秒。\n"
			.."\n"
			.."当你或"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友受到生命"..CKWord("伤害", "Damage_rgb_zh_cn").."时，恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn")..".\n"
			..Dot_nc.." 冷却：{toughness_cd:%s} 秒。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 13 - Salvation Doctrine - Доктрина спасения +]--	08.08.2026
	["loc_talent_cryptic_revive_speed_and_dr_desc"] = { -- talent_name: Until Death, max_health: 25%, melee_multiplier: 3, +colors
		en = Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Resistance while Reviving an Ally.\n"
			.."\n"
			..Dot_green.." {revive_speed:%s} Revive Speed.",
		ru = Dot_green.." {damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." во время оживления союзника.\n"
			.."\n"
			..Dot_green.." {revive_speed:%s} к скорости оживления.",
		["zh-tw"] = Dot_green.." 救起盟友期間獲得 {damage_reduction:%s} "..CKWord("傷害", "Damage_rgb_tw").."抗性。\n"
			.."\n"
			..Dot_green.." {revive_speed:%s} 救援速度。",
		["zh-cn"] = Dot_green.." 救助盟友时 {damage_reduction:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性。\n"
			.."\n"
			..Dot_green.." {revive_speed:%s} 救助速度。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 14 - Precision Combat Augurs - Точные боевые авгуры +]--	08.08.2026
	["loc_talent_cryptic_next_attack_all_damage_on_dodge_desc"] = { -- movement_speed: +15%, time: 2, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for your Next Attack on Successful Dodge.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для вашей следующей атаки при успешном уклонении.",
		["zh-tw"] = Dot_green.." 成功閃避時，下一次攻擊獲得 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 成功闪避后，下一次攻击造成 {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 15 - Hybrid Combat Covenant - Завет о гибридном бое +]--	08.08.2026
	["loc_talent_cryptic_hybrid_damage_desc"] = { -- damage: +20%, s->seconds, +colors
		en = Dot_green.." {ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on Melee Kill.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..Dot_green.." {melee_damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." for {duration_two:%s} seconds on Ranged Kill.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..Dot_nc.." Stacks decay one at a time.",
		ru = Dot_green.." {ranged_damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд за убийство в ближнем бою.\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.\n"
			.."\n"
			..Dot_green.." {melee_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя на {duration_two:%s} секунд за убийство в дальнем бою.\n"
			..Dot_nc.." Суммируется {max_stacks:%s} раз.\n"
			.."\n"
			..Dot_nc.." Заряды сбрасываются по одному.",
		["zh-tw"] = Dot_green.." 近戰擊殺時獲得 {ranged_damage:%s} 遠程"..CKWord("傷害", "Damage_rgb_tw").."，持續 {duration:%s} 秒。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			.."\n"
			..Dot_green.." 遠程擊殺時獲得 {melee_damage:%s} 近戰"..CKWord("傷害", "Damage_rgb_tw").."，持續 {duration_two:%s} 秒。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			.."\n"
			..Dot_nc.." 層數會逐一衰減。",
		["zh-cn"] = Dot_green.." 近战击杀后 {duration:%s} 秒内，远程"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {ranged_damage:%s}。\n"
			..Dot_nc.." 叠加 {stacks:%s} 次。\n"
			.."\n"
			..Dot_green.." 远程击杀后 {duration_two:%s} 秒内，近战"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {melee_damage:%s}。\n"
			..Dot_nc.." 叠加 {max_stacks:%s} 次。\n"
			.."\n"
			..Dot_nc.." 层数逐一衰减。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 16 - Auto-Repair Doctrines - Доктрины самопочинки +]--	08.08.2026
	["loc_talent_cryptic_toughness_per_charge_desc"] = { -- min_hits: 2, impact_modifier: +8%, time: 8, max_stacks: 5, s->seconds, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished per second.\n"
			.."\n"
			..Dot_green.." {toughness_per_charge:%s} additional "..CKWord("Toughness", "Toughness_rgb").." per current "..CKWord("Combat Ability", "Cmbt_abil_rgb").." сharge.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду.\n"
			.."\n"
			..Dot_green.." {toughness_per_charge:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается дополнительно за каждый текущий заряд "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".",
		["zh-tw"] = Dot_green.." 每秒恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 每層現有"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."充能，額外恢復 {toughness_per_charge:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 每秒恢复 {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn")..".\n"
			.."\n"
			..Dot_green.." 每层当前"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能额外恢复 {toughness_per_charge:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 17 - Power Overflow - Переполнение питания +]--	08.08.2026
	["loc_talent_cryptic_shared_toughness_desc"] = { -- num_enemies: 2, range: 5, damage: +2%, cleave: +10%, stacks: 5, s->seconds, +colors
		en = "When at Full "..CKWord("Toughness", "Toughness_rgb")..":\n"
			..Dot_green.." {toughness_share:%s} of excess "..CKWord("Toughness", "Toughness_rgb").." Replenished is distributed to each Ally in "..CKWord("Coherency", "Coherency_rgb")..".",
		ru = "При полной "..CKWord("стойкости", "stoikosti_rgb_ru").." между союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." распределяется:\n"
			..Dot_green.." {toughness_share:%s} от избыточной восстанавливаемой "..CKWord("стойкости", "stoikosti_rgb_ru")..".",
		["zh-tw"] = ""..CKWord("韌性", "Toughness_rgb_tw").."全滿時：\n"
			..Dot_green.." 溢出的"..CKWord("韌性", "Toughness_rgb_tw").."恢復量之 {toughness_share:%s} 會分配給"..CKWord("協同", "Coherency_rgb_tw").."範圍內的每名盟友。",
		["zh-cn"] = "当"..CKWord("韧性", "Toughness_rgb_zh_cn").."满时：\n"
			..Dot_green.." 超出的 {toughness_share:%s} 恢复"..CKWord("韧性", "Toughness_rgb_zh_cn").."会分配给"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的每位盟友。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 18 - Sequenced Charge - Последовательный заряд +]--	08.08.2026
	["loc_talent_cryptic_strength_on_charge_gain_desc"] = { -- damage_reduction: +60%, duration: 4, cooldown: 8, s->seconds, +colors
		en = "On gaining a "..CKWord("Combat Ability", "Cmbt_abil_rgb").." сharge, you gain:\n"
			..Dot_green.." {strength:%s} "..CKWord("Strength", "Strength_rgb")..".\n"
			.."\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "При получении заряда "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..", вы получаете:\n"
			..Dot_green.." {strength:%s} к "..CKWord("силе", "sile_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
		["zh-tw"] = "獲得一層"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."充能時，獲得：\n"
			..Dot_green.." {strength:%s} "..CKWord("威力", "Strength_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 持續 {duration:%s} 秒。",
		["zh-cn"] = "获得一层"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能时，获得：\n"
			..Dot_green.." {strength:%s} "..CKWord("威力", "Strength_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 持续 {duration:%s} 秒。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 19 - Target Prioritization Psalms - Псалмы приоритизации целей +]--	08.08.2026
	["loc_talent_cryptic_specials_marking_desc"] = { -- damage: +15%, +colors
		en = "Specialists that get within {range:%s} meters of you are Marked.",
		ru = "Специалисты, оказавшиеся в радиусе {range:%s} метров от вас, помечаются.",
		["zh-tw"] = "進入你周圍 {range:%s} 公尺內的專家會被標記。",
		["zh-cn"] = "进入你 {range:%s} 米内的专家敌人会被标记。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 20 - Moebian Conductor - Моэбианский проводник +]--	08.08.2026
	["loc_talent_cryptic_damage_on_ability_desc"] = { -- ammo: +5%, stacks: 5
		en = "On "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use, you gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".",
		ru = "При использовании "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".",
		["zh-tw"] = "使用"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = "使用"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."时，在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 21 - Superior Defence Engrams - Улучшенные энграммы защиты +]--	08.08.2026
	["loc_talent_cryptic_ranged_stacking_toughness_desc"] = { -- attack_speed: +10%
		en = "Ranged Kills grant Stacks.\n"
			.."\n"
			.."Each Stack replenishes per second:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			..Dot_nc.." Max {max_stacks:%s} Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "Убийства в дальнем бою дают заряды.\n"
			.."\n"
			.."Каждый заряд восстанавливает в секунду:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
		["zh-tw"] = "遠程擊殺會提供層數。\n"
			.."\n"
			.."每層每秒恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。",
		["zh-cn"] = "远程击杀给予层数。\n"
			.."\n"
			.."每层每秒恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn")..".\n"
			.."\n"
			..Dot_nc.." 最多 {max_stacks:%s} 层。\n"
			..Dot_nc.." 持续 {duration:%s} 秒。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 22 - Superior Tracking Litanies - Улучшенные литании отслеживания +]--	08.08.2026
	["loc_talent_cryptic_no_braced_movement_penalty_desc"] = { -- revive_speed: +25%, duration: 5, movement_speed: +10%, tdr: 15%
		en = "While bracing or aiming down sights you gain:\n"
			..Dot_green.." {spread:%s} Spread and\n"
			..Dot_green.." {movement_speed_modifier:%s} Movement Speed penalty.",
		ru = "При прицеливании вы получаете:\n"
			..Dot_green.." {spread:%s} к разбросу и\n"
			..Dot_green.." {movement_speed_modifier:%s} к штрафу скорости движения.",
		["zh-tw"] = "架槍或使用瞄具期間獲得：\n"
			..Dot_green.." {spread:%s} 散布，\n"
			..Dot_green.." {movement_speed_modifier:%s} 移動速度懲罰。",
		["zh-cn"] = "架枪或瞄准时获得：\n"
			..Dot_green.." {spread:%s} 散射和\n"
			..Dot_green.." {movement_speed_modifier:%s} 移动速度惩罚。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 23 - Omnissian Recharge Litany - Литания восстановления Омниссии +]--	08.08.2026
	["loc_talent_cryptic_multi_hits_restore_toughness_desc"] = { -- damage: +25%, duration: 2.5, s->seconds, +colors
		en = "On hitting {number:%s} or more enemies with a single Attack, you restore:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.",
		ru = "При попадании по {number:%s} или более врагам одной атакой, вы восстанавливаете:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение {duration:%s} секунд.",
		["zh-tw"] = "單次攻擊命中 {number:%s} 名或以上敵人時，會在 {duration:%s} 秒內恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = "单次攻击命中 {number:%s} 个或更多敌人时，在 {duration:%s} 秒内恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 24 - Residual Current Buffer - Буфер остаточного тока +]--	08.08.2026
	["loc_talent_cryptic_tdr_based_on_charge_base_desc"] = { -- linger_time: 2, block_cost: +50%, cooldown: 8, dodges: 3, s->seconds, +colors
		en = Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			.."\n"
			..Dot_green.." {tdr_per_charge:%s} additional "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." per current "..CKWord("Combat Ability", "Cmbt_abil_rgb").." сharge.",
		ru = Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." {tdr_per_charge:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." дополнительно за каждый текущий заряд "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".",
		["zh-tw"] = Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 每層現有"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."充能，額外獲得 {tdr_per_charge:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 每层当前"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能额外提供 {tdr_per_charge:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 25 - Power Redistribution Uplink - Аплинк перераспределения питания +]--	08.08.2026
	["loc_talent_cryptic_crits_grant_tdr_desc"] = { -- stamina: 50%, cooldown: 12, s->seconds, +colors
		en = "On "..CKWord("Critical Hits", "Crit_hits_rgb")..", you restore:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").."\n"
			.."and gain for {duration:%s} seconds:\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".",
		ru = "При "..CKWord("критических ударах", "krit_udarah_rgb_ru").." вы восстанавливаете:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").."\n"
			.."и получаете на {duration:%s} секунды:\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".",
		["zh-tw"] = "造成"..CKWord("致命一擊", "Critical_rgb_tw").."時，恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，\n"
			.."並在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。",
		["zh-cn"] = "暴击时，恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."\n"
			.."并在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 25 - Binary Ballistics Protocol - Бинарный баллистический протокол +]--	08.08.2026
	["loc_talent_cryptic_elite_kills_toughness_desc"] = { -- damage: +15%, +colors
		en = "Elite Kills restore:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.",
		ru = "Убийства элитных врагов восстанавливают:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение {duration:%s} секунд.",
		["zh-tw"] = "擊殺精英時，會在 {duration:%s} 秒內恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = "精英击杀在 {duration:%s} 秒内恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 26 - Threat Detection Imperative - Императив обнаружения угроз +]--	08.08.2026
	["loc_talent_cryptic_ranged_kills_tdr_desc"] = { -- cooldown: 8, s->seconds
		en = "Ranged Kills grant Stacks.\n"
			.."\n"
			.."Each Stack grants for {duration:%s} seconds:\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			.."\n"
			..Dot_nc.." Max {stacks:%s} Stacks.\n"
			..Dot_nc.." Stacks decay one at a time.",
		ru = "Убийства в дальнем бою дают заряды.\n"
			.."\n"
			.."Каждый заряд даёт на {duration:%s} секунд:\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Максимум {stacks:%s} зарядов.\n"
			..Dot_nc.." Заряды сбрасываются по одному.",
		["zh-tw"] = "遠程擊殺會提供層數。\n"
			.."\n"
			.."每層會在 {duration:%s} 秒內提供以下效果：\n"
			..Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			..Dot_nc.." 層數會逐一衰減。",
		["zh-cn"] = "远程击杀给予层数。\n"
			.."\n"
			.."每层在 {duration:%s} 秒内提供：\n"
			..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn")..".\n"
			.."\n"
			..Dot_nc.." 最多 {stacks:%s} 层。\n"
			..Dot_nc.." 层数逐一衰减。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 27 - Assassination Protocols - Протоколы устранения +]--	08.08.2026
	["loc_talent_cryptic_ranged_vs_bfg_desc"] = { -- spread: -75%, recoil: -50%, duration: 3, s->seconds, +colors
		en = Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." vs Ogryns, Monstrosities and Captains.",
		ru = Dot_green.." {damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." по огринам, чудовищам и капитанам.",
		["zh-tw"] = Dot_green.." 對歐格林、巨獸與連長的遠程"..CKWord("傷害", "Damage_rgb_tw").."增加 {damage:%s}。",
		["zh-cn"] = Dot_green.." {damage:%s} 远程"..CKWord("伤害", "Damage_rgb_zh_cn").."对欧格林、巨兽和队长。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 28 - Evasive Servo Recovery - Восстановление серво-уклонения +]--	08.08.2026
	["loc_talent_cryptic_successful_dodge_stamina_desc"] = { -- impact_modifier: +50%, +colors
		en = "On Successful Dodge, you restore:\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".",
		ru = "При успешном уклонении вы восстанавливаете:\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".",
		["zh-tw"] = "成功閃避時恢復：\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_tw").."。",
		["zh-cn"] = "成功闪避时恢复：\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 29 - Channelled Motive Force - Направленная движущая сила +]--	08.08.2026
	["loc_talent_cryptic_stamina_increases_damage_desc"] = { -- crit_chance: +10%, duration: 3, max_stacks: 3, s->seconds, +colors
		en = "On spending at least {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..", you gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".",
		ru = "Если вы потратили как минимум {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..", вы получаете на {duration:%s} секунды:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".",
		["zh-tw"] = "消耗至少 {stamina:%s} "..CKWord("耐力", "Stamina_rgb_tw").."時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = "消耗至少 {stamina:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").."时，在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 30 - Last Stand Relay - Реле последнего рубежа +]--	08.08.2026
	["loc_talent_cryptic_crit_chance_based_on_charge_zero_desc"] = { -- toughness_damage_reduction: +50%, time: 4, s->seconds, +colors
		en = Dot_green.." {crit_chance_low:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".\n"
			.."\n"
			.."When at {low_charges:%s} "..CKWord("Combat Ability", "Cmbt_abil_rgb").." сharges you gain:\n"
			..Dot_green.." {crit_chance_high:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".",
		ru = Dot_green.." {crit_chance_low:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".\n"
			.."\n"
			.."При {low_charges:%s} зарядах "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." вы получаете:\n"
			..Dot_green.." {crit_chance_high:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".",
		["zh-tw"] = Dot_green.." {crit_chance_low:%s} "..CKWord("爆擊率", "Crt_hit_chnc_rgb_tw").."。\n"
			.."\n"
			..""..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."充能為 {low_charges:%s} 層時獲得：\n"
			..Dot_green.." {crit_chance_high:%s} "..CKWord("爆擊率", "Crt_hit_chnc_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {crit_chance_low:%s} "..CKWord("暴击命中几率", "Crt_hit_chnc_rgb_zh_cn").."。\n"
			.."\n"
			.."当拥有 {low_charges:%s} 层"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能时获得：\n"
			..Dot_green.." {crit_chance_high:%s} "..CKWord("暴击命中几率", "Crt_hit_chnc_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 31 - Ammo-Cell Augury - Авгурия ячейки боеприпасов +]--	08.08.2026
	["loc_talent_cryptic_ammo_reserve_desc"] = { -- attack_speed: +10%, duration: 5, s->seconds
		en = Dot_green.." {ammo:%s} Ammo Reserve.",
		ru = Dot_green.." {ammo:%s} к запасу боеприпасов.",
		["zh-tw"] = Dot_green.." {ammo:%s} 彈藥儲備。",
		["zh-cn"] = Dot_green.." {ammo:%s} 备弹量。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 32 - Galvanic Marking Array - Гальванический маркировочный массив +]--	08.08.2026
	["loc_talent_cryptic_elite_kills_damage_desc"] = { -- damage_reduction: 40%, +colors
		en = "Ranged Elite Kills grant Stacks.\n"
			.."\n"
			.."Each Stack grants for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_nc.." Max {stacks:%s} Stacks.\n"
			..Dot_nc.." Stacks decay one at a time.",
		ru = "Убийства элитных врагов в дальнем бою дают заряды.\n"
			.."\n"
			.."Каждый заряд даёт на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Максимум {stacks:%s} заряда.\n"
			..Dot_nc.." Заряды сбрасываются по одному.",
		["zh-tw"] = "以遠程攻擊擊殺精英會提供層數。\n"
			.."\n"
			.."每層會在 {duration:%s} 秒內提供以下效果：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			..Dot_nc.." 層數會逐一衰減。",
		["zh-cn"] = "远程精英击杀给予层数。\n"
			.."\n"
			.."每层在 {duration:%s} 秒内提供：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn")..".\n"
			.."\n"
			..Dot_nc.." 最多 {stacks:%s} 层。\n"
			..Dot_nc.." 层数逐一衰减。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 33 - Rad-Sink - Радиационный сток +]--	08.08.2026
	["loc_talent_cryptic_stacking_ranged_damage_desc"] = { -- damage: +50%, cooldown: 8, +colors
		en = "After {duration:%s} seconds without shooting, each additional second spent not shooting grants:\n"
			..Dot_green.." {ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." on your next Shot.\n"
			.."\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = "Если вы не стреляли {duration:%s} секунду, то каждая последующая секунда без стрельбы даёт:\n"
			..Dot_green.." {ranged_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для вашего следующего выстрела.\n"
			.."\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.",
		["zh-tw"] = "停止射擊 {duration:%s} 秒後，每多一秒未射擊都會使下一發射擊獲得：\n"
			..Dot_green.." {ranged_damage:%s} 遠程"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 最多 {stacks:%s} 層。",
		["zh-cn"] = "停止射击 {duration:%s} 秒后，每额外秒不射击，下一次射击的远程"..CKWord("伤害", "Damage_rgb_zh_cn").."提高：\n"
			..Dot_green.." {ranged_damage:%s}。\n"
			.."\n"
			..Dot_nc.." 叠加 {stacks:%s} 次。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 34 - Servo-Core Recharge Engine - Двигатель перезарядки сервоядра +]--	08.08.2026
	["loc_talent_cryptic_weakspot_kills_restore_toughness_desc"] = { -- damage_resistance: +15%, duration: 4, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished on "..CKWord("Weakspot", "Weakspot_rgb").." Kill.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при убийстве в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".",
		["zh-tw"] = Dot_green.." 命中"..CKWord("弱點", "Weakspot_rgb_tw").."並擊殺時恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 弱点击杀时恢复 {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 35 - Voltaic Restoration - Вольтаическое восстановление +]--	08.08.2026
	["loc_talent_cryptic_coherency_toughness_on_ability_desc"] = { -- damage_taken: +15%, duration: 5, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." restored to you and Allies in "..CKWord("Coherency", "Coherency_rgb").." on "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается вам и союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru").." при использовании "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".",
		["zh-tw"] = Dot_green.." 使用"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."時，你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 使用"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."时，为你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友恢复 {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 36 - Protectorate Protocol - Протокол протектората +]--	08.08.2026
	["loc_talent_cryptic_disabled_allies_defense_post_boost_desc"] = { -- damage: 10%, toughness: 15%, duration: 5, +colors
		en = "While an Ally in "..CKWord("Coherency", "Coherency_rgb").." is Incapacitated, they have until freed:\n"
			..Dot_green.." {damage_resistance:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.\n"
			.."\n"
			.."If you free them, they gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage_resistance_post:%s} "..CKWord("Damage", "Damage_rgb").." Resistance and\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity.",
		ru = "Пока союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." выведен из строя, он получает до освобождения:\n"
			..Dot_green.." {damage_resistance:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			.."Если вы освобождаете его, он получает на {duration:%s} секунд:\n"
			..Dot_green.." {damage_resistance_post:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru")..".",
		["zh-tw"] = ""..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友失去行動能力時，在獲救前獲得：\n"
			..Dot_green.." {damage_resistance:%s} "..CKWord("傷害", "Damage_rgb_tw").."抗性。\n"
			.."\n"
			.."若由你救出，他們會在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {damage_resistance_post:%s} "..CKWord("傷害", "Damage_rgb_tw").."抗性，以及\n"
			..Dot_green.." 免疫"..CKWord("眩暈", "Stun_rgb_tw").."。",
		["zh-cn"] = "当"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友失去行动能力时，在获救前获得：\n"
			..Dot_green.." {damage_resistance:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性。\n"
			.."\n"
			.."如果你营救了他们，他们会在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {damage_resistance_post:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性和\n"
			..Dot_green.." "..CKWord("眩晕", "Stun_rgb_zh_cn").."免疫。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 37 - Gunsmith - Оружейный мастер +]--	08.08.2026
	["loc_talent_cryptic_auto_reload_desc"] = { -- stamina: 10%, cooldown: 1, +colors
		en = Dot_green.." {reload_speed:%s} Reload Speed.\n"
			.."\n"
			.."After {duration:%s} seconds without shooting, each additional second reloads:\n"
			..Dot_green.." {reload_percent:%s} of your Clip from Reserve.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки.\n"
			.."\n"
			.."Если вы не стреляли {duration:%s} секунд, то за каждую последующую секунду перезаряжается:\n"
			..Dot_green.." {reload_percent:%s} магазина из резерва.",
		["zh-tw"] = Dot_green.." {reload_speed:%s} 裝填速度。\n"
			.."\n"
			.."停止射擊 {duration:%s} 秒後，每多一秒未射擊會從備用彈藥自動填裝：\n"
			..Dot_green.." 彈匣容量的 {reload_percent:%s}。",
		["zh-cn"] = Dot_green.." {reload_speed:%s} 换弹速度。\n"
			.."\n"
			.."停止射击 {duration:%s} 秒后，每额外秒从备弹中装填弹匣的：\n"
			..Dot_green.." {reload_percent:%s}。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 38 - Ammunition-Restoration Pod - Капсула восстановления боеприпасов +]--	08.08.2026
	["loc_talent_cryptic_passive_ammo_replenishment_desc"] = {
		en = Dot_green.." {percent:%s} of your Max Ammo Reserve replenished every {interval:%s} seconds.",
		ru = Dot_green.." {percent:%s} от максимального запаса боеприпасов восстанавливается каждые {interval:%s} секунд.",
		["zh-tw"] = Dot_green.." 每 {interval:%s} 秒恢復最大彈藥儲備的 {percent:%s}。",
		["zh-cn"] = Dot_green.." 每 {interval:%s} 秒恢复 {percent:%s} 的最大备弹量。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 39 - Adaptive Combat Calibration - Адаптивная боевая калибровка +]--	08.08.2026
	["loc_talent_cryptic_melee_cleave_and_impact_desc"] = { -- health_segment: +2
		en = "While above {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." you gain:\n"
			..Dot_green.." {cleave:%s} Melee "..CKWord("Cleave", "Cleave_rgb")..".\n"
			.."\n"
			.."While below {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." you gain:\n"
			..Dot_green.." {impact:%s} Melee "..CKWord("Impact", "Impact_rgb")..".",
		ru = "При {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." или выше вы получаете:\n"
			..Dot_green.." {cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru").." врагов в ближнем бою.\n"
			.."\n"
			.."При {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." или ниже вы получаете:\n"
			..Dot_green.." {impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." в ближнем бою.",
		["zh-tw"] = CKWord("韌性", "Toughness_rgb_tw").."高於 {toughness:%s} 時獲得：\n"
			..Dot_green.." {cleave:%s} 近戰"..CKWord("順劈攻擊", "Cleave_rgb_tw").."。\n"
			.."\n"
			..CKWord("韌性", "Toughness_rgb_tw").."低於 {toughness:%s} 時獲得：\n"
			..Dot_green.." {impact:%s} 近戰"..CKWord("衝擊", "Impact_rgb_tw").."。",
		["zh-cn"] = "当"..CKWord("韧性", "Toughness_rgb_zh_cn").."高于 {toughness:%s} 时获得：\n"
			..Dot_green.." {cleave:%s} 近战"..CKWord("顺劈", "Cleave_rgb_zh_cn").."。\n"
			.."\n"
			.."当"..CKWord("韧性", "Toughness_rgb_zh_cn").."低于 {toughness:%s} 时获得：\n"
			..Dot_green.." {impact:%s} 近战"..CKWord("冲击", "Impact_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 40 - Progressive Plating Matrix - Прогрессивная матрица бронирования +]--	08.08.2026
	["loc_talent_cryptic_stacking_tdr_desc"] = { -- damage_reduction: 20%, time: 4, s->seconds, +colors
		en = "On Hit, you gain for {duration:%s} seconds:\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			.."\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			..Dot_nc.." Max one Stack per Attack.",
		ru = "При попадании по врагу вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.\n"
			..Dot_nc.." Не более одного заряда за атаку.",
		["zh-tw"] = "命中時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			..Dot_nc.." 每次攻擊最多獲得一層。",
		["zh-cn"] = "命中时，在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn")..".\n"
			.."\n"
			..Dot_nc.." 叠加 {stacks:%s} 次。\n"
			..Dot_nc.." 每次攻击最多一层。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 41 - Sureshot Cogitator Sync - Синхронизация когитатора точности +]--	08.08.2026
	["loc_talent_cryptic_weakspot_damage_desc"] = { -- range: 8, cooldown: 5
		en = Dot_green.." {weakspot_damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..".",
		ru = Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..".",
		["zh-tw"] = Dot_green.." {weakspot_damage:%s} "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {weakspot_damage:%s} "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 42 - Ablative Motion Routines - Процедуры абляционных движений +]--	08.08.2026
	["loc_talent_cryptic_mobile_defense_desc"] = { -- sprint_speed: +10%, sprint_cost: -10%, duration: 1
		en = Dot_green.." {damage_resistance:%s} "..CKWord("Damage", "Damage_rgb").." Resistance while Sprinting or Sliding.",
		ru = Dot_green.." {damage_resistance:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." во время бега или подката.",
		["zh-tw"] = Dot_green.." 衝刺或滑行期間獲得 {damage_resistance:%s} "..CKWord("傷害", "Damage_rgb_tw").."抗性。",
		["zh-cn"] = Dot_green.." 冲刺或滑铲时 {damage_resistance:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 43 - Target-Neutralization Feedback - Обратная связь нейтрализации цели +]--	08.08.2026
	["loc_talent_cryptic_stun_suppression_immune_desc"] = { -- damage: +5%, stacks: 3, duration: 8
		en = CKWord("Weakspot", "Weakspot_rgb").." kills grant for {duration:%s} seconds:\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity and\n"
			..Dot_green.." Suppression Immunity.",
		ru = "Убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." дают на {duration:%s} секунды:\n"
			..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." и\n"
			..Dot_green.." Иммунитет к подавлению.",
		["zh-tw"] = "命中"..CKWord("弱點", "Weakspot_rgb_tw").."並擊殺時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." 免疫"..CKWord("眩暈", "Stun_rgb_tw").."，以及\n"
			..Dot_green.." 免疫壓制。",
		["zh-cn"] = "弱点击杀在 {duration:%s} 秒内提供：\n"
			..Dot_green.." "..CKWord("眩晕", "Stun_rgb_zh_cn").."免疫和\n"
			..Dot_green.." 压制免疫。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 44 - Uncapped Arrestor - Неограниченный разрядник +]--	08.08.2026
	["loc_talent_cryptic_melee_attacks_give_melee_attack_speed_desc"] = { -- damage: +5%, stacks: 3, duration: 8
		en = "Successful Melee Attacks grant for {duration:%s} seconds:\n"
			..Dot_green.." {melee_attack_speed:%s} Melee Attack Speed.\n"
			.."\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = "Успешные атаки ближнего боя дают на {duration:%s} секунды:\n"
			..Dot_green.." {melee_attack_speed:%s} к скорости атак ближнего боя.\n"
			.."\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.",
		["zh-tw"] = "近戰攻擊成功時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {melee_attack_speed:%s} 近戰攻擊速度。\n"
			.."\n"
			..Dot_nc.." 最多 {stacks:%s} 層。",
		["zh-cn"] = "成功的近战攻击在 {duration:%s} 秒内提供：\n"
			..Dot_green.." {melee_attack_speed:%s} 近战攻击速度。\n"
			.."\n"
			..Dot_nc.." 叠加 {stacks:%s} 次。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 45 - Force Distribution Actuators - Актуаторы распределения силы +]--	08.08.2026
	["loc_talent_cryptic_push_stagger_stamina_desc"] = { -- damage: +5%, stacks: 3, duration: 8
		en = "When at or above {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." your Pushes have:\n"
			..Dot_green.." {push_strength:%s} "..CKWord("Impact", "Impact_rgb")..".",
		ru = "При {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." или выше, ваши отталкивания получают:\n"
			..Dot_green.." {push_strength:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..".",
		["zh-tw"] = CKWord("耐力", "Stamina_rgb_tw").."達 {stamina:%s} 或以上時，推擊獲得：\n"
			..Dot_green.." {push_strength:%s} "..CKWord("衝擊", "Impact_rgb_tw").."。",
		["zh-cn"] = "当"..CKWord("耐力", "Stamina_rgb_zh_cn").."不低于 {stamina:%s} 时，你的推击获得：\n"
			..Dot_green.." {push_strength:%s} "..CKWord("冲击", "Impact_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 46 - Sustained Assault Doctrine - Доктрина непрерывной атаки +]--	08.08.2026
	["loc_talent_cryptic_stacking_melee_damage_desc"] = { -- damage: +5%, stacks: 3, duration: 8
		en = "On successful Melee Attack, you gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = "При успешной атаке ближнего боя вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.",
		["zh-tw"] = "近戰攻擊成功時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 最多 {stacks:%s} 層。",
		["zh-cn"] = "成功的近战攻击在 {duration:%s} 秒内提供：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 叠加 {stacks:%s} 次。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 47 - Slaughter Protocol - Протокол бойни +]--	08.08.2026
	["loc_talent_cryptic_toughness_replenishment_on_kill_bonus_desc"] = { -- damage: +5%, stacks: 3, duration: 8
		en = Dot_green.." {toughness_percent:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment on Melee Kill.\n"
			.."\n"
			..Dot_green.." {toughness_percent_improved:%s} "..CKWord("Toughness", "Toughness_rgb").." when at {zero_charges:%s} Charges.",
		ru = Dot_green.." {toughness_percent:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за убийство в ближнем бою.\n"
			.."\n"
			..Dot_green.." {toughness_percent_improved:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." при {zero_charges:%s} зарядах.",
		["zh-tw"] = Dot_green.." 近戰擊殺時恢復 {toughness_percent:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 充能為 {zero_charges:%s} 層時，改為恢復 {toughness_percent_improved:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 近战击杀恢复 {toughness_percent:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 充能数为 {zero_charges:%s} 时，恢复量提升至 {toughness_percent_improved:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 48 - Adaptive Combat Engram - Адаптивная боевая энграмма +]--	08.08.2026
	["loc_talent_cryptic_dr_on_toughness_break_desc"] = { -- damage: +5%, stacks: 3, duration: 8
		en = "On "..CKWord("Toughness", "Toughness_rgb").." break, you gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage_resistance:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.\n"
			.."\n"
			..Dot_nc.." Can only occur once every {cooldown:%s} seconds.",
		ru = "При пробитии "..CKWord("стойкости", "stoikosti_rgb_ru").." вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage_resistance:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Срабатывает раз в {cooldown:%s} секунд.",
		["zh-tw"] = CKWord("韌性", "Toughness_rgb_tw").."被擊破時，在 {duration:%s} 秒內獲得以下效果：\n"
			..Dot_green.." {damage_resistance:%s} "..CKWord("傷害", "Damage_rgb_tw").."抗性。\n"
			.."\n"
			..Dot_nc.." 每 {cooldown:%s} 秒最多發生一次。",
		["zh-cn"] = "当"..CKWord("韧性", "Toughness_rgb_zh_cn").."被击破时，在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {damage_resistance:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性。\n"
			.."\n"
			..Dot_nc.." 每 {cooldown:%s} 秒最多触发一次。",
	},
	--[+ PASSIVES - ПАССИВНЫЙ - 49 - Hydraulic Inpact - Гидроудар +]--	08.08.2026
	["loc_talent_cryptic_better_heavies_desc"] = { -- damage: +5%, stacks: 3, duration: 8
		en = Dot_green.." Uninterruptible while charging Melee Attacks.\n"
			.."\n"
			..Dot_green.." {damage:%s} Heavy Melee "..CKWord("Damage", "Damage_rgb")..".",
		ru = Dot_green.." Вы получаете Непрерываемость во время заряжания атак ближнего боя.\n"
			.."\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." тяжёлых атак ближнего боя.",
		["zh-tw"] = Dot_green.." 近戰攻擊蓄力期間不會被打斷。\n"
			.."\n"
			..Dot_green.." {damage:%s} 近戰重攻擊"..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 蓄力近战攻击时不可打断。\n"
			.."\n"
			..Dot_green.." {damage:%s} 近战重击"..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
}

-- Creating templates -- Создаём шаблоны
local skitarii_templates = {}

for loc_key, locales in pairs(skitarii_localizations) do
	for locale, text in pairs(locales) do
		table.insert(skitarii_templates, create_template(
			"skitarii_" .. loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

return skitarii_templates
