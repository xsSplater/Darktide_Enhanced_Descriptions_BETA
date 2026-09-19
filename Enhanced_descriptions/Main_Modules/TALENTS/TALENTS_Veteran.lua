---@diagnostic disable: undefined-global
-- VETERAN TALENT MODULE -- МОДУЛЬ ТАЛАНТОВ ВЕТЕРАНА

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

-- Localization of Veteran talents -- Локализации талантов ветерана
local veteran_localizations = {
--[+ ++VETERAN - ВЕТЕРАН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Frag Grenade - Фраг-граната +]--	09.08.2026
	["loc_ability_frag_grenade_description"] = { -- +colors
		en = CKWord("Fragmentation Grenade", "Fragm_gren_rgb").." that explodes after "..CNumb("1.7", "n_1_7_rgb").." seconds.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb").." epicenter: "..CNumb("500", "n_500_rgb")..".\n"
			..Dot_green.." Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("10", "n_10_rgb").." meters.",
		ru = "Вы бросаете "..CKWord("Fragmentation Grenade", "Fragm_gren_rgb")..", которая взрывается через "..CNumb("1.7", "n_1_7_rgb").." секунд.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." в эпицентре: "..CNumb("500", "n_500_rgb")..".\n"
			..Dot_green.." Сильно "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, включая чудовищ.\n"
			..Dot_nc.." Радиус взрыва: "..CNumb("10", "n_10_rgb").." метров.",
		["zh-tw"] = CKWord("破片手雷", "Fragm_gren_rgb_tw").."在 "..CNumb("1.7", "n_1_7_rgb").." 秒後爆炸。\n"
			.."\n"
			..Dot_green.." 爆心基礎"..CKWord("傷害", "Damage_rgb_tw").."："..CNumb("500", "n_500_rgb").."。\n"
			..Dot_green.." 對所有敵人（包括巨獸）造成強力"..CKWord("踉蹌", "Stagger_rgb_tw").."。\n"
			..Dot_nc.." 最大爆炸半徑："..CNumb("10", "n_10_rgb").." 公尺。",
		["zh-cn"] = CKWord("破片手雷", "Fragm_gren_rgb_zh_cn").."，在 "..CNumb("1.7", "n_1_7_rgb").." 秒后爆炸。\n"
			.."\n"
			..Dot_green.." 爆炸中心基础"..CKWord("伤害", "Damage_rgb_zh_cn").."："..CNumb("500", "n_500_rgb").."。\n"
			..Dot_green.." 对所有敌人（包括巨兽）造成强力"..CKWord("踉跄", "Stagger_rgb_zh_cn").."。\n"
			..Dot_nc.." 最大爆炸半径："..CNumb("10", "n_10_rgb").." 米。",
	},
	--[+ BLITZ 1 - Shredder Frag Grenade +]--	09.08.2026
	["loc_talent_veteran_grenade_apply_bleed_desc"] = { -- stacks: 6, talent_name: Frag Grenade, +colors
		en = "Throw a "..CKWord("Frag Grenade", "Frag_gren_rgb").." that explodes after "..CNumb("1.7", "n_1_7_rgb").." seconds. Applies {stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." to all Enemies Hit, causing "..CKWord("Damage", "Damage_rgb").." over time.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb")..": ["..CNumb("500", "n_500_rgb").."-"..CNumb("200", "n_200_rgb").."].\n"
			.."\n"
			..Dot_green.." Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("10", "n_10_rgb").." meters.\n"
			..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Max "..CKWord("Bleed", "Bleed_rgb").." Stacks.",
		ru = "Вы бросаете "..CKWord("Фраг-гранату", "Frag_gren_rgb_ru")..", которая взрывается после "..CNumb("1.7", "n_1_7_rgb").." секунды. Накладывает {stacks:%s} зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." на всех поражённых взрывом врагов, нанося "..CKWord("урон", "uron_rgb_ru").." с течением времени.\n" -- Крошащая фраг-граната -- руоф Фраг-граната крошителя
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru")..": ["..CNumb("500", "n_500_rgb").."-"..CNumb("200", "n_200_rgb").."].\n"
			.."\n"
			..Dot_green.." Сильно "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, включая чудовищ.\n"
			..Dot_nc.." Радиус взрыва: "..CNumb("10", "n_10_rgb").." метров.\n"
			..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".",
			-- ..Dot_nc.." Средний "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			-- ..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
		["zh-tw"] = "投擲"..CKWord("破片手雷", "Frag_gren_rgb_tw").."，"..CNumb("1.7", "n_1_7_rgb").." 秒後爆炸。\n"
			.."對所有被命中的敵人施加 {stacks:%s} 層"..CKWord("流血", "Bleed_rgb_tw").."，造成持續"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_green.." 這是 {talent_name:%s} 的強化版本。\n"
			.."\n"
			..Dot_green.." 基礎"..CKWord("傷害", "Damage_rgb_tw").."：["..CNumb("500", "n_500_rgb").."～"..CNumb("200", "n_200_rgb").."]。\n"
			.."\n"
			..Dot_green.." 對所有敵人（包括巨獸）造成強力"..CKWord("踉蹌", "Stagger_rgb_tw").."。\n"
			..Dot_nc.." 最大爆炸半徑："..CNumb("10", "n_10_rgb").." 公尺。\n"
			..Dot_nc.." 最多 "..CNumb("16", "n_16_rgb").." 層"..CKWord("流血", "Bleed_rgb_tw").."。",
		["zh-cn"] = "投掷"..CKWord("破片手雷", "Frag_gren_rgb_zh_cn").."，"..CNumb("1.7", "n_1_7_rgb").." 秒后爆炸。对所有命中敌人施加 {stacks:%s} 层"..CKWord("流血", "Bleed_rgb_zh_cn").."，造成持续"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_green.." 此为 {talent_name:%s} 的增强版本。\n"
			.."\n"
			..Dot_green.." 基础"..CKWord("伤害", "Damage_rgb_zh_cn").."：["..CNumb("500", "n_500_rgb").."-"..CNumb("200", "n_200_rgb").."]。\n"
			.."\n"
			..Dot_green.." 对所有敌人（包括巨兽）造成强力"..CKWord("踉跄", "Stagger_rgb_zh_cn").."。\n"
			..Dot_nc.." 最大爆炸半径："..CNumb("10", "n_10_rgb").." 米。\n"
			..Dot_nc.." 最多 "..CNumb("16", "n_16_rgb").." 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。",
	},
	--[+ BLITZ 2 - Krak Grenade +]--	09.08.2026
	["loc_talent_ability_krak_grenade_desc"] = { -- +colors
		en = "Throw a grenade that explodes after "..CNumb("1", "n_1_rgb").." second and deals devastating "..CKWord("Damage", "Damage_rgb")..". Sticks to Flak Armoured, Carapace Armoured and Unyielding Enemies.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb")..": ["..CNumb("2400", "n_2400_rgb").."-"..CNumb("500", "n_500_rgb").."].\n"
			.."\n"
			-- ..Dot_green.." Good armor "..CKWord("Damage", "Damage_rgb").." inside epicenter.\n"
			-- ..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb").." vs Carapace, Flak, Unyielding inside epicenter.\n"
			..Dot_green.." Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("5", "n_5_rgb").." meters.",
		ru = "Вы бросаете гранату, которая взрывается после "..CNumb("1", "n_1_rgb").." секунды и наносит разрушительный "..CKWord("урон", "uron_rgb_ru")..". Граната примагничивается к панцирной и противоосколочной броне, а также к несгибаемым врагам.\n" -- Крак-граната
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru")..": ["..CNumb("2400", "n_2400_rgb").."-"..CNumb("500", "n_500_rgb").."].\n"
			.."\n"
			-- ..Dot_green.." Хороший "..CKWord("урон", "uron_rgb_ru").." по броне в эпицентре.\n"
			-- ..Dot_green.." Очень высокий "..CKWord("урон", "uron_rgb_ru").." по панцирной, противоосколочной броне и несгибаемым врагам в эпицентре.\n"
			..Dot_green.." Сильно "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, включая чудовищ.\n"
			..Dot_nc.." Радиус взрыва: "..CNumb("5", "n_5_rgb").." метров.",
		["zh-tw"] = "投擲"..CKWord("穿甲手雷", "krak_gr_rgb_tw").."，"..CNumb("1", "n_1_rgb").." 秒後爆炸，造成毀滅性"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."會吸附於身穿防彈護甲或甲殼護甲的敵人，以及不屈敵人。\n"
			.."\n"
			..Dot_green.." 基礎"..CKWord("傷害", "Damage_rgb_tw").."：["..CNumb("2400", "n_2400_rgb").."～"..CNumb("500", "n_500_rgb").."]。\n"
			.."\n"
			..Dot_green.." 對所有敵人（包括巨獸）造成強力"..CKWord("踉蹌", "Stagger_rgb_tw").."。\n"
			..Dot_nc.." 最大爆炸半徑："..CNumb("5", "n_5_rgb").." 公尺。",
		["zh-cn"] = "投掷一枚手雷，"..CNumb("1", "n_1_rgb").." 秒后爆炸，造成毁灭性"..CKWord("伤害", "Damage_rgb_zh_cn").."。黏附于防弹、硬壳和不屈敌人。\n"
			.."\n"
			..Dot_green.." 基础"..CKWord("伤害", "Damage_rgb_zh_cn").."：["..CNumb("2400", "n_2400_rgb").."-"..CNumb("500", "n_500_rgb").."]。\n"
			.."\n"
			..Dot_green.." 对所有敌人（包括巨兽）造成强力"..CKWord("踉跄", "Stagger_rgb_zh_cn").."。\n"
			..Dot_nc.." 最大爆炸半径： "..CNumb("5", "n_5_rgb").." 米。",
	},
	--[+ BLITZ 3 - Smoke Grenade +]--	09.08.2026
	["loc_ability_smoke_grenade_description"] = { -- duration: 15, +colors
		en = "Throw a grenade that explodes after "..CNumb("1.5", "n_1_5_rgb").." seconds and creates a lingering Smoke cloud for {duration:%s} seconds. The cloud blocks line of sight for most enemies and reduces the sight range of enemies inside it.\n"
			.."\n"
			..Dot_nc.." Smoke cloud effect radius: "..CNumb("5.5", "n_5_5_rgb").." meters.\n"
			..Dot_red.." Has no effect on Bombers, Mutants, and Poxbursters.",
		ru = "Вы бросаете гранату, которая взрывается через "..CNumb("1.5", "n_1_5_rgb").." секунды и создаёт облако дыма на {duration:%s} секунд. Дым блокирует линию обзора большинства врагов и снижает расстояние обзора врагов внутри него.\n" -- Дымовая граната
			.."\n"
			..Dot_nc.." Радиус облака дыма: "..CNumb("5.5", "n_5_5_rgb").." метра.\n"
			..Dot_red.." Не действует на гренадёров, мутантов и взрывников.",
		["zh-tw"] = "投擲"..CKWord("煙霧手雷", "smok_gr_rgb_tw").."，"..CNumb("1.5", "n_1_5_rgb").." 秒後爆炸，產生持續 {duration:%s} 秒的煙霧雲。\n"
			.."煙霧阻斷大多數敵人的視線，並降低雲中敵人的視野範圍。\n"
			.."\n"
			..Dot_nc.." 煙霧效果半徑："..CNumb("5.5", "n_5_5_rgb").." 公尺。\n"
			..Dot_red.." 對轟炸者、變種人和瘟疫爆者無效。",
		["zh-cn"] = "投掷手雷，"..CNumb("1.5", "n_1_5_rgb").." 秒后爆炸，产生持续 {duration:%s} 秒的烟雾云。烟雾阻隔大多数敌人的视线，并降低云中敌人的视野范围。\n"
			.."\n"
			..Dot_nc.." 烟雾效果半径： "..CNumb("5.5", "n_5_5_rgb").." 米。\n"
			..Dot_red.." 对轰炸者、变种人和瘟疫爆弹者无效。",
	},
