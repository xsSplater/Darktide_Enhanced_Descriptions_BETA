---@diagnostic disable: undefined-global
-- ZEALOT TALENT MODULE -- МОДУЛЬ ТАЛАНТОВ ИЗУВЕРА

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

-- Localization of Zealot talents -- Локализации талантов изувера
local zealot_localizations = {
--[+ ++ZEALOT - ИЗУВЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Stun Grenade +]--	27.03.2026
	["loc_ability_shock_grenade_description"] = { -- +colors
		en = "Throw a "..CKWord("Stun Grenade", "Stun_gren_rgb").." that explodes after "..CNumb("1.5", "n_1_5_rgb").." seconds and "..CKWord("Electrocutes", "Electrocutes_rgb").." all Enemies within its blast radius.\n"
			..Dot_nc.." Explosion radius: "..CNumb("8", "n_8_rgb").." meters.\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			.."\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all Enemies in range except Mutants, Poxburster, Monstrosities and Captains/Twins.\n"
			..Dot_green.." Ignores Bulwark shields.\n"
			..CPhrs("Can_be_refr"),
		ru = "Вы бросаете "..CKWord("Оглушающую гранату", "Oglush_granatu_rgb_ru")..", которая взрывается через "..CNumb("1.5", "n_1_5_rgb").." секунды и поражает "..CKWord("электрошоком", "elektroshokom_rgb_ru").." всех врагов в радиусе поражения.\n" -- Оглушающая граната
			..Dot_nc.." Радиус поражения: "..CNumb("8", "n_8_rgb").." метров.\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			.."\n"
			..Dot_green.." "..CKWord("Ошеломляет", "Oshelomlaet_rgb_ru").." всех врагов кроме мутантов, взрывунов, чудовищ, капитанов и близнецов.\n"
			..Dot_green.." Игнорирует щиты бастионов.\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = "投擲"..CKWord("眩暈手雷", "Stun_gren_rgb_tw").."，"..CNumb("1.5", "n_1_5_rgb").." 秒後爆炸，"..CKWord("電擊", "Electrocutes_rgb_tw").." 爆炸範圍內所有敵人。\n"
			..Dot_nc.." 爆炸半徑："..CNumb("8", "n_8_rgb").." 公尺。\n"
			..Dot_nc.." 持續 "..CNumb("8", "n_8_rgb").." 秒。\n"
			.."\n"
			..Dot_green.." "..CKWord("踉蹌", "Staggers_rgb_tw").." 範圍內所有敵人，變種人、瘟疫爆者、巨獸和連長/雙子除外。\n"
			..Dot_green.." 無視堡壘盾牌。\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = "投掷"..CKWord("眩晕手雷", "Stun_gren_rgb_zh_cn").."，"..CNumb("1.5", "n_1_5_rgb").." 秒后爆炸，"..CKWord("电击", "Electrocute_rgb_zh_cn").." 爆炸范围内所有敌人。\n"
			..Dot_nc.." 爆炸半径："..CNumb("8", "n_8_rgb").." 米。\n"
			..Dot_nc.." 持续 "..CNumb("8", "n_8_rgb").." 秒。\n"
			.."\n"
			..Dot_green.." "..CKWord("踉跄", "Stagger_rgb_zh_cn").." 范围内所有敌人，变种人、瘟疫爆者、巨兽和队长/双子除外。\n"
			..Dot_green.." 无视城墙护盾。\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ BLITZ 1 - Stunstorm Grenade +]--	27.03.2026
	["loc_zealot_improved_stun_grenade_desc"] = { -- talent_name: Stun Grenade, radius: +50%, +colors
		en = "Throw a "..CKWord("Stun Grenade", "Stun_gren_rgb").." that explodes after "..CNumb("1.5", "n_1_5_rgb").." seconds and "..CKWord("Electrocutes", "Electrocutes_rgb").." all Enemies within its blast radius.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s} with "..CNumb("+", "n_plus_rgb").."{radius:%s} blast radius.\n"
			..Dot_nc.." Explosion radius: "..CNumb("12", "n_12_rgb").." meters.\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			.."\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all Enemies in range except Mutants, Poxburster, Monstrosities and Captains/Twins.\n"
			..Dot_green.." Ignores Bulwark shields.\n"
			..CPhrs("Can_be_refr"),
		ru = "Вы бросаете "..CKWord("Оглушающую гранату", "Oglush_granatu_rgb_ru")..", которая взрывается через "..CNumb("1.5", "n_1_5_rgb").." секунды и поражает "..CKWord("электрошоком", "elektroshokom_rgb_ru").." всех врагов в радиусе поражения.\n" -- Оглушающе-штурмовая граната -- руоф Граната шквального оглушения
			..Dot_green.." Это улучшенная версия блица {talent_name:%s} с увеличенным на {radius:%s} радиусом взрыва.\n"
			..Dot_nc.." Радиус поражения: "..CNumb("12", "n_12_rgb").." метров.\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			.."\n"
			..Dot_green.." "..CKWord("Ошеломляет", "Oshelomlaet_rgb_ru").." всех врагов кроме мутантов, взрывунов, чудовищ, капитанов и близнецов.\n"
			..Dot_green.." Игнорирует щиты бастионов.\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = "投擲"..CKWord("眩暈手雷", "Stun_gren_rgb_tw").."，"..CNumb("1.5", "n_1_5_rgb").." 秒後爆炸，"..CKWord("電擊", "Electrocutes_rgb_tw").." 爆炸範圍內所有敵人。\n"
			..Dot_green.." 為 {talent_name:%s} 的強化版本，爆炸半徑增加 {radius:%s}。\n"
			..Dot_nc.." 爆炸半徑："..CNumb("12", "n_12_rgb").." 公尺。\n"
			..Dot_nc.." 持續 "..CNumb("8", "n_8_rgb").." 秒。\n"
			.."\n"
			..Dot_green.." "..CKWord("踉蹌", "Staggers_rgb_tw").." 範圍內所有敵人，變種人、瘟疫爆者、巨獸和連長/雙子除外。\n"
			..Dot_green.." 無視堡壘盾牌。\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = "投掷"..CKWord("眩晕手雷", "Stun_gren_rgb_zh_cn").."，"..CNumb("1.5", "n_1_5_rgb").." 秒后爆炸，"..CKWord("电击", "Electrocute_rgb_zh_cn").." 范围内所有敌人。\n"
			..Dot_green.." 为 {talent_name:%s} 的增强版，爆炸半径增加 {radius:%s}。\n"
			..Dot_nc.." 爆炸半径："..CNumb("12", "n_12_rgb").." 米。\n"
			..Dot_nc.." 持续 "..CNumb("8", "n_8_rgb").." 秒。\n"
			.."\n"
			..Dot_green.." "..CKWord("踉跄", "Stagger_rgb_zh_cn").." 范围内所有敌人，变种人、瘟疫爆者、巨兽和队长/双子除外。\n"
			..Dot_green.." 无视城墙护盾。\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ BLITZ 2 - Immolation Grenade +]--	27.03.2026
	["loc_talent_ability_fire_grenade_desc"] = { -- +colors
		en = "Throw a grenade that explodes after "..CNumb("1.7", "n_1_7_rgb").." seconds. It leaves a layer of flaming liquid that "..CKWord("Burning", "Burning_rgb").." and "..CKWord("Staggering", "Staggering_rgb").." enemies, and barring their path.\n"
			..Dot_nc.." Lasts "..CNumb("15", "n_15_rgb").." seconds.\n"
			..Dot_nc.." Replenishes all grenades per grenade pickup.\n"
			.."\n"
			..CPhrs("Can_appl_thr_shlds").."\n",
		ru = "Вы бросаете гранату, которая взрывается через "..CNumb("1.7", "n_1_7_rgb").." секунды и оставляет слой "..CKWord("горящей", "goriaschej_rgb_ru").." жидкости. Жидкость преграждает путь врагам, а также "..CKWord("сжигающей", "sjigauschei_rgb_ru").." и "..CKWord("ошеломляющей", "oshelomlauschej_rgb_ru").." их.\n" -- !!! Испепеляющая граната -- руоф Жертвенная граната
			..Dot_nc.." Длится "..CNumb("15", "n_15_rgb").." секунд.\n"
			..Dot_nc.." Весь запас пополняется при подборе гранат.\n"
			.."\n"
			..CPhrs("Can_appl_thr_shlds").."\n",
		["zh-tw"] = "投擲一枚手雷，"..CNumb("1.7", "n_1_7_rgb").." 秒後爆炸，留下燃燒液體層，使敵人"..CKWord("燃燒", "Burning_rgb_tw").."並"..CKWord("踉蹌", "Staggering_rgb_tw").."，且阻斷其路徑。\n"
			..Dot_nc.." 持續 "..CNumb("15", "n_15_rgb").." 秒。\n"
			..Dot_nc.." 每次拾取手雷時補滿所有手雷。\n"
			.."\n"
			..CPhrs("Can_appl_thr_shlds").."\n",
		["zh-cn"] = "投掷手雷，"..CNumb("1.7", "n_1_7_rgb").." 秒后爆炸，留下燃烧液体层，阻断敌人通路，并造成"..CKWord("燃烧中", "Burning_rgb_zh_cn").." 和"..CKWord("踉跄", "Stagger_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续 "..CNumb("15", "n_15_rgb").." 秒。\n"
			..Dot_nc.." 拾取手雷时补充全部。\n"
			.."\n"
			..CPhrs("Can_appl_thr_shlds").."\n",
	},
	--[+ BLITZ 3 - Blades of Faith +]--	27.03.2026
	["loc_ability_zealot_throwing_knifes_desc"] = { -- +colors
		en = "Quickly throw a consecrated knife to deal High "..CKWord("Damage", "Damage_rgb").." to a Single Enemy.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb")..": "..CNumb("585", "n_585_rgb")..".\n"
			-- ..Dot_green.." High "..CKWord("Damage", "Damage_rgb").." to Maniac and Infested.\n"
			..Dot_green.." Can "..CKWord("Cleave", "Cleave_rgb").." "..CNumb("1", "n_1_rgb").." Groaner, Poxwalker, Scab/Dreg Stalker or Scab Shooter.\n"
			..Dot_red.." Deals no "..CKWord("Damage", "Damage_rgb").." vs Carapace except on "..CKWord("Weakspots", "Weakspots_rgb")..".\n"
			.."\n"
			..Dot_nc.." Knives replenish:\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." - Elite or Specialist Melee kill.\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." - Small ammo pickup.\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("6", "n_6_rgb").." - Large ammo pickup.\n"
			.."    "..Dot_nc.." Full refill - Ammo crate.",
		ru = "Вы быстро бросаете освящённый нож, наносящий "..CKWord("урон", "uron_rgb_ru").." врагу.\n" -- Клинки веры
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru")..": "..CNumb("585", "n_585_rgb")..".\n"
			-- ..Dot_green.." Высокий "..CKWord("урон", "uron_rgb_ru").." заражённым и маньякам.\n"
			..Dot_green.." Может "..CKWord("пробить", "probit_rgb_ru").." "..CNumb("1", "n_1_rgb").." ворчуна, ходока, охотника или скаба-стрелка.\n"
			..Dot_red.." Не наносит "..CKWord("урон", "uron_rgb_ru").." врагам в панцирной броне, если попадает не в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Пополнение ножей:\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." - за убийство элитного врага или специалиста в ближнем бою.\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." - подбор малой сумки патронов.\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("6", "n_6_rgb").." - подбор большой сумки патронов.\n"
			.."    "..Dot_nc.." Все ножи - из ящика с патронами.",
		-- fr = "Lancez un couteau consacré pour infliger de gros "..CKWord("Dégâts", "Damage_rgb_fr").." à un seul ennemi.",
		["zh-tw"] = "快速投擲聖化匕首，對單一敵人造成高"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 基礎"..CKWord("傷害", "Damage_rgb_tw").."："..CNumb("585", "n_585_rgb").."。\n"
			..Dot_green.." 可"..CKWord("順劈攻擊", "Cleave_rgb_tw").." "..CNumb("1", "n_1_rgb").." 名呻吟者、瘟疫行者、血痂/渣滓潛行者或血痂射手。\n"
			..Dot_red.." 對甲殼護甲無"..CKWord("傷害", "Damage_rgb_tw").."，"..CKWord("弱點", "Weakspots_rgb_tw").." 除外。\n"
			.."\n"
			..Dot_nc.." 匕首補充：\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." — 近戰擊殺精英或專家。\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." — 拾取小型彈藥包。\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("6", "n_6_rgb").." — 拾取大型彈藥包。\n"
			.."    "..Dot_nc.." 全部 — 彈藥箱。",
		["zh-cn"] = "快速投掷圣化匕首，对单一敌人造成高"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 基础"..CKWord("伤害", "Damage_rgb_zh_cn").."："..CNumb("585", "n_585_rgb").."。\n"
			..Dot_green.." 可"..CKWord("顺劈", "Cleaved_rgb_zh_cn").." 1 个呻吟者、瘟疫行者、潜行者或射手。\n"
			..Dot_red.." 对甲壳护甲无"..CKWord("伤害", "Damage_rgb_zh_cn").."，"..CKWord("弱点", "Weakspot_rgb_zh_cn").." 除外。\n"
			.."\n"
			..Dot_nc.." 匕首补充：\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." - 近战击杀精英或专家。\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." - 拾取小型弹药包。\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("6", "n_6_rgb").." - 拾取大型弹药包。\n"
			.."    "..Dot_nc.." 全部 - 弹药箱。",
	},
--[+ +AURA - АУРЫ+ +]--
	--[+ AURA 0 - The Emperors's Will +]--	27.03.2026
	["loc_talent_zealot_aura_toughness_damage_coherency_desc"] = { -- damage_reduction: +7.5%, +colors
		en = Dot_green.." {damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		ru = Dot_green.." {damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Воля Императора
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		-- fr = "{damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." pour vous et les alliés en syntonie."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_0_n_1_rgb_fr,
		["zh-tw"] = Dot_green.." 賦予你和"..CKWord("協同", "Coherency_rgb_tw").."中的盟友 {damage_reduction:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		["zh-cn"] = Dot_green.." {damage_reduction:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").." 对你和"..CKWord("协同", "Coherency_rgb_zh_cn").." 盟友。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
	},
	--[+ AURA 1 - Benediction +]--	27.03.2026
	["loc_talent_zealot_toughness_aura_efficiency_desc"] = { -- damage_reduction: +15%, talent_name: The Emperor's Will, +colors
		en = Dot_green.." {damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			..Dot_green.." This is an augmented version of the base Aura, {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		ru = Dot_green.." {damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Благословение
			..Dot_green.." Это улучшенная версия базовой ауры - {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		-- fr = "{damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." pour vous et les alliés en syntonie.\n\nCeci est une version augmentée de l'Aura de base - {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_0_n_1_rgb_fr,
		["zh-tw"] = Dot_green.." 賦予你和"..CKWord("協同", "Coherency_rgb_tw").."中的盟友 {damage_reduction:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			..Dot_green.." 為基礎光環 {talent_name:%s} 的強化版本。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		["zh-cn"] = Dot_green.." {damage_reduction:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").." 对你和"..CKWord("协同", "Coherency_rgb_zh_cn").." 盟友。\n"
			..Dot_green.." 为基础光环 {talent_name:%s} 的增强版本。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
	},
	--[+ AURA 2 - Beacon of Purity +]--	27.03.2026
	["loc_talent_zealot_corruption_healing_coherency_improved_desc"] = { -- corruption: 1.5, interval: 1, s->second, +colors
		en = Dot_green.." {corruption:%s} "..CKWord("Corruption", "Corruption_rgb").." Heal from the current "..CKWord("Wound", "Wound_rgb").." per second for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..Dot_nc.." Negates Grimoire's passive "..CKWord("Corruption", "Corruption_rgb")..", but not the initial "..CNumb("40", "n_40_rgb").." "..CKWord("Corruption", "Corruption_rgb").." from it.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura").."\n",
		ru = Dot_green.." {corruption:%s} "..CKWord("порчи", "porchi_rgb_ru").." исцеляется в секунду для текущей "..CKWord("раны", "rany_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Маяк очищения -- руоф Маяк непорочности
			.."\n"
			..Dot_nc.." Полностью гасит пассивный набор "..CKWord("порчи", "porchi_rgb_ru").." от гримуара, но изначальные "..CNumb("40", "n_40_rgb").." единиц "..CKWord("порчи", "porchi_rgb_ru").." от взятия гримуара всё равно применяются.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura").."\n",
		-- fr = "Soigne {corruption:%s} de "..CKWord("Corruption", "Corruption_rgb_fr").." de la blessure actuelle pour vous et les alliés en syntonie toutes les {interval:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_2_rgb_fr,
		["zh-tw"] = Dot_green.." 每秒為你和"..CKWord("協同", "Coherency_rgb_tw").."中的盟友，從目前"..CKWord("傷痕", "Wound_rgb_tw").."治癒 {corruption:%s} "..CKWord("腐敗", "Corruption_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 完全抵消法術書的被動"..CKWord("腐敗", "Corruption_rgb_tw").." 增長，但拾取時 "..CNumb("40", "n_40_rgb").." 點初始"..CKWord("腐敗", "Corruption_rgb_tw").." 仍會施加。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura").."\n",
		["zh-cn"] = Dot_green.." 每秒治愈 {corruption:%s} "..CKWord("腐败", "Corruption_rgb_zh_cn").."，对你和"..CKWord("协同", "Coherency_rgb_zh_cn").." 盟友当前"..CKWord("伤痕", "Wound_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 完全抵消法术书的被动"..CKWord("腐败", "Corruption_rgb_zh_cn").." 增长，但拾取时 "..CNumb("40", "n_40_rgb").." 点初始"..CKWord("腐败", "Corruption_rgb_zh_cn").." 仍会施加。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura").."\n",
	},
	--[+ AURA 3 - Zealous +]--	27.03.2026
	["loc_talent_zealot_stamina_cost_multiplier_delay_aura_description"] = { -- stamina_cost_multiplier: -15%, stamina_delay: 0.15, +colors
		en = "For you and Allies in "..CKWord("Coherency", "Coherency_rgb")..":\n"
			..Dot_green.." {stamina_cost_multiplier:%s} "..CKWord("Stamina", "Stamina_rgb").." Cost and\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{stamina_delay:%s} seconds "..CKWord("Stamina", "Stamina_rgb").." Regeneration Delay.\n"
			.."\n"
			..Dot_nc.." Includes "..CKWord("Stamina", "Stamina_rgb").." drain by Blocking, Pushing, Sprinting, Jumping while Sprinting, Dodge-cancelling sticky attacks.",
		ru = "Для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..":\n"
			..Dot_green.." к снижению затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru").." и\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{stamina_delay:%s} секунд задержка восстановления "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n" -- Ревностный -- руоф Рвение
			.."\n"
			..Dot_nc.." Включает затраты "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на блокирование, отталкивание, бег, прыжки во время бега и отмену атак уклонениями.",
		-- fr = "Le Fanatique compte comme étant en syntonie avec un allié, ce qui permet le taux le plus bas de régénération de "..CKWord("Endurance", "Toughness_rgb_fr").." en syntonie de "..CNumb("3.75", "n_3_75_rgb").." de "..CKWord("Endurance", "Toughness_rgb_fr").." par seconde."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_3_rgb_fr,
		["zh-tw"] = "對你和"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友：\n"
			..Dot_green.." {stamina_cost_multiplier:%s} "..CKWord("耐力", "Stamina_rgb_tw").." 消耗，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{stamina_delay:%s} 秒 "..CKWord("耐力", "Stamina_rgb_tw").." 恢復延遲。\n"
			.."\n"
			..Dot_nc.." 包括格擋、推擊、衝刺、衝刺中跳躍、閃避取消黏性攻擊的"..CKWord("耐力", "Stamina_rgb_tw").." 消耗。",
		["zh-cn"] = "对你和"..CKWord("协同", "Coherency_rgb_zh_cn").." 盟友：\n"
			..Dot_green.." {stamina_cost_multiplier:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").." 消耗，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").." {stamina_delay:%s} 秒 "..CKWord("耐力", "Stamina_rgb_zh_cn").." 恢复延迟。\n"
			.."\n"
			..Dot_nc.." 包括格挡、推击、冲刺、冲刺中跳跃、闪避取消黏性攻击的"..CKWord("耐力", "Stamina_rgb_zh_cn").." 消耗。",
	},
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--	27.03.2026
	--[+ ABILITY 0 - Chastise the Wicked +]--
	["loc_talent_zealot_2_combat_description_new"] = { -- toughness: 50%, damage: 25%, cooldown: 30, s->seconds, +colors
		en = "Dash forward and replenish:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."Your next Melee Hit is a guaranteed "..CKWord("Critical Hit", "Crit_hit_rgb").." and deals:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("Damage", "Damage_rgb").." for "..CNumb("3", "n_3_rgb").." seconds.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Grants immunity to "..CKWord("Toughness", "Toughness_rgb").." "..CKWord("Damage", "Damage_rgb").." and you Dodge all attacks while dashing.\n"
			..Dot_green.." Applies a light "..CKWord("Stagger", "Stagger_rgb").." on impact in a "..CNumb("3", "n_3_rgb").." meters radius.\n"
			.."\n"
			..Dot_nc.." Dash Range:\n"
			.."    "..Dot_nc.." Base: "..CNumb("7", "n_7_rgb").." meters.\n"
			.."    "..Dot_nc.." Aimed: up to "..CNumb("21", "n_21_rgb").." meters.",
		ru = "Вы делаете рывок вперёд и восстанавливаете:\n" -- Кара для нечестивых
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."Ваш следующий удар ближнего боя будет гарантированно "..CKWord("критическим", "kritom_rgb_ru").." и наносит:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("урона", "urona_rgb_ru").." в течение "..CNumb("3", "n_3_rgb").." секунд.\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_green.." Во время рывка вы получаете иммунитет к "..CKWord("урону", "uronu_rgb_ru").." "..CKWord("стойкости", "stoikosti_rgb_ru").." и уклонение от всех атак.\n"
			..Dot_green.." Накладывает малое "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." на врагов при столкновении в радиусе "..CNumb("3", "n_3_rgb").." метров.\n",
			-- .."\n"
			-- ..Dot_nc.." Расстояние рывка при нажатии кнопки способности:\n"
			-- .."    "..Dot_nc.." быстром: "..CNumb("7", "n_7_rgb").." метров.\n"
			-- .."    "..Dot_nc.." зажатии: до "..CNumb("21", "n_21_rgb").." метра.",
		-- fr = "Effectuez une ruée vers l'avant, régénérez {toughness:%s} "..CKWord("Endurance", "Toughness_rgb_fr")..". Votre prochaine attaque de mêlée gagne {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." et est un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." garanti.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_0_rgb_fr,
		["zh-tw"] = "向前衝刺並恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."下一次近戰命中必定造成"..CKWord("致命一擊", "Crit_hit_rgb_tw").." 且獲得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，持續 "..CNumb("3", "n_3_rgb").." 秒。\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_green.." 衝刺期間免疫"..CKWord("韌性", "Toughness_rgb_tw").." "..CKWord("傷害", "Damage_rgb_tw").." 並閃避所有攻擊。\n"
			..Dot_green.." 衝擊時對 "..CNumb("3", "n_3_rgb").." 公尺半徑內的敵人造成輕度"..CKWord("踉蹌", "Stagger_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 衝刺距離：\n"
			.."    "..Dot_nc.." 基礎："..CNumb("7", "n_7_rgb").." 公尺。\n"
			.."    "..Dot_nc.." 瞄準：最遠 "..CNumb("21", "n_21_rgb").." 公尺。",
		["zh-cn"] = "向前冲刺并恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."下一次近战攻击必定"..CKWord("暴击", "Crit_hit_rgb_zh_cn").." 且造成：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").." 持续 "..CNumb("3", "n_3_rgb").." 秒。\n"
			..Dot_nc.." 基础冷却：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_green.." 冲刺期间免疫"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CKWord("伤害", "Damage_rgb_zh_cn").." 并闪避所有攻击。\n"
			..Dot_green.." 冲击时对 "..CNumb("3", "n_3_rgb").." 米内的敌人造成轻度"..CKWord("踉跄", "Stagger_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 冲刺距离：\n"
			.."    "..Dot_nc.." 基础： "..CNumb("7", "n_7_rgb").." 米。\n"
			.."    "..Dot_nc.." 缩放：最远 "..CNumb("21", "n_21_rgb").." 米。",
	},
	--[+ ABILITY 1 - Fury of the Faithful +]--	27.03.2026
	["loc_talent_zealot_attack_speed_after_dash_new_desc"] = { -- toughness: 50%, attack_speed: +20%, time: 10, damage: +25%, cooldown: 30, talent_name: Chastise the Wicked, &->and, s->seconds, +colors
		en = "Dash forward and replenish:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."Also gain:\n"
			..Dot_green.." {attack_speed:%s} Attack Speed for {time:%s} seconds.\n"
			.."\n"
			.."Your next Melee Hit is a guaranteed "..CKWord("Critical Hit", "Crit_hit_rgb").." and gains:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("Rending", "Rending_rgb")..".\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Grants immunity to "..CKWord("Toughness", "Toughness_rgb").." "..CKWord("Damage", "Damage_rgb").." and you Dodge all attacks while dashing.\n"
			.."\n"
			..Dot_nc.." Dash Range:\n"
			.."    "..Dot_nc.." Base: "..CNumb("7", "n_7_rgb").." meters.\n"
			.."    "..Dot_nc.." Aimed: up to "..CNumb("21", "n_21_rgb").." meters.\n"
			..Dot_nc.." You can't change direction, but you can cancel the dash with Block or Back buttons.\n"
			..Dot_red.." Cannot be activated while jumping or falling.\n"
			..Dot_red.." You can be stopped by Unyielding, Carapace, Monstrosities, as well as the Void shields.",
		ru = "Вы делаете рывок вперёд и восстанавливаете:\n" -- Ярость верующего -- руоф Ударный страх
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."Также вы получаете:\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки на {time:%s} секунд.\n"
			.."\n"
			.."Ваш следующий удар ближнего боя будет гарантированно "..CKWord("критическим", "kritom_rgb_ru").." и получает:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." "..CNumb("100%", "pc_100_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони.\n"
			.."\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Во время рывка вы получаете иммунитет к "..CKWord("урону", "uronu_rgb_ru").." "..CKWord("стойкости", "stoikosti_rgb_ru").." и уклонение от всех атак.\n"
			.."\n"
			..Dot_nc.." Расстояние рывка при нажатии кнопки способности:\n"
			.."    "..Dot_nc.." быстром: "..CNumb("7", "n_7_rgb").." метров.\n"
			.."    "..Dot_nc.." зажатии: до "..CNumb("21", "n_21_rgb").." метра.\n"
			..Dot_nc.." Вы не можете сменить направление рывка, но можете прервать рывок блоком или нажав кнопку движения назад.\n"
			..Dot_red.." Не активируется во время прыжка или падения.\n"
			..Dot_red.." Рывок прервётся при столкновении с несгибаемыми врагами, врагами в панцирной броне, с чудовищами и с пустотным щитом.",
		-- fr = "Effectuez une ruée vers l'avant, régénérez {toughness:%s} "..CKWord("Endurance", "Toughness_rgb_fr").." et gagne {attack_speed:%s} de vitesse d'attaque pendant {time:%s} secondes. Votre prochaine attaque de mêlée gagne {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." et est un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." garanti.\nTemps de recharge de base : {cooldown:%s} secondes.\nCeci est une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_1_rgb_fr,
		["zh-tw"] = "向前衝刺並恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."另獲得：\n"
			..Dot_green.." {attack_speed:%s} 攻擊速度，持續 {time:%s} 秒。\n"
			.."\n"
			.."下一次近戰命中必定造成"..CKWord("致命一擊", "Crit_hit_rgb_tw").." 且獲得：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").." 和\n"
			..Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			..Dot_green.." 為 {talent_name:%s} 的強化版本。\n"
			.."\n"
			..Dot_green.." 衝刺期間免疫"..CKWord("韌性", "Toughness_rgb_tw").." "..CKWord("傷害", "Damage_rgb_tw").." 並閃避所有攻擊。\n"
			.."\n"
			..Dot_nc.." 衝刺距離：\n"
			.."    "..Dot_nc.." 基礎："..CNumb("7", "n_7_rgb").." 公尺。\n"
			.."    "..Dot_nc.." 瞄準：最遠 "..CNumb("21", "n_21_rgb").." 公尺。\n"
			..Dot_nc.." 你無法改變方向，但可以用格擋或後退按鍵取消衝刺。\n"
			..Dot_red.." 跳躍或墜落時無法啟用。\n"
			..Dot_red.." 不屈敵人、甲殼護甲敵人、巨獸與虛空護盾都能阻止你。",
		["zh-cn"] = "向前冲刺并恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."另获得：\n"
			..Dot_green.." {attack_speed:%s} 攻击速度，持续 {time:%s} 秒。\n"
			.."\n"
			.."下一次近战攻击必定"..CKWord("暴击", "Crit_hit_rgb_zh_cn").." 且获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").." 和\n"
			..Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 基础冷却：{cooldown:%s} 秒。\n"
			..Dot_green.." 为 {talent_name:%s} 的增强版本。\n"
			.."\n"
			..Dot_green.." 冲刺期间免疫"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CKWord("伤害", "Damage_rgb_zh_cn").." 并闪避所有攻击。",
	},
	--[+ ABILITY 1-1 - Unrelenting Fury +]--	27.03.2026
	["loc_talent_zealot_fotf_refund_cooldown_desc"] = { -- duration: 5, talent_name: Fury of the Faithful, cooldown: +20%, s->seconds, +colors
		en = "Killing an Elite or Specialist within {duration:%s} seconds of using {talent_name:%s} restores:\n"
			..Dot_green.." {cooldown:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb")..".\n"
			.."\n"
			..Dot_nc.." Maximum once per use.",
		ru = "Убийство элитного врага или специалиста в течение {duration:%s} после применения способности {talent_name:%s} восстанавливает:\n"
			..Dot_green.." {cooldown:%s} "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Максимум одно восстановление за применение.", -- руоф Неумолимая ярость
		["zh-tw"] = "使用 {talent_name:%s} 後 {duration:%s} 秒內擊殺精英或專家，恢復：\n"
			..Dot_green.." {cooldown:%s} "..CKWord("技能冷卻", "Ability_cd_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 每次使用最多觸發一次。",
		["zh-cn"] = "使用 {talent_name:%s} 后 {duration:%s} 秒内击杀精英或专家，恢复：\n"
			..Dot_green.." {cooldown:%s} "..CKWord("技能冷却", "Ability_cd_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 每次使用最多触发一次。",
	},
	--[+ ABILITY 1-2 - Redoubled Zeal +]--	27.03.2026
	["loc_talent_zealot_dash_has_more_charges_desc"] = { -- talent_name: Fury of the Faithful, charges: 2
		en = Dot_green.." {talent_name:%s} now has {charges:%s} charges.",
		ru = Dot_green.." Способность {talent_name:%s} получает {charges:%s} заряд.", -- руоф Удвоенное рвение
		["zh-tw"] = Dot_green.." {talent_name:%s} 現在有 {charges:%s} 個充能。",
		["zh-cn"] = Dot_green.." {talent_name:%s} 现在有 {charges:%s} 个充能。",
	},
	--[+ ABILITY 2 - Chorus of Spiritual Fortitude +]--	27.03.2026
	["loc_talent_zealot_bolstering_prayer_variant_two_description"] = { -- interval: 0.8, toughness: 45%, flat_toughness: +20, max_toughness: +100, cooldown: 60, s->seconds, +colors
		en = "Wield a "..CKWord("Holy relic", "Holy_relic_rgb").." that releases a pulse of energy "..CNumb("7", "n_7_rgb").." times every {interval:%s} seconds.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			..Dot_nc.." Radius: "..CNumb("10", "n_10_rgb").." meters.\n"
			..Dot_nc.." Can be canceled by blocking, sprinting, swapping weapons, or by pressing the ability button again.\n"
			.."\n"
			.."Each pulse grants the "..CKWord("Zealot", "cls_zea_rgb").." and Allies in "..CKWord("Coherency", "Coherency_rgb").." for "..CNumb("1.5", "n_1_5_rgb").." seconds:\n"
			..Dot_green.." Invulnerability and\n"
			..Dot_green.." Immunity to "..CKWord("Stuns", "Stuns_rgb").." from both Melee and Ranged attacks.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			.."While below "..CNumb("100%", "pc_100_rgb").." "..CKWord("Toughness", "Toughness_rgb")..", the "..CKWord("Zealot", "cls_zea_rgb").." and Allies gain:\n"
			..Dot_green.." "..CNumb("20%", "pc_20_rgb").." "..CKWord("Toughness", "Toughness_rgb").." instantly and\n"
			..Dot_green.." "..CNumb("25%", "pc_25_rgb").." "..CKWord("Toughness", "Toughness_rgb").." over the next second.\n"
			-- .."\n"
			.."If at full "..CKWord("Toughness", "Toughness_rgb")..", adds:\n"
			..Dot_green.." {flat_toughness:%s} maximum "..CKWord("Toughness", "Tghnss_gold_rgb")..", up to {max_toughness:%s}.\n"
			-- .."\n"
			..Dot_nc.." Bonus "..CKWord("Toughness", "Tghnss_gold_rgb").." acts as a 'second' bar and can be replenished by melee kills, respective talents, and weapon blessings.\n"
			..Dot_nc.." Lasts "..CNumb("10", "n_10_rgb").." seconds.\n"
			.."\n"
			.."Each pulse while channeling:\n"
			..Dot_green.." Suppresses all suppressible enemies.\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all enemies.\n"
			..Dot_nc.." Monstrosities/Captains: pulses "..CNumb("1", "n_1_rgb")..", "..CNumb("3", "n_3_rgb")..", "..CNumb("5", "n_5_rgb")..", "..CNumb("7", "n_7_rgb")..".\n"
			-- .."Can be suppressed: Armored Groaner, Groaner, Dreg Gunner, Dreg Stalker, Radio Operator, Reaper, Scab Gunner, Scab Shooter, Scab Stalker.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		ru = "Вы берёте в руки "..CKWord("Священную реликвию", "Sv_relikviu_rgb_ru")..", которая испускает "..CNumb("7", "n_7_rgb").." волн энергии каждые {interval:%s} секунд.\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			..Dot_nc.." Радиус: "..CNumb("10", "n_10_rgb").." метров.\n"
			-- ..Dot_nc.." Можно отменить блокированием, использованием бега, сменой оружия или повторным нажатием кнопки способности.\n"
			-- .."\n"
			.."Каждая волна даёт вам и союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru").." на "..CNumb("1.5", "n_1_5_rgb").." секунды:\n"
			..Dot_green.." Неуязвимость и\n"
			..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." от атак.\n" -- ближнего и дальнего боя
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			.."Если у вас меньше "..CNumb("100%", "pc_100_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru")..", вы восстанавливаете:\n" -- и союзников
			..Dot_green.." "..CNumb("20%", "pc_20_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." мгновенно и\n"
			..Dot_green.." "..CNumb("25%", "pc_25_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение следующей секунды.\n"
			-- .."\n"
			.."Если у вас и союзников "..CKWord("стойкость", "stoikost_rgb_ru").." заполнена, вам добавляется:\n"
			..Dot_green.." {flat_toughness:%s} максимальной "..CKWord("стойкости", "stojkosti_zolot_rgb_ru")..", вплоть до {max_toughness:%s}.\n"
			-- .."\n"
			..Dot_nc.." Золотая "..CKWord("стойкость", "stojkost_zolot_rgb_ru").." работает как вторая полоска и заполняется от убийств в ближнем бою, талантов и благословений оружия.\n"
			..Dot_nc.." Длится "..CNumb("10", "n_10_rgb").." секунд.\n"
			.."\n"
			-- .."Каждая волна:\n"
			..Dot_green.." Подавляются всех враги, которых можно подавить.\n"
			..Dot_green.." "..CKWord("Ошеломляются", "Oshelomlautsa_rgb_ru").." всех врагов.\n"
			..Dot_nc.." чудовища и капитаны ошеломляются на "..CNumb("1", "n_1_rgb")..", "..CNumb("3", "n_3_rgb")..", "..CNumb("5", "n_5_rgb")..", "..CNumb("7", "n_7_rgb").." волнах.\n"
			-- .."Can be suppressed: Armored Groaner, Groaner, Dreg Gunner, Dreg Stalker, Radio Operator, Reaper, Scab Gunner, Scab Shooter, Scab Stalker.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"), -- Хор духовной стойкости
		-- fr = "Utilisez une relique sacrée qui libère des pulsations énérgetiques "..CNumb("7", "n_7_rgb").." fois toutes les {interval:%s} secondes.\nChaque pulsation accorde au Fanatique et aux alliés en syntonie une immunité aux "..CKWord("Étourdissements", "Stuns_rgb_fr").." des attaques de mêlée et de distance et une invulnérabilité de "..CNumb("1.5", "n_1_5_rgb").." secondes.\nChaque pulsation régénère {toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." pour les alliés en syntonie. Si l'allié est à toute ça "..CKWord("Endurance", "Toughness_rgb_fr")..", il gagne à la place {flat_toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." maximale (jaune) jusqu'à un total de {max_toughness:%s}.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_rgb_fr,
		["zh-tw"] = "揮舞"..CKWord("聖物", "Holy_relic_rgb_tw").."，每 {interval:%s} 秒釋放一次能量脈衝，共 "..CNumb("7", "n_7_rgb").." 次。\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			..Dot_nc.." 半徑："..CNumb("10", "n_10_rgb").." 公尺。\n"
			..Dot_nc.." 可透過格擋、衝刺、切換武器，或再次按下技能鍵取消。\n"
			.."\n"
			.."每次脈衝會使"..CKWord("狂信徒", "cls_zea_rgb_tw").."和"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友獲得以下效果，持續 "..CNumb("1.5", "n_1_5_rgb").." 秒：\n"
			..Dot_green.." 無敵狀態，並\n"
			..Dot_green.." 免疫近戰與遠程攻擊造成的"..CKWord("眩暈", "Stuns_rgb_tw").."。\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			.."低於 "..CNumb("100%", "pc_100_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."時，"..CKWord("狂信徒", "cls_zea_rgb_tw").."和盟友獲得：\n"
			..Dot_green.." 立即恢復 "..CNumb("20%", "pc_20_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，並\n"
			..Dot_green.." 在下一秒內恢復 "..CNumb("25%", "pc_25_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."若"..CKWord("韌性", "Toughness_rgb_tw").."已滿，則增加：\n"
			..Dot_green.." {flat_toughness:%s} 最大"..CKWord("韌性", "Tghnss_gold_rgb_tw").."，最多 {max_toughness:%s}。\n"
			..Dot_nc.." 額外"..CKWord("韌性", "Tghnss_gold_rgb_tw").."視為第二條韌性，可由近戰擊殺、相應天賦與武器祝福補充。\n"
			..Dot_nc.." 持續 "..CNumb("10", "n_10_rgb").." 秒。\n"
			.."\n"
			.."引導期間每次脈衝：\n"
			..Dot_green.." 壓制所有可被壓制的敵人。\n"
			..Dot_green.." 使所有敵人"..CKWord("踉蹌", "Staggers_rgb_tw").."。\n"
			..Dot_nc.." 巨獸/連長：第 "..CNumb("1", "n_1_rgb").."、"..CNumb("3", "n_3_rgb").."、"..CNumb("5", "n_5_rgb").."、"..CNumb("7", "n_7_rgb").." 次脈衝。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		["zh-cn"] = "挥舞"..CKWord("圣物", "Holy_relic_rgb_zh_cn").."，每 {interval:%s} 秒释放 "..CNumb("7", "n_7_rgb").." 次能量脉冲。\n"
			..Dot_nc.." 基础冷却：{cooldown:%s} 秒。\n"
			..Dot_nc.." 半径： "..CNumb("10", "n_10_rgb").." 米。\n"
			.."\n"
			.."每次脉冲赋予"..CKWord("狂信徒", "cls_zea_rgb_zh_cn").." 和"..CKWord("协同", "Coherency_rgb_zh_cn").." 盟友 "..CNumb("1.5", "n_1_5_rgb").." 秒：\n"
			..Dot_green.." 无敌状态 和\n"
			..Dot_green.." 免疫近战和远程"..CKWord("眩晕", "Stun_rgb_zh_cn").."。\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			.."韧性不满 "..CNumb("100%", "pc_100_rgb").." 时，恢复：\n"
			..Dot_green.." "..CNumb("20%", "pc_20_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").." 立即 和\n"
			..Dot_green.." "..CNumb("25%", "pc_25_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").." 在下一秒内。\n"
			.."韧性已满时，增加：\n"
			..Dot_green.." {flat_toughness:%s} 最大"..CKWord("韧性", "Tghns_gold_rgb_zh_cn").."，最多 {max_toughness:%s}。持续 "..CNumb("10", "n_10_rgb").." 秒。\n"
			.."\n"
			.."引导期间每次脉冲：\n"
			..Dot_green.." 压制所有可被压制的敌人。\n"
			..Dot_green.." "..CKWord("踉跄", "Stagger_rgb_zh_cn").." 所有敌人。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
	},
	--[+ ABILITY 2-1 - Holy Cause +]--	27.03.2026
	["loc_talent_zealot_zealot_channel_grants_defensive_buff_desc"] = { -- stacks: 5, toughness: +30%, duration: 10, s->seconds, +colors
		en = "After channeling {stacks:%s} pulses, grants to you and Allies in "..CKWord("Coherency", "Coherency_rgb")..":\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		ru = "После {stacks:%s} волны вы с союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получите:\n" -- Святое дело
			..Dot_green.." {toughness:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		-- fr = "Après avoir canalisé {stacks:%s} pulsations, accorde {toughness:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." à vous et aux alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_1_rgb_fr,
		["zh-tw"] = "引導 {stacks:%s} 次脈衝後，你和"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友獲得：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		["zh-cn"] = "引导 {stacks:%s} 次脉冲后，你和"..CKWord("协同", "Coherency_rgb_zh_cn").." 盟友获得：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续 {duration:%s} 秒。",
	},
	--[+ ABILITY 2-2 - Ecclesiarch's Call +]--	27.03.2026
	["loc_talent_zealot_zealot_channel_grants_offensive_buff_desc"] = { -- stacks: 5, damage: +20%, duration: 10, s->seconds, +colors
		en = "After channeling {stacks:%s} pulses, grants to you and Allies in "..CKWord("Coherency", "Coherency_rgb")..":\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		ru = "После {stacks:%s} волны вы с союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получите:\n" -- Призыв экклезиарха -- руоф Вызов экклезиарха
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		-- fr = "Après avoir canalisé {stacks:%s} pulsations, accorde {damage:%s} "..CKWord("Dégâts", "Damage_rgb_fr").." à vous et aux alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_3_rgb_fr,
		["zh-tw"] = "引導 {stacks:%s} 次脈衝後，你和"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友獲得：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		["zh-cn"] = "引导 {stacks:%s} 次脉冲后，你和"..CKWord("协同", "Coherency_rgb_zh_cn").." 盟友获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续 {duration:%s} 秒。",
	},
	--[+ ABILITY 3 - Shroudfield +]--	27.03.2026
	["loc_ability_zealot_stealth_rending_description"] = { -- duration: 3, movement_speed: +20%, backstab_damage: +100%, finesse_damage: +100%, crit_chance: +100%, cooldown: 30, s->seconds, &->and, +colors
		en = "You enter "..CKWord("Stealth", "Stealth_rgb").." for {duration:%s} seconds and gain:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed,\n"
			..Dot_green.." {backstab_damage:%s} Backstab "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {finesse_damage:%s} "..CKWord("Finesse Damage", "Finesse_dmg_rgb")..",\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb").." and\n"
			..Dot_green.." {rending:%s} Melee "..CKWord("Rending", "Rending_rgb")..".\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			.."Attacking makes you leave "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = "Вы входите в режим "..CKWord("Скрытности", "Stealth_rgb_ru").." на {duration:%s} секунды и получаете:\n" -- Покров
			..Dot_green.." {movement_speed:%s} к скорости движения,\n"
			..Dot_green.." {backstab_damage:%s} "..CKWord("урону", "uronu_rgb_ru").." атак в спину,\n"
			..Dot_green.." {finesse_damage:%s} к "..CKWord("урону от ловкости", "lovkosti_uron_rgb_ru")..",\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..",\n"
			..Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони в ближнем бою.\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			.."\n"
			.."При атаке вы выходите из режима "..CKWord("Скрытности", "Stealth_rgb_ru")..".",
		-- fr = "Vous passez en "..CKWord("Furtivité", "Stealth_rgb_fr").." pendant {duration:%s} secondes et gagnez {movement_speed:%s} de Vitesse de Déplacement.\nVotre prochaine attaque de Mélée gagne:\n{backstab_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." dans le dos,\n{finesse_damage:%s} de "..CKWord("Dégâts de finesse", "Finesse_dmg_rgb_fr").." et\n{crit_chance:%s} "..CKWord("Chances de coup critique", "Crit_chance_rgb_fr")..".\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_rgb_fr,
		["zh-tw"] = "進入"..CKWord("隱身", "Stealth_rgb_tw").." {duration:%s} 秒並獲得：\n"
			..Dot_green.." {movement_speed:%s} 移動速度，\n"
			..Dot_green.." {backstab_damage:%s} 背刺"..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {finesse_damage:%s} "..CKWord("靈巧傷害", "Finesse_dmg_rgb_tw").."，\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("爆擊率", "Crit_chance_rgb_tw").." 和\n"
			..Dot_green.." {rending:%s} 近戰"..CKWord("撕裂", "Rending_rgb_tw").."。\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			.."\n"
			.."攻擊時離開"..CKWord("隱身", "Stealth_rgb_tw").."。",
		["zh-cn"] = "进入"..CKWord("隐身", "Stealth_rgb_zh_cn").." {duration:%s} 秒并获得：\n"
			..Dot_green.." {movement_speed:%s} 移动速度，\n"
			..Dot_green.." {backstab_damage:%s} 背刺"..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {finesse_damage:%s} "..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."，\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").." 和\n"
			..Dot_green.." {rending:%s} 近战"..CKWord("撕裂", "Rending_rgb_zh_cn").."。\n"
			..Dot_nc.." 基础冷却：{cooldown:%s} 秒。\n"
			.."\n"
			.."攻击时离开"..CKWord("隐身", "Stealth_rgb_zh_cn").."。",
	},
	--[+ ABILITY 3-1 - Master-Crafted Shroudfield +]--	27.03.2026
	["loc_talent_zealot_stealth_duration_threat_damage_desc"] = { -- talent_name: Shroudfield, duration: 2, buff_duration: 5, threat: -75%, damage: 50%, s->seconds, +colors
		en = Dot_green.." {talent_name:%s} duration increased by {duration:%s} seconds.\n"
			.."\n"
			.."Upon leaving "..CKWord("Stealth", "Stealth_rgb")..", gain for {buff_duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} Backstab "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {threat:%s} Threat.",
		ru = Dot_green.." Длительность действия способности {talent_name:%s} увеличивается на {duration:%s} секунды.\n" -- Мастерский покров -- руоф Искусно изготовленный покров
			.."\n"
			.."При выходе из "..CKWord("Скрытности", "Stealth_rgb_ru")..", вы получаете на {buff_duration:%s} секунд:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." атак в спину и\n"
			..Dot_green.." {threat:%s} к вероятности стать целью врага.",
		-- fr = "La durée de la "..CKWord("Furtivité", "Stealth_rgb_fr").." est augmentée de "..CNumb("3", "n_3_rgb").." à {duration_2:%s} secondes.",
		["zh-tw"] = Dot_green.." {talent_name:%s} 持續時間延長 {duration:%s} 秒。\n"
			.."\n"
			.."離開"..CKWord("隱身", "Stealth_rgb_tw").." 後 {buff_duration:%s} 秒內獲得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} 背刺"..CKWord("傷害", "Damage_rgb_tw").." 和\n"
			..Dot_green.." {threat:%s} 威脅。",
		["zh-cn"] = Dot_green.." {talent_name:%s} 持续时间延长 {duration:%s} 秒。\n"
			.."\n"
			.."离开"..CKWord("隐身", "Stealth_rgb_zh_cn").." 后 {buff_duration:%s} 秒内获得：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").." {damage:%s} 背刺"..CKWord("伤害", "Damage_rgb_zh_cn").." 和\n"
			..Dot_green.." {threat:%s} 威胁。",
	},
	--[+ ABILITY 3-2 - Invigorating Revelation +]--	27.03.2026
	["loc_talent_zealot_stealth_toughness_dr_desc"] = { -- toughness: 40%, time: 5, damage: +20%, time: 5, s->seconds, +colors
		en = "{talent_name:%s} replenishes:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			.."Upon leaving "..CKWord("Stealth", "Stealth_rgb")..", gain for {duration:%s} seconds:\n"
			..Dot_green.." {dr:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.",
		ru = "{talent_name:%s} восстанавливает:\n" -- Оживляющее откровение -- руоф Подбадривающее откровение
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			.."При выходе из "..CKWord("Скрытности", "Stealth_rgb_ru")..", вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {dr:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".",
		-- fr = "Vous récuperez {toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." en {time:%s} secondes à la sortie de la "..CKWord("Furtivité", "Stealth_rgb_fr")..". Vous gagnez aussi une réduction des "..CKWord("Dégâts", "Damage_rgb_fr").." de {damage:%s} pendant {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_3_rgb_fr,
		["zh-tw"] = "{talent_name:%s} 恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			.."離開"..CKWord("隱身", "Stealth_rgb_tw").." 後 {duration:%s} 秒內獲得：\n"
			..Dot_green.." {dr:%s} "..CKWord("傷害", "Damage_rgb_tw").."抗性。",
		["zh-cn"] = "{talent_name:%s} 恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			.."离开"..CKWord("隐身", "Stealth_rgb_zh_cn").." 后 {duration:%s} 秒内获得：\n"
			..Dot_green.." {dr:%s} 伤害抗性。",
	},
	--[+ ABILITY 3-3 - Perfectionist +]--	27.03.2026
	["loc_talent_zealot_stealth_cooldown_regeneration_desc"] = { -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, +colors
		en = "Restore "..CKWord("Ability Cooldown", "Ability_cd_rgb").." on "..CKWord("Stealth", "Stealth_rgb").." Kill:\n"
			..Dot_green.." {monster:%s} - Beast of Nurgle, Chaos Spawn, Daemonhosts, Plague Ogryn,\n"
			..Dot_green.." {ogryn:%s} - Bulwark, Crusher, Reaper,\n"
			..Dot_green.." {other:%s} - others.",
		ru = "При убийстве в режиме "..CKWord("Скрытности", "Stealth_rgb_ru").." вы сокращаете время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." на:\n"
			..Dot_green.." {monster:%s} - при убийстве чудовищ: Зверя Нургла, Отродья Хаоса, демонхоста или Чумного огрина,\n"
			..Dot_green.." {ogryn:%s} - при убийстве огринов: Бастиона, Дробителя или Жнеца,\n"
			..Dot_green.." {other:%s} - при убийстве других врагов.",
			--"{talent_name:%s} даёт дополнительно:\n{damage_2:%s} к "..CKWord("урону", "uronu_rgb_ru").." при ударе в спину и\n{damage:%s} к "..CKWord("урону от ловкости", "lovkosti_uron_rgb_ru")..", но\nна {cooldown:%s} увеличивается время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").."."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_2_rgb"), -- Перфекционист
		-- fr = "{talent_name:%s} octroie:\n{damage_2:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." dans le dos et\n{damage:%s} de "..CKWord("Dégâts de finesse", "Finesse_dmg_rgb_fr")..", mais augmente le "..CKWord("Temps de recharge de capacité", "Combat_ability_cd_rgb_fr").." de {cooldown:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_2_rgb_fr,
		["zh-tw"] = CKWord("隱身", "Stealth_rgb_tw").."擊殺時恢復"..CKWord("技能冷卻", "Ability_cd_rgb_tw").."：\n"
			..Dot_green.." {monster:%s} - 納垢巨獸、混沌魔物、惡魔宿主、瘟疫歐格林，\n"
			..Dot_green.." {ogryn:%s} - 堡壘、碾壓者、收割者，\n"
			..Dot_green.." {other:%s} - 其他敵人。",
		["zh-cn"] = ""..CKWord("隐身", "Stealth_rgb_zh_cn").." 击杀时恢复"..CKWord("技能冷却", "Ability_cd_rgb_zh_cn").."：\n"
			..Dot_green.." {monster:%s} - 纳垢巨兽、混沌魔物、恶魔宿主、瘟疫欧格林，\n"
			..Dot_green.." {ogryn:%s} - 堡垒、碾压者、收割者，\n"
			..Dot_green.." {other:%s} - 其他敌人。",
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Blazing Piety +]--	27.03.2026
	["loc_talent_zealot_fanatic_rage_crit_desc"] = { -- crit_chance: +15%, duration: 8, max_stacks: 25, radius: 25, m->meters, s->seconds, +colors
		en = "When {max_stacks:%s} enemies have died within {radius:%s} meters, you enter "..CKWord("Fury", "Fury_rgb").." and gain for {duration:%s} seconds:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".\n"
			.."\n"
			..CKWord("Critical Hits", "Crit_hits_rgb").." also count up towards triggering "..CKWord("Fury", "Fury_rgb")..".",
		ru = "Когда {max_stacks:%s} врагов погибает в радиусе {radius:%s} метров, вы входите в режим "..CKWord("Ярости", "Fury_i_rgb_ru").." и получаете на {duration:%s} секунд:\n" -- Пылающая благочестивость -- руоф Пламенное благочестие
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".\n"
			.."\n"
			..CKWord("Критические удары", "Krit_udary_rgb_ru").." также засчитываются для активации "..CKWord("Ярости", "Fury_i_rgb_ru")..".",
		-- fr = "Quand {max_stacks:%s} ennemis meurent dans un rayon de {radius:%s} mètres autour de vous, vous entrez en "..CKWord("Fureur", "Fury_rgb_fr").." et obtenez {crit_chance:%s} "..CKWord("Chances de coup critique", "Crt_hit_chnc_rgb_fr").." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_rgb_fr,
		["zh-tw"] = "{radius:%s} 公尺內有 {max_stacks:%s} 名敵人死亡時，進入"..CKWord("狂怒", "Fury_rgb_tw").."並獲得以下效果，持續 {duration:%s} 秒：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("爆擊率", "Crt_hit_chnc_rgb_tw").."。\n"
			.."\n"
			..CKWord("暴擊", "Crit_hits_rgb_tw").."也計入觸發"..CKWord("狂怒", "Fury_rgb_tw").." 的次數。",
		["zh-cn"] = "{radius:%s} 米内有 {max_stacks:%s} 名敌人死亡时，进入"..CKWord("狂怒", "Fury_rgb_zh_cn").." 并获得 {duration:%s} 秒：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("暴击命中几率", "Crt_hit_chnc_rgb_zh_cn").."。\n"
			.."\n"
			..CKWord("暴击", "Crit_hit_rgb_zh_cn").." 命中也计入触发"..CKWord("狂怒", "Fury_rgb_zh_cn").." 的次数。",
	},
	--[+ KEYSTONE 1-1 - Infectious Zeal +]--	27.03.2026
	["loc_talent_zealot_shared_fanatic_rage_new_desc"] = { -- crit_chance: +10%, talent_name: Blazing Piety, +colors
		en = "While {talent_name:%s} is active, Allies in "..CKWord("Coherency", "Coherency_rgb").." have:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".",
		ru = "Пока активно {talent_name:%s}, союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получают:\n" -- Заразительное рвение 
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".",
		-- fr = CNumb("10%", "pc_10_rgb").." de "..CKWord("Chances de coup critique", "Crit_chance_rgb_fr").." est conféré aux alliés en syntonie lorsque vous atteignez "..CNumb("25", "n_25_rgb").." cumuls de "..CKWord("Fureur", "Fury_rgb_fr")..". "..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_3_rgb_fr,
		["zh-tw"] = "{talent_name:%s} 啟用期間，"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友獲得：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("爆擊率", "Crt_hit_chnc_rgb_tw").."。",
		["zh-cn"] = "{talent_name:%s} 启用期间，"..CKWord("协同", "Coherency_rgb_zh_cn").." 盟友获得：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("暴击命中几率", "Crt_hit_chnc_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE 1-2 - Righteous Warrior +]--	27.03.2026
	["loc_talent_zealot_fanatic_rage_improved_desc"] = { -- crit_chance: +10%, talent_name: Blazing Piety, +colors
		en = Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb").." from {talent_name:%s}.",
		ru = Dot_green.." {crit_chance:%s} "..CKWord("шанса критического удара", "sha_krit_udara_rgb_ru").." дополнительно для таланта {talent_name:%s}.", -- Праведный воин
		-- fr = "{crit_chance:%s} de "..CKWord("Chances de coup critique", "Crt_hit_chnc_rgb_fr").." grâce à {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_4_rgb_fr,
		["zh-tw"] = Dot_green.." {talent_name:%s} 額外增加 {crit_chance:%s} "..CKWord("爆擊率", "Crt_hit_chnc_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {talent_name:%s} 额外增加 {crit_chance:%s} "..CKWord("暴击命中几率", "Crt_hit_chnc_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE 1-3 - Stalwart +]--	27.03.2026
	["loc_talent_zealot_fanatic_rage_toughness_replenish_desc"] = { -- toughness: 50%, toughness_damage_reduction: +25%, toughness_small: 2%, +colors
		en = "Triggering "..CKWord("Fury", "Fury_rgb").." replenishes:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			.."While "..CKWord("Fury", "Fury_rgb").." is active:\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..",\n"
			..Dot_green.." {toughness_small:%s} "..CKWord("Toughness", "Toughness_rgb").." per second.",
		ru = "Активация "..CKWord("Ярости", "Fury_i_rgb_ru").." восстанавливает:\n" -- Непоколебимый -- руоф Верный последователь
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			.."Пока активна "..CKWord("Ярость", "Fury_rgb_ru").." вы получаете:\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..",\n"
			..Dot_green.." {toughness_small:%s} восстановления "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду.",
		-- fr = "{toughness:%s} "..CKWord("Endurance", "Toughness_rgb_fr").." est régénérée en déclenchant la "..CKWord("Fureur", "Fury_rgb_fr")..". De plus, pendant que la "..CKWord("Fureur", "Fury_rgb_fr").." est active, vous avez gagnez {toughness_damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").."."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_1_rgb_fr,
		["zh-tw"] = "觸發"..CKWord("狂怒", "Fury_rgb_tw").."時恢復：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..CKWord("狂怒", "Fury_rgb_tw").." 啟用期間獲得：\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."，\n"
			..Dot_green.." 每秒恢復 {toughness_small:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = "触发"..CKWord("狂怒", "Fury_rgb_zh_cn").." 恢复：\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..CKWord("狂怒", "Fury_rgb_zh_cn").." 启用期间获得：\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."，\n"
			..Dot_green.." {toughness_small:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." /秒。",
	},
	--[+ KEYSTONE 1-4 - Invocation of Death +]--	27.03.2026
	["loc_talent_maniac_cooldown_on_melee_crits_buff_desc"] = { -- cooldown_regen: +100%, duration: 3, +colors
		en = Dot_green.." {cooldown_regen:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Regeneration for {duration:%s} seconds on Melee "..CKWord("Critical Hits", "Crit_hits_rgb")..".",
		ru = Dot_green.." {cooldown_regen:%s} к скорости восстановления "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." на {duration:%s} секунды при "..CKWord("критических ударах", "krit_udarah_rgb_ru").." в ближнем бою.", -- 
		["zh-tw"] = Dot_green.." 近戰"..CKWord("暴擊", "Crit_hits_rgb_tw").."時，{cooldown_regen:%s} "..CKWord("技能冷卻", "Ability_cd_rgb_tw").."恢復速度，持續 {duration:%s} 秒。",
		["zh-cn"] = Dot_green.." 近战"..CKWord("暴击命中", "Crit_hits_rgb_zh_cn").." 时，{cooldown_regen:%s} "..CKWord("技能冷却", "Ability_cd_rgb_zh_cn").." 恢复速度，持续 {duration:%s} 秒。",
	},
	--[+ KEYSTONE 2 - Martyrdom +]--	27.03.2026
	["loc_talent_zealot_martyrdom_desc"] = { -- damage: +10%, max_wounds: 5, +colors
		en = Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." for each missing "..CKWord("Wound", "Wound_rgb")..", up to a Maximum {max_wounds:%s} missing "..CKWord("Wounds", "Wounds_rgb")..".",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя за каждую потерянную "..CKWord("рану", "ranu_rgb_ru")..", максимум до {max_wounds:%s} потерянных "..CKWord("ран", "ran_rgb_ru")..".", -- Мученичество
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." de mêlée pour chaque "..CKWord("Blessure", "Wound_rgb_fr").." manquante, jusqu'à un maximum de {max_wounds:%s} "..CKWord("Blessures", "Wounds_rgb_fr").." manquantes."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_rgb_fr,
		["zh-tw"] = Dot_green.." 每缺失一個"..CKWord("傷痕", "Wound_rgb_tw").."，獲得 {damage:%s} 近戰"..CKWord("傷害", "Damage_rgb_tw").."，最多計算 {max_wounds:%s} 個缺失"..CKWord("傷痕", "Wounds_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 每个缺失的"..CKWord("伤痕", "Wound_rgb_zh_cn").." {damage:%s} 近战"..CKWord("伤害", "Damage_rgb_zh_cn").."，最多 {max_wounds:%s} 个缺失"..CKWord("伤痕", "Wound_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE 2-1 - I Shall Not Fall +]--	27.03.2026
	["loc_talent_zealot_martyrdom_grants_toughness_upd_desc"] = { -- talent_name: Martyrdom, toughness_damage_reduction: +7.5%, +colors
		en = Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." per Stack of {talent_name:%s}.",
		ru = Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." за каждый заряд таланта {talent_name:%s}.", -- Я не паду -- руоф Я не отступлю
		-- fr = "{toughness_damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." par "..CKWord("Blessure", "Wound_rgb_fr").." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_1_rgb_fr,
		["zh-tw"] = Dot_green.." 每層 {talent_name:%s} {toughness_damage_reduction:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 每层 {talent_name:%s} {toughness_damage_reduction:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE 2-2 - On the Brink +]--	27.03.2026
	["loc_talent_zealot_corruption_resistance_stacking_desc"] = { -- talent_name: Martyrdom, corruption_resistance: +10%, +colors
		en = Dot_green.." {corruption_resistance:%s} "..CKWord("Corruption", "Corruption_rgb").." Resistance per Stack of {talent_name:%s}.",
		ru = Dot_green.." {corruption_resistance:%s} к сопротивлению "..CKWord("порче", "porche_rgb_ru").." за каждый заряд таланта {talent_name:%s}.", -- 
		["zh-tw"] = Dot_green.." 每層 {talent_name:%s} {corruption_resistance:%s} "..CKWord("腐敗", "Corruption_rgb_tw").." 抗性。",
		["zh-cn"] = Dot_green.." 每层 {talent_name:%s} {corruption_resistance:%s} "..CKWord("腐败", "Corruption_rgb_zh_cn").." 抗性。",
	},
	--[+ KEYSTONE 2-3 - Maniac +]--	27.03.2026
	["loc_talent_zealot_attack_speed_per_martyrdom_upd_desc"] = { -- talent_name: Martyrdom, attack_speed: +6%, +colors
		en = Dot_green.." {attack_speed:%s} Attack Speed per Stack of {talent_name:%s}.",
		ru = Dot_green.." {attack_speed:%s} к скорости атаки за каждый заряд таланта {talent_name:%s}.", -- Маньяк
		-- fr = "{attack_speed:%s} Vitesse d'attaque de mêlée par "..CKWord("Blessure", "Wound_rgb_fr").." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_2_rgb_fr,
		["zh-tw"] = Dot_green.." 每層 {talent_name:%s} {attack_speed:%s} 攻擊速度。",
		["zh-cn"] = Dot_green.." 每层 {talent_name:%s} {attack_speed:%s} 攻击速度。",
	},
	--[+ KEYSTONE 2-4 - Restorative Verses +]--	27.03.2026
	["loc_talent_zealot_martyrdom_toughness_modifier_upd_desc"] = { -- talent_name: Martyrdom, toughness_modifier: 5%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{toughness_modifier:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment per Stack of {talent_name:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{toughness_modifier:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждый заряд таланта {talent_name:%s}.", -- Маньяк
		-- fr = "{attack_speed:%s} Vitesse d'attaque de mêlée par "..CKWord("Blessure", "Wound_rgb_fr").." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_2_rgb_fr,
		["zh-tw"] = Dot_green.." 每層 {talent_name:%s} "..CNumb("+", "n_plus_rgb").."{toughness_modifier:%s} "..CKWord("韌性", "Toughness_rgb_tw").."恢復。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb").." 每层 {talent_name:%s} {toughness_modifier:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." 恢复。",
	},
	--[+ KEYSTONE 2-5 - Martyr's Purpose +]--	27.03.2026
	["loc_talent_zealot_damage_taken_restores_cd_new_description"] = { -- talent_name: Martyrdom, cooldown_regen: +50%, current_health: 25%, +colors
		en = "Up to {cooldown_regen:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Regeneration based on Missing "..CKWord("Health", "Health_rgb")..". Max reached at {current_health:%s} current "..CKWord("Health", "Health_rgb")..".",
		ru = "До {cooldown_regen:%s} к скорости восстановления "..CKWord("боевой способности", "boeva_sposobnost_rgb_ru").." в зависимости от потерянного "..CKWord("здоровья", "zdorovia_rgb_ru")..". Максимум достигается при {current_health:%s} текущего "..CKWord("здоровья", "zdorovia_rgb_ru")..".",
		["zh-tw"] = "依缺失"..CKWord("生命值", "Health_rgb_tw").."，最多獲得 {cooldown_regen:%s} "..CKWord("技能冷卻", "Ability_cd_rgb_tw").."恢復速度。當前"..CKWord("生命值", "Health_rgb_tw").."為 {current_health:%s} 時達到最大值。",
		["zh-cn"] = "依缺失"..CKWord("生命", "Health_rgb_zh_cn").." 最多 {cooldown_regen:%s} "..CKWord("技能冷却", "Ability_cd_rgb_zh_cn").." 恢复速度。当前"..CKWord("生命", "Health_rgb_zh_cn").." 为 {current_health:%s} 时达到最大值。",
	},
	--[+ KEYSTONE 3 - Inexorable Judgement +]--	09.06.2026
	["loc_talent_zealot_quickness_desc"] = { -- max_stacks: 20, melee_attack_speed: +1%, ranged_attack_speed: +1%, damage_modifier: +1%, duration: 6, +colors, note
		en = "Moving grants you "..CKWord("Momentum", "Momentum_rgb")..".\n"
			..Dot_green.." Sprinting generates Stacks twice as fast.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			.."When you Hit an Enemy, spend all "..CKWord("Momentum", "Momentum_rgb").." and gain per Stack for {duration:%s} seconds:\n"
			..Dot_green.." {damage_modifier:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {melee_attack_speed:%s} Melee Attack Speed,\n"
			..Dot_green.." {ranged_attack_speed:%s} Ranged Attack Speed,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("0.5", "pc_0_5_rgb").." Dodge Speed,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("0.5", "pc_0_5_rgb").." Dodge distance,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("1", "pc_1_rgb").." Dodge count reset time.",
		ru = "Движение даёт вам заряды "..CKWord("Моментума", "Momentum_rgb_ru")..".\n" -- Неумолимый приговор -- руоф Безжалостностный приговор
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			.."При попадании по врагу вы тратите все заряды "..CKWord("Моментума", "Momentum_rgb_ru").." и за каждый заряд получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage_modifier:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {melee_attack_speed:%s} к скорости атаки ближнего боя,\n"
			..Dot_green.." {ranged_attack_speed:%s} к скорости атаки дальнего боя,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("0.5", "pc_0_5_rgb").." к скорости уклонения,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("0.5", "pc_0_5_rgb").." к расстоянию уклонения,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("1", "pc_1_rgb").." сброса времени счётчика уклонений.",
		-- fr = "Vos déplacement vous octroient "..CKWord("Élan", "Momentum_rgb_fr")..". Se cumule {max_stacks:%s} fois.\nLorsque vous touchez un ennemi, dépensez tout les cumuls de "..CKWord("Élan", "Momentum_rgb_fr").." et gagnez par cumul pendant {duration:%s} secondes:\n{damage_modifier:%s} de "..CKWord("Dégâts", "Damage_rgb_fr")..",\n{melee_attack_speed:%s} Vitesse d'attaque de mêlée,\n{ranged_attack_speed:%s} Vitesse d'attaque à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_rgb_fr,
		["zh-tw"] = "移動時獲得"..CKWord("勢能", "Momentum_rgb_tw").."。\n"
			..Dot_green.." 衝刺會以兩倍速度產生層數。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			.."\n"
			.."命中敵人時消耗所有"..CKWord("勢能", "Momentum_rgb_tw").."，每層在 {duration:%s} 秒內提供：\n"
			..Dot_green.." {damage_modifier:%s} "..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {melee_attack_speed:%s} 近戰攻擊速度，\n"
			..Dot_green.." {ranged_attack_speed:%s} 遠程攻擊速度，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("0.5", "pc_0_5_rgb").." 閃避速度，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("0.5", "pc_0_5_rgb").." 閃避距離，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("1", "pc_1_rgb").." 閃避次數重置時間。",
		["zh-cn"] = "移动时获得"..CKWord("势能", "Momentum_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 层。\n"
			.."\n"
			.."命中敌人时消耗所有"..CKWord("势能", "Momentum_rgb_zh_cn").."，每层 {duration:%s} 秒内获得：\n"
			..Dot_green.." {damage_modifier:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {melee_attack_speed:%s} 近战攻击速度，\n"
			..Dot_green.." {ranged_attack_speed:%s} 远程攻击速度。",
	},
	--[+ KEYSTONE 3-1 - Retributor's Stance +]--	27.03.2026
	["loc_talent_zealot_momentum_toughness_replenish_desc"] = { -- toughness: 0.4%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." is replenished per spent Stack of "..CKWord("Momentum", "Momentum_rgb").." during its Duration.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за каждый потраченный заряд "..CKWord("Моментума", "Momentum_rgb_ru").." во время его действия.", -- Стойка карателя
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." est régénérée pour chaque cumul de "..CKWord("Élan", "Momentum_rgb_fr").." dépensé."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_1_rgb_fr,
		["zh-tw"] = Dot_green.." 持續期間每消耗一層"..CKWord("勢能", "Momentum_rgb_tw").."，恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 活动期间每消耗一层"..CKWord("势能", "Momentum_rgb_zh_cn").." 恢复 {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
	},
	--[+ KEYSTONE 3-2 - Inebriate's Poise +]--	27.03.2026
	["loc_talent_zealot_quickness_dodge_stacks_desc"] = { -- stacks: 3, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{stacks:%s} Stacks of "..CKWord("Momentum", "Momentum_rgb").." on a successful Dodge.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{stacks:%s} заряда "..CKWord("Моментума", "Momentum_rgb_ru").." при успешном уклонении.", -- Грация пьяницы -- руоф Самообладание пьяницы
		-- fr = "Gagnez {stacks:%s} cumuls de "..CKWord("Élan", "Momentum_rgb_fr").." après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_2_rgb_fr,
		["zh-tw"] = Dot_green.." 成功閃避時獲得 "..CNumb("+", "n_plus_rgb").."{stacks:%s} 層"..CKWord("勢能", "Momentum_rgb_tw").."。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb").." {stacks:%s} 层"..CKWord("势能", "Momentum_rgb_zh_cn").."，成功闪避时触发。",
	},
	--[+ KEYSTONE 3-3 - Eternal +]--	27.03.2026
	["loc_talent_zealot_quickness_increased_duration_desc"] = { -- duration: 10, +colors
		en = Dot_green.." Duration of {talent_name:%s} increased to {duration:%s} seconds.",
		ru = Dot_green.." Длительность таланта {talent_name:%s} увеличена до {duration:%s} секунд.", -- руоф Вечный
		-- fr = "Gagnez {stacks:%s} cumuls de "..CKWord("Élan", "Momentum_rgb_fr").." après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_2_rgb_fr,
		["zh-tw"] = Dot_green.." {talent_name:%s} 持續時間增加至 {duration:%s} 秒。",
		["zh-cn"] = Dot_green.." {talent_name:%s} 持续时间增加至 {duration:%s} 秒。",
	},
	--[+ KEYSTONE 3-4 - Pious Cut-Throat +]--	27.03.2026
	["loc_talent_zealot_cooldown_on_backstab_weakspot_desc"] = { -- cooldown: +75%, duration: 2, +colors
		en = Dot_green.." {cooldown:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Regeneration for {duration:%s} seconds after a Melee Backstab or Melee "..CKWord("Weakspot Hit", "Weakspothit_rgb")..".",
		ru = Dot_green.." {cooldown:%s} к скорости восстановления "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." на {duration:%s} секунды после удара в спину или попадания в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru").." в ближнем бою.", -- руоф Добродетельный головорез
		["zh-tw"] = Dot_green.." 近戰背刺或近戰"..CKWord("弱點命中", "Weakspothit_rgb_tw").."後 {duration:%s} 秒內，{cooldown:%s} "..CKWord("技能冷卻", "Ability_cd_rgb_tw").."恢復速度。",
		["zh-cn"] = Dot_green.." 近战背刺或弱点命中后 {duration:%s} 秒内，{cooldown:%s} "..CKWord("技能冷却", "Ability_cd_rgb_zh_cn").." 恢复速度。",
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Anoint in Blood +]--	27.03.2026
	["loc_talent_zealot_ranged_damage_increased_to_close_desc"] = { -- damage: +25%, +colors
		en = "Up to {damage:%s} Base Ranged "..CKWord("Damage", "Damage_rgb")..", reduced the further you are from the target.",
		ru = "До {damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." дальнего боя, уменьшается по мере удаления от цели.", -- Помазанный кровью
		-- fr = "Jusqu'à {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." à distance , réduits plus vous êtes éloigné de la cible."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_3_rgb_fr,
		["zh-tw"] = "最多 {damage:%s} 基礎遠程"..CKWord("傷害", "Damage_rgb_tw").."，距離目標越遠效果越低。",
		["zh-cn"] = "最多 {damage:%s} 基础远程"..CKWord("伤害", "Damage_rgb_zh_cn").."，距目标越远则减少。",
	},
	--[+ Passive 2 - Disdain +]--	27.03.2026
	["loc_talent_zealot_3_tier_2_ability_1_description"] = { -- damage: +5%, max_stacks: 5, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for every Second Melee Attack you make for each enemy Hit by your previous Melee Attack.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." за каждую вторую атаку ближнего боя за каждого врага, поражённого вашей предыдущей атакой ближнего боя.\n" -- Презрение
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.",
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." pour chaque deuxième attaque de mêlée que vous effectuez pour chaque ennemi touché par votre précédente attaque de mêlée. Se cumule jusqu'à {max_stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_1_rgb_fr,
		["zh-tw"] = Dot_green.." 每隔一次近戰攻擊，前一次近戰攻擊每命中一名敵人就獲得 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。",
		["zh-cn"] = Dot_green.." 每次第二次近战攻击，每命中一个前一次攻击击中的敌人 {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 层。",
	},
	--[+ Passive 3 - Backstabber +]--	27.03.2026
	["loc_talent_zealot_backstab_flanking_damage_all_desc"] = { -- damage: +25%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." on Backstab and Flanking Hits.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." при ударах в спину и с фланга.", -- Бьющий в спину
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." sur les coups dans le dos en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_2_rgb_fr,
		["zh-tw"] = Dot_green.." 背刺與側翼命中時，{damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {damage:%s} 背刺和侧翼命中"..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ Passive 4 - The Voice of Terra +]--	27.03.2026
	["loc_talent_zealot_toughness_on_ranged_kill_desc"] = { -- toughness: 4%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished on Ranged Kill.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при убийстве дальнобойной атакой.", -- Голос Терры
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." régénérée lors d'une élimination à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_11_rgb_fr,
		["zh-tw"] = Dot_green.." 遠程擊殺時恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." 在远程击杀时恢复。",
	},
	--[+ Passive 5 - Enemies Within, Enemies Without +]--	27.03.2026
	["loc_talent_zealot_toughness_near_enemies_desc"] = { -- toughness: +2.5%, range: 5, more_toughness: +1%, monster_count: 5, max: +7.5%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished per second while within {range:%s} meters range of an Enemy.\n"
			..Dot_green.." {more_toughness:%s} per addition Enemy. Monstrosities count as {monster_count:%s}. Up to {max:%s}.\n"
			.."_______________________________\n"
			.."Enemies:              "..CNumb("1", "n_1_rgb").."|     "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|  >"..CNumb("5", "n_5_rgb").."\n"
			..CKWord("Toughness", "Toughness_rgb").."("..CNumb("%", "pc_rgb").."): "..CNumb("2.5", "n_2_5_rgb").."| "..CNumb("3.5", "n_3_5_rgb").."| "..CNumb("4.5", "n_4_5_rgb").."| "..CNumb("5.5", "n_5_5_rgb").."| "..CNumb("6.5", "n_6_5_rgb").."| "..CNumb("7.5", "n_7_5_rgb").."\n"
			.."_______________________________",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду восстанавливается, пока враг находится в радиусе {range:%s} метров.\n" -- Враги внутри, враги снаружи -- руоф Не дай ему уйти
			..Dot_green.." {more_toughness:%s} за каждого дополнительного врага. Чудовища считаются за {monster_count:%s}. До {max:%s}.\n"
			.."_______________________________\n"
			.."Враги:                  "..CNumb("1", "n_1_rgb").."|    "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|    "..CNumb("4", "n_4_rgb").."|     "..CNumb("5", "n_5_rgb").."| >"..CNumb("5", "n_5_rgb").."\n"
			..CKWord("Стойкость", "Stoikost_rgb_ru").."("..CNumb("%", "pc_rgb").."): "..CNumb("2.5", "n_2_5_rgb").."| "..CNumb("3.5", "n_3_5_rgb").."| "..CNumb("4.5", "n_4_5_rgb").."| "..CNumb("5.5", "n_5_5_rgb").."| "..CNumb("6.5", "n_6_5_rgb").."| "..CNumb("7.5", "n_7_5_rgb").."\n"
			.."_______________________________",
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." par seconde lorsque vous êtes à moins de {range:%s} mètres d'au moins {num_enemies:%s} ennemis."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_5_rgb_fr,
		["zh-tw"] = Dot_green.." 當 {range:%s} 公尺內有敵人時，每秒恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			..Dot_green.." 每多一名敵人增加 {more_toughness:%s}。巨獸視為 {monster_count:%s} 名。最多 {max:%s}。\n"
			.."_______________________________\n"
			.."敵人數：     "..CNumb("1", "n_1_rgb").." | "..CNumb("2", "n_2_rgb").." | "..CNumb("3", "n_3_rgb").." | "..CNumb("4", "n_4_rgb").." | "..CNumb("5", "n_5_rgb").." | >"..CNumb("5", "n_5_rgb").."\n"
			..CKWord("韌性", "Toughness_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("2.5", "n_2_5_rgb").." | "..CNumb("3.5", "n_3_5_rgb").." | "..CNumb("4.5", "n_4_5_rgb").." | "..CNumb("5.5", "n_5_5_rgb").." | "..CNumb("6.5", "n_6_5_rgb").." | "..CNumb("7.5", "n_7_5_rgb").."\n"
			.."_______________________________",
		["zh-cn"] = Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." /秒，在 {range:%s} 米内有敌人时恢复。\n"
			..Dot_green.." 每额外一个敌人 {more_toughness:%s}。巨兽计为 {monster_count:%s}。最多 {max:%s}。\n"
			.."_______________________________\n"
			.."敌人数：          "..CNumb("1", "n_1_rgb").."|    "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|    "..CNumb("4", "n_4_rgb").."|     "..CNumb("5", "n_5_rgb").."| >"..CNumb("5", "n_5_rgb").."\n"
			..CKWord("韧性", "Toughness_rgb_zh_cn").."（"..CNumb("%", "pc_rgb").."）:  "..CNumb("2.5", "n_2_5_rgb").."| "..CNumb("3.5", "n_3_5_rgb").."| "..CNumb("4.5", "n_4_5_rgb").."| "..CNumb("5.5", "n_5_5_rgb").."| "..CNumb("6.5", "n_6_5_rgb").."| "..CNumb("7.5", "n_7_5_rgb").."\n"
			.."_______________________________",
	},
	--[+ Passive 6 - Blood Redemption +]--	27.03.2026
	["loc_talent_zealot_toughness_on_melee_kill_desc"] = { -- toughness: +100%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment on Melee Kill.",
		ru = Dot_green.." {toughness:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." при убийстве в ближнем бою.", -- Искупление кровью -- руоф Кровавое искупление
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." lors d'une élimination en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_8_rgb_fr,
		["zh-tw"] = Dot_green.." 近戰擊殺時恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {toughness:%s} 近战击杀时"..CKWord("韧性", "Toughness_rgb_zh_cn").." 恢复。",
	},
	--[+ Passive 7 - Second Wind +]--	27.03.2026
	["loc_talent_zealot_toughness_on_dodge_desc"] = { -- toughness: 15%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished on a Successful Dodge.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при успешном уклонении.", -- Второе дыхание -- руоф Второй ветер
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." lors d'une Esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_13_rgb_fr,
		["zh-tw"] = Dot_green.." 成功閃避時恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." 成功闪避时恢复。",
	},
	--[+ Passive 8 - Vicious Offering +]--	27.03.2026
	["loc_talent_zealot_toughness_on_heavy_kills_desc"] = { -- toughness: 10%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished on Heavy Attack Kill.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при убийстве тяжёлой атакой.", -- Жертвоприношение -- руоф Порочное подношение
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." lors d'une élimination en mêlée avec une attaque puissante ."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_10_rgb_fr,
		["zh-tw"] = Dot_green.." 重攻擊擊殺時恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." 重攻击杀时恢复。",
	},
	--[+ Passive 9 - Purge the Unclean +]--	27.03.2026
	["loc_talent_zealot_3_passive_2_description"] = { -- damage: +20%, &->and, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." against Infested and Unyielding Enemies.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против заражённых и несгибаемых врагов.", -- Очищение нечестивых -- руоф Очищение нечистых
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les ennemis infestés et implacable."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_7_rgb_fr,
		["zh-tw"] = Dot_green.." 對被感染與不屈敵人造成 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {damage:%s} 对被感染和不屈敌人的"..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ Passive 10 - Duellist +]--	27.03.2026
	["loc_talent_zealot_duelist_new_desc"] = { -- damage: +50%, duration: 3, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Finesse Damage", "Finesse_dmg_rgb").." for {duration:%s} seconds on successful Dodge.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону от ловкости", "lovkosti_uron_rgb_ru").." на {duration:%s} секунды при успешном уклонении.", -- Дуэлянт
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." de "..CKWord("Point faible", "Weakspot_rgb_fr").." et de "..CKWord("Coup critique", "Crit_hit_rgb_fr").."  pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_17_rgb_fr,
		["zh-tw"] = Dot_green.." 成功閃避後 {duration:%s} 秒內，{damage:%s} "..CKWord("靈巧傷害", "Finesse_dmg_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 成功闪避后 {duration:%s} 秒内，{damage:%s} "..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."。",
	},
	--[+ Passive 11 - Until Death +]--	27.03.2026
	["loc_talent_zealot_resist_death_desc"] = { -- active_duration: 5, cooldown_duration: 120, s->seconds, +colors
		en = "Fatal "..CKWord("Damage", "Damage_rgb").." instead grants you Invulnerability for {active_duration:%s} seconds.\n"
			..Dot_nc.." Occurs every {cooldown_duration:%s} seconds.",
		ru = "Смертельный "..CKWord("урон", "uron_rgb_ru").." вместо этого даёт вам неуязвимость на {active_duration:%s} секунд.\n"
			..Dot_nc.." Срабатывает раз в {cooldown_duration:%s} секунд.", -- До самой смерти
		-- fr = "Les "..CKWord("Dégâts", "Damage_rgb_fr").." mortels vous accordent à la place l'invulnérabilité pendant {active_duration:%s} secondes. Se produit toutes les {cooldown_duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_18_rgb_fr,
		["zh-tw"] = "致命"..CKWord("傷害", "Damage_rgb_tw").." 改為賦予你 {active_duration:%s} 秒無敵狀態。\n"
			..Dot_nc.." 每 {cooldown_duration:%s} 秒觸發一次。",
		["zh-cn"] = "致命"..CKWord("伤害", "Damage_rgb_zh_cn").." 改为赋予你 {active_duration:%s} 秒无敌状态。\n"
			..Dot_nc.." 每 {cooldown_duration:%s} 秒触发一次。",
	},
	--[+ Passive 12 - Sustained Assault +]--	27.03.2026
	["loc_talent_zealot_increased_damage_stacks_on_hit_desc"] = { -- damage: +4%, time: 5, amount: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." for {time:%s} seconds on Hitting an Enemy with a Melee Attack.\n"
			..Dot_nc.." Stacks {amount:%s} times.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя на {time:%s} секунд при попадании по врагу атакой ближнего боя.\n" -- Непрерывное нападение -- руоф Непрерывный штурм
			..Dot_nc.." Суммируется до {amount:%s} раз.",
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." de mêlée pendant {time:%s} secondes après avoir touché un ennemi avec une attaque de mêlée. Cumulable jusqu'à {amount:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_31_rgb_fr,
		["zh-tw"] = Dot_green.." 近戰攻擊命中敵人後 {time:%s} 秒內，{damage:%s} 近戰"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 最多 {amount:%s} 層。",
		["zh-cn"] = Dot_green.." 近战攻击命中敌人后 {time:%s} 秒内，{damage:%s} 近战"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多 {amount:%s} 层。",
	},
	--[+ Passive 13 - Holy Revenant +]--	27.03.2026
	["loc_talent_zealot_heal_during_resist_death_clamped_desc"] = { -- talent_name: Until Death, max_health: 25%, melee_multiplier: 3, +colors
		en = "When {talent_name:%s} ends, you regain "..CKWord("Health", "Health_rgb").." based on the "..CKWord("Damage", "Damage_rgb").." you dealt during {talent_name:%s}, to a Maximum of {max_health:%s} Max "..CKWord("Health", "Health_rgb")..".\n"
			.."Melee "..CKWord("Damage", "Damage_rgb").." dealt Heals for {melee_multiplier:%s} times that amount.",
		ru = "Когда действие таланта {talent_name:%s} заканчивается, вы восстанавливаете "..CKWord("здоровье", "zdorovie_rgb_ru").." в зависимости от нанесённого "..CKWord("урона", "urona_rgb_ru").." во время действия таланта {talent_name:%s}, максимум до {max_health:%s} максимального "..CKWord("здоровья", "zdorovia_rgb_ru")..".\n" -- Святой призрак -- руоф Священный призрак
			..CKWord("Урон", "Uron_rgb_ru").." в ближнем бою восстанавливает в {melee_multiplier:%s} раза больше "..CKWord("здоровья", "zdorovia_rgb_ru")..".",
		-- fr = "Lorsque {talent_name:%s} se termine, vous récupérez de la "..CKWord("Santé", "Health_rgb_fr").." en fonction des "..CKWord("Dégâts", "Damage_rgb_fr").." que vous avez infligés pendant {talent_name:%s}, jusqu'à {max_health:%s} de la "..CKWord("Santé", "Health_rgb_fr").." maximum. Les "..CKWord("Dégâts", "Damage_rgb_fr").." de mêlée guérissent pour {melee_multiplier:%s} fois ce montant."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_24_rgb_fr,
		["zh-tw"] = "{talent_name:%s} 結束時，依你在 {talent_name:%s} 期間造成的"..CKWord("傷害", "Damage_rgb_tw").."恢復"..CKWord("生命值", "Health_rgb_tw").."，最多恢復最大"..CKWord("生命值", "Health_rgb_tw").."的 {max_health:%s}。\n"
			.."造成的近戰"..CKWord("傷害", "Damage_rgb_tw").."會以 {melee_multiplier:%s} 倍計入治療量。",
		["zh-cn"] = "{talent_name:%s} 结束时，依 {talent_name:%s} 期间造成的"..CKWord("伤害", "Damage_rgb_zh_cn").." 恢复"..CKWord("生命", "Health_rgb_zh_cn").."，最多 {max_health:%s} 最大"..CKWord("生命", "Health_rgb_zh_cn").."。\n"
			.."近战"..CKWord("伤害", "Damage_rgb_zh_cn").." 的治疗量为 {melee_multiplier:%s} 倍。",
	},
	--[+ Passive 14 - Thy Wrath be Swift +]--	27.03.2026
	["loc_talent_zealot_movement_speed_on_damaged_desc"] = { -- movement_speed: +15%, time: 2, s->seconds, +colors
		en = Dot_green.." {movement_speed:%s} Movement Speed for {time:%s} seconds on taking "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_green.." Enemy Melee Attacks cannot "..CKWord("Stun", "Stun_rgb").." you.",
		ru = Dot_green.." {movement_speed:%s} к скорости движения на {time:%s} секунды при получении "..CKWord("урона", "urona_rgb_ru")..".\n" -- Да будет Твой гнев быстр -- руоф Скорое возмездие
			..Dot_green.." Вражеские атаки ближнего боя не могут "..CKWord("оглушить", "oglushit_rgb_ru").." вас.",
		-- fr = "{movement_speed:%s} Vitesse de déplacement pendant {time:%s} secondes après avoir subi des "..CKWord("Dégâts", "Damage_rgb_fr")..". Les attaques de mêlée ennemies ne peuvent pas vous "..CKWord("Étourdissent", "Stun_rgb_fr").."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_21_rgb_fr,
		["zh-tw"] = Dot_green.." 受到"..CKWord("傷害", "Damage_rgb_tw").." 後 {time:%s} 秒內，{movement_speed:%s} 移動速度。\n"
			..Dot_green.." 敵人近戰攻擊無法"..CKWord("眩暈", "Stun_rgb_tw").." 你。",
		["zh-cn"] = Dot_green.." 受到"..CKWord("伤害", "Damage_rgb_zh_cn").." 后 {time:%s} 秒内，{movement_speed:%s} 移动速度。\n"
			..Dot_green.." 敌人近战攻击无法"..CKWord("眩晕", "Stun_rgb_zh_cn").." 你。",
	},
	--[+ Passive 15 - Desperation +]--	27.03.2026
	["loc_talent_zealot_damage_based_on_stamina_desc"] = { -- damage: +20%, s->seconds, +colors
		en = "Up to {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." based on missing "..CKWord("Stamina", "Stamina_rgb")..":\n"
			.."_______________________________\n"
			..CKWord("Stamina", "Stamina_rgb").."("..CNumb("%", "pc_rgb").."):   "..CNumb("100", "n_100_rgb").."|  "..CNumb("80", "n_80_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("40", "n_40_rgb").."|  "..CNumb("20", "n_20_rgb").."|    "..CNumb("0", "n_0_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").."("..CNumb("%", "pc_rgb").."):       "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|   "..CNumb("12", "n_12_rgb").."|   "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		ru = "До {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя в зависимости от потерянной "..CKWord("выносливости", "vynoslivosti_rgb_ru")..":\n" -- Отчаяние
			.."_______________________________\n"
			..CKWord("Выносливость", "Vynoslivost_rgb_ru")..": "..CNumb("100", "n_100_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("20", "n_20_rgb").."|   "..CNumb("0", "n_0_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").."("..CNumb("%", "pc_rgb").."):                  "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."| "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." de mêlée pendant {duration:%s} secondes lorsque "..CKWord("Endurance", "Stamina_rgb_fr").." est épuisée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_23_rgb_fr,
		["zh-tw"] = "依缺少的"..CKWord("耐力", "Stamina_rgb_tw").."，最多獲得 {damage:%s} 近戰"..CKWord("傷害", "Damage_rgb_tw").."：\n"
			.."_______________________________\n"
			..CKWord("耐力", "Stamina_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("100", "n_100_rgb").." | "..CNumb("80", "n_80_rgb").." | "..CNumb("60", "n_60_rgb").." | "..CNumb("40", "n_40_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("0", "n_0_rgb").."\n"
			..CKWord("傷害", "Damage_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("0", "n_0_rgb").." | "..CNumb("4", "n_4_rgb").." | "..CNumb("8", "n_8_rgb").." | "..CNumb("12", "n_12_rgb").." | "..CNumb("16", "n_16_rgb").." | "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		["zh-cn"] = "依缺失"..CKWord("耐力", "Stamina_rgb_zh_cn").." 最多 {damage:%s} 近战"..CKWord("伤害", "Damage_rgb_zh_cn").."：\n"
			.."_______________________________\n"
			..CKWord("耐力", "Stamina_rgb_zh_cn").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("100", "n_100_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("20", "n_20_rgb").."|  "..CNumb("0", "n_0_rgb").."\n"
			..CKWord("伤害", "Damage_rgb_zh_cn").."（"..CNumb("%", "pc_rgb").."）：     "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."| "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
	},
	--[+ Passive 16 - Punishment +]--	27.03.2026
	["loc_talent_zealot_multi_hits_increase_impact_desc"] = { -- min_hits: 2, impact_modifier: +8%, time: 8, max_stacks: 5, s->seconds, +colors
		en = Dot_green.." {impact_modifier:%s} "..CKWord("Impact", "Impact_rgb").." strength for {time:%s} seconds on Melee Attacks hitting at least {min_hits:%s} Enemies.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..Dot_green.." At Max Stacks gain Uninterruptible.",
		ru = Dot_green.." {impact_modifier:%s} к силе "..CKWord("выведения из равновесия", "vyveda_ravnovesia_rgb_ru").." на {time:%s} секунд при атаках ближнего боя, попадающих хотя бы по {min_hits:%s} врагам.\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			..Dot_green.." При максимуме зарядов вы получаете Непрерываемость.", -- Наказание
		-- fr = "Les attaques de mêlée qui touchent au moins {min_hits:%s} ennemis augmentent l'"..CKWord("Impact", "Impact_rgb_fr").." de {impact_modifier:%s} pendant {time:%s} secondes. Cumulable jusqu'à {max_stacks:%s} fois. Au maximum de cumuls, gagnez Inarrêtable."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_29_rgb_fr,
		["zh-tw"] = Dot_green.." 近戰攻擊命中至少 {min_hits:%s} 名敵人時，獲得 {impact_modifier:%s} "..CKWord("衝擊", "Impact_rgb_tw").."強度，持續 {time:%s} 秒。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			.."\n"
			..Dot_green.." 層數滿時獲得不可中斷狀態。",
		["zh-cn"] = Dot_green.." 近战攻击命中至少 {min_hits:%s} 个敌人时，{impact_modifier:%s} "..CKWord("冲击", "Impact_rgb_zh_cn").." 强度持续 {time:%s} 秒。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 层。\n"
			.."\n"
			..Dot_green.." 层数满时获得不可中断状态。",
	},
	--[+ Passive 17 - Against the Odds +]--	27.03.2026
	["loc_talent_zealot_offensive_vs_many_desc"] = { -- num_enemies: 2, range: 5, damage: +2%, cleave: +10%, stacks: 5, s->seconds, +colors
		en = "For every {num_enemies:%s} enemies within {range:%s} meters, gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {cleave:%s} "..CKWord("Cleave", "Cleave_rgb")..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = "За каждые {num_enemies:%s} врага в радиусе {range:%s} метров, получаете:\n" -- Вопреки всему
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru")..".\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.",
		["zh-tw"] = "每有 {num_enemies:%s} 名敵人在 {range:%s} 公尺內，即獲得：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").." 和\n"
			..Dot_green.." {cleave:%s} "..CKWord("順劈攻擊", "Cleave_rgb_tw").."。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。",
		["zh-cn"] = "每 {num_enemies:%s} 个在 {range:%s} 米内的敌人获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").." 和\n"
			..Dot_green.." {cleave:%s} "..CKWord("顺劈攻击", "Cleave_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多 {stacks:%s} 层。",
	},
	--[+ Passive 18 - Shield of Contempt +]--	27.03.2026
	["loc_talent_zealot_3_tier_4_ability_3_description"] = { -- damage_reduction: +60%, duration: 4, cooldown: 8, s->seconds, +colors
		en = "When you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." takes "..CKWord("Health", "Health_rgb").." "..CKWord("Damage", "Damage_rgb")..", they gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Reduction.\n"
			.."\n"
			..Dot_nc.." Triggers every {cooldown:%s} seconds.",
		ru = "Если вы или союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете "..CKWord("урон", "uron_rgb_ru").." "..CKWord("здоровью", "zdoroviu_rgb_ru")..", то на {duration:%s} секунды вам даётся:\n" -- Щит презрения
			..Dot_green.." {damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Срабатывает раз в {cooldown:%s} секунд.",
		["zh-tw"] = "你或"..CKWord("協同", "Coherency_rgb_tw").."範圍內的盟友受到"..CKWord("生命值", "Health_rgb_tw").." "..CKWord("傷害", "Damage_rgb_tw").."時，{duration:%s} 秒內獲得：\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("傷害", "Damage_rgb_tw").."減免。\n"
			.."\n"
			..Dot_nc.." 每 {cooldown:%s} 秒觸發一次。",
		["zh-cn"] = "你或"..CKWord("协同", "Coherency_rgb_zh_cn").." 盟友受到"..CKWord("生命", "Health_rgb_zh_cn").." "..CKWord("伤害", "Damage_rgb_zh_cn").." 时，{duration:%s} 秒内获得：\n"
			..Dot_green.." {damage_reduction:%s} 伤害抗性。\n"
			.."\n"
			..Dot_nc.." 每 {cooldown:%s} 秒触发一次。",
	},
	--[+ Passive 19 - Unseen Blade +]--	27.03.2026
	["loc_talent_zealot_damage_vs_nonthreat_desc"] = { -- damage: +15%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs Enemies not targeting you.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против врагов, которые не атакуют вас.", -- руоф Невидимый клинок
		["zh-tw"] = Dot_green.." 對未以你為目標的敵人造成 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {damage:%s} 对未锁定你的敌人"..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ Passive 20 - Out of Pocket +]--	27.03.2026
	["loc_talent_zealot_reload_from_backstab_desc"] = { -- ammo: +5%, stacks: 5
		en = "Melee Backstab Kills replenish {ammo:%s} of your Missing Ammo from your Reserve when swapping to your Ranged Weapon.\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = "Убийства в спину восстанавливают {ammo:%s} недостающих патронов из вашего резерва при переключении на дальнобойное оружие.\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.", -- руоф За свой счет
		["zh-tw"] = "切換至遠程武器時，近戰背刺擊殺會從備用彈藥補充已缺少彈藥的 {ammo:%s}。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。",
		["zh-cn"] = "近战背刺击杀将备用弹药补充 {ammo:%s} 缺少的弹药，切换远程武器时触发。\n"
			..Dot_nc.." 最多 {stacks:%s} 层。",
	},
	--[+ Passive 21 - Faithful Frenzy +]--	27.03.2026
	["loc_talent_zealot_attack_speed_desc"] = { -- attack_speed: +10%
		en = Dot_green.." {attack_speed:%s} Melee Attack Speed.",
		ru = Dot_green.." {attack_speed:%s} к скорости атаки ближнего боя.", -- Правоверное неистовство -- руоф Верное безумие
		-- fr = "{attack_speed:%s} Vitesse d'attaque en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_30_rgb_fr,
		["zh-tw"] = Dot_green.." {attack_speed:%s} 近戰攻擊速度。",
		["zh-cn"] = Dot_green.." {attack_speed:%s} 近战攻击速度。",
	},
	--[+ Passive 22 - Providence +]--	27.03.2026
	["loc_talent_zealot_revive_speed_desc"] = { -- revive_speed: +25%, duration: 5, movement_speed: +10%, tdr: 15%
		en = Dot_green.." {revive_speed:%s} Revive Speed.\n"
			.."\n"
			.."Allies you Assist or Revive get for {duration:%s} seconds:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed and\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".",
		ru = Dot_green.." {revive_speed:%s} к скорости оживления.\n"
			.."\n"
			.."Союзники, которых вы поднимаете или оживляете, получают на {duration:%s} секунд:\n"
			..Dot_green.." {movement_speed:%s} к скорости движения и\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".", -- Правоверное неистовство -- руоф Верное безумие
		-- fr = "{attack_speed:%s} Vitesse d'attaque en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_30_rgb_fr,
		["zh-tw"] = Dot_green.." {revive_speed:%s} 復活速度。\n"
			.."\n"
			.."你救助或復活的盟友 {duration:%s} 秒內獲得：\n"
			..Dot_green.." {movement_speed:%s} 移動速度，並\n"
			..Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {revive_speed:%s} 救援速度。\n"
			.."\n"
			.."你救助或救援的盟友 {duration:%s} 秒内获得：\n"
			..Dot_green.." {movement_speed:%s} 移动速度 和\n"
			..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。",
	},
	--[+ Passive 23 - Good Balance +]--	27.03.2026
	["loc_talent_reduced_damage_after_dodge_description"] = { -- damage: +25%, duration: 2.5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." Reduction for {duration:%s} seconds after a successful Dodge.",
		ru = Dot_green.." {damage:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд после успешного уклонения.", -- Хороший баланс -- руоф Разумный баланс
		-- fr = "{damage:%s} Réduction des "..CKWord("Dégâts", "Damage_rgb_fr").." pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_22_rgb_fr,
		["zh-tw"] = Dot_green.." 成功閃避後 {duration:%s} 秒內，{damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."減免。",
		["zh-cn"] = Dot_green.." 成功闪避后 {duration:%s} 秒内，{damage:%s} 伤害减免。",
	},
	--[+ Passive 24 - Impassible +]--	27.03.2026
	["loc_talent_zealot_block_dodging_desc"] = { -- linger_time: 2, block_cost: +50%, cooldown: 8, dodges: 3, s->seconds, +colors
		en = "While Dodging and for {linger_time:%s} seconds afterwards you gain:\n"
			..Dot_green.." {block_cost:%s} Block Cost Reduction.\n"
			..Dot_nc.." Internal Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Perfect Blocking an Attack restores {dodges:%s} Dodges.",
		ru = "Во время уклонения и на {linger_time:%s} секунды после вы получаете:\n" -- руоф Бесстрастный
			..Dot_green.." {block_cost:%s} к снижению стоимости блокирования.\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_green.." Идеальный блок атаки восстанавливает {dodges:%s} уклонения.",
		["zh-tw"] = "閃避期間和後續 {linger_time:%s} 秒內獲得：\n"
			..Dot_green.." {block_cost:%s} 格擋消耗減少。\n"
			..Dot_nc.." 內部冷卻：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_green.." 完美格擋攻擊恢復 {dodges:%s} 次閃避。",
		["zh-cn"] = "闪避期间和后续 {linger_time:%s} 秒内获得：\n"
			..Dot_green.." {block_cost:%s} 格挡消耗减少。\n"
			..Dot_nc.." 内部冷却：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_green.." 完美格挡攻击恢复 {dodges:%s} 次闪避。",
	},
	--[+ Passive 25 - Retaliatory Defence +]--	27.03.2026
	["loc_talent_zealot_stamina_on_block_break_alt_desc"] = { -- stamina: 50%, cooldown: 12, s->seconds, +colors
		en = "On Block Break, you are no longer "..CKWord("Stunned", "Stunned_rgb").." and instead restore {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "При пробивании блока вы не "..CKWord("оглушаетесь", "oglushaetes_rgb_ru")..", а вместо этого восстанавливаете {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n" -- руоф Активная оборона
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
		["zh-tw"] = "格擋被擊破時不再"..CKWord("眩暈", "Stunned_rgb_tw").."，改為恢復 {stamina:%s} "..CKWord("耐力", "Stamina_rgb_tw").."。\n"
			..Dot_nc.." 冷卻：{cooldown:%s} 秒。",
		["zh-cn"] = "格挡被穿透时不再"..CKWord("眩晕", "Stun_rgb_zh_cn").."，改为恢复 {stamina:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").."。\n"
			..Dot_nc.." 冷却：{cooldown:%s} 秒。",
	},
	--[+ Passive 25 - Abolish Blasphemers +]--	27.03.2026
	["loc_talent_zealot_damage_vs_elites_desc"] = { -- damage: +15%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs Elites.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против элитных врагов.", -- руоф Ликвидируй богохульников
		["zh-tw"] = Dot_green.." 對精英敵人造成 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。",
		["zh-cn"] = Dot_green.." {damage:%s} 对精英敌人"..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ Passive 26 - The Master's Retribution +]--	27.03.2026
	["loc_talent_zealot_3_tier_3_ability_1_description"] = { -- cooldown: 8, s->seconds
		en = "Knock back the Attacker on taking a Melee Hit.\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "При получении удара в ближнем бою вы отбрасываете атакующего врага.\n" -- Возмездие Владыки
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
		-- fr = "Repousse l'attaquant après avoir reçu un coup de mêlée. Temps de recharge : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_32_rgb_fr,
		["zh-tw"] = "受到近戰攻擊時擊退攻擊者。\n"
			..Dot_nc.." 冷卻：{cooldown:%s} 秒。",
		["zh-cn"] = "受到近战攻击时打飞攻击者。\n"
			..Dot_nc.." 冷却：{cooldown:%s} 秒。",
	},
	--[+ Passive 27 - Dance of Death +]--	27.03.2026
	["loc_talent_zealot_improved_spread_post_dodge_desc"] = { -- spread: -75%, recoil: -50%, duration: 3, s->seconds, +colors
		en = "On successful Dodge you gain for {duration:%s} seconds:\n"
			..Dot_green.." {spread:%s} Spread and\n"
			..Dot_green.." {recoil:%s} Recoil.",
		ru = "При успешном уклонении вы получаете на {duration:%s} секунд:\n" -- Танец смерти
			..Dot_green.." {spread:%s} к снижению разброса и\n"
			..Dot_green.." {recoil:%s} к снижению отдачи.",
		-- fr = "{spread:%s} de dispersion et {recoil:%s} de recul pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_16_rgb_fr,
		["zh-tw"] = "成功閃避後 {duration:%s} 秒內獲得：\n"
			..Dot_green.." {spread:%s} 散布，並\n"
			..Dot_green.." {recoil:%s} 後座力。",
		["zh-cn"] = "成功闪避后 {duration:%s} 秒内获得：\n"
			..Dot_green.." {spread:%s} 散布 和\n"
			..Dot_green.." {recoil:%s} 后坐力。",
	},
	--[+ Passive 28 - Grievous Wounds +]--	27.03.2026
	["loc_talent_zealot_increased_stagger_on_weakspot_melee_description"] = { -- impact_modifier: +50%, +colors
		en = Dot_green.." {impact_modifier:%s} "..CKWord("Stagger", "Stagger_rgb").." on Melee "..CKWord("Weakspot Hits", "Weakspothits_rgb")..".",
		ru = Dot_green.." {impact_modifier:%s} к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." при попаданиях в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою.", -- Тяжёлые раны -- руоф Опасные раны
		-- fr = "{impact_modifier:%s} de "..CKWord("Étourdissement", "Stagger_rgb_fr").." sur les attaques de mêlée sur "..CKWord("Coups aux points faibles", "Weakspothits_rgb_fr").."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_27_rgb_fr,
		["zh-tw"] = Dot_green.." 近戰"..CKWord("弱點命中", "Weakspothits_rgb_tw").."時，{impact_modifier:%s} "..CKWord("踉蹌", "Stagger_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 近战"..CKWord("弱点", "Weakspot_rgb_zh_cn").." 命中 {impact_modifier:%s} "..CKWord("踉跄", "Stagger_rgb_zh_cn").."。",
	},
	--[+ Passive 29 - Scourge +]--	27.03.2026
	["loc_talent_zealot_bleed_melee_crit_chance_desc"] = { -- crit_chance: +10%, duration: 3, max_stacks: 3, s->seconds, +colors
		en = "Melee "..CKWord("Critical Hits", "Crit_hits_rgb").." apply "..CKWord("Bleed", "Bleed_rgb")..", causing "..CKWord("Damage", "Damage_rgb").." over time. Up to "..CNumb("16", "n_16_rgb").." Max "..CKWord("Bleed", "Bleed_rgb").." Stacks on a target.\n"
			.."\n"
			.."Melee Hits on "..CKWord("Bleeding", "Bleeding_rgb").." Enemies grant for {duration:%s} seconds:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb")..".\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.",
		ru = CKWord("Критические удары", "Krit_udary_rgb_ru").." в ближнем бою накладывают "..CKWord("кровотечение", "krovotechenie_rgb_ru")..", наносящее "..CKWord("урон", "uron_rgb_ru").." со временем. До максимум "..CNumb("16", "n_16_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." на цели.\n"
			.."\n"
			.."Удары ближнего боя по врагам с "..CKWord("кровотечением", "krovotecheniem_rgb_ru").." дают на {duration:%s} секунды:\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.", -- Бичевание -- руоф Бич
		-- fr = "Les coups "..CKWord("Critiques", "Crit_hits_rgb_fr").." en mêlée appliquent "..CKWord("Saignement", "Bleed_rgb_fr")..", causant des "..CKWord("Dégâts", "Damage_rgb_fr").." au fil du temps.\nLes coups en mêlée sur les ennemis qui "..CKWord("Saignent", "Bleeding_rgb_fr").." octroient {crit_chance:%s} "..CKWord("Chances de coup critique", "Crit_chance_rgb_fr").." pendant {duration:%s} secondes. Se cumule jusqu'à {max_stacks:%s} fois. Jusqu'à "..CNumb("16", "n_16_rgb").." cumuls de saignement max sur une cible."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_4_rgb_fr,
		["zh-tw"] = "近戰"..CKWord("暴擊", "Crit_hits_rgb_tw").."會施加"..CKWord("流血", "Bleed_rgb_tw").."，造成持續"..CKWord("傷害", "Damage_rgb_tw").."。每個目標最多 "..CNumb("16", "n_16_rgb").." 層"..CKWord("流血", "Bleed_rgb_tw").."。\n"
			.."\n"
			.."近戰命中"..CKWord("流血中", "Bleeding_rgb_tw").."敵人時，{duration:%s} 秒內獲得：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("爆擊率", "Crit_chance_rgb_tw").."。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。",
		["zh-cn"] = "近战"..CKWord("暴击", "Crit_hit_rgb_zh_cn").." 施加"..CKWord("流血", "Bleed_rgb_zh_cn").."，造成持续"..CKWord("伤害", "Damage_rgb_zh_cn").."。每个目标最多 "..CNumb("16", "n_16_rgb").." 层。\n"
			.."\n"
			.."近战命中"..CKWord("流血中", "Bleeding_rgb_zh_cn").." 敌人时 {duration:%s} 秒内获得：\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 层。",
	},
	--[+ Passive 30 - Enduring Faith +]--	27.03.2026
	["loc_talent_zealot_toughness_melee_effectiveness_desc"] = { -- toughness_damage_reduction: +50%, time: 4, s->seconds, +colors
		en = Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for {time:%s} seconds on "..CKWord("Critical Hit", "Crit_hit_rgb")..".",
		ru = Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." на {time:%s} секунды при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..".", -- Непоколебимая вера
		-- fr = "{toughness_damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." pendant {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_14_rgb_fr,
		["zh-tw"] = Dot_green.." "..CKWord("致命一擊", "Crit_hit_rgb_tw").."時，{time:%s} 秒內獲得 {toughness_damage_reduction:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。",
		["zh-cn"] = Dot_green.." "..CKWord("暴击", "Crit_hit_rgb_zh_cn").." 时 {time:%s} 秒内，{toughness_damage_reduction:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。",
	},
	--[+ Passive 31 - Punish Impiety +]--	27.03.2026
	["loc_talent_zealot_push_attacks_attack_speed_desc"] = { -- attack_speed: +10%, duration: 5, s->seconds
		en = Dot_green.." {attack_speed:%s} Melee Attack Speed for {duration:%s} seconds on push followup attacks.",
		ru = Dot_green.." {attack_speed:%s} к скорости атаки ближнего боя на {duration:%s} секунд при атаках после отталкивания.", -- руоф Карай нечестивых
		["zh-tw"] = Dot_green.." 推擊後續攻擊時，{duration:%s} 秒內獲得 {attack_speed:%s} 近戰攻擊速度。",
		["zh-cn"] = Dot_green.." 推击后继攻击 {duration:%s} 秒内，{attack_speed:%s} 近战攻击速度。",
	},
	--[+ Passive 32 - Bleed for the Emperor +]--	27.03.2026
	["loc_talent_zealot_3_tier_3_ability_2_description"] = { -- damage_reduction: 40%, +colors
		en = Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." that would take your "..CKWord("Health", "Health_rgb").." to the next "..CKWord("Wound", "Wound_rgb")..".",
		ru = Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} к "..CKWord("урону", "uronu_rgb_ru")..", который привёл бы к потере "..CKWord("здоровья", "zdorovia_rgb_ru").." до следующей "..CKWord("раны", "rany_rgb_ru")..".", -- Кровь за Императора -- руоф Кровь во имя Императора
		-- fr = "Les "..CKWord("Dégâts", "Damage_rgb_fr").." qui réduirait votre "..CKWord("Santé", "Health_rgb_fr").." à la prochaine "..CKWord("Blessure", "Wound_rgb_fr").." sont réduit de {damage_reduction:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_9_rgb_fr,
		["zh-tw"] = Dot_green.." 會使你的"..CKWord("生命值", "Health_rgb_tw").."進入下一個"..CKWord("傷痕", "Wound_rgb_tw").."區段的"..CKWord("傷害", "Damage_rgb_tw").." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s}。",
		["zh-cn"] = Dot_green.." "..CNumb("-", "n_minus_rgb").." {damage_reduction:%s} 将你"..CKWord("生命", "Health_rgb_zh_cn").." 减至下一个"..CKWord("伤痕", "Wound_rgb_zh_cn").." 的"..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ Passive 33 - Time to Kill +]--	27.03.2026
	["loc_talent_zealot_backstab_periodic_damage_desc"] = { -- damage: +50%, cooldown: 8, +colors
		en = Dot_green.." {damage:%s} Melee Backstab "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." при ударе в спину в ближнем бою.\n" -- руоф Время убивать
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
		["zh-tw"] = Dot_green.." {damage:%s} 近戰背刺"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 冷卻：{cooldown:%s} 秒。",
		["zh-cn"] = Dot_green.." {damage:%s} 近战背刺"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 冷却：{cooldown:%s} 秒。",
	},
	--[+ Passive 34 - Hubris +]--	27.03.2026
	["loc_talent_zealot_weakspot_damage_reduction_desc"] = { -- damage_resistance: +15%, duration: 4, +colors
		en = Dot_green.." {damage_resistance:%s} "..CKWord("Damage", "Damage_rgb").." Resistance after "..CKWord("Weakspot", "Weakspot_rgb").." Kill.\n"
			..Dot_nc.." Lasts: {duration:%s} seconds.",
		ru = Dot_green.." {damage_resistance:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." после убийства в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n" -- руоф Гордыня
			..Dot_nc.." Длится: {duration:%s} секунд.",
		["zh-tw"] = Dot_green.." "..CKWord("弱點", "Weakspot_rgb_tw").."擊殺後 {duration:%s} 秒內，{damage_resistance:%s} "..CKWord("傷害", "Damage_rgb_tw").."抗性。",
		["zh-cn"] = Dot_green.." "..CKWord("弱点", "Weakspot_rgb_zh_cn").." 击杀后 {duration:%s} 秒内，{damage_resistance:%s} 伤害抗性。",
	},
	--[+ Passive 35 - Blinded by Blood +]--	27.03.2026
	["loc_talent_zealot_bled_enemies_take_more_damage_desc"] = { -- damage_taken: +15%, duration: 5, +colors
		en = "Attacks that apply "..CKWord("Bleed", "Bleed_rgb").." also debuff enemy for {duration:%s} seconds:\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Taken.",
		ru = "Атаки, накладывающие "..CKWord("кровотечение", "krovotechenie_rgb_ru").." на врага, также ослабляют его на {duration:%s} секунд:\n" -- руоф Ослеплённый кровью
			..Dot_green.." {damage_taken:%s} к получаемому "..CKWord("урону", "uronu_rgb_ru")..".",
		["zh-tw"] = "施加"..CKWord("流血", "Bleed_rgb_tw").."的攻擊也會對敵人施加 {duration:%s} 秒減益：\n"
			..Dot_green.." 受到的"..CKWord("傷害", "Damage_rgb_tw").."增加 {damage_taken:%s}。",
		["zh-cn"] = "施加"..CKWord("流血", "Bleed_rgb_zh_cn").." 的攻击同时对敌人施加 {duration:%s} 秒减益：\n"
			..Dot_green.." {damage_taken:%s} 受到"..CKWord("伤害", "Damage_rgb_zh_cn").." 增加。",
	},
	--[+ Passive 36 - Prime Target +]--	27.03.2026
	["loc_talent_zealot_elite_kills_empowers_desc"] = { -- damage: 10%, toughness: 15%, duration: 5, +colors
		en = "After Elite Kill you gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.",
		ru = "После убийства элитного врага вы получаете:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение {duration:%s} секунд.", -- Главная цель -- руоф Первостепенная цель
		["zh-tw"] = "擊殺精英敵人後獲得：\n"
			..Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，並\n"
			..Dot_green.." 在 {duration:%s} 秒內恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = "击杀精英敌人后获得：\n"
			..Dot_green.." {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").." 和\n"
			..Dot_green.." {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").." 在 {duration:%s} 秒内恢复。",
	},
	--[+ Passive 37 - No Respite +]--	27.03.2026
	["loc_talent_zealot_melee_crits_restore_stamina_desc"] = { -- stamina: 10%, cooldown: 1, +colors
		en = Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." replenished on Melee "..CKWord("Critical Hit", "Crit_hit_rgb")..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." восстанавливается при "..CKWord("критическом ударе", "krit_udare_rgb_ru").." в ближнем бою.\n" -- Без передышки
			..Dot_nc.." Восстановление: {cooldown:%s} секунда.",
		["zh-tw"] = Dot_green.." 近戰"..CKWord("致命一擊", "Crit_hit_rgb_tw").."時恢復 {stamina:%s} "..CKWord("耐力", "Stamina_rgb_tw").."。\n"
			..Dot_nc.." 冷卻：{cooldown:%s} 秒。",
		["zh-cn"] = Dot_green.." 近战"..CKWord("暴击", "Crit_hit_rgb_zh_cn").." 恢复 {stamina:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").."。\n"
			..Dot_nc.." 冷却：{cooldown:%s} 秒。",
	},
	--[+ Passive 38 - Unfaltering +]--	27.03.2026
	["loc_talent_zealot_uninterruptible_no_slow_heavies_desc"] = {
		en = Dot_green.." Become Uninterruptible while charging Melee Attacks.\n"
			.."\n"
			..Dot_green.." Remove Heavy Melee Attack Movement Speed penalties.",
		ru = Dot_green.." Вы становитесь Непрерываемым во время заряжания атак ближнего боя.\n" -- руоф Непреклонный
			.."\n"
			..Dot_green.." Убираются штрафы к скорости движения при тяжёлых атаках ближнего боя.",
		["zh-tw"] = Dot_green.." 蓄力近戰攻擊期間獲得不可中斷狀態。\n"
			.."\n"
			..Dot_green.." 移除近戰重攻擊的移動速度懲罰。",
		["zh-cn"] = Dot_green.." 近战攻击蓄力期间获得不可中断状态。\n"
			.."\n"
			..Dot_green.." 移除重型近战攻击的移动速度惩罚。",
	},
	--[+ Passive 39 - Faith's Fortitude +]--	27.03.2026
	["loc_talent_zealot_3_tier_1_ability_3_description"] = { -- health_segment: +2
		en = "{health_segment:%s} "..CKWord("Wounds", "Wounds_rgb")..".",
		ru = "{health_segment:%s} "..CKWord("раны", "rany_rgb_ru")..".", -- Стойкость веры
		-- fr = "{health_segment:%s} "..CKWord("Blessures", "Wounds_rgb_fr").."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_33_rgb_fr,
		["zh-tw"] = "{health_segment:%s} "..CKWord("傷痕", "Wounds_rgb_tw").."。",
		["zh-cn"] = "{health_segment:%s} "..CKWord("伤痕", "Wound_rgb_zh_cn").."。",
	},
	--[+ Passive 40 - Restoring Faith +]--	27.03.2026
	["loc_talent_zealot_heal_damage_taken_desc"] = { -- damage_reduction: 20%, time: 4, s->seconds, +colors
		en = "On taking "..CKWord("Health", "Health_rgb").." "..CKWord("Damage", "Damage_rgb")..", heal {damage_reduction:%s} of that "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Occurs over {time:%s} seconds.",
		ru = "При получении "..CKWord("урона", "urona_rgb_ru").." "..CKWord("здоровью", "zdoroviu_rgb_ru")..", вы восстановите {damage_reduction:%s} от этого "..CKWord("урона", "urona_rgb_ru").." в виде "..CKWord("здоровья", "zdorovia_rgb_ru").." в течение {time:%s} секунд.", -- Восстановление веры
		-- fr = "Lorsque vous subissez des "..CKWord("Dégâts", "Damage_rgb_fr")..", récuperez de la "..CKWord("Santé", "Health_rgb_fr").." à hauteur de {damage_reduction:%s} de ces "..CKWord("Dégâts", "Damage_rgb_fr")..". Se produit sur {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_12_rgb_fr,
		["zh-tw"] = "受到"..CKWord("生命值", "Health_rgb_tw").." "..CKWord("傷害", "Damage_rgb_tw").."時，會在 {time:%s} 秒內恢復相當於該次"..CKWord("傷害", "Damage_rgb_tw").." {damage_reduction:%s} 的生命值。",
		["zh-cn"] = "受到"..CKWord("生命", "Health_rgb_zh_cn").." "..CKWord("伤害", "Damage_rgb_zh_cn").." 时，{time:%s} 秒内治愈 {damage_reduction:%s} 该"..CKWord("伤害", "Damage_rgb_zh_cn").."。",
	},
	--[+ Passive 41 - Behind the Lines +]--	27.03.2026
	["loc_talent_zealot_suppress_on_backstab_kill_desc"] = { -- range: 8, cooldown: 5
		en = "Heavy Melee Backstab Kills suppress enemies within {range:%s} meters.\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "Убийства тяжёлой атакой в спину подавляют врагов в радиусе {range:%s} метров.\n" -- руоф В тылу врага
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
		["zh-tw"] = "以近戰重攻擊背刺擊殺時，會壓制 {range:%s} 公尺內的敵人。\n"
			..Dot_nc.." 冷卻：{cooldown:%s} 秒。",
		["zh-cn"] = "重型近战背刺击杀压制 {range:%s} 米内敌人。\n"
			..Dot_nc.." 冷却：{cooldown:%s} 秒。",
	},
	--[+ Passive 42 - Relentless Fervor +]--	27.03.2026
	["loc_talent_zealot_sprint_improvements_alt_desc"] = { -- sprint_speed: +10%, sprint_cost: -10%, duration: 1
		en = Dot_green.." {sprint_speed:%s} Sprint Speed and\n"
			..Dot_green.." {sprint_cost:%s} Sprint Cost.\n"
			.."\n"
			.."Sprinting for {duration:%s} second grants:\n"
			..Dot_green.." Slowdown Immunity.",
		ru = Dot_green.." {sprint_speed:%s} к скорости бега и\n" -- Безжалостная страсть
			..Dot_green.." {sprint_cost:%s} к стоимости бега.\n"
			.."\n"
			.."Бег в течение {duration:%s} секунды даёт:\n"
			..Dot_green.." Иммунитет к замедлению.",
		["zh-tw"] = Dot_green.." {sprint_speed:%s} 衝刺速度，並\n"
			..Dot_green.." {sprint_cost:%s} 衝刺體力消耗。\n"
			.."\n"
			.."衝刺 {duration:%s} 秒後獲得：\n"
			..Dot_green.." 免疫緩速。",
		["zh-cn"] = Dot_green.." {sprint_speed:%s} 冲刺速度 和\n"
			..Dot_green.." {sprint_cost:%s} 冲刺消耗。\n"
			.."\n"
			.."冲刺 {duration:%s} 秒后获得：\n"
			..Dot_green.." 免疫减速。",
	},
	--[+ Passive 43 - Riposte +]--	27.03.2026
	["loc_talent_zealot_stacking_melee_damage_after_dodge_desc"] = { -- damage: +5%, stacks: 3, duration: 8
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." after Successful Dodge.\n"
			..Dot_nc.." Stacking: {stacks:%s} times.\n"
			..Dot_nc.." Lasts: {duration:%s} seconds.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." после успешного уклонения.\n" -- Ответный удар
			..Dot_nc.." Суммируется: до {stacks:%s} раз.\n"
			..Dot_nc.." Длится: {duration:%s} секунд.",
		["zh-tw"] = Dot_green.." 成功閃避後 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 疊加：最多 {stacks:%s} 層。\n"
			..Dot_nc.." 持續：{duration:%s} 秒。",
		["zh-cn"] = Dot_green.." 成功闪避后 {damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 叠加：最多 {stacks:%s} 层。\n"
			..Dot_nc.." 持续：{duration:%s} 秒。",
	},
}

-- Creating templates -- Создаём шаблоны
local zealot_templates = {}

for loc_key, locales in pairs(zealot_localizations) do
	for locale, text in pairs(locales) do
		table.insert(zealot_templates, create_template(
			"zealot_" .. loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

return zealot_templates