--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Scavenger +]--	09.08.2026
	["loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"] = { -- ammo: 0.75%, cooldown: 5
		en = Dot_green.." {ammo:%s} Ammo replenishes for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {ammo:%s} боеприпасов пополняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", когда кто-либо из вас убивает элитного врага или специалиста. Срабатывает раз в {cooldown:%s} секунд.\n" -- Сборщик -- руоф Собиратель
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		["zh-tw"] = Dot_green.." 每當你或"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友擊殺精英或專家敵人時，你和這些盟友都會補充 {ammo:%s} 彈藥。每 {cooldown:%s} 秒最多觸發一次。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		["zh-cn"] = Dot_green.." 当你或"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友击杀精英或专家敌人时，为你和盟友补充 {ammo:%s} 弹药。每 {cooldown:%s} 秒最多触发一次。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
	--[+ AURA 1 - Survivalist +]--	09.08.2026
	["loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"] = { -- ammo_2: 1%, cooldown: 5, talent_name: Scavenger
		en = Dot_green.." {ammo_2:%s} Ammo replenishes for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {ammo_2:%s} боеприпасов пополняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", когда кто-либо из вас убивает элитного врага или специалиста. Срабатывает раз в {cooldown:%s} секунд.\n" -- Выживальщик -- руоф Специалист по выживанию
			..Dot_green.." Это улучшенная версия ауры {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		["zh-tw"] = Dot_green.." 每當你或"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友擊殺精英或專家敵人時，你和這些盟友都會補充 {ammo_2:%s} 彈藥。每 {cooldown:%s} 秒最多觸發一次。\n"
			..Dot_green.." 這是 {talent_name:%s} 的強化版本。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		["zh-cn"] = Dot_green.." 当你或"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友击杀精英或专家敌人时，为你和盟友补充 {ammo_2:%s} 弹药。每 {cooldown:%s} 秒最多触发一次。\n"
			..Dot_green.." 此为 {talent_name:%s} 的增强版本。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
	--[+ AURA 2 - Fire Team +]--	09.08.2026
	["loc_talent_veteran_damage_coherency_desc"] = { -- damage: +7.5%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Огневая группа
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		["zh-tw"] = Dot_green.." 你和"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友獲得 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		["zh-cn"] = Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").." 对您和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
	--[+ AURA 3 - Close and Kill +]--	09.08.2026
	["loc_talent_veteran_movement_speed_coherency_desc"] = { -- movement_speed: +5%
		en = Dot_green.." {movement_speed:%s} Movement Speed for your and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {movement_speed:%s} к скорости движения для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Приблизиться и убить
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		["zh-tw"] = Dot_green.." 你和"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友獲得 {movement_speed:%s} 移動速度。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		["zh-cn"] = Dot_green.." {movement_speed:%s} 移动速度，对您和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Volley Fire +]--	09.08.2026
	["loc_ability_veteran_base_ability_desc"] = { -- duration: 6, damage: +25%, weakspot_damage: +25%, cooldown: 30, &->and, s->seconds, +colors
		en = "You enter "..CKWord("Ranged Stance", "Rangd_stnc_rgb").." for {duration:%s} seconds, instantly equip your Ranged weapon and gain:\n"
			..Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {weakspot_damage:%s} Ranged "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("50%", "pc_50_rgb").." Ranged "..CKWord("Stagger", "Stagger_rgb").." strength,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." Spread,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." Recoil,\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Killing an outlined enemy refreshes "..CKWord("Ranged Stance", "Rangd_stnc_rgb").."'s active duration by {duration:%s} seconds.",
		ru = "Вы входите в "..CKWord("Стойку дальнего боя", "Rangd_stnc_rgb_ru").." на {duration:%s} секунд, мгновенно экипируете своё оружие дальнего боя и улучшаете навык его владения, получая:\n" -- Залповый огонь
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("50%", "pc_50_rgb").." к силе "..CKWord("ошеломления", "oshelomlenia_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." к раскачиванию,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." к разбросу,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." к отдаче, а также\n"
			..Dot_green.." иммунитет к подавлению.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n", -- ..Dot_green.." Убийство отмеченного врага обновляет длительность стойки на {duration:%s} секунд.",
		["zh-tw"] = "進入"..CKWord("遠程姿態", "Rangd_stnc_rgb_tw").."，持續 {duration:%s} 秒，立即裝備遠程武器並獲得：\n"
			..Dot_green.." {damage:%s} 遠程"..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {weakspot_damage:%s} 遠程"..CKWord("弱點傷害", "Weakspot_r_dmg_rgb_tw").."，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("50%", "pc_50_rgb").." 遠程"..CKWord("踉蹌", "Stagger_rgb_tw").." 強度，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." 武器搖晃，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." 散布，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." 後座力，\n"
			..Dot_green.." 免疫壓制。\n"
			.."\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_green.." 擊殺被標出的敵人時，"..CKWord("遠程姿態", "Rangd_stnc_rgb_tw").."的啟用持續時間會刷新 {duration:%s} 秒。",
		["zh-cn"] = "进入"..CKWord("远程姿态", "Rangd_stnc_rgb_zh_cn").." {duration:%s} 秒，立即装备远程武器并获得：\n"
			..Dot_green.." {damage:%s} 远程"..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {weakspot_damage:%s} 远程"..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("50%", "pc_50_rgb").." 远程"..CKWord("踉跄", "Stagger_rgb_zh_cn").."强度，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." 武器晃动，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." 散布，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." 后坐力，\n"
			..Dot_green.." 压制免疫。\n"
			.."\n"
			..Dot_nc.." 基础冷却：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_green.." 击杀被高亮标记的敌人将刷新"..CKWord("远程姿态", "Rangd_stnc_rgb_zh_cn").."的持续时间 {duration:%s} 秒。",
	},
	--[+ ABILITY 1 - Executioner's Stance +]--	09.08.2026
	["loc_talent_veteran_ranged_stance_toughness_description"] = { -- duration: 5, damage: +25%, weakspot_damage: +25%, toughness: 10%, refresh_duration: 5, cooldown: 30, old_talent_name: Volley Fire, s->seconds, +colors
		en = "You enter "..CKWord("Ranged Stance", "Rangd_stnc_rgb").." for {duration:%s} seconds, instantly equip your Ranged weapon and gain:\n"
			..Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {weakspot_damage:%s} Ranged "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." Ranged "..CKWord("Stagger", "Stagger_rgb").." strength,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." Spread,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." Recoil,\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes per second,\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			..Dot_green.." This is an augmented version of {old_talent_name:%s}.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Human-sized Elite and Specialist Enemies within "..CNumb("50", "n_50_rgb").." meters of the "..CKWord("Veteran", "cls_vet_rgb").." are highlighted for {duration:%s} seconds.\n"
			..Dot_nc.." Killing an outlined enemy refreshes "..CKWord("Ranged Stance", "Rangd_stnc_rgb").."'s active duration by {refresh_duration:%s} seconds. This also refreshes the duration of outlines on enemies for "..CKWord("Veteran", "cls_vet_rgb")..".\n"
			..Dot_red.." Outlines are only visible to "..CKWord("Veteran", "cls_vet_rgb")..".",
		ru = "Вы входите в "..CKWord("Стойку дальнего боя", "Rangd_stnc_rgb_ru").." на {duration:%s} секунд, мгновенно экипируете своё оружие дальнего боя и улучшаете навык его владения, получая:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n" -- Стойка палача
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." к силе "..CKWord("ошеломления", "oshelomlenia_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." к раскачиванию оружия,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." к разбросу,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." к отдаче,\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду,\n"
			..Dot_green.." Иммунитет к подавлению.\n"
			.."\n"
			..Dot_green.." Это улучшенная версия способности {old_talent_name:%s}.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Элитные враги человеческого роста и специалисты в пределах "..CNumb("50", "n_50_rgb").." метров от "..CKWord("Ветерана", "cls_veta_rgb_ru").." подсвечиваются на {duration:%s} секунд.\n"
			..Dot_nc.." Убийство отмеченного врага обновляет длительность стойки на {refresh_duration:%s} секунд. Это также обновляет длительность отметки на врагах для "..CKWord("Ветерана", "cls_veta_rgb_ru")..".\n"
			..Dot_red.." Отметка видна только "..CKWord("Ветерану", "cls_vetu_rgb_ru")..".",
		["zh-tw"] = "進入"..CKWord("遠程姿態", "Rangd_stnc_rgb_tw").."，持續 {duration:%s} 秒，立即裝備遠程武器並獲得：\n"
			..Dot_green.." {damage:%s} 遠程"..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {weakspot_damage:%s} 遠程"..CKWord("弱點傷害", "Weakspot_r_dmg_rgb_tw").."，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." 遠程"..CKWord("踉蹌", "Stagger_rgb_tw").." 強度，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." 武器搖晃，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." 散布，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." 後座力，\n"
			..Dot_green.." 每秒恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，\n"
			..Dot_green.." 免疫壓制。\n"
			.."\n"
			..Dot_green.." 這是 {old_talent_name:%s} 的強化版本。\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 距離"..CKWord("老兵", "cls_vet_rgb_tw").." "..CNumb("50", "n_50_rgb").." 公尺內的人類大小精英與專家敵人會被標出 {duration:%s} 秒。\n"
			..Dot_nc.." 擊殺被標出的敵人時，會將"..CKWord("遠程姿態", "Rangd_stnc_rgb_tw").."的啟用持續時間刷新 {refresh_duration:%s} 秒。這也會刷新敵人對"..CKWord("老兵", "cls_vet_rgb_tw").."顯示輪廓的持續時間。\n"
			..Dot_red.." 標出的敵人輪廓僅對"..CKWord("老兵", "cls_vet_rgb_tw").."可見。",
		["zh-cn"] = "进入"..CKWord("远程姿态", "Rangd_stnc_rgb_zh_cn").." {duration:%s} 秒，立即装备远程武器并获得：\n"
			..Dot_green.." {damage:%s} 远程"..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {weakspot_damage:%s} 远程"..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." 远程"..CKWord("踉跄", "Stagger_rgb_zh_cn").."强度，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." 武器晃动，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." 散布，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." 后坐力，\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." /秒恢复，\n"
			..Dot_green.." 压制免疫。\n"
			.."\n"
			..Dot_green.." 此为 {old_talent_name:%s} 的增强版本。\n"
			..Dot_nc.." 基础冷却：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 在"..CKWord("老兵", "cls_vet_rgb_zh_cn").." "..CNumb("50", "n_50_rgb").." 米范围内的人类大小精英和专家敌人会被高亮标记 {duration:%s} 秒。\n"
			..Dot_nc.." 击杀高亮标记的敌人会刷新"..CKWord("远程姿态", "Rangd_stnc_rgb_zh_cn").."的持续时间 {refresh_duration:%s} 秒，同时刷新"..CKWord("老兵", "cls_vet_rgb_zh_cn").."对敌人的标记持续时间。\n"
			..Dot_red.." 标记仅对"..CKWord("老兵", "cls_vet_rgb_zh_cn").."可见。",
	},
	--[+ ABILITY 1-1 - Enhanced Target Priority +]--	09.08.2026
	["loc_talent_veteran_combat_ability_coherency_outlines_description"] = { -- talent_name: Executioner's Stance, duration: 5, &->and, s->seconds
		en = Dot_green.." {talent_name:%s} now outlines all Specials and human-sized Elites for Allies in "..CKWord("Coherency", "Coherency_rgb").." for {duration:%s} seconds.",
		ru = Dot_green.." {talent_name:%s} теперь также отмечает всех элитных врагов человеческого роста и специалистов для ваших союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").." на {duration:%s} секунд.", -- Повышенный приоритет целей -- руоф Повышенный приоритет цели
		["zh-tw"] = Dot_green.." {talent_name:%s} 現在也會為"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友標出所有專家與人類大小精英，持續 {duration:%s} 秒。",
		["zh-cn"] = Dot_green.." {talent_name:%s} 现在也会为"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友高亮显示所有人类大小的精英和专家 {duration:%s} 秒。",
	},
	--[+ ABILITY 1-2 - Counter-Fire +]--	09.08.2026
	["loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"] = { -- talent_name: Executioner's Stance
		en = Dot_green.." {talent_name:%s} now outlines Scab/Dreg Stalkers and Scab Shooters, additionally to all human-sized Elites and Specials.",
		ru = Dot_green.." {talent_name:%s} теперь также отмечает и других дальнобойных врагов: скабов-охотников, дрегов-охотников и скабов-стрелков, в дополнение к элитным врагам человеческого роста и специалистам.", -- Ответный огонь
		["zh-tw"] = Dot_green.." 除所有人類大小精英與專家外，{talent_name:%s} 現在也會標出血痂潛行者、渣滓潛行者和血痂射手。",
		["zh-cn"] = Dot_green.." {talent_name:%s} 现在还会高亮显示血痂潜行者、渣滓潜行者和血痂射手，以及所有人类大小的精英和专家。",
	},
	--[+ ABILITY 1-3 - The Bigger they Are... +]--	09.08.2026
	["loc_talent_veteran_combat_ability_ogryn_outlines_damage_description"] = { -- talent_name: Executioner's Stance, duration: 8
		en = Dot_green.." {talent_name:%s} now outlines Bulwarks, Crushers and Reapers, Captains, and Monstrosity Enemies, additionally to all human-sized Elites and Specials.\n"
			.."\n"
			..Dot_green.." Duration increased to {duration:%s} seconds.",
		ru = Dot_green.." {talent_name:%s} теперь также отмечает бастионов, крушителей, жнецов, капитанов и чудовищ, в дополнение к элитным врагам человеческого роста и специалистам.\n" -- Чем больше шкаф...
			.."\n"
			..Dot_green.." Длительность увеличена до {duration:%s} секунд.",
		["zh-tw"] = Dot_green.." 除所有人類大小精英與專家外，{talent_name:%s} 現在也會標出堡壘、碾壓者、收割者、連長和巨獸敵人。\n"
			.."\n"
			..Dot_green.." 持續時間增加至 {duration:%s} 秒。",
		["zh-cn"] = Dot_green.." {talent_name:%s} 现在还会高亮显示堡垒、粉碎者、收割者、队长和巨兽敌人，以及所有人类大小的精英和专家。\n"
			.."\n"
			..Dot_green.." 持续时间提高至 {duration:%s} 秒。",
	},
	--[+ ABILITY 1-4 - Marksman +]--	09.08.2026
	["loc_talent_veteran_ability_marksman_desc"] = { -- duration: 10, power: +20%, talent_name: Infiltrate, s->seconds, +colors
		en = "{power:%s} "..CKWord("Strength", "Strength_rgb").." to "..CKWord("Weakspot Hits", "Weakspothits_rgb").." for {duration:%s} seconds on "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use.\n"
			.."\n"
			..Dot_nc.." When using {talent_name:%s}, this is applied after leaving "..CKWord("Stealth", "Stealth_rgb")..".\n"
			.."\n"
			..CNote("Pwr_note"),
		ru = "{power:%s} к "..CKWord("силе", "sile_rgb_ru").." атак в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." на {duration:%s} секунд при активации "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n" -- Меткий стрелок
			.."\n"
			..Dot_nc.." При использовании способности {talent_name:%s}, этот талант начинает действовать только после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".\n"
			.."\n"
			..CNote("Pwr_note"),
		["zh-tw"] = "使用"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."時，"..CKWord("弱點命中", "Weakspothits_rgb_tw").."獲得 {power:%s} "..CKWord("威力", "Strength_rgb_tw").."，持續 {duration:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 使用 {talent_name:%s} 時，此加成於離開"..CKWord("隱身", "Stealth_rgb_tw").." 後生效。\n"
			.."\n"
			..CNote("Pwr_note"),
		["zh-cn"] = "使用"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."后，{power:%s} "..CKWord("威力", "Strength_rgb_zh_cn").."加成于"..CKWord("弱点命中", "Weakspothits_rgb_zh_cn").."，持续 {duration:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 当使用 {talent_name:%s} 时，此效果在离开"..CKWord("隐身", "Stealth_rgb_zh_cn").."后生效。\n"
			.."\n"
			..CNote("Pwr_note"),
	},
	--[+ ABILITY 2 - Voice of Command +]--	09.08.2026
	["loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"] = { -- range: 9, cooldown: 30, &->and, m->meters, s->seconds, +colors
		en = Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored on activation.\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all Enemies within {range:%s} meters.\n"
			..Dot_nc.." Base Cooldown {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Holding the ability button shows shout range. Cancel by blocking.\n"
			..Dot_red.." Cannot "..CKWord("Stagger", "Stagger_rgb").." already "..CKWord("Staggered", "Staggered_rgb").." enemies and enemies with an active Void shield.\n",
		ru = Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при активации.\n" -- Командный голос
			..Dot_green.." "..CKWord("Ошеломляет", "Oshelomlaet_rgb_ru").." всех врагов в радиусе {range:%s} метров.\n"
			..Dot_nc.." Восстановливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Удерживание кнопки активации способности показывает радиус действия. Отменяется блоком.\n"
			..Dot_red.." Не может "..CKWord("ошеломить", "oshelomit_rgb_ru").." уже "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов и врагов с активным пустотным щитом.\n",
		["zh-tw"] = Dot_green.." 啟用時恢復 "..CNumb("100%", "pc_100_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			..Dot_green.." "..CKWord("踉蹌", "Staggers_rgb_tw").." {range:%s} 公尺內所有敵人。\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 按住技能鍵會顯示吼叫範圍。格擋可取消。\n"
			..Dot_red.." 已經"..CKWord("踉蹌", "Staggered_rgb_tw").."的敵人，以及虛空護盾仍在啟用中的敵人，皆不會受到"..CKWord("踉蹌", "Stagger_rgb_tw").."效果。",
		["zh-cn"] = Dot_green.." 激活时恢复 "..CNumb("100%", "pc_100_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			..Dot_green.." "..CKWord("踉跄", "Stagger_rgb_zh_cn").." {range:%s} 米内的所有敌人。\n"
			..Dot_nc.." 基础冷却 {cooldown:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 按下技能键可显示吼叫范围，格挡可取消。\n"
			..Dot_red.." 无法"..CKWord("踉跄", "Stagger_rgb_zh_cn").."已被"..CKWord("踉跄", "Stagger_rgb_zh_cn").."的敌人以及有虚空护盾的敌人。",
	},
	--[+ ABILITY 2-1 - Duty and Honour +]--	09.08.2026
	["loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"] = { -- talent_name: Voice of Command, toughness: +50, duration: 10, s->seconds, +colors
		en = "{talent_name:%s} now also grants to you and Allies in "..CKWord("Coherency", "Coherency_rgb")..":\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." for {duration:%s} seconds.\n"
			.."\n"
			..Dot_green.." Can be replenished by Melee kills, respective Talents, and Weapon Blessings.\n"
			..Dot_nc.." It acts as a 'second' "..CKWord("Toughness", "Toughness_rgb").." bar.\n"
			..Dot_nc.." This can exceed your Maximum "..CKWord("Toughness", "Toughness_rgb")..".",
		ru = "{talent_name:%s} теперь также даёт вам и союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru")..":\n" -- Долг и честь
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." на {duration:%s} секунд.\n"
			.."\n"
			..Dot_green.." Эта "..CKWord("стойкость", "stoikost_rgb_ru").." может быть восстанавлена убийствами в ближнем бою, соответствующими талантами и благословениями оружия.\n"
			..Dot_nc.." Действует как дополнительная полоска "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Может превысить ваш максимальный уровень "..CKWord("стойкости", "stoikosti_rgb_ru")..".",
		["zh-tw"] = "{talent_name:%s} 現在也會賦予你和"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").." 持續 {duration:%s} 秒。\n"
			.."\n"
			..Dot_green.." 可由近戰擊殺、相應天賦和武器祝福恢復。\n"
			..Dot_nc.." 作用如同額外的"..CKWord("韌性", "Toughness_rgb_tw").."條。\n"
			..Dot_nc.." 可超過你的最大"..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = "{talent_name:%s} 现在还会为你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友提供：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."，持续 {duration:%s} 秒。\n"
			.."\n"
			..Dot_green.." 可通过近战击杀、相应天赋和武器祝福恢复。\n"
			..Dot_nc.." 其作用类似于第二条"..CKWord("韧性", "Toughness_rgb_zh_cn").."条。\n"
			..Dot_nc.." 可超过你的最大"..CKWord("韧性", "Toughness_rgb_zh_cn").."值。",
	},
	--[+ ABILITY 2-2 - Only In Death Does Duty End +]--	09.08.2026
	["loc_talent_veteran_combat_ability_revives_new_description"] = { -- talent_name: Voice of Command, +colors
		en = Dot_green.." {talent_name:%s} revives Knocked Down Allies within its radius.",
		ru = Dot_green.." {talent_name:%s} поднимает сбитых с ног союзников в радиусе действия.", -- Лишь со смертью заканчивается долг -- руоф Лишь после смерти заканчивается служение долгу
		["zh-tw"] = Dot_green.." {talent_name:%s} 會救起半徑內倒地的盟友。",
		["zh-cn"] = Dot_green.." {talent_name:%s} 可救起半径内倒地的盟友。",
	},
	--[+ ABILITY 3 - Infiltrate +]--	09.08.2026
	["loc_talent_veteran_invisibility_on_combat_ability_damage_desc"] = { -- duration: 8, movement_speed: +25%, damage_duration: 5, damage: +30%, cooldown: 45, s->seconds, +colors
		en = "You enter "..CKWord("Stealth", "Stealth_rgb").." for {duration:%s} seconds and gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {movement_speed:%s} Movement Speed,\n"
			..Dot_green.." Full "..CKWord("Toughness", "Toughness_rgb").." Restoration.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			..Dot_green.." The "..CKWord("Damage", "Damage_rgb").." bonus lingers for an additional {damage_duration:%s} seconds after "..CKWord("Stealth", "Stealth_rgb").." ends.\n"
			..Dot_green.." Exiting "..CKWord("Stealth", "Stealth_rgb").." Suppresses nearby Enemies.\n"
			..Dot_red.." Attacking ends "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = "Вы входите в режим "..CKWord("Скрытности", "Stealth_rgb_ru").." на {duration:%s} секунд и получаете:\n" -- Проникновение
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {movement_speed:%s} к скорости движения и\n"
			..Dot_green.." полное восстановление "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			..Dot_green.." Бонус к "..CKWord("урону", "uronu_rgb_ru").." продлевается на {damage_duration:%s} секунд после окончания действия "..CKWord("Скрытности", "Stealth_rgb_ru")..".\n"
			..Dot_green.." Выход из "..CKWord("Скрытности", "Stealth_rgb_ru").." подавляет ближайших врагов.\n"
			..Dot_red.." Любые атаки заставляют вас выйти из "..CKWord("Скрытности", "Stealth_rgb_ru")..".",
		["zh-tw"] = "進入"..CKWord("隱身", "Stealth_rgb_tw").."，持續 {duration:%s} 秒，並獲得：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {movement_speed:%s} 移動速度，\n"
			..Dot_green.." 完全恢復"..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			..Dot_green.." "..CKWord("傷害", "Damage_rgb_tw").." 加成在"..CKWord("隱身", "Stealth_rgb_tw").." 結束後再持續 {damage_duration:%s} 秒。\n"
			..Dot_green.." 離開"..CKWord("隱身", "Stealth_rgb_tw").." 會壓制附近敵人。\n"
			..Dot_red.." 攻擊會解除"..CKWord("隱身", "Stealth_rgb_tw").."。",
		["zh-cn"] = "进入"..CKWord("隐身", "Stealth_rgb_zh_cn").."状态 {duration:%s} 秒，并获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {movement_speed:%s} 移动速度，\n"
			..Dot_green.." 完全恢复"..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 基础冷却：{cooldown:%s} 秒。\n"
			..Dot_green.." "..CKWord("伤害", "Damage_rgb_zh_cn").." 加成在"..CKWord("隐身", "Stealth_rgb_zh_cn").."结束后还会额外持续 {damage_duration:%s} 秒。\n"
			..Dot_green.." 脱离"..CKWord("隐身", "Stealth_rgb_zh_cn").."时会压制附近敌人。\n"
			..Dot_red.." 进行攻击会使你退出"..CKWord("隐身", "Stealth_rgb_zh_cn").."状态。",
	},
	--[+ ABILITY 3-1 - Overwatch +]--	09.08.2026
	["loc_talent_veteran_combat_ability_extra_charge_description"] = { -- charges: +1, ability_cooldown: +33%
		en = Dot_green.." {charges:%s} "..CKWord("Combat Ability", "Cmbt_abil_rgb").." charge.\n"
			..Dot_red.." {ability_cooldown:%s} "..CKWord("Cooldown", "Cd_rgb")..".\n"
			.."\n"
			..Dot_nc.." The "..CKWord("Cooldown", "Cd_rgb").." of the Second charge only starts after the First charge finished its "..CKWord("Cooldown", "Cd_rgb")..".",
		ru = Dot_green.." {charges:%s} заряд "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n" -- Наблюдение -- руоф Прикрытие
			..Dot_red.." {ability_cooldown:%s} к времени восстановления.\n"
			.."\n"
			..Dot_nc.." Восстановление второго заряда начинается только после завершения восстановления первого заряда.",
		["zh-tw"] = Dot_green.." {charges:%s} "..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."充能次數。\n"
			..Dot_red.." {ability_cooldown:%s} "..CKWord("冷卻", "Cd_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 第二次充能的冷卻只會在第一次充能完成冷卻後開始。",
		["zh-cn"] = Dot_green.." {charges:%s} 层"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."充能。\n"
			..Dot_red.." {ability_cooldown:%s} "..CKWord("冷却", "Cd_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 第二次充能的冷却仅在第一次充能完成后才开始。",
	},
	--[+ ABILITY 3-2 - Hunter's Resolve +]--	09.08.2026
	["loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"] = { -- talent_name: Infiltrate, tdr: +50%, duration: 10, s->seconds, +colors
		en = Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for {duration:%s} seconds upon leaving "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." на {duration:%s} секунд после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".", -- Упорство охотника
		["zh-tw"] = Dot_green.." 離開"..CKWord("隱身", "Stealth_rgb_tw").."後，獲得 {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."，持續 {duration:%s} 秒。",
		["zh-cn"] = Dot_green.." 离开"..CKWord("隐身", "Stealth_rgb_zh_cn").."后，{tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."，持续 {duration:%s} 秒。",
	},
	--[+ ABILITY 3-3 - Low Profile +]--	09.08.2026
	["loc_talent_veteran_reduced_threat_after_stealth_desc"] = { -- threat_multiplier: -90%, duration: 10, s->seconds, +colors
		en = Dot_green.." {threat_multiplier:%s} Threat for {duration:%s} seconds on leaving "..CKWord("Stealth", "Stealth_rgb")..".\n"
			..Dot_nc.." Less likely to be targeted by enemies.",
		ru = Dot_green.." {threat_multiplier:%s} к угрозе на {duration:%s} секунд после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".\n"
			..Dot_nc.." Враги реже атакуют вас.", -- Незаметность -- руоф Сдержанность
		["zh-tw"] = Dot_green.." 離開"..CKWord("隱身", "Stealth_rgb_tw").."後，獲得 {threat_multiplier:%s} 威脅值，持續 {duration:%s} 秒。\n"
			..Dot_nc.." 較不易被敵人鎖定為目標。",
		["zh-cn"] = Dot_green.." 离开"..CKWord("隐身", "Stealth_rgb_zh_cn").."后 {duration:%s} 秒内，威胁值 {threat_multiplier:%s}。\n"
			..Dot_nc.." 降低被敌人锁定的几率。",
	},
	--[+ ABILITY 3-4 - Close Quarters Killzone +]--	09.08.2026
	["loc_talent_veteran_ability_assault_desc"] = { -- power: +15%, duration: 10, talent_name: Infiltrate, s->seconds, +colors
		en = Dot_green.." {power:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds to enemies within "..CNumb("12.5", "n_12_5_rgb").." meters on "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use.\n"
			.."Beyond "..CNumb("12.5", "n_12_5_rgb").." meters, the "..CKWord("Damage", "Damage_rgb").." buff decreases linearly until it loses its effect at "..CNumb("30", "n_30_rgb").." meters:\n"
			.."_______________________________\n"
			.."Distance ("..CNumb("m", "n_meter_rgb")..")   "..CNumb("1", "n_1_rgb").." | "..CNumb("12.5", "n_12_5_rgb").." |   "..CNumb("15", "n_15_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("25", "n_25_rgb").." | "..CNumb("30", "n_30_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").."("..CNumb("%", "pc_rgb").."):  "..CNumb("15", "n_15_rgb").." |    "..CNumb("15", "n_15_rgb").." | "..CKWord("~13", "n__13_rgb").." |  "..CKWord("~9", "n__9_rgb").." | "..CKWord("~4", "n__4_rgb").." |   "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n"
			..Dot_green.." This also increases the "..CKWord("Damage", "Damage_rgb").." of explosions and DoTs as long as Veteran stays within "..CNumb("30", "n_30_rgb").." meters to the enemy.\n"
			.."\n"
			..Dot_nc.." When using {talent_name:%s}, this begins on leaving "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = Dot_green.." {power:%s} к "..CKWord("урону", "uronu_rgb_ru").." на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров на {duration:%s} секунд после применения "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n" -- Зона ближнего боя -- руоф Зона поражения на ближней дистанции
			.."\n"
			.."За пределами "..CNumb("12.5", "n_12_5_rgb").." метров, "..CKWord("урон", "uron_rgb_ru").." уменьшается линейно, пока не теряет свой эффект на "..CNumb("30", "n_30_rgb").." метрах:\n"
			.."_______________________________\n"
			.."Дистанция:   "..CNumb("1", "n_1_rgb").." | "..CNumb("12.5", "n_12_5_rgb").." |   "..CNumb("15", "n_15_rgb").." |  "..CNumb("20", "n_20_rgb").." | "..CNumb("25", "n_25_rgb").." | "..CNumb("30", "n_30_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").."("..CNumb("%", "pc_rgb").."):      "..CNumb("15", "n_15_rgb").." |     "..CNumb("15", "n_15_rgb").." | "..CKWord("~13", "n__13_rgb").." |  "..CKWord("~9", "n__9_rgb").." | "..CKWord("~4", "n__4_rgb").." |   "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n"
			..Dot_green.." Это также увеличивает "..CKWord("урон", "uron_rgb_ru").." от взрывов и количество "..CKWord("урона", "urona_rgb_ru").." со временем, пока "..CKWord("Ветеран", "cls_vet_rgb_ru").." находится в пределах "..CNumb("30", "n_30_rgb").." метров от врага.\n"
			.."\n"
			..Dot_nc.." При использовании способности {talent_name:%s}, этот талант начинает действовать только после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".",
		["zh-tw"] = Dot_green.." 使用"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."時，對 "..CNumb("12.5", "n_12_5_rgb").." 公尺內敵人造成的"..CKWord("傷害", "Damage_rgb_tw").."提高 {power:%s}，持續 {duration:%s} 秒。\n"
			.."\n"
			.."超出 "..CNumb("12.5", "n_12_5_rgb").." 公尺後，傷害加成會線性遞減，至 "..CNumb("30", "n_30_rgb").." 公尺時完全失效：\n"
			.."_______________________________\n"
			.."距離（公尺）："..CNumb("1", "n_1_rgb").." | "..CNumb("12.5", "n_12_5_rgb").." | "..CNumb("15", "n_15_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("25", "n_25_rgb").." | "..CNumb("30", "n_30_rgb").."\n"
			..CKWord("傷害", "Damage_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("15", "n_15_rgb").." | "..CNumb("15", "n_15_rgb").." | "..CKWord("~13", "n__13_rgb").." | "..CKWord("~9", "n__9_rgb").." | "..CKWord("~4", "n__4_rgb").." | "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n"
			..Dot_green.." 只要"..CKWord("老兵", "cls_vet_rgb_tw").."與敵人的距離不超過 "..CNumb("30", "n_30_rgb").." 公尺，此效果也會提高爆炸與持續傷害。\n"
			.."\n"
			..Dot_nc.." 使用 {talent_name:%s} 時，此效果於離開"..CKWord("隱身", "Stealth_rgb_tw").." 後生效。",
		["zh-cn"] = Dot_green.." 使用"..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."后，对 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人造成的"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {power:%s}，持续 {duration:%s} 秒。\n"
			.."超过 "..CNumb("12.5", "n_12_5_rgb").." 米后，伤害加成线性递减，至 "..CNumb("30", "n_30_rgb").." 米时完全失效：\n"
			.."_______________________________\n"
			.."距离(m):        "..CNumb("1", "n_1_rgb").." | "..CNumb("12.5", "n_12_5_rgb").." |   "..CNumb("15", "n_15_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("25", "n_25_rgb").." | "..CNumb("30", "n_30_rgb").."\n"
			..CKWord("伤害", "Damage_rgb_zh_cn").."（"..CNumb("%", "pc_rgb").."）: "..CNumb("15", "n_15_rgb").." |    "..CNumb("15", "n_15_rgb").." | "..CKWord("~13", "n__13_rgb").." |  "..CKWord("~9", "n__9_rgb").." | "..CKWord("~4", "n__4_rgb").." |   "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n"
			..Dot_green.." 这也提高爆炸和持续伤害，只要"..CKWord("老兵", "cls_vet_rgb_zh_cn").."与敌人的距离在 "..CNumb("30", "n_30_rgb").." 米内。\n"
			.."\n"
			..Dot_nc.." 使用 {talent_name:%s} 时，此效果在离开"..CKWord("隐身", "Stealth_rgb_zh_cn").."后开始生效。",
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Marksman's Focus +]--	09.08.2026
	["loc_talent_veteran_snipers_focus_duration_desc"] = { -- stacks: 3, max_stacks: 10, duration: 5, power: +7.5%, reload_speed: +1%, stack(s)->stacks, s->second/seconds, +colors, +note
		en = "Ranged "..CKWord("Weakspot", "Weakspot_rgb").." kills grant {stacks:%s} Stacks of "..CKWord("Focus", "Focus_rgb")..".\n"
			.."\n"
			..CPhrs("Can_proc_mult_str")
			..Dot_green.." Stacks can be refreshed by Melee and Ranged "..CKWord("Weakspot Hits", "Weakspothits_rgb").." and are dropped one by one.\n"
			..Dot_nc.." Up to {max_stacks} Max Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			.."Each Stack of "..CKWord("Focus", "Focus_rgb").." grants:\n"
			..Dot_green.." {power:%s} Ranged "..CKWord("Finesse", "Finesse_rgb").." strength,\n"
			..Dot_green.." {reload_speed:%s} Reload Speed.\n"
			.."\n"
			..CNote("Fns_note"),
		ru = "Убийства выстрелами в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." дают {stacks:%s} заряда "..CKWord("Концентрации", "Focus_rgb_ru")..".\n" -- Концентрация снайпера
			.."\n"
			..CPhrs("Can_proc_mult_str")
			..Dot_green.." Заряды обновляются при попаданиях в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru").." в ближнем и дальнем бою, и сбрасываются по одному.\n"
			..Dot_nc.." Максимум {max_stacks} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			.."Каждый заряд "..CKWord("Концентрации", "Focus_rgb_ru").." даёт:\n"
			..Dot_green.." {reload_speed:%s} к скорости перезарядки,\n"
			..Dot_green.." {power:%s} к усилению "..CKWord("ловкости", "lovkosti_rgb_ru").." для дальнобойных атак.\n"
			.."\n"
			..CNote("Fns_note"),
		["zh-tw"] = "遠程"..CKWord("弱點", "Weakspot_rgb_tw").."擊殺會獲得 {stacks:%s} 層"..CKWord("專注", "Focus_rgb_tw").."。\n"
			.."\n"
			..CPhrs("Can_proc_mult_str")
			..Dot_green.." 近戰與遠程"..CKWord("弱點命中", "Weakspothits_rgb_tw").."可刷新層數，層數會逐一衰減。\n"
			..Dot_nc.." 最多 {max_stacks} 層。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。\n"
			.."\n"
			.."每層"..CKWord("專注", "Focus_rgb_tw").." 提供：\n"
			..Dot_green.." {power:%s} 遠程"..CKWord("靈巧威力", "Finesse_rgb_tw").."，\n"
			..Dot_green.." {reload_speed:%s} 裝填速度。\n"
			.."\n"
			..CNote("Fns_note"),
		["zh-cn"] = "远程"..CKWord("弱点", "Weakspot_rgb_zh_cn").."击杀获得 {stacks:%s} 层"..CKWord("专注", "Focus_rgb_zh_cn").."。\n"
			.."\n"
			..CPhrs("Can_proc_mult_str")
			..Dot_green.." 层数可由近战和远程"..CKWord("弱点命中", "Weakspothits_rgb_zh_cn").."刷新，并逐一衰减。\n"
			..Dot_nc.." 最多 {max_stacks} 层。\n"
			..Dot_nc.." 持续 {duration:%s} 秒。\n"
			.."\n"
			.."每层"..CKWord("专注", "Focus_rgb_zh_cn").."提供：\n"
			..Dot_green.." {power:%s} 远程"..CKWord("灵巧", "Finesse_rgb_zh_cn").."强度，\n"
			..Dot_green.." {reload_speed:%s} 换弹速度。\n"
			.."\n"
			..CNote("Fns_note"),
	},
	--[+ KEYSTONE 1-1 - Chink in their Armour +]--	09.08.2026
	["loc_talent_veteran_snipers_focus_rending_bonus_description"] = { -- rending: +10%, stacks: 10, +colors, +note
		en = Dot_green.." {rending:%s} "..CKWord("Rending", "Rending_rgb").." when at, or over, {stacks:%s} Stacks of "..CKWord("Focus", "Focus_rgb")..".\n"
			.."\n"
			..CNote("Rend_note"),
		ru = Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони, когда у вас {stacks:%s} или более зарядов "..CKWord("Концентрации", "Focus_rgb_ru")..".\n" -- Щель в их броне -- руоф Щель в броне
			.."\n"
			..CNote("Rend_note"),
		["zh-tw"] = Dot_green.." "..CKWord("專注", "Focus_rgb_tw").." 層數達 {stacks:%s} 層或以上時，{rending:%s} "..CKWord("撕裂", "Rending_rgb_tw").."。\n"
			.."\n"
			..CNote("Rend_note"),
		["zh-cn"] = Dot_green.." 当"..CKWord("专注", "Focus_rgb_zh_cn").."层数达到 {stacks:%s} 层或以上时，获得 {rending:%s} "..CKWord("撕裂", "Rending_rgb_zh_cn").."。\n"
			.."\n"
			..CNote("Rend_note"),
	},
	--[+ KEYSTONE 1-2 - Tunnel Vision +]--	09.08.2026
	["loc_talent_veteran_snipers_focus_stamina_bonus_desc"] = { -- toughness_replenish_multiplier: +5%, stamina: 10%, +colors
		en = Dot_green.." {toughness_replenish_multiplier:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment per "..CKWord("Focus", "Focus_rgb").." Stack.\n"
			..CPhrs("Dont_intw_coher_toughn").."\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." restored on Ranged "..CKWord("Weakspot", "Weakspot_rgb").." kills.\n"
			..CPhrs("Can_proc_mult"),
		ru = Dot_green.." {toughness_replenish_multiplier:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждый заряд "..CKWord("Концентрации", "Focus_rgb_ru")..".\n" -- Тоннельное зрение
			..CPhrs("Dont_intw_coher_toughn_ru").."\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." восстанавливается при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." дальнобойными атаками.\n"
			..CPhrs("Can_proc_mult"),
		["zh-tw"] = Dot_green.." 每層"..CKWord("專注", "Focus_rgb_tw").."：{toughness_replenish_multiplier:%s} "..CKWord("韌性", "Toughness_rgb_tw").." 恢復。\n"
			..CPhrs("Dont_intw_coher_toughn").."\n"
			.."\n"
			..Dot_green.." 遠程"..CKWord("弱點", "Weakspot_rgb_tw").." 擊殺恢復 {stamina:%s} "..CKWord("耐力", "Stamina_rgb_tw").."。\n"
			..CPhrs("Can_proc_mult"),
		["zh-cn"] = Dot_green.." 每层"..CKWord("专注", "Focus_rgb_zh_cn").."提供 {toughness_replenish_multiplier:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."恢复。\n"
			..CPhrs("Dont_intw_coher_toughn").."\n"
			.."\n"
			..Dot_green.." 远程"..CKWord("弱点", "Weakspot_rgb_zh_cn").."击杀恢复 {stamina:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").."。\n"
			..CPhrs("Can_proc_mult"),
	},
	--[+ KEYSTONE 1-3 - Long Range Assassin +]--	09.08.2026
	["loc_talent_veteran_snipers_focus_increased_stacks_description"] = { -- stacks: 10, new_stacks: 15, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." Maximum "..CKWord("Focus", "Focus_rgb").." Stacks. Increases from {stacks:%s} to {new_stacks:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." к максимуму зарядов "..CKWord("Концентрации", "Focus_rgb_ru")..". Увеличивается с {stacks:%s} до {new_stacks:%s}.", -- Дальнобойный ассасин
		["zh-tw"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." "..CKWord("專注", "Focus_rgb_tw").."最大層數。從 {stacks:%s} 提高至 {new_stacks:%s}。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." 最大"..CKWord("专注", "Focus_rgb_zh_cn").."层数。从 {stacks:%s} 提高至 {new_stacks:%s}。",
	},
	--[+ KEYSTONE 2 - Focus Target! +]--	09.08.2026
	["loc_talent_veteran_improved_tag_description"] = { -- time: 1.5, max_stacks: 5, damage: +5%, s->seconds, +colors
		en = "Gain "..CNumb("1", "n_1_rgb").." Stack of "..CKWord("Focus Target", "Focus_Target_rgb").." every {time:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			.."Tagging an Enemy applies all "..CKWord("Focus Target", "Focus_Target_rgb").." Stacks to them and resets your Stacks to "..CNumb("1", "n_1_rgb")..".\n"
			..Dot_nc.." Enemies tagged with this Talent are highlighted Yellow.\n"
			.."\n"
			.."Per Stack, enemy takes:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..", up to "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb").." "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts "..CNumb("25", "n_25_rgb").." seconds.",
		ru = "Вы получаете "..CNumb("1", "n_1_rgb").." заряд "..CKWord("Важной цели", "Focus_Target_rgb_ru").." каждые {time:%s} секунды.\n" -- Важная цель!
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			.."Отметка врага применяет все заряды "..CKWord("Важной цели", "Focus_Target_rgb_ru").." к нему и сбрасывает ваши заряды до "..CNumb("1", "n_1_rgb")..".\n"
			..Dot_nc.." Враги, отмеченные этим талантом, подсвечиваются жёлтым цветом.\n"
			.."\n"
			.."За каждый заряд враг получает:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..", до "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb")..".\n"
			..Dot_nc.." Длится "..CNumb("25", "n_25_rgb").." секунд.",
		["zh-tw"] = "每 {time:%s} 秒獲得 "..CNumb("1", "n_1_rgb").." 層"..CKWord("鎖定目標", "Focus_Target_rgb_tw").."。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			.."\n"
			.."標記敵人時，會將所有"..CKWord("鎖定目標", "Focus_Target_rgb_tw").."層數套用到該敵人，並將你的層數重置為 "..CNumb("1", "n_1_rgb").." 層。\n"
			..Dot_nc.." 被此天賦標記的敵人會以黃色標出。\n"
			.."\n"
			.."每層敵人受到：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，最多 "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 持續 "..CNumb("25", "n_25_rgb").." 秒。",
		["zh-cn"] = "每 {time:%s} 秒获得 "..CNumb("1", "n_1_rgb").." 层"..CKWord("锁定目标", "Focus_Target_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多叠加 {max_stacks:%s} 层。\n"
			.."\n"
			.."标记敌人时，将所有"..CKWord("锁定目标", "Focus_Target_rgb_zh_cn").."层数施加给该敌人，并将你的层数重置为 "..CNumb("1", "n_1_rgb").."。\n"
			..Dot_nc.." 被此天赋标记的敌人会以黄色高亮显示。\n"
			.."\n"
			.."每层使敌人承受：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."，最多 "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续 "..CNumb("25", "n_25_rgb").." 秒。",
	},
	--[+ KEYSTONE 2-1 - Target Down! +]--	09.08.2026
	["loc_talent_veteran_improved_tag_dead_bonus_description"] = { -- toughness: 5%, stamina: 5%, +colors
		en = "When an enemy tagged with "..CKWord("Focus Target", "Focus_Target_rgb").." dies, you and Allies in "..CKWord("Coherency", "Coherency_rgb").." restore per Stack:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." and\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".",
		ru = "Когда враг, отмеченный как "..CKWord("Важная цель", "Focus_Targt_rgb_ru")..", умирает, вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." восстанавливаете за каждый заряд:\n" -- Цель поражена!
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".",
		["zh-tw"] = "被"..CKWord("鎖定目標", "Focus_Target_rgb_tw").."標記的敵人死亡時，你和"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友每層恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").." 和\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_tw").."。",
		["zh-cn"] = "当被"..CKWord("锁定目标", "Focus_Target_rgb_zh_cn").."标记的敌人死亡时，你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友每层恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."和\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE 2-2 - Redirect Fire! +]--	09.08.2026
	["loc_talent_veteran_improved_tag_dead_coherency_bonus_description"] = { -- damage: +2.5%, duration: 10, s->seconds, +colors
		en = "When an enemy tagged with "..CKWord("Focus Target", "Focus_Target_rgb").." dies, you and Allies in "..CKWord("Coherency", "Coherency_rgb").." gain per Stack:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "Когда враг, отмеченный как "..CKWord("Важная цель", "Focus_Targt_rgb_ru")..", умирает, вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете за каждый заряд:\n" -- Перевести огонь!
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
		["zh-tw"] = "被"..CKWord("鎖定目標", "Focus_Target_rgb_tw").."標記的敵人死亡時，你和"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友每層獲得：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。",
		["zh-cn"] = "当被"..CKWord("锁定目标", "Focus_Target_rgb_zh_cn").."标记的敌人死亡时，你和"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友每层获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续 {duration:%s} 秒。",
	},
	--[+ KEYSTONE 2-3 - Focused Fire +]--	09.08.2026
	["loc_talent_veteran_improved_tag_more_damage_description"] = { -- max_stacks: 6, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." Maximum "..CKWord("Focus Target", "Focus_Target_rgb").." Stacks. Increases from "..CNumb("4", "n_4_rgb").." to {max_stacks:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." к максимуму зарядов "..CKWord("Важной цели", "Focus_Target_rgb_ru")..". Увеличивается с "..CNumb("4", "n_4_rgb").." до {max_stacks:%s}.", -- Сосредоточенный огонь
		["zh-tw"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." "..CKWord("鎖定目標", "Focus_Target_rgb_tw").."最大層數。從 "..CNumb("4", "n_4_rgb").." 提高至 {max_stacks:%s}。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." 最大"..CKWord("锁定目标", "Focus_Target_rgb_zh_cn").."层数。从 "..CNumb("4", "n_4_rgb").." 提高至 {max_stacks:%s}。",
	},
	--[+ KEYSTONE 3 - Weapons Specialist +]--	09.08.2026
	["loc_talent_veteran_weapon_switch_new_description"] = { -- ranged_stacks: 10, melee_stacks: 1, ranged_attack_speed: +2%, reload_speed: 2%, ranged_crit_chance: +33%, ranged_duration: 5, melee_attack_speed: +15%, dodge_modifier: 10%, melee_duration: 10, s->seconds, +colors
		en = "Gain "..CKWord("Ranged Specialist", "Rangedspec_rgb").." on Melee kills.\n"
			..Dot_nc.." Stacks {ranged_stacks:%s} times.\n"
			.."\n"
			.."Gain "..CKWord("Melee Specialist", "Meleespec_rgb").." on Ranged kill.\n"
			..Dot_nc.." Stacks {melee_stacks:%s} times.\n"
			.."\n"
			.."When you wield your Ranged weapon, you activate your "..CKWord("Ranged Specialist", "Rangedspec_rgb").." effect, to gain per Stack:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} Reload Speed, up to "..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_attack_speed:%s} Ranged Attack Speed, up to "..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_crit_chance:%s} Ranged "..CKWord("Critical Hit", "Crit_hit_rgb").." Chance on your next shot. Guaranteed "..CKWord("Crit", "Crit_rgb").." at "..CNumb("3", "n_3_rgb").." Stacks.\n"
			..Dot_nc.." Lasts {ranged_duration:%s} seconds.\n"
			.."\n"
			.."When you wield your Melee weapon, you activate your "..CKWord("Melee Specialist", "Meleespec_rgb").." effect, to gain:\n"
			..Dot_green.." {melee_attack_speed:%s} Melee Attack Speed,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} Dodge Speed,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} Dodge Distance.\n"
			..Dot_nc.." Lasts {melee_duration:%s} seconds.",
		ru = "Вы получаете заряды "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." за убийства в ближнем бою.\n" -- Специалист по оружию -- руоф Специалист по вооружениям
			..Dot_nc.." Суммируется до {ranged_stacks:%s} раз.\n"
			.."\n"
			.."Вы получаете заряд "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." за убийство в дальнем бою.\n"
			..Dot_nc.." Суммируется {melee_stacks:%s} раз.\n"
			.."\n"
			.."Когда вы берёте в руки оружие дальнего боя, вы активируете эффект "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." и получаете за каждый заряд:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} к скорости перезарядки, до максимум "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_attack_speed:%s} к скорострельности, до максимум "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." для вашего следующего выстрела. Гарантированный "..CKWord("критический выстрел", "krit_vystrel_rgb_ru").." при "..CNumb("3", "n_3_rgb").." зарядах.\n"
			..Dot_nc.." Длится {ranged_duration:%s} секунд.\n"
			.."\n"
			.."Когда вы берёте в руки оружие ближнего боя, вы активируете эффект "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." и получаете:\n"
			..Dot_green.." {melee_attack_speed:%s} к скорости атаки,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} к скорости уклонений,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} к дистанции уклонений.\n"
			..Dot_nc.." Длится {melee_duration:%s} секунд.",
		["zh-tw"] = "近戰擊殺會獲得"..CKWord("遠程專家", "Rangedspec_rgb_tw").."層數。\n"
			..Dot_nc.." 最多 {ranged_stacks:%s} 層。\n"
			.."\n"
			.."遠程擊殺會獲得"..CKWord("近戰專家", "Meleespec_rgb_tw").."層數。\n"
			..Dot_nc.." 最多 {melee_stacks:%s} 層。\n"
			.."\n"
			.."持用遠程武器時，會啟用"..CKWord("遠程專家", "Rangedspec_rgb_tw").."效果，每層獲得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} 裝填速度，最多 "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb").."，\n"
			..Dot_green.." {ranged_attack_speed:%s} 遠程攻擊速度，最多 "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb").."，\n"
			..Dot_green.." 下一次射擊獲得 {ranged_crit_chance:%s} 遠程"..CKWord("爆擊率", "Crit_chance_rgb_tw").."。"..CNumb("3", "n_3_rgb").." 層時保證"..CKWord("致命一擊", "Crit_rgb_tw").."。\n"
			..Dot_nc.." 持續 {ranged_duration:%s} 秒。\n"
			.."\n"
			.."持用近戰武器時，會啟用"..CKWord("近戰專家", "Meleespec_rgb_tw").."效果，獲得：\n"
			..Dot_green.." {melee_attack_speed:%s} 近戰攻擊速度，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} 閃避速度，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} 閃避距離。\n"
			..Dot_nc.." 持續 {melee_duration:%s} 秒。",
		["zh-cn"] = "近战击杀获得"..CKWord("远程专家", "Rangedspec_rgb_zh_cn").."层数。\n"
			..Dot_nc.." 最多叠加 {ranged_stacks:%s} 层。\n"
			.."\n"
			.."远程击杀获得"..CKWord("近战专家", "Meleespec_rgb_zh_cn").."层数。\n"
			..Dot_nc.." 最多叠加 {melee_stacks:%s} 层。\n"
			.."\n"
			.."手持远程武器时，激活"..CKWord("远程专家", "Rangedspec_rgb_zh_cn").."效果，每层获得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} 换弹速度，最多 "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb").."，\n"
			..Dot_green.." {ranged_attack_speed:%s} 远程攻击速度，最多 "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb").."，\n"
			..Dot_green.." {ranged_crit_chance:%s} 下一次远程攻击"..CKWord("暴击命中", "Crit_hit_rgb").."几率。"..CNumb("3", "n_3_rgb").."层时必定"..CKWord("暴击", "Crit_hit_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续 {ranged_duration:%s} 秒。\n"
			.."\n"
			.."手持近战武器时，激活"..CKWord("近战专家", "Meleespec_rgb_zh_cn").."效果，获得：\n"
			..Dot_green.." {melee_attack_speed:%s} 近战攻击速度，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} 闪避速度，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} 闪避距离。\n"
			..Dot_nc.." 持续 {melee_duration:%s} 秒。",
	},
	--[+ KEYSTONE 3-1 - Always Prepared +]--	09.08.2026
	["loc_talent_veteran_weapon_switch_replenish_ammo_description"] = { -- ammo: 3.3%, +colors
		en = "On activation, "..CKWord("Ranged Specialist", "Rangedspec_rgb").." restores from Reserves per Stack:\n"
			..Dot_green.." {ammo:%s} of your missing Clip ammo, up to "..CNumb("33%", "pc_33_rgb")..".\n"
			..Dot_nc.." Rounded up.",
		ru = "При активации "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." вы заряжаете в ваш магазин из резерва за каждый заряд:\n" -- Всегда готов
			..Dot_green.." {ammo:%s} недостающих патронов, до максимальных "..CNumb("33%", "pc_33_rgb")..".\n"
			..Dot_nc.." Округляется в большую сторону.",
		["zh-tw"] = "啟用"..CKWord("遠程專家", "Rangedspec_rgb_tw").."時，每層會從備用彈藥恢復：\n"
			..Dot_green.." {ammo:%s} 已缺少的彈匣彈藥，最多 "..CNumb("33%", "pc_33_rgb").."。\n"
			..Dot_nc.." 無條件進位。",
		["zh-cn"] = "激活"..CKWord("远程专家", "Rangedspec_rgb_zh_cn").."时，每层从备弹中装填缺失弹药的 {ammo:%s}，最多 "..CNumb("33%", "pc_33_rgb").."。\n"
			..Dot_nc.." 向上取整。",
	},
	--[+ KEYSTONE 3-2 - Invigorated +]--	09.08.2026
	["loc_talent_veteran_weapon_switch_replenish_stamina_new_description"] = { -- stamina: 20%, stamina_reduction: 25%, +colors
		en = "On activation, "..CKWord("Melee Specialist", "Meleespec_rgb").." grants you for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{stamina:%s} Maximum "..CKWord("Stamina", "Stamina_rgb")..",\n"
			..Dot_green.." {stamina_reduction:%s} "..CKWord("Stamina", "Stamina_rgb").." Cost Reduction.",
		ru = "При активации "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." даёт вам на {duration:%s} секунды:\n" -- Ободрение
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{stamina:%s} к максимуму "..CKWord("выносливости", "vynoslivosti_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{stamina_reduction:%s} от затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".",
		["zh-tw"] = "啟用"..CKWord("近戰專家", "Meleespec_rgb_tw").."時，獲得以下效果，持續 {duration:%s} 秒：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{stamina:%s} 最大"..CKWord("耐力", "Stamina_rgb_tw").."，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{stamina_reduction:%s} "..CKWord("耐力", "Stamina_rgb_tw").."消耗。",
		["zh-cn"] = "活化"..CKWord("近战专家", "Meleespec_rgb_zh_cn").." 时 {duration:%s} 秒内获得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{stamina:%s} 最大"..CKWord("耐力", "Stamina_rgb_zh_cn").."，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{stamina_reduction:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").." 消耗减少。",
	},
	--[+ KEYSTONE 3-3 - On Your Toes +]--	09.08.2026
	["loc_talent_veteran_weapon_switch_replenish_toughness_description"] = { -- toughness: 20%, cooldown: 3, s->seconds, +colors
		en = "Activating "..CKWord("Melee Specialist", "Meleespec_rgb").." or "..CKWord("Ranged Specialist", "Rangedspec_rgb").." replenishes:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds each.",
		ru = "Активация "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." или "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." восполняет:\n" -- Наготове
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунды каждый.",
		["zh-tw"] = "啟用"..CKWord("近戰專家", "Meleespec_rgb_tw").."或"..CKWord("遠程專家", "Rangedspec_rgb_tw").."時恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			..Dot_nc.." 各自冷卻：{cooldown:%s} 秒。",
		["zh-cn"] = "激活"..CKWord("近战专家", "Meleespec_rgb_zh_cn").."或"..CKWord("远程专家", "Rangedspec_rgb_zh_cn").."时恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			..Dot_nc.." 每种效果冷却 {cooldown:%s} 秒。",
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Exhilarating Takedown +]--	09.08.2026
	["loc_talent_veteran_toughness_on_weakspot_kill_alt_desc"] = { -- toughness: 15%, toughness_damage_reduction: +10%, duration: 8, stacks: 3, s->seconds, +colors
		en = "On Ranged "..CKWord("Weakspot", "Weakspot_rgb").." Kill, you gain:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..",\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_proc_mult")
			..CPhrs("Can_be_refr_drop_1"),
		ru = "При убийстве в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." из дальнобойного оружия вы получаете на {duration:%s} секунд:\n" -- Подбадривающее убийство -- руоф Бодрящее сокрушение
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..",\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Суммируется {stacks:%s} раза.\n"
			.."\n"
			..CPhrs("Can_proc_mult_str")
			..CPhrs("Can_be_refr_drop_1"),
		["zh-tw"] = "以遠程攻擊"..CKWord("弱點", "Weakspot_rgb_tw").."擊殺時獲得：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			.."\n"
			..CPhrs("Can_proc_mult")
			..CPhrs("Can_be_refr_drop_1"),
		["zh-cn"] = "远程"..CKWord("弱点", "Weakspot_rgb_zh_cn").."击杀时获得：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."，\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续 {duration:%s} 秒。\n"
			..Dot_nc.." 最多叠加 {stacks:%s} 层。\n"
			.."\n"
			..CPhrs("Can_proc_mult")
			..CPhrs("Can_be_refr_drop_1"),
	},
	--[+ Passive 2 - Confirmed Kill +]--	09.08.2026
	["loc_talent_veteran_toughness_on_elite_kill_desc"] = { -- toughness: 10%, toughness_over_time: 20%, duration: 10, s->seconds, +colors
		en = "On Elite or Specialist Kill:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." restored instantly,\n"
			..Dot_green.." "..CNumb("2%", "pc_2_rgb").." "..CKWord("Toughness", "Toughness_rgb").." per second, up to {toughness_over_time:%s} over {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_proc_mult"),
		ru = "При убийстве элитного врага или специалиста:\n" -- Подтверждённое убийство -- руоф Подтвержденное убийство
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается мгновенно и ещё\n"
			..Dot_green.." "..CNumb("2%", "pc_2_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду, вплоть до {toughness_over_time:%s} в течение {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_proc_mult"),
		["zh-tw"] = "擊殺精英或專家敵人時：\n"
			..Dot_green.." 立即恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，\n"
			..Dot_green.." 每秒恢復 "..CNumb("2%", "pc_2_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，在 {duration:%s} 秒內最多恢復 {toughness_over_time:%s}。\n"
			.."\n"
			..CPhrs("Can_proc_mult"),
		["zh-cn"] = "击杀精英或专家时：\n"
			..Dot_green.." 立即恢复 {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."，\n"
			..Dot_green.." 每秒恢复 "..CNumb("2%", "pc_2_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."，持续 {duration:%s} 秒，最多恢复 {toughness_over_time:%s}。\n"
			.."\n"
			..CPhrs("Can_proc_mult"),
	},
	--[+ Passive 3 - Out for Blood +]--	09.08.2026
	["loc_talent_veteran_all_kills_replenish_toughness_description"] = { -- toughness: 5%, +colors
		en = Dot_green.." {toughness:%s} of Maximum "..CKWord("Toughness", "Toughness_rgb").." replenished on any Kill.\n"
			.."\n"
			..Dot_green.." Procs on Melee and Ranged kills as well as on kills from explosions and DoTs.",
		ru = Dot_green.." {toughness:%s} максимальной "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при любом убийстве.\n" -- На тропе войны -- руоф В поисках крови
			.."\n"
			..Dot_green.." Срабатывает при убийствах в ближнем и дальнем бою, а также при убийствах от взрывов и эффектов наносящих урон с течением времени.",
		["zh-tw"] = Dot_green.." 任何擊殺都會恢復最大"..CKWord("韌性", "Toughness_rgb_tw").."的 {toughness:%s}。\n"
			.."\n"
			..Dot_green.." 遠程、近戰、爆炸和持續傷害擊殺均可觸發。",
		["zh-cn"] = Dot_green.." 任何击杀恢复 {toughness:%s} 最大"..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 远程、近战、爆炸和持续伤害击杀均可触发。",
	},
	--[+ Passive 4 - Volley Adept +]--	09.08.2026
	["loc_talent_veteran_reload_speed_on_elite_kill_desc"] = { -- reload_speed: +30%, &->and
		en = Dot_green.." {reload_speed:%s} Reload Speed on Elite and Specialist Enemy Kill.\n"
			.."\n"
			..Dot_nc.." Consumed on Reload.\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки при убийстве элитных врагов или специалистов.\n" -- Умелый залп -- руоф Адепт залпа
			.."\n"
			..Dot_nc.." Расходуется при перезарядке.\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.",
		["zh-tw"] = Dot_green.." 擊殺精英或專家敵人時，獲得 {reload_speed:%s} 裝填速度。\n"
			.."\n"
			..Dot_nc.." 裝填時消耗。\n"
			..Dot_nc.." 也會提高戰鬥霰彈槍特殊裝填動作的速度。",
		["zh-cn"] = Dot_green.." 击杀精英或专家敌人时，换弹速度提高 {reload_speed:%s}。\n"
			.."\n"
			..Dot_nc.." 换弹时消耗。\n"
			..Dot_nc.." 这也会提高战斗霰弹枪装填特殊弹药的速度。",
	},
	--[+ Passive 5 - Longshot +]--	09.08.2026
	["loc_talent_veteran_increased_damage_based_on_range_new_desc"] = { -- ranged_damage: +20%, ranged_close: 12.5, max_ranged_damage: +25%, ranged_far: 30, +colors
		en = Dot_green.." {ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." at a distance within {ranged_close:%s} meters.\n"
			.."\n"
			.."Against targets beyond {ranged_close:%s} meters, Ranged "..CKWord("Damage", "Damage_rgb").." increases linearly up to {max_ranged_damage:%s} at {ranged_far:%s} meters:\n"
			.."_______________________________\n"
			.."Distance ("..CNumb("m", "n_meter_rgb").."):   "..CNumb("1", "n_1_rgb").."| {ranged_close:%s}|   "..CNumb("15", "n_15_rgb").."|  "..CNumb("20", "n_20_rgb").."|   "..CNumb("25", "n_25_rgb").."| "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").." ("..CNumb("%", "pc_rgb").."):  "..CNumb("10", "n_10_rgb").."|    "..CNumb("10", "n_10_rgb").."| "..CKWord("~12", "n__12_rgb").."| "..CKWord("~16", "n__16_rgb").."| "..CKWord("~20", "n__20_rgb").."| "..CNumb("25", "n_25_rgb").."\n"
			.."_______________________________\n",
		ru = Dot_green.." {ranged_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою на расстоянии до {ranged_close:%s} метров.\n" -- Дальнобойный выстрел -- руоф Далекая перспектива
			.."\n"
			.."Против целей за пределами {ranged_close:%s} метров, "..CKWord("урон", "uron_rgb_ru").." в дальнем бою увеличивается линейно до {max_ranged_damage:%s} на {ranged_far:%s} метрах:\n"
			.."_______________________________\n"
			.."Дистанция("..CKWord("м", "n_metr_rgb").."): "..CNumb("1", "n_1_rgb").."| {ranged_close:%s}|  "..CNumb("15", "n_15_rgb").."|   "..CNumb("20", "n_20_rgb").."|  "..CNumb("25", "n_25_rgb").."|  "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").." ("..CNumb("%", "pc_rgb").."):        "..CNumb("10", "n_10_rgb").."|    "..CNumb("10", "n_10_rgb").."| "..CKWord("~12", "n__12_rgb").."| "..CKWord("~16", "n__16_rgb").."| "..CKWord("~20", "n__20_rgb").."|  "..CNumb("25", "n_25_rgb").."\n"
			.."_______________________________\n",
		["zh-tw"] = Dot_green.." 在 {ranged_close:%s} 公尺內獲得 {ranged_damage:%s} 遠程"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			.."對超出 {ranged_close:%s} 公尺的目標，遠程"..CKWord("傷害", "Damage_rgb_tw").."會線性增加，至 {ranged_far:%s} 公尺時達到 {max_ranged_damage:%s}：\n"
			.."_______________________________\n"
			.."距離（公尺）："..CNumb("1", "n_1_rgb").." | {ranged_close:%s} | "..CNumb("15", "n_15_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("25", "n_25_rgb").." | "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("傷害", "Damage_rgb_tw").."（"..CNumb("%", "pc_rgb").."）："..CNumb("10", "n_10_rgb").." | "..CNumb("10", "n_10_rgb").." | "..CKWord("~12", "n__12_rgb").." | "..CKWord("~16", "n__16_rgb").." | "..CKWord("~20", "n__20_rgb").." | "..CNumb("25", "n_25_rgb").."\n"
			.."_______________________________\n",
		["zh-cn"] = Dot_green.." 在 {ranged_close:%s} 米内，远程"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {ranged_damage:%s}。\n"
			.."\n"
			.."对超过 {ranged_close:%s} 米的目标，远程"..CKWord("伤害", "Damage_rgb_zh_cn").."线性增加，至 {ranged_far:%s} 米时达到 {max_ranged_damage:%s}：\n"
			.."_______________________________\n"
			.."距离(m):        "..CNumb("1", "n_1_rgb").."| {ranged_close:%s}|   "..CNumb("15", "n_15_rgb").."|  "..CNumb("20", "n_20_rgb").."|   "..CNumb("25", "n_25_rgb").."| "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("伤害", "Damage_rgb_zh_cn").."（"..CNumb("%", "pc_rgb").."）: "..CNumb("10", "n_10_rgb").."|    "..CNumb("10", "n_10_rgb").."| "..CKWord("~12", "n__12_rgb").."| "..CKWord("~16", "n__16_rgb").."| "..CKWord("~20", "n__20_rgb").."| "..CNumb("25", "n_25_rgb").."\n"
			.."_______________________________\n",
	},
	--[+ Passive 6 - Covering Fire +]--	09.08.2026
	["loc_talent_veteran_replenish_toughness_and_boost_allies_desc"] = { -- radius: 8, toughness: 15%, base_damage: +15%, duration: 6, &->and s->seconds, +colors
		en = "When you Kill an Enemy with a Ranged Attack, Allies within {radius:%s} meters of the target gain:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..",\n"
			..Dot_green.." {base_damage:%s} to all Base "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "Когда вы убиваете врага из оружия дальнего боя, союзники в радиусе {radius:%s} метров от цели получают:\n" -- Прикрывающий огонь -- руоф Прикрытие огнем
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
			..Dot_green.." {base_damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = "以遠程攻擊擊殺敵人時，目標 {radius:%s} 公尺內的盟友獲得：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，\n"
			..Dot_green.." 所有基礎"..CKWord("傷害", "Damage_rgb_tw").."提高 {base_damage:%s}，持續 {duration:%s} 秒。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = "远程攻击击杀敌人时，目标 {radius:%s} 米内的盟友获得：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."，\n"
			..Dot_green.." {base_damage:%s} 全局基础"..CKWord("伤害", "Damage_rgb_zh_cn").."提高，持续 {duration:%s} 秒。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 7 - One Motion +]--	09.08.2026
	["loc_talent_veteran_reduce_swap_time_desc"] = { -- swap_speed: +50%
		en = Dot_green.." {swap_speed} Swap Speed.\n"
			.."\n"
			..Dot_nc.." This reduces the time of wielding actions when Swapping item slots (Weapons, Grenades, Stimms, Medpacks, Ammo crates, Books, etc).",
		ru = Dot_green.." {swap_speed} к скорости смены оружия и предметов.\n" -- В одно движение -- руоф Одно движение
			.."\n"
			..Dot_nc.." Этот талант сокращает время затрачиваемое на смену слотов предметов (оружие, гранаты, стимуляторы, медпаки, ящики с боеприпасами, книги и т.д.).",
		["zh-tw"] = Dot_green.." {swap_speed} 切換速度。\n"
			.."\n"
			..Dot_nc.." 減少切換物品欄位時的持用動作時間（武器、手雷、興奮劑、醫包、彈藥箱、書籍等）。",
		["zh-cn"] = Dot_green.." {swap_speed} 切换速度。\n"
			.."\n"
			..Dot_nc.." 这会减少切换物品栏位（武器、手雷、兴奋剂、医疗包、弹药箱、书籍等）时的操作时间。",
	},
	--[+ Passive 8 - Tactical Reload +]--	09.08.2026
	["loc_talent_veteran_reload_speed_non_empty_mag_desc"] = { -- reload_speed: +25%
		en = Dot_green.." {reload_speed:%s} Reload Speed if your Weapon contains Ammo.\n"
			.."\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки, если в магазине остались патроны.\n" -- Тактическая перезарядка
			.."\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.",
		["zh-tw"] = Dot_green.." 武器內仍有彈藥時，獲得 {reload_speed:%s} 裝填速度。\n"
			.."\n"
			..Dot_nc.." 也會提高戰鬥霰彈槍特殊裝填動作的速度。",
		["zh-cn"] = Dot_green.." 弹匣内有弹药时，换弹速度提高 {reload_speed:%s}。\n"
			.."\n"
			..Dot_nc.." 这也会提高战斗霰弹枪装填特殊弹药的速度。",
	},
	--[+ Passive 9 - Close Order Drill +]--	09.08.2026
	["loc_talent_veteran_toughness_damage_reduction_per_ally_description"] = { -- toughness: +33%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("11%", "pc_11_rgb").." "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." per Ally in "..CKWord("Coherency", "Coherency_rgb")..". Stacks up to {toughness:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("11%", "pc_11_rgb").." к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." за каждого союзника в "..CKWord("сплочённости", "splochennosti_rgb_ru")..". Суммируется до {toughness:%s}.", -- Строевая подготовка
		["zh-tw"] = Dot_green.." 每有一名"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友，獲得 "..CNumb("+", "n_plus_rgb")..CNumb("11%", "pc_11_rgb").." "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。最多 {toughness:%s}。",
		["zh-cn"] = Dot_green.." "..CKWord("协同", "Coherency_rgb_zh_cn").."范围内每名盟友提供 "..CNumb("+", "n_plus_rgb")..CNumb("11%", "pc_11_rgb").." "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."，最多叠加至 {toughness:%s}。",
	},
	--[+ Passive 10 - Superiority Complex +]--	09.08.2026
	["loc_talent_veteran_increase_damage_vs_elites_desc"] = { -- damage: +15%, +colors
		en = Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb").." to Elite Enemies.",
		ru = Dot_green.." {damage:%s} к базовому "..CKWord("урон", "uronu_rgb_ru").." по элитным врагам.", -- Мания величия
		["zh-tw"] = Dot_green.." 對精英敵人造成 {damage:%s} 基礎"..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 对精英敌人的基础"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {damage:%s}。",
	},
	--[+ Passive 11 - Iron Will +]--	09.08.2026
	["loc_talent_veteran_tdr_on_high_toughness_desc"] = { -- toughness_damage_reduction: +50%, toughness_percent: 75%, +colors
		en = Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." if above {toughness_percent:%s} "..CKWord("Toughness", "Toughness_rgb")..".",
		ru = Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..", если ваш уровень "..CKWord("стойкости", "stoikosti_rgb_ru").." выше {toughness_percent:%s}.", -- Железная воля
		["zh-tw"] = Dot_green.." "..CKWord("韌性", "Toughness_rgb_tw").."高於 {toughness_percent:%s} 時，獲得 {toughness_damage_reduction:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 当"..CKWord("韧性", "Toughness_rgb_zh_cn").."高于 {toughness_percent:%s} 时，获得 {toughness_damage_reduction:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。",
	},
	--[+ Passive 12 - Trench Fighter Drill +]--	09.08.2026
	["loc_talent_veteran_attack_speed_description"] = { -- melee_attack_speed: +10%
		en = Dot_green.." {melee_attack_speed:%s} Melee Attack Speed.",
		ru = Dot_green.." {melee_attack_speed:%s} к скорости атак ближнего боя.", -- Отработка окопного боя -- руоф Тренировка в окопах
		["zh-tw"] = Dot_green.." {melee_attack_speed:%s} 近戰攻擊速度。",
		["zh-cn"] = Dot_green.." {melee_attack_speed:%s} 近战攻击速度。",
	},
	--[+ Passive 13 - Field Improvisation +]--	09.08.2026
	["loc_talent_veteran_better_deployables_description"] = { -- damage_heal: +100%, toughness: 1%, &->and, +colors
		en = "Medi-Packs provide:\n"
			..Dot_green.." {damage_heal:%s} Healing Speed,\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second,\n"
			..Dot_green.." Cleanse "..CKWord("Corruption", "Corruption_rgb").." up to the next "..CKWord("Wound", "Wound_rgb")..".\n"
			.."\n"
			..Dot_green.." Ammo Crates also restore Grenades.",
		ru = "Медпаки дают:\n" -- Полевая импровизация
			..Dot_green.." {damage_heal:%s} к скорости лечения,\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду и\n"
			..Dot_green.." очищают "..CKWord("порчу", "porchu_rgb_ru").." вплоть до следующей "..CKWord("раны", "rany_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Ящики с боеприпасами также восстанавливают гранаты.",
		["zh-tw"] = "醫包提供：\n"
			..Dot_green.." {damage_heal:%s} 治療速度，\n"
			..Dot_green.." 每秒 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，\n"
			..Dot_green.." 清除"..CKWord("腐敗", "Corruption_rgb_tw").." 至下一個"..CKWord("傷痕", "Wound_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 彈藥箱也會恢復手雷。",
		["zh-cn"] = "医疗包提供：\n"
			..Dot_green.." {damage_heal:%s} 治疗速度，\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." 每秒，\n"
			..Dot_green.." 清除"..CKWord("腐化", "Corrupted_rgb_zh_cn").."至下一个"..CKWord("伤口", "Wound_rgb").."。\n"
			.."\n"
			..Dot_green.." 弹药箱也能恢复手雷。",
	},
	--[+ Passive 14 - Withering Fire +]--	09.08.2026
	["loc_talent_veteran_increased_ranged_cleave_desc"] = { -- cleave: 6, +colors
		en = "{cleave:%s} Ranged "..CKWord("Cleave", "Cleave_rgb")..".",
		ru = "{cleave:%s} "..CKWord("прострелу", "prostrelu_rgb_ru").." врагов.",
		["zh-tw"] = "{cleave:%s} 遠程"..CKWord("順劈攻擊", "Cleave_rgb_tw").."。",
		["zh-cn"] = "{cleave:%s} 远程"..CKWord("顺劈", "Cleave_rgb_zh_cn").."。",
	},
	--[+ Passive 15 - Opening Salvo +]--	09.08.2026
	["loc_talent_veteran_bonus_crit_chance_on_ammo_desc"] = { -- ammo: 20%, crit_chance: +10%, +colors
		en = Dot_green.." {crit_chance:%s} Ranged "..CKWord("Critical Hit", "Crit_hit_rgb").." Chance for the first {ammo:%s} of Ammo after a Reload.",
		ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." для первых {ammo:%s} патронов после перезарядки.", -- Открывающий залп
		["zh-tw"] = Dot_green.." 裝填後前 {ammo:%s} 彈藥獲得 {crit_chance:%s} 遠程"..CKWord("爆擊率", "Crit_chance_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 换弹后，前 {ammo:%s} 发弹药获得 {crit_chance:%s} 远程"..CKWord("暴击命中", "Crit_hit_rgb").."几率。",
	},

	--[+ Passive 16 - Covert Operative +]--	09.08.2026
	["loc_talent_zealot_increased_flanking_damage_description"] = { -- damage: +30%, +colors 
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Ranged Backstab Attacks.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." дальнобойных атак в спину.", -- Секретный агент -- руоф Тайный оперативник
		["zh-tw"] = Dot_green.." 遠程背刺攻擊造成 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {damage:%s} 远程背刺攻击"..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},

	--[+ Passive 17 - Serrated Blade +]--	09.08.2026
	["loc_talent_veteran_hits_cause_bleed_desc"] = { -- stacks: 2 -- Stack(s)->Stacks, +colors
		en = "{stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." to the target on Melee Hit.\n"
			..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks.\n"
			..Dot_nc.." Lasts "..CNumb("1.5", "n_1_5_rgb").." seconds.\n"
			..Dot_nc.." Ticks every "..CNumb("0.5", "n_0_5_rgb").." seconds.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Above average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Low armor "..CKWord("Damage", "Damage_rgb").." vs Carapace.\n"
			..CPhrs("Cant_appl_thr_shlds"),
		ru = "{stacks:%s} заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." получает цель при ударе в ближнем бою.\n" -- Зазубренный клинок -- руоф Зазубренное лезвие
			..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов максимум.\n"
			..Dot_nc.." Длится "..CNumb("1.5", "n_1_5_rgb").." секунды.\n"
			..Dot_nc.." Срабатывает каждые "..CNumb("0.5", "n_0_5_rgb").." секунды.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Выше среднего "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Низкий "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.\n"
			..CPhrs("Cant_appl_thr_shlds"),
		["zh-tw"] = "近戰命中時，對目標施加 {stacks:%s} 層"..CKWord("流血", "Bleed_rgb_tw").."。\n"
			..Dot_nc.." 最多 "..CNumb("16", "n_16_rgb").." 層。\n"
			..Dot_nc.." 持續 "..CNumb("1.5", "n_1_5_rgb").." 秒。\n"
			..Dot_nc.." 每 "..CNumb("0.5", "n_0_5_rgb").." 秒跳動。\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." 護甲"..CKWord("傷害", "Damage_rgb_tw").."高於平均。\n"
			..Dot_red.." 對甲殼護甲的"..CKWord("傷害", "Damage_rgb_tw").."低。\n"
			..CPhrs("Cant_appl_thr_shlds"),
		["zh-cn"] = "近战命中目标施加 {stacks:%s} 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多叠加 "..CNumb("16", "n_16_rgb").." 层。\n"
			..Dot_nc.." 持续 "..CNumb("1.5", "n_1_5_rgb").." 秒。\n"
			..Dot_nc.." 每 "..CNumb("0.5", "n_0_5_rgb").." 秒跳动一次。\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." 对护甲"..CKWord("伤害", "Damage_rgb_zh_cn").."高于平均。\n"
			..Dot_red.." 对硬壳"..CKWord("伤害", "Damage_rgb_zh_cn").."偏低。\n"
			..CPhrs("Cant_appl_thr_shlds"),
	},
	--[+ Passive 18 - Catch a Breath +]--	09.08.2026
	["loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"] = { -- toughness: 5%, range: 8, m->meters, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished per second when not targeted by Melee Attacks for {duration:%s} seconds.\n"
			.."\n"
			..Dot_nc.." This Talent goes on Cooldown for "..CNumb("5", "n_5_rgb").." seconds after Blocking or receiving Melee damage.\n"
			..CPhrs("Dont_intw_coher_toughn"),
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду восстанавливается, если по вам не попадали атаками ближнего боя более {duration:%s} секунд.\n" -- Переведи дух -- руоф Передышка
			.."\n"
			..Dot_nc.." Этот талант уходит на восстановление на "..CNumb("5", "n_5_rgb").." секунд после блокирования атаки или получения урона в ближнем бою.\n"
			..CPhrs("Dont_intw_coher_toughn"),
		["zh-tw"] = Dot_green.." 超過 {duration:%s} 秒未成為近戰攻擊目標時，每秒恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 格擋或受近戰傷害後，天賦冷卻 "..CNumb("5", "n_5_rgb").." 秒。\n"
			..CPhrs("Dont_intw_coher_toughn"),
		["zh-cn"] = Dot_green.." 超过 {duration:%s} 秒未受到近战攻击时，每秒恢复 {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 格挡或受到近战伤害后，该天赋进入 "..CNumb("5", "n_5_rgb").." 秒冷却。\n"
			..CPhrs("Dont_intw_coher_toughn"),
	},
	--[+ Passive 19 - Grenadier +]--	09.08.2026
	["loc_talent_veteran_extra_grenade_and_throw_chance_description"] = { -- ammo: 1,  20%, Grenade(s)->Grenade
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{ammo:%s} extra Grenade.\n"
			.."\n"
			..Dot_green.." {chance:%s} chance to throw an additional Grenade. Consumes only "..CNumb("1", "n_1_rgb").." Grenade.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{ammo:%s} дополнительная граната.\n" -- Гренадёр -- руоф Гренадер
			.."\n"
			..Dot_green.." {chance:%s} шанс бросить дополнительную гранату, потратив только "..CNumb("1", "n_1_rgb").." гранату.",
		["zh-tw"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{ammo:%s} 額外手雷。\n"
			.."\n"
			..Dot_green.." {chance:%s} 機率多投擲一枚手雷，且只消耗 "..CNumb("1", "n_1_rgb").." 枚手雷。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{ammo:%s} 额外手雷。\n"
			.."\n"
			..Dot_green.." 投掷手雷时有 {chance:%s} 几率额外投掷一枚手雷，只消耗  "..CNumb("1", "n_1_rgb").." 枚。",
	},
	--[+ Passive 20 - Demolition Stockpile +]--	09.06.2026
	["loc_talent_veteran_grenade_regeneration_per_grenade_desc"] = { -- amount: 1, time: 60, Grenade(s)->Grenade, s->seconds
		en = "{amount:%s} Grenade Replenished every:\n"
			 ..Dot_green.." {krak_time:%s} seconds - {krak_grenade:%s},\n"
			 ..Dot_green.." {smoke_time:%s} seconds - {smoke_grenade:%s},\n"
			 ..Dot_green.." {frag_time:%s} seconds - {frag_grenade:%s}.",
		ru = "{amount:%s} граната восстановливается каждые:\n"
			 ..Dot_green.." {krak_time:%s} секунд - {krak_grenade:%s},\n"
			 ..Dot_green.." {smoke_time:%s} секунд - {smoke_grenade:%s},\n"
			 ..Dot_green.." {frag_time:%s} секунд - {frag_grenade:%s}.", -- Склад взрывчатки
		["zh-tw"] = "每隔下列時間補充 {amount:%s} 枚手雷：\n"
			..Dot_green.." {krak_time:%s} 秒 — {krak_grenade:%s}，\n"
			..Dot_green.." {smoke_time:%s} 秒 — {smoke_grenade:%s}，\n"
			..Dot_green.." {frag_time:%s} 秒 — {frag_grenade:%s}。",
		["zh-cn"] = "{amount:%s} 颗手雷补充间隔：\n"
			 ..Dot_green.." {krak_time:%s} 秒 - {krak_grenade:%s},\n"
			 ..Dot_green.." {smoke_time:%s} 秒 - {smoke_grenade:%s},\n"
			 ..Dot_green.." {frag_time:%s} 秒 - {frag_grenade:%s}。",
	},
	--[+ Passive 21 - Grenade Tinkerer +]--	09.08.2026
	["loc_talent_veteran_improved_grenades_desc"] = { -- krak_grenade: Krak Grenade, krak: +75%, frag_grenade: Frag Grenade, frag_damage: +25%, smoke_grenade: Smoke Grenade, smoke: +100%, &->and, +colors
		en = "{krak_grenade:%s}:\n"
			..Dot_green.." {krak:%s} explosion "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."{frag_grenade:%s}:\n"
			..Dot_green.." {frag_damage:%s} explosion "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {frag_damage:%s} Radius.\n"
			..Dot_red.." Does not affect "..CKWord("Bleeds", "Bleeds_rgb").." applied by the explosion.\n"
			.."\n"
			.."{smoke_grenade:%s}:\n"
			..Dot_green.." {smoke:%s} Duration. Increases from "..CNumb("15", "n_15_rgb").." to "..CNumb("30", "n_30_rgb").." seconds.",
		ru = "{krak_grenade:%s}:\n" -- Гранатный мастер -- руоф Любитель гранат
			..Dot_green.." {krak:%s} к "..CKWord("урону", "uronu_rgb_ru").." от взрыва.\n"
			.."\n"
			.."{frag_grenade:%s}:\n"
			..Dot_green.." {frag_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." от взрыва,\n"
			..Dot_green.." {frag_damage:%s} к радиусу.\n"
			..Dot_red.." Не влияет на "..CKWord("кровотечение", "krovotechenie_rgb_ru")..", наложенное взрывом.\n"
			.."\n"
			.."{smoke_grenade:%s}:\n"
			..Dot_green.." {smoke:%s} к длительности. Длительность увеличена с "..CNumb("15", "n_15_rgb").." до "..CNumb("30", "n_30_rgb").." секунд.",
		["zh-tw"] = "{krak_grenade:%s}：\n"
			..Dot_green.." {krak:%s} 爆炸"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			.."{frag_grenade:%s}：\n"
			..Dot_green.." {frag_damage:%s} 爆炸"..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {frag_damage:%s} 爆炸半徑。\n"
			..Dot_red.." 不影響爆炸施加的"..CKWord("流血", "Bleeds_rgb_tw").."。\n"
			.."\n"
			.."{smoke_grenade:%s}：\n"
			..Dot_green.." {smoke:%s} 持續時間。從 "..CNumb("15", "n_15_rgb").." 提高至 "..CNumb("30", "n_30_rgb").." 秒。",
		["zh-cn"] = "{krak_grenade:%s}:\n"
			..Dot_green.." 爆炸"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {krak:%s}。\n"
			.."\n"
			.."{frag_grenade:%s}:\n"
			..Dot_green.." 爆炸"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {frag_damage:%s}，\n"
			..Dot_green.." 爆炸半径提高 {frag_damage:%s}。\n"
			..Dot_red.." 不影响爆炸施加的"..CKWord("流血", "Bleed_rgb_zh_cn").."效果。\n"
			.."\n"
			.."{smoke_grenade:%s}:\n"
			..Dot_green.." 持续时间增加 {smoke:%s}，从 "..CNumb("15", "n_15_rgb").." 秒提高至 "..CNumb("30", "n_30_rgb").." 秒。",
	},
	--[+ Passive 22 - Precision Strikes +]--	09.08.2026
	["loc_talent_veteran_increased_weakspot_damage_desc"] = { -- damage: +30%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." of Melee and Ranged attacks.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." для атак ближнего и дальнего боя.", -- Точные удары
		["zh-tw"] = Dot_green.." 近戰與遠程攻擊獲得 {damage:%s} "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 近战和远程攻击的"..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."提高 {damage:%s}。",
	},
	--[+ Passive 23 - Deadshot +]--	09.08.2026
	["loc_talent_veteran_ads_drains_stamina_boost_desc"] = { -- crit_chance: +25%, sway_reduction: +60%, stamina: 0.75, stamina_per_shot: 0.1, &->and, +colors
		en = "While Aiming with "..CKWord("Stamina", "Stamina_rgb").." above "..CNumb("0", "n_0_rgb").." you gain:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("19%", "pc_19_rgb").." Spread,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("12%", "pc_12_rgb").." Recoil.\n"
			.."Aiming also drains "..CKWord("Stamina", "Stamina_rgb")..":\n"
			..Dot_red.." {stamina:%s} per second,\n"
			..Dot_red.." {stamina_per_shot:%s} per shot.\n"
			.."\n"
			..Dot_red.." This talent has no effect on Plasma Gun.",
		ru = "Пока вы целитесь и ваш уровень "..CKWord("выносливости", "vynoslivosti_rgb_ru").." выше "..CNumb("0", "n_0_rgb")..", вы получаете:\n" -- Смертельный выстрел
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} к раскачиванию прицела,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("19%", "pc_19_rgb").." к разбросу,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("12%", "pc_12_rgb").." к отдаче.\n"
			.."Прицеливание при этом расходует "..CKWord("выносливость", "vynoslivost_rgb_ru")..":\n"
			..Dot_red.." {stamina:%s} в секунду и\n"
			..Dot_red.." {stamina_per_shot:%s} за каждый выстрел.\n"
			.."\n"
			..Dot_red.." Этот талант не действует на плазмомёт.",
		["zh-tw"] = "在"..CKWord("耐力", "Stamina_rgb_tw").." 大於 "..CNumb("0", "n_0_rgb").." 時瞄準並獲得：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("爆擊率", "Crit_chance_rgb_tw").."，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} 武器搖晃，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("19%", "pc_19_rgb").." 散布，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("12%", "pc_12_rgb").." 後座力。\n"
			.."瞄準也消耗"..CKWord("耐力", "Stamina_rgb_tw").."：\n"
			..Dot_red.." 每秒 {stamina:%s}，\n"
			..Dot_red.." 每次射擊 {stamina_per_shot:%s}。\n"
			.."\n"
			..Dot_red.." 對電漿槍無效。",
		["zh-cn"] = "在"..CKWord("耐力", "Stamina_rgb_zh_cn").."大于 "..CNumb("0", "n_0_rgb").." 时瞄准，获得：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} 武器晃动，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("19%", "pc_19_rgb").." 散布，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("12%", "pc_12_rgb").." 后坐力。\n"
			.."瞄准同时也会消耗"..CKWord("耐力", "Stamina_rgb_zh_cn").."：\n"
			..Dot_red.." 每秒 {stamina:%s}，\n"
			..Dot_red.." 每发 {stamina_per_shot:%s}。\n"
			.."\n"
			..Dot_red.." 此天赋对等离子枪无效。",
	},
	--[+ Passive 24 - Born Leader +]--	09.08.2026
	["loc_talent_veteran_allies_share_toughness_coherency_increase_description"] = { -- radius: +50%, toughness: 20%, +colors
		en = Dot_green.." {radius:%s} "..CKWord("Coherency", "Coherency_rgb").." radius.\n"
			.."\n"
			..Dot_green.." {toughness:%s} of any "..CKWord("Toughness", "Toughness_rgb").." you replenish is also granted to Allies in "..CKWord("Coherency", "Coherency_rgb")..".",
		ru = Dot_green.." {radius:%s} к радиусу "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Прирождённый лидер -- руоф Прирожденный лидер
			.."\n"
			..Dot_green.." {toughness:%s} от любой "..CKWord("стойкости", "stoikosti_rgb_ru")..", восстанавливаемой вами, восстанавливается союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".",
		["zh-tw"] = Dot_green.." {radius:%s} "..CKWord("協同", "Coherency_rgb_tw").."半徑。\n"
			.."\n"
			..Dot_green.." 每次恢復"..CKWord("韌性", "Toughness_rgb_tw").."時，也會將恢復量的 {toughness:%s} 給予"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友。",
		["zh-cn"] = Dot_green.." {radius:%s} "..CKWord("协同", "Coherency_rgb_zh_cn").."半径。\n"
			.."\n"
			..Dot_green.." 你恢复的"..CKWord("韧性", "Toughness_rgb_zh_cn").."中的 {toughness:%s} 也会提供给"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友。",
	},
	--[+ Passive 25 - Leave No One Behind +]--	09.08.2026
	["loc_talent_veteran_movement_speed_towards_downed_description"] = { -- revive_speed: +20%, movement_speed: +20%, damage_reduction: +33%, duration: 5, &->and, s->seconds, +colors
		en = "When moving towards a Knocked Down or Incapacitated Ally, you gain:\n"
			..Dot_green.." {revive_speed:%s} Assist Speed,\n"
			..Dot_green.." {revive_speed:%s} Revive Speed,\n"
			..Dot_green.." {movement_speed:%s} Movement Speed, and\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity.\n"
			.."\n"
			.."Whenever you Revive a Knocked Down Ally, they receive for {duration:%s} seconds:\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Reduction.",
		ru = "При движении к сбитому с ног или выведенному из строя союзнику вы получаете:\n" -- Своих не бросаем -- руоф Никого не оставляйте позади
			..Dot_green.." {revive_speed:%s} к скорости поднятия,\n"
			..Dot_green.." {revive_speed:%s} к скорости возрождения,\n"
			..Dot_green.." {movement_speed:%s} к скорости движения, а также\n"
			..Dot_green.." иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru")..".\n"
			.."\n"
			.."Каждый раз, когда вы возрождаете сбитого с ног союзника, он получает на {duration:%s} секунд:\n"
			..Dot_green.." {damage_reduction:%s} к снижению "..CKWord("урона", "urona_rgb_ru")..".",
		["zh-tw"] = "朝倒地或失能盟友移動時獲得：\n"
			..Dot_green.." {revive_speed:%s} 協助速度，\n"
			..Dot_green.." {revive_speed:%s} 救起速度，\n"
			..Dot_green.." {movement_speed:%s} 移動速度，\n"
			..Dot_green.." 免疫"..CKWord("眩暈", "Stun_rgb_tw").."。\n"
			.."\n"
			.."每次救起倒地盟友後，對方會獲得以下效果，持續 {duration:%s} 秒：\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("傷害", "Damage_rgb_tw").."減免。",
		["zh-cn"] = "向倒地或失能的盟友移动时，获得：\n"
			..Dot_green.." {revive_speed:%s} 救助速度，\n"
			..Dot_green.." {revive_speed:%s} 救援速度，\n"
			..Dot_green.." {movement_speed:%s} 移动速度，以及\n"
			..Dot_green.." "..CKWord("眩晕", "Stun_rgb_zh_cn").."免疫。\n"
			.."\n"
			.."每次救起倒地的盟友后，该盟友在 {duration:%s} 秒内获得：\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."减免。",
	},
	--[+ Passive 26 - Demolition Team +]--	09.08.2026
	["loc_talent_veteran_grenade_on_elite_kills_coop_desc"] = { -- chance: 5%
		en = Dot_green.." {chance:%s} chance to replenish a Grenade when you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an Elite or Specialist Enemy.\n"
			.."\n"
			..Dot_green.." Procs regardless of whether you are in "..CKWord("Coherency", "Coherency_rgb").." with Allies or not.",
		ru = Dot_green.." {chance:%s} шанс восстановить гранату, когда вы или ваш союзник убиваете элитного врага или специалиста.\n" -- Команда подрывников -- руоф Группа подрыва
			.."\n"
			..Dot_green.." Срабатывает независимо от того, находитесь ли вы в "..CKWord("сплочённости", "splochennosti_rgb_ru").." с союзниками или нет.",
		["zh-tw"] = Dot_green.." 你或"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友擊殺精英或專家敵人時，{chance:%s} 機率補充一枚手雷。\n"
			.."\n"
			..Dot_green.." 無論你是否與盟友處於"..CKWord("協同", "Coherency_rgb_tw").."範圍內，均可觸發。",
		["zh-cn"] = Dot_green.." 当你或"..CKWord("协同", "Coherency_rgb_zh_cn").."范围内的盟友击杀精英或专家敌人时，有 {chance:%s} 几率补充一枚手雷。\n"
			.."\n"
			..Dot_green.." 无论是否与盟友处于"..CKWord("协同", "Coherency_rgb_zh_cn").."状态均可触发。",
	},
	--[+ Passive 27 - Reciprocity +]--	09.08.2026
	["loc_talent_veteran_dodging_grants_crit_description"] = { -- crit_chance: +5%, duration: 8, stacks: 5, s->seconds, +colors
		en = Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit", "Crit_hit_rgb").." Chance for {duration:%s} seconds on successful Dodge.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			.." Effect triggers on dodging:\n"
			.."   "..Dot_green.." Melee attacks,\n"
			.."   "..Dot_green.." Ranged attacks,\n"
			.."   "..Dot_green.." Pox Hound jump,\n"
			.."   "..Dot_green.." Trapper net and\n"
			.."   "..Dot_green.." Mutant grab.\n"
			.."\n"
			.." Effect does not trigger on dodging:\n"
			.."   "..Dot_red.." Gunner's burst fire,\n"
			.."   "..Dot_red.." Reaper's shooting, and\n"
			.."   "..Dot_red.." Sniper's shot.",
		ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на {duration:%s} секунд при успешном уклонении.\n" -- Взаимообмен -- руоф Взаимная выгода
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			.." Эффект срабатывает при уклонении от:\n"
			.."   "..Dot_green.." Атак ближнего боя,\n"
			.."   "..Dot_green.." Атак дальнего боя,\n"
			.."   "..Dot_green.." Прыжка гончей,\n"
			.."   "..Dot_green.." Сетки Скаба-ловца и \n"
			.."   "..Dot_green.." Захвата мутанта.\n"
			.."\n"
			.." Эффект не срабатывает при уклонении от:\n"
			.."   "..Dot_red.." Очереди пулемётчика,\n"
			.."   "..Dot_red.." Стрельбы жнеца и\n"
			.."   "..Dot_red.." Выстрела снайпера.",
		["zh-tw"] = Dot_green.." 成功閃避後，獲得 {crit_chance:%s} "..CKWord("爆擊率", "Crit_chance_rgb_tw").."，持續 {duration:%s} 秒。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			.."\n"
			.." 閃避以下時觸發：\n"
			.."   "..Dot_green.." 近戰攻擊，\n"
			.."   "..Dot_green.." 遠程攻擊，\n"
			.."   "..Dot_green.." 瘟疫獵犬撲擊，\n"
			.."   "..Dot_green.." 陷阱兵網，以及\n"
			.."   "..Dot_green.." 變種人抓取。\n"
			.."\n"
			.." 閃避以下時不觸發：\n"
			.."   "..Dot_red.." 砲手連射，\n"
			.."   "..Dot_red.." 收割者射擊，以及\n"
			.."   "..Dot_red.." 狙擊手的射擊。",
		["zh-cn"] = Dot_green.." 成功闪避后，{crit_chance:%s} "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 {duration:%s} 秒。\n"
			..Dot_nc.." 最多叠加 {stacks:%s} 层。\n"
			.."\n"
			.." 闪避以下攻击时触发效果：\n"
			.."   "..Dot_green.." 近战攻击，\n"
			.."   "..Dot_green.." 远程攻击，\n"
			.."   "..Dot_green.." 瘟疫猎犬跳扑，\n"
			.."   "..Dot_green.." 捕网者的网，\n"
			.."   "..Dot_green.." 变种人抓取。\n"
			.."\n"
			.." 闪避以下攻击时不触发效果：\n"
			.."   "..Dot_red.." 枪手的连射，\n"
			.."   "..Dot_red.." 收割者的射击，\n"
			.."   "..Dot_red.." 狙击手的射击。",
	},
	--[+ Passive 28 - Duck and Dive +]--	09.08.2026
	["loc_talent_veteran_stamina_on_ranged_dodge_desc"] = { -- stamina: +30%
		en = Dot_green.." {stamina:%s} of Max "..CKWord("Stamina", "Stamina_rgb").." on avoiding Ranged Attacks by Dodging, Sprinting or Sliding.\n"
			.."\n"
			..Dot_nc.." Requires more than "..CNumb("0", "n_0_rgb").." "..CKWord("Stamina", "Stamina_rgb")..".\n"
			..Dot_nc.." Has an internal Cooldown of "..CNumb("3", "n_3_rgb").." seconds.",
		ru = Dot_green.." {stamina:%s} к максимальной "..CKWord("выносливости", "vynoslivosti_rgb_ru").." вы получаете при избегании дальнобойных атак с помощью уклонений, бега или скольжения.\n" -- Пригнись и увернись -- руоф Голову в песок
			.."\n"
			..Dot_nc.." Должно быть больше "..CNumb("0", "n_0_rgb").." "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n"
			..Dot_nc.." Имеет скрытое "..CNumb("3", "n_3_rgb").."-секундное восстановление.",
		["zh-tw"] = Dot_green.." 透過閃避、衝刺或滑行避開遠程攻擊時，恢復 {stamina:%s} 最大"..CKWord("耐力", "Stamina_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 需有高於 "..CNumb("0", "n_0_rgb").." 的"..CKWord("耐力", "Stamina_rgb_tw").."。\n"
			..Dot_nc.." 內部冷卻 "..CNumb("3", "n_3_rgb").." 秒。",
		["zh-cn"] = Dot_green.." 通过闪避、冲刺或滑铲躲避远程攻击时，恢复 {stamina:%s} 最大"..CKWord("耐力", "Stamina_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 需要"..CKWord("耐力", "Stamina_rgb_zh_cn").."大于 "..CNumb("0", "n_0_rgb").."。\n"
			..Dot_nc.." 内置冷却 "..CNumb("3", "n_3_rgb").." 秒。",
	},
	--[+ Passive 29 - Fully Loaded +]--	09.08.2026
	["loc_talent_veteran_ammo_increase_desc"] = { -- ammo: +25%
		en = Dot_green.." {ammo:%s} Maximum Ammo in reserve.\n"
			.."\n"
			..Dot_nc.." Rounds down.",
		ru = Dot_green.." {ammo:%s} к максимуму боеприпасов в резерве.\n" -- Полный запас -- руоф Полный заряд
			.."\n"
			..Dot_nc.." Округляется в меньшую сторону.",
		["zh-tw"] = Dot_green.." {ammo:%s} 備用彈藥上限。\n"
			.."\n"
			..Dot_nc.." 無條件捨去。",
		["zh-cn"] = Dot_green.." {ammo:%s} 备用弹药上限。\n"
			.."\n"
			..Dot_nc.." 向下取整。",
	},
	--[+ Passive 30 - Tactical Awareness +]--	09.08.2026
	["loc_talent_veteran_elite_kills_reduce_cooldown_alt_desc"] = { -- regen: +100%, time: 3, s->seconds, +colors
		en = "On Specialist Kill:\n"
			..Dot_green.." {regen:%s} "..CKWord("Combat Ability", "Cmbt_abil_rgb").." Cooldown Regeneration for {time:%s} seconds.",
		ru = "При убийстве специалиста:\n" -- Тактическая осведомлённость -- руоф Тактическая осведомленность
			..Dot_green.." {regen:%s} к восстановлению "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." на {time:%s} секунд.",
		["zh-tw"] = "擊殺專家時：\n"
			..Dot_green.." {regen:%s} "..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."冷卻恢復，持續 {time:%s} 秒。",
		["zh-cn"] = "击杀专家敌人时：\n"
			..Dot_green.." {regen:%s} "..CKWord("战斗技能", "Cmbt_abil_rgb_zh_cn").."冷却恢复速度，持续 {time:%s} 秒。",
	},
	--[+ Passive 31 - Desperado +]--	09.08.2026
	["loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"] = { -- crit_chance: +10%, finesse: +25%, &->and, +colors
		en = Dot_green.." {crit_chance:%s} Melee "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".\n"
			..Dot_green.." {finesse:%s} Melee "..CKWord("Finesse", "Finesse_rgb").." Bonus.\n"
			.."\n"
			..CNote("Fns_note"),
		ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." в ближнем бою.\n" -- Сорвиголова
			..Dot_green.." {finesse:%s} к усилению "..CKWord("ловкости", "lovkosti_rgb_ru").." в ближнем бою.\n"
			.."\n"
			..CNote("Fns_note"),
		["zh-tw"] = Dot_green.." {crit_chance:%s} 近戰"..CKWord("爆擊率", "Crt_hit_chnc_rgb_tw").."。\n"
			..Dot_green.." {finesse:%s} 近戰"..CKWord("靈巧", "Finesse_rgb_tw").." 加成。\n"
			.."\n"
			..CNote("Fns_note"),
		["zh-cn"] = Dot_green.." {crit_chance:%s} 近战"..CKWord("暴击几率", "Crt_hit_chnc_rgb").."。\n"
			..Dot_green.." {finesse:%s} 近战"..CKWord("灵巧", "Finesse_rgb_zh_cn").."加成。\n"
			.."\n"
			..CNote("Fns_note"),
	},
	--[+ Passive 32 - Keep Their Heads Down! +]--	09.08.2026
	["loc_talent_veteran_increase_suppression_desc"] = { -- suppression: +75%
		en = Dot_green.." {suppression:%s} Ranged Attack Suppression.",
		ru = Dot_green.." {suppression:%s} к подавлению врагов выстрелами.", -- Не давай им поднять головы! -- руоф Пригнитесь!
		["zh-tw"] = Dot_green.." {suppression:%s} 遠程攻擊壓制效果。",
		["zh-cn"] = Dot_green.." {suppression:%s} 远程攻击压制效果。",
	},
	--[+ Passive 33 - Competitive Urge +]--	09.08.2026
	["loc_talent_veteran_ally_kills_increase_damage_description"] = { -- proc_chance: 2.5%, damage: +20%, melee_impact: +20%, suppression: +20%, duration: 8, &->and, s->seconds, +colors
		en = "Whenever an Ally kills an Enemy you have a {proc_chance:%s} chance to gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {melee_impact:%s} Melee "..CKWord("Impact", "Impact_rgb")..",\n"
			..Dot_green.." {suppression:%s} Suppression dealt.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Impact_note"),
		ru = "Каждый раз, когда союзник убивает врага, у вас есть {proc_chance:%s} шанс получить на {duration:%s} секунд:\n" -- Состязательный мотив
			..Dot_green.." {damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {suppression:%s} к подавлению врагов.\n"
			..Dot_green.." {melee_impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." в ближнем бою,\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Impact_note"),
		["zh-tw"] = "每當盟友擊殺敵人時，你有 {proc_chance:%s} 機率獲得以下效果，持續 {duration:%s} 秒：\n"
			..Dot_green.." {damage:%s} 基礎"..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {melee_impact:%s} 近戰"..CKWord("衝擊", "Impact_rgb_tw").."，\n"
			..Dot_green.." {suppression:%s} 造成的壓制。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Impact_note"),
		["zh-cn"] = "每当盟友击杀敌人时，你有 {proc_chance:%s} 几率获得，持续 {duration:%s} 秒：\n"
			..Dot_green.." {damage:%s} 基础"..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {melee_impact:%s} 近战"..CKWord("冲击", "Impact_rgb_zh_cn").."，\n"
			..Dot_green.." {suppression:%s} 压制效果。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Impact_note"),
	},
	--[+ Passive 34 - Rending Strikes +]--	09.08.2026
	["loc_talent_veteran_rending_bonus_desc"] = { -- rending_multiplier: +10%, +colors
		en = Dot_green.." {rending_multiplier:%s} "..CKWord("Rending", "Rending_rgb").." to all weapons.\n"
			.."\n"
			..CNote("Rend_note"),
		ru = Dot_green.." {rending_multiplier:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони для всего оружия.\n" -- Пробивающие удары -- руоф Разрушительные удары
			.."\n"
			..CNote("Rend_note"),
		["zh-tw"] = Dot_green.." 所有武器獲得 {rending_multiplier:%s} "..CKWord("撕裂", "Rending_rgb_tw").."。\n"
			.."\n"
			..CNote("Rend_note"),
		["zh-cn"] = Dot_green.." 所有武器获得 {rending_multiplier:%s} "..CKWord("撕裂", "Rending_rgb_zh_cn").."。\n"
			.."\n"
			..CNote("Rend_note"),
	},
	--[+ Passive 35 - Agile Engagement +]--	09.08.2026
	["loc_talent_veteran_kill_grants_damage_to_other_slot_desc"] = { -- damage: +25%, duration: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." on killing an enemy with a Melee attack.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." on killing an enemy with a Ranged attack.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою при убийстве врага атакой ближнего боя.\n" -- Проворное наступление -- руоф Ловкое взаимодействие
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в ближнем бою при убийстве врага атакой дальнего боя.\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
		["zh-tw"] = Dot_green.." 以近戰攻擊擊殺敵人時，獲得 {damage:%s} 遠程"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。\n"
			.."\n"
			..Dot_green.." 以遠程攻擊擊殺敵人時，獲得 {damage:%s} 近戰"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。",
		["zh-cn"] = Dot_green.." 近战击杀后，远程"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {damage:%s}，持续 {duration:%s} 秒。\n"
			.."\n"
			..Dot_green.." 远程击杀后，近战"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {damage:%s}，持续 {duration:%s} 秒。",
	},
	--[+ Passive 36 - Skirmisher +]--	09.08.2026
	["loc_talent_veteran_damage_damage_after_sprinting_or_sliding_desc"] = { -- base_damage: +6.25%, duration: 10, stacks: 4, s->seconds, +colors
		en = Dot_green.." {base_damage:%s} to all Base "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds after Sprinting or Sliding.\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = Dot_green.." {base_damage:%s} ко всему базовому "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд после бега или скольжения.\n" -- Застрельщик
			..Dot_nc.." Суммируется до {stacks:%s} раз.",
		["zh-tw"] = Dot_green.." 衝刺或滑行後，所有基礎"..CKWord("傷害", "Damage_rgb_tw").."提高 {base_damage:%s}，持續 {duration:%s} 秒。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。",
		["zh-cn"] = Dot_green.." 冲刺或滑铲后，全局基础"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {base_damage:%s}，持续 {duration:%s} 秒。\n"
			..Dot_nc.." 最多叠加 {stacks:%s} 层。",
	},
	--[+ Passive 37 - Shock Trooper +]--	09.08.2026
	["loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"] = { -- +colors
		en = Dot_green.." "..CKWord("Critical Shots", "Crit_shots_rgb").." with Las-weapons consume no Ammo.",
		ru = Dot_green.." "..CKWord("Критические выстрелы", "Krit_vystrely_rgb_ru").." из лазерного оружия не потребляют боеприпасы.", -- Штурмовик
		["zh-tw"] = Dot_green.." 雷射武器的"..CKWord("致命射擊", "Crit_shots_rgb_tw").."不消耗彈藥。",
		["zh-cn"] = Dot_green.." 激光武器的"..CKWord("暴击射击", "Crit_shots_rgb_zh_cn").."不消耗弹药。",
	},
	--[+ Passive 38 - Kill Zone +]--	09.08.2026
	["loc_talent_veteran_ranged_power_out_of_melee_new_desc"] = { -- ranged_damage: +20%, radius: 8, m->meters, +colors
		en = "{ranged_damage:%s} Base Ranged "..CKWord("Damage", "Damage_rgb").." when you have avoided Melee Attacks for {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." This Talent goes on Cooldown for {cooldown:%s} seconds after Blocking or receiving Melee damage.\n",
		ru = "{ranged_damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою, если вы избегали атак ближнего боя более {cooldown:%s} секунд.\n" -- Зона поражения
			.."\n"
			..Dot_nc.." Этот талант уходит на восстановление на {cooldown:%s} секунд после блокирования атаки или получения урона в ближнем бою.\n",
		["zh-tw"] = "連續 {cooldown:%s} 秒未遭近戰攻擊時，基礎遠程"..CKWord("傷害", "Damage_rgb_tw").."提高 {ranged_damage:%s}。\n"
			.."\n"
			..Dot_nc.." 格擋或受到近戰傷害後，此天賦會冷卻 {cooldown:%s} 秒。",
		["zh-cn"] = "超过 {cooldown:%s} 秒未受到近战攻击时，基础远程"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {ranged_damage:%s}。\n"
			.."\n"
			..Dot_nc.." 格挡或受到近战伤害后，该天赋进入 {cooldown:%s} 秒冷却。",
	},

-- !!! DOUBLE! ARBITES - Passive 35 - Priority Endowment !!!
	--[+ Passive 39 - Lock and Load +]--	08.12.2025 -- Оружие к бою 
	-- ["loc_talent_adamant_clip_size_alt_desc"] = { -- clip_size: +25% },	09.08.2026

	--[+ Passive 40 - Bring it Down! +]--	09.08.2026
	["loc_talent_veteran_big_game_hunter_description"] = { -- damage: +20%, &->and, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Ogryns and Monstrosities.\n"
			.."\n"
			..Dot_red.." Does not buff "..CKWord("Damage", "Damage_rgb").." against Captains/Twins.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." по огринам и чудовищам.\n" -- Убей их! -- руоф Убивай!
			.."\n"
			..Dot_red.." Не усиливает "..CKWord("урон", "uron_rgb_ru").." против капитанов и близнецов.",
		["zh-tw"] = Dot_green.." 對歐格林和巨獸造成 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..Dot_red.." 不會增強對連長/雙子的"..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 对欧格林和巨兽造成的"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 {damage:%s}。\n"
			.."\n"
			..Dot_red.." 不会提高对队长/双子的"..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ Passive 41 - Onslaught +]--	09.08.2026
	["loc_talent_veteran_continous_hits_apply_rending_description"] = { -- rending_multiplier: 2.5%, duration: 5, max_stacks: 16, +colors
		en = "On continuous hits to a Single target:\n"
			..Dot_green.." {rending_multiplier:%s} "..CKWord("Brittleness", "Brittleness_rgb").." for {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Brtl_note"),
		ru = "При повторных атаках по одной цели на неё накладывается:\n" -- Натиск
			..Dot_green.." {rending_multiplier:%s} "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони на {duration:%s} секунд.\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Brtl_note"),
		["zh-tw"] = "對單一目標連續命中時：\n"
			..Dot_green.." {rending_multiplier:%s} "..CKWord("脆弱", "Brittleness_rgb_tw").." 持續 {duration:%s} 秒。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Brtl_note"),
		["zh-cn"] = "对单一目标持续攻击时：\n"
			..Dot_green.." 施加 {rending_multiplier:%s} "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 {duration:%s} 秒。\n"
			..Dot_nc.." 最多叠加 {max_stacks:%s} 层。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Brtl_note"),
	},
	--[+ Passive 42 - Exploit Weakness +]--	09.08.2026
	["loc_talent_veteran_crits_rend_alt_description"] = { -- damage: 20%, duration: 6, s->seconds, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on Melee "..CKWord("Critical Hits", "Crit_hits_rgb")..".",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд при "..CKWord("критическом ударе", "krit_udare_rgb_ru").." атакой ближнего боя.", -- Использование слабостей
		["zh-tw"] = Dot_green.." 近戰"..CKWord("暴擊", "Crit_hits_rgb_tw").."時，獲得 "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，持續 {duration:%s} 秒。",
		["zh-cn"] = Dot_green.." 近战"..CKWord("暴击", "Crit_hit_rgb_zh_cn").."时，"..CKWord("伤害", "Damage_rgb_zh_cn").."提高 "..CNumb("+", "n_plus_rgb").."{damage:%s}，持续 {duration:%s} 秒。",
	},
}

-- Creating templates -- Создаём шаблоны
local veteran_templates = {}

for loc_key, locales in pairs(veteran_localizations) do
	for locale, text in pairs(locales) do
		table.insert(veteran_templates, create_template(
			"veteran_" .. loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

return veteran_templates
