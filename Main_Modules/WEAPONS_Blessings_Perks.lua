---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

-- USING CACHED UTILITIES - ИСПОЛЬЗУЕМ КЭШИРОВАННЫЕ УТИЛИТЫ
local Utils = mod.get_utils()

-- IMPORTING ALL NECESSARY FUNCTIONS AND CONSTANTS - ИМПОРТ ВСЕХ НУЖНЫХ ФУНКЦИЙ И КОНСТАНТ
local create_template = Utils.create_template
local loc_text = Utils.loc_text
local CKWord = Utils.CKWord
local CNumb = Utils.CNumb
local CPhrs = Utils.CPhrs
local CNote = Utils.CNote
local Dot_nc = Utils.DOT_NC or "•"
local Dot_red = Utils.DOT_RED or "•"
local Dot_green = Utils.DOT_GREEN or "•"

-- Main localization data - Основные данные локализации
local weapon_localizations = {
	-- TEMPLATE
		-- ["loc_code"] = {
			-- en = "",
			-- ru = "",
			-- fr = "",
			-- ["zh-tw"] = "",
			-- ["zh-cn"] = "",
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		-- },

--[+ ++WEAPON - PERKS - 武器专长++ +]--
	--[+ MELEE - 近戰武器 - 近战武器 +]--
		--[+ +DAMAGE VS FLAK +]--	20.04.2026
		["loc_trait_melee_common_wield_increased_armored_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Flak Armoured Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." по противоосколочной броне",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies en armure légère",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 防彈護甲的敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（防弹装甲敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Gegner mit Flak-Rüstung",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici con Armatura Flak",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs フラック装甲の敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 플랙 아머 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Wrogowie w zbroi przeciwodłamkowej",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos com Armadura Flak",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos con Armadura Flak",
		},
		--[+ +DAMAGE VS MANIACS +]--	20.04.2026
		["loc_trait_melee_common_wield_increased_berserker_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Maniacs",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." маньякам",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Maniaques",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 狂熱者",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（狂人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Maniacs",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Maniaci",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs マニアック",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 광신자",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Maniacy",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Maníacos",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Maníacos",
		},
		--[+ +DAMAGE VS INFESTED +]--	20.04.2026
		["loc_trait_melee_common_wield_increased_disgustingly_resilient_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Infested Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." заражённым",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies infestés",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 被感染的敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（感染敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Verseuchte Gegner",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici Infestati",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs 感染敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 감염된 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Zainfekowani Wrogowie",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos Infestados",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos Infestados",
		},
		--[+ +DAMAGE VS UNYIELDING +]--	20.04.2026
		["loc_trait_melee_common_wield_increased_resistant_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Unyielding Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." несгибаемым",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies implacables",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 不屈的敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（不屈敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Unnachgiebige Gegner",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici Incrollabili",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs 不屈の敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 굴하지 않는 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Nieugięci Wrogowie",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos Inabaláveis",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos Inquebrantables",
		},
		--[+ +DAMAGE VS CARAPACE +]--	20.04.2026
		["loc_trait_melee_common_wield_increased_super_armor_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Carapace Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." по панцирной броне",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies en armure carapace",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 甲殼護甲的敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（硬壳装甲敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Gegner mit Carapax-Rüstung",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici con Armatura Carapace",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs カラペース装甲の敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 카라페이스 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Wrogowie w zbroi karapaksowej",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos com Armadura Carapaça",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos con Armadura Caparazón",
		},
		--[+ +DAMAGE VS UNARMOURED +]--	20.04.2026
		["loc_trait_melee_common_wield_increased_unarmored_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Unarmoured Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам без брони",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies sans armure",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 無護甲敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（无甲敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Ungepanzerte Gegner",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici Non Corazzati",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs 無防備な敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 무장하지 않은 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Nieopancerzeni Wrogowie",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos Desarmados",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos Sin Armadura",
		},
		--[+ +CRIT CHANCE +]--	20.04.2026
		["loc_trait_melee_common_wield_increase_critical_hit_chance_desc"] = { -- crit_chance: +5%
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Melee "..CKWord("Critical Chance", "Crit_chance_rgb"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru"),
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." en Mélée",
			["zh-tw"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("近戰暴擊機率", "Crit_m_chance_rgb_tw"),
			["zh-cn"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn"),
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." Nahkampf-"..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de"),
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." in Corpo a Corpo",
			ja = CNumb("{crit_chance:%s}", "crit_var_rgb").." 近接"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja"),
			ko = CNumb("{crit_chance:%s}", "crit_var_rgb").." 근접 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko"),
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." w Walce Wręcz",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." em Corpo a Corpo",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." en Cuerpo a Cuerpo",
		},
		--[+ +CRIT DAMAGE +]--	20.04.2026
		["loc_trait_melee_common_wield_wield_increase_critical_strike_damage_desc"] = { -- crit_damage: +10%
			en = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." Melee "..CKWord("Critical Strike Damage", "Crt_strk_dmg_rgb"),
			ru = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." к "..CKWord("урону критического удара", "krit_udara_uron_rgb_ru"),
			fr = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Dégâts de coup critique", "Crt_hit_col_rgb_fr").." de Mélée",
			["zh-tw"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("近戰暴擊傷害", "Crit_hit_m_dmg_rgb_tw"),
			["zh-cn"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 近战"..CKWord("暴击伤害", "Crt_hit_col_rgb_zh_cn"),
			de = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." Nahkampf-"..CKWord("Kritischer Trefferschaden", "Crt_strk_dmg_rgb_de"),
			it = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Danno da colpo critico", "Crt_strk_dmg_rgb_it").." in Corpo a Corpo",
			ja = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 近接"..CKWord("クリティカルストライクダメージ", "Crt_strk_dmg_rgb_ja"),
			ko = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 근접 "..CKWord("크리티컬 스트라이크 피해", "Crt_strk_dmg_rgb_ko"),
			pl = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Obrażenia krytycznego ataku", "Crt_strk_dmg_rgb_pl").." w Walce Wręcz",
			["pt-br"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Dano de golpe crítico", "Crt_strk_dmg_rgb_pt_br").." em Corpo a Corpo",
			es = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Daño de golpe crítico", "Crt_strk_dmg_rgb_es").." en Cuerpo a Cuerpo",
		},
		--[+ +DAMAGE VS GROANERS AND POXWALKERS +]--	20.04.2026
		["loc_trait_melee_common_wield_increase_horde_enemy_damage_desc"] = { -- damage: +10%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Melee "..CKWord("Damage", "Damage_rgb").." vs Groaners and Poxwalkers",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." ворчунам и чумным ходокам в ближнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Grogneurs et Scrofuleux",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 呻吟者和瘟疫行者",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("伤害", "Damage_rgb_zh_cn").."（呻吟者、瘟疫行者）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." Nahkampf-"..CKWord("Schaden", "Damage_rgb_de").." gegen Stöhner und Poxwalker",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." in Corpo a Corpo vs Gemitori e Poxwalker",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." 近接"..CKWord("ダメージ", "Damage_rgb_ja").." vs グローナーとポックスウォーカー",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." 근접 "..CKWord("피해", "Damage_rgb_ko").." vs 신음병사와 역병 걸음이",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." w Walce Wręcz vs Stękańców i Zarazowców",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." em Corpo a Corpo vs Gemidos e Pestilentos",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." en Cuerpo a Cuerpo vs Gemidores y Pestilentes",
		},
		--[+ +DAMAGE VS ELITES +]--	20.04.2026
		["loc_trait_melee_common_wield_increase_elite_enemy_damage_desc"] = { -- damage: +10%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Melee "..CKWord("Damage", "Damage_rgb").." vs Elites",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." элитным врагам в ближнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Élites",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 精英",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("伤害", "Damage_rgb_zh_cn").."（精英）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." Nahkampf-"..CKWord("Schaden", "Damage_rgb_de").." gegen Eliten",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." in Corpo a Corpo vs Élite",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." 近接"..CKWord("ダメージ", "Damage_rgb_ja").." vs エリート",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." 근접 "..CKWord("피해", "Damage_rgb_ko").." vs 엘리트",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." w Walce Wręcz vs Elity",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." em Corpo a Corpo vs Élites",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." en Cuerpo a Cuerpo vs Élites",
		},
		--[+ +DAMAGE VS SPECIALISTS +]--	20.04.2026
		["loc_trait_melee_common_wield_increase_special_enemy_damage_desc"] = { -- damage: +10%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Melee "..CKWord("Damage", "Damage_rgb").." vs Specialists",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." специалистам в ближнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Spécialistes",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 專家",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("伤害", "Damage_rgb_zh_cn").."（专家）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." Nahkampf-"..CKWord("Schaden", "Damage_rgb_de").." gegen Spezialisten",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." in Corpo a Corpo vs Specialisti",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." 近接"..CKWord("ダメージ", "Damage_rgb_ja").." vs スペシャリスト",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." 근접 "..CKWord("피해", "Damage_rgb_ko").." vs 전문가",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." w Walce Wręcz vs Specjaliści",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." em Corpo a Corpo vs Especialistas",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." en Cuerpo a Cuerpo vs Especialistas",
		},
		--[+ +STAMINA +]--	20.04.2026
		["loc_trait_melee_common_wield_increase_stamina_desc"] = { -- stamina: +2
			en = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Stamina", "Stamina_rgb"),
			ru = CNumb("{stamina:%s}", "stam_var_rgb").." ячейки "..CKWord("выносливости", "vynoslivosti_rgb_ru"),
			fr = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Endurance", "Stamina_rgb_fr"),
			["zh-tw"] = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("耐力", "Stamina_rgb_tw"),
			["zh-cn"] = CNumb("{stamina:%s}", "stam_var_rgb").." 最大"..CKWord("体力", "Stamina_rgb_zh_cn"),
			de = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Ausdauer", "Stamina_rgb_de"),
			it = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Vigore", "Stamina_rgb_it"),
			ja = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("スタミナ", "Stamina_rgb_ja"),
			ko = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("스태미나", "Stamina_rgb_ko"),
			pl = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Wytrzymałość", "Stamina_rgb_pl"),
			["pt-br"] = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Vigor", "Stamina_rgb_pt_br"),
			es = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Aguante", "Stamina_rgb_es"),
		},
		--[+ +WEAKSPOT DAMAGE +]--	20.04.2026
		["loc_trait_melee_common_wield_increase_weakspot_damage_desc"] = { -- 
			en = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." Melee "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb"),
			ru = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." в ближнем бою",
			fr = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." en Mélée",
			["zh-tw"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("近戰弱點傷害", "Weakspot_m_dmg_rgb_tw"),
			["zh-cn"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." 近战"..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn"),
			de = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." Nahkampf-"..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de"),
			it = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it").." in Corpo a Corpo",
			ja = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." 近接"..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja"),
			ko = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." 근접 "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko"),
			pl = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Obrażenia w słaby punkt", "Weakspot_dmg_rgb_pl").." w Walce Wręcz",
			["pt-br"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br").." em Corpo a Corpo",
			es = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es").." en Cuerpo a Cuerpo",
		},
		--[+ +BLOCK EFFICIENCY +]--	20.04.2026
		["loc_trait_melee_common_wield_reduce_block_cost_desc"] = { -- 
			en = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." Block Efficiency",
			ru = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." к эффективности блока",
			fr = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." d'éfficacité de blocage",
			["zh-tw"] = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." 格擋效率",
			["zh-cn"] = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." 格挡效益",
			de = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." Block-Effizienz",
			it = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." Efficienza di Blocco",
			ja = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." ブロック効率",
			ko = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." 블록 효율",
			pl = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." Skuteczność Blokowania",
			["pt-br"] = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." Eficiência de Bloqueio",
			es = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." Eficiencia de Bloqueo",
		},
		--[+ -COST FOR SPRINTING +]--	20.04.2026
		["loc_gadget_sprint_cost_reduction_desc"] = { -- 
			en = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." "..CKWord("Stamina", "Stamina_rgb").." Cost Reduction for Sprinting",
			ru = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." к снижению затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на бег",
			fr = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." de réduction du coût d'"..CKWord("Endurance", "Stamina_rgb_fr").." de la course",
			["zh-tw"] = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." "..CKWord("衝刺效率", "Stamina_se_rgb_tw"),
			["zh-cn"] = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." 疾跑"..CKWord("体力", "Stamina_rgb_zh_cn").."效益",
			de = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." "..CKWord("Ausdauer", "Stamina_rgb_de").."-Kostenreduktion für Sprinten",
			it = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." Riduzione Costo "..CKWord("Vigore", "Stamina_rgb_it").." per Scatto",
			ja = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." "..CKWord("スタミナ", "Stamina_rgb_ja").."消費削減（スプリント時）",
			ko = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." "..CKWord("스태미나", "Stamina_rgb_ko").." 소모 감소（전력 질주）",
			pl = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." Redukcja Kosztu "..CKWord("Wytrzymałości", "Stamina_rgb_pl").." dla Szybkiego Biegu",
			["pt-br"] = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." Redução de Custo de "..CKWord("Vigor", "Stamina_rgb_pt_br").." para Corrida",
			es = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." Reducción de Coste de "..CKWord("Aguante", "Stamina_rgb_es").." para Esprintar",
		},

	--[+ RANGED - 遠程武器 - 远程武器 +]--
		--[+ +DAMAGE VS FLAK +]--	20.04.2026
		["loc_trait_ranged_common_wield_armored_damage_desc"] = { -- 
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Flak Armoured Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам в противоосколочной броне",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies en armure légère",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 防彈護甲的敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（防弹装甲敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Gegner mit Flak-Rüstung",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici con Armatura Flak",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs フラック装甲の敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 플랙 아머 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Wrogowie w zbroi przeciwodłamkowej",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos com Armadura Flak",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos con Armadura Flak",
		},
		--[+ +DAMAGE VS MANIACS +]--	20.04.2026
		["loc_trait_ranged_common_wield_berserker_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Maniacs",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." маньякам",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Maniaques",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 狂熱者",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（狂人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Maniacs",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Maniaci",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs マニアック",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 광신자",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Maniacy",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Maníacos",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Maníacos",
		},
		--[+ +DAMAGE VS INFESTED +]--	20.04.2026
		["loc_trait_ranged_common_wield_disgustinglyresilient_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Infested Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." заражённым врагам",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies infestés",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 被感染的敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（感染敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Verseuchte Gegner",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici Infestati",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs 感染敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 감염된 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Zainfekowani Wrogowie",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos Infestados",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos Infestados",
		},
		--[+ +DAMAGE VS UNYIELDING +]--	20.04.2026
		["loc_trait_ranged_common_wield_resistant_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Unyielding Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." несгибаемым врагам",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies implacables",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 不屈的敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（不屈敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Unnachgiebige Gegner",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici Incrollabili",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs 不屈の敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 굴하지 않는 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Nieugięci Wrogowie",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos Inabaláveis",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos Inquebrantables",
		},
		--[+ +DAMAGE VS CARAPACE +]--	20.04.2026
		["loc_trait_ranged_common_wield_superarmor_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Carapace Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам в панцирной броне",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies en armure carapace",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 甲殼護甲的敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（硬壳装甲敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Gegner mit Carapax-Rüstung",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici con Armatura Carapace",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs カラペース装甲の敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 카라페이스 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Wrogowie w zbroi karapaksowej",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos com Armadura Carapaça",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos con Armadura Caparazón",
		},
		--[+ +DAMAGE VS UNARMOURED +]--	20.04.2026
		["loc_trait_ranged_common_wield_unarmored_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Unarmoured Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам без брони",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies sans armure",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 無護甲敵人",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（无甲敌人）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Ungepanzerte Gegner",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." vs Nemici Non Corazzati",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs 無防備な敵",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs 무장하지 않은 적",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." vs Nieopancerzeni Wrogowie",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." vs Inimigos Desarmados",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." vs Enemigos Sin Armadura",
		},
		--[+ +CRIT CHANCE +]--	20.04.2026
		["loc_trait_ranged_common_wield_increase_crit_chance_desc"] = {
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Ranged "..CKWord("Critical Strike Chance", "Crt_chnc_r_rgb"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru"),
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crt_chnc_r_rgb_fr").." à Distance",
			["zh-tw"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("遠程暴擊機率", "Crit_r_chance_rgb_tw"),
			["zh-cn"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crt_chnc_r_rgb_zh_cn"),
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." Distanz-"..CKWord("Kritische Trefferchance", "Crt_chnc_r_rgb_de"),
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di colpo critico", "Crt_chnc_r_rgb_it").." a Distanza",
			ja = CNumb("{crit_chance:%s}", "crit_var_rgb").." 遠隔"..CKWord("クリティカルストライク発生率", "Crt_chnc_r_rgb_ja"),
			ko = CNumb("{crit_chance:%s}", "crit_var_rgb").." 원거리 "..CKWord("크리티컬 스트라이크 확률", "Crt_chnc_r_rgb_ko"),
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyczny atak", "Crt_chnc_r_rgb_pl").." na Dystans",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de golpe crítico", "Crt_chnc_r_rgb_pt_br").." à Distância",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de golpe crítico", "Crt_chnc_r_rgb_es").." a Distancia",
		},
		--[+ +CRIT DAMAGE +]--	20.04.2026
		["loc_trait_ranged_common_wield_wield_increase_critical_strike_damage_desc"] = {
			en = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." Ranged "..CKWord("Critical Strike Damage", "Crt_strk_dmg_rgb"),
			ru = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." к "..CKWord("урону критического выстрела", "krit_vystr_uron_rgb_ru"),
			fr = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Dégâts de coup critique", "Crt_strk_dmg_rgb_fr").." de Distance",
			["zh-tw"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("遠程暴擊傷害", "Crit_hit_r_dmg_rgb_tw"),
			["zh-cn"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 远程"..CKWord("暴击伤害", "Crt_strk_dmg_rgb_zh_cn"),
			de = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." Distanz-"..CKWord("Kritischer Trefferschaden", "Crt_strk_dmg_rgb_de"),
			it = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Danno da colpo critico", "Crt_strk_dmg_rgb_it").." a Distanza",
			ja = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 遠隔"..CKWord("クリティカルストライクダメージ", "Crt_strk_dmg_rgb_ja"),
			ko = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 원거리 "..CKWord("크리티컬 스트라이크 피해", "Crt_strk_dmg_rgb_ko"),
			pl = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Obrażenia krytycznego ataku", "Crt_strk_dmg_rgb_pl").." na Dystans",
			["pt-br"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Dano de golpe crítico", "Crt_strk_dmg_rgb_pt_br").." à Distância",
			es = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Daño de golpe crítico", "Crt_strk_dmg_rgb_es").." a Distancia",
		},
		--[+ +DAMAGE VS ELITES +]--	20.04.2026
		["loc_trait_ranged_common_wield_increase_elite_enemy_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Ranged "..CKWord("Damage", "Damage_rgb").." vs Elites",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." элите в дальнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Élites",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("遠程傷害", "Damage_r_rgb_tw").." vs 精英",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 远程"..CKWord("伤害", "Damage_rgb_zh_cn").."（精英）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." Distanz-"..CKWord("Schaden", "Damage_rgb_de").." gegen Eliten",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." a Distanza vs Élite",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." 遠隔"..CKWord("ダメージ", "Damage_rgb_ja").." vs エリート",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." 원거리 "..CKWord("피해", "Damage_rgb_ko").." vs 엘리트",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." na Dystans vs Elity",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." à Distância vs Élites",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." a Distancia vs Élites",
		},
		--[+ +DAMAGE VS GROANERS AND POXWALKERS +]--	20.04.2026
		["loc_trait_ranged_common_wield_increase_horde_enemy_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Ranged "..CKWord("Damage", "Damage_rgb").." vs Groaners and Poxwalkers",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." ворчунам и чумным ходокам в дальнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Grogneurs et Scrofuleux",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("遠程傷害", "Damage_r_rgb_tw").." vs 呻吟者和瘟疫行者",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 远程"..CKWord("伤害", "Damage_rgb_zh_cn").."（呻吟者、瘟疫行者）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." Distanz-"..CKWord("Schaden", "Damage_rgb_de").." gegen Stöhner und Poxwalker",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." a Distanza vs Gemitori e Poxwalker",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." 遠隔"..CKWord("ダメージ", "Damage_rgb_ja").." vs グローナーとポックスウォーカー",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." 원거리 "..CKWord("피해", "Damage_rgb_ko").." vs 신음병사와 역병 걸음이",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." na Dystans vs Stękańców i Zarazowców",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." à Distância vs Gemidos e Pestilentos",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." a Distancia vs Gemidores y Pestilentes",
		},
		--[+ +DAMAGE VS SPECIALISTS +]--	20.04.2026
		["loc_trait_ranged_common_wield_increase_special_enemy_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Ranged "..CKWord("Damage", "Damage_rgb").." vs Specialists",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." специалистам в дальнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Spécialistes",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("遠程傷害", "Damage_r_rgb_tw").." vs 專家",
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 远程"..CKWord("伤害", "Damage_rgb_zh_cn").."（专家）",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." Distanz-"..CKWord("Schaden", "Damage_rgb_de").." gegen Spezialisten",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." a Distanza vs Specialisti",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." 遠隔"..CKWord("ダメージ", "Damage_rgb_ja").." vs スペシャリスト",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." 원거리 "..CKWord("피해", "Damage_rgb_ko").." vs 전문가",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażenia", "Damage_rgb_pl").." na Dystans vs Specjaliści",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." à Distância vs Especialistas",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." a Distancia vs Especialistas",
		},
		--[+ +STAMINA +]--	20.04.2026
		["loc_trait_ranged_common_wield_increase_stamina_desc"] = {
			en = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Stamina", "Stamina_rgb").." when Weapon is Active",
			ru = CNumb("{stamina:%s}", "stam_var_rgb").." ячейки "..CKWord("выносливости", "vynoslivosti_rgb_ru").." с этим оружием в руках",
			fr = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Endurance", "Stamina_rgb_fr"),
			["zh-tw"] = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("耐力", "Stamina_rgb_tw").."（武器使用時）",
			["zh-cn"] = CNumb("{stamina:%s}", "stam_var_rgb").." 最大"..CKWord("体力", "Stamina_rgb_zh_cn").."（使用武器时）",
			de = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Ausdauer", "Stamina_rgb_de").." bei aktiver Waffe",
			it = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Vigore", "Stamina_rgb_it").." con Arma Attiva",
			ja = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("スタミナ", "Stamina_rgb_ja").."（武器使用時）",
			ko = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("스태미나", "Stamina_rgb_ko").."（무기 사용 시）",
			pl = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Wytrzymałość", "Stamina_rgb_pl").." przy Aktywnej Broni",
			["pt-br"] = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Vigor", "Stamina_rgb_pt_br").." com Arma Ativa",
			es = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Aguante", "Stamina_rgb_es").." con Arma Activa",
		},
		--[+ +WEAKSPOT DAMAGE +]--	20.04.2026
		["loc_trait_ranged_common_wield_increase_weakspot_damage_desc"] = {
			en = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." Ranged "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb"),
			ru = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." в дальнем бою",
			fr = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." à Distance",
			["zh-tw"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("遠程弱點傷害", "Weakspot_r_dmg_rgb_tw"),
			["zh-cn"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." 远程"..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn"),
			de = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." Distanz-"..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de"),
			it = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it").." a Distanza",
			ja = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." 遠隔"..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja"),
			ko = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." 원거리 "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko"),
			pl = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Obrażenia w słaby punkt", "Weakspot_dmg_rgb_pl").." na Dystans",
			["pt-br"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br").." à Distância",
			es = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es").." a Distancia",
		},
		--[+ +RELOAD SPEED +]--	20.04.2026
		["loc_trait_ranged_common_wield_increase_reload_speed_desc"] = {
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки",
			fr = CNumb("{reload_speed:%s}", "reload_var_rgb").." Vitesse de rechargement de l'arme",
			["zh-tw"] = CNumb("{reload_speed:%s}", "reload_var_rgb").." 裝填速度",
			["zh-cn"] = CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度",
			de = CNumb("{reload_speed:%s}", "reload_var_rgb").." Nachladegeschwindigkeit",
			it = CNumb("{reload_speed:%s}", "reload_var_rgb").." Velocità di Ricarica",
			ja = CNumb("{reload_speed:%s}", "reload_var_rgb").." リロード速度",
			ko = CNumb("{reload_speed:%s}", "reload_var_rgb").." 재장전 속도",
			pl = CNumb("{reload_speed:%s}", "reload_var_rgb").." Prędkość Przeładowania",
			["pt-br"] = CNumb("{reload_speed:%s}", "reload_var_rgb").." Velocidade de Recarga",
			es = CNumb("{reload_speed:%s}", "reload_var_rgb").." Velocidad de Recarga",
		},


--[+ ++WEAPON BLESSINGS - БЛАГОСЛОВЕНИЯ ОРУЖИЯ - 武器祝福++ +]--
	--[+ MELEE - БЛИЖНИЙ БОЙ - 近戰 +]--
		--[+ OPPORTUNIST +]-- ruof Приспособленец	20.04.2026
		--Rending vs Staggered (per tier)
		-- Battle Maul and Shield, Chainaxes, Crowbar, Crusher, Eviscerators, Latrine Shovels, Power Maul, Shock Mauls, Shock Mauls and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_armor_penetration_against_staggered_desc"] = { -- rending: +25%, +colors, +note
			en = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rending", "Rending_rgb").." vs "..CKWord("Staggered", "Staggered_rgb").." Enemies.\n"
				..CNote("Rend_note"),
			ru = CNumb("{rending:%s}", "rending_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов.\n"
				..CNote("Rend_note"), -- Оппортунист
			fr = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Déchirure", "Rending_rgb_fr").." vs les Ennemis "..CKWord("Étourdies", "Staggered_rgb_fr")..".\n"
				..CNote("Rend_note"),
			["zh-tw"] = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").." vs "..CKWord("硬直中", "Staggered_rgb_tw").." 的敵人。\n"
				..CNote("Rend_note"),
			["zh-cn"] = "对抗"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人时 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."。\n"
				..CNote("Rend_note"),
			de = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Durchschlag", "Rending_rgb_de").." vs "..CKWord("Getaumelt", "Staggered_rgb_de").." Gegner.\n"
				..CNote("Rend_note"),
			es = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetración", "Rending_rgb_es").." contra Enemigos "..CKWord("Tambaleantes", "Staggered_rgb_es")..".\n"
				..CNote("Rend_note"),
			it = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetrazione", "Rending_rgb_it").." contro Nemici "..CKWord("Barcollanti", "Staggered_rgb_it")..".\n"
				..CNote("Rend_note"),
			ja = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("貫通", "Rending_rgb_ja").." vs "..CKWord("スタッガー状態", "Staggered_rgb_ja").." の敵。\n"
				..CNote("Rend_note"),
			ko = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("관통", "Rending_rgb_ko").." vs "..CKWord("스태거 상태", "Staggered_rgb_ko").." 적.\n"
				..CNote("Rend_note"),
			pl = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rozrywanie", "Rending_rgb_pl").." przeciwko "..CKWord("Oślepionym", "Staggered_rgb_pl").." wrogom.\n"
				..CNote("Rend_note"),
			["pt-br"] = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetração", "Rending_rgb_pt_br").." contra Inimigos "..CKWord("Cambaleantes", "Staggered_rgb_pt_br")..".\n"
				..CNote("Rend_note"),
		},
		--[+ BLOODLETTER +]-- ruof Кровопускание	20.04.2026
		-- Bleed Stacks (per tier)
		-- Chainaxes -- 10 | 12 | 14 | 16 -- 突擊鏈斧
		-- Chainswords -- 11 | 12 | 13 | 14 -- 突擊鏈鋸劍
		-- Eviscerators -- 3 | 4 | 5 | 6 -- 重型開膛劍
		["loc_trait_bespoke_bleed_on_activated_hit_desc"] = { -- stacks: +14, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks from Special Attacks. "
				.."Lasts "..CNumb("1.5", "n_1_5_rgb").." seconds. Ticks every "..CNumb("0.5", "n_0_5_rgb").." seconds.\n"
				..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается от специальных атак. "
				.."Длится "..CNumb("1.5", "n_1_5_rgb").." секунды. "..CPhrs("Refr_dur_stappl").."\n"
				..CPhrs("Cant_appl_thr_shlds"), -- Кровопускатель
			fr = CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." lors des attaques spéciales. Jusqu'à "..CNumb("16", "n_16_rgb").." Cumuls.",
			["zh-tw"] = "特殊攻擊時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").."。\n上限 "..CNumb("16", "n_16_rgb").." 層。", -- 放血者
			["zh-cn"] = "特殊攻击 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。", -- 放血者
			de = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Blutung", "Bleed_rgb_de").."-Stapel von Spezialangriffen. Hält "..CNumb("1.5", "n_1_5_rgb").." Sekunden. Tickt alle "..CNumb("0.5", "n_0_5_rgb").." Sekunden.\n"..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			it = CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CKWord("Sanguinamento", "Bleed_rgb_it").." da Attacchi Speciali. Dura "..CNumb("1.5", "n_1_5_rgb").." secondi. Ticchetta ogni "..CNumb("0.5", "n_0_5_rgb").." secondi.\n"..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ja = "特殊攻撃により "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの"..CKWord("出血", "Bleed_rgb_ja").."。持続時間 "..CNumb("1.5", "n_1_5_rgb").."秒。 "..CNumb("0.5", "n_0_5_rgb").."秒ごとにダメージ。\n"..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ko = "특수 공격 시 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CKWord("출혈", "Bleed_rgb_ko").."를 부여합니다. "..CNumb("1.5", "n_1_5_rgb").."초 동안 지속되며 "..CNumb("0.5", "n_0_5_rgb").."초마다 피해를 줍니다.\n"..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			pl = CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CKWord("Krwawienie", "Bleed_rgb_pl").." od Ataków Specjalnych. Trwa "..CNumb("1.5", "n_1_5_rgb").." sekundy. Obrażenia co "..CNumb("0.5", "n_0_5_rgb").." sekundy.\n"..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			["pt-br"] = CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CKWord("Sangramento", "Bleed_rgb_pt_br").." de Ataques Especiais. Dura "..CNumb("1.5", "n_1_5_rgb").." segundos. Dano a cada "..CNumb("0.5", "n_0_5_rgb").." segundos.\n"..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			es = CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CKWord("Sangrado", "Bleed_rgb_es").." de Ataques Especiales. Dura "..CNumb("1.5", "n_1_5_rgb").." segundos. Daño cada "..CNumb("0.5", "n_0_5_rgb").." segundos.\n"..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
		},
		--[+ BLOODTHIRSTY +]-- ruof Жажда крови	20.04.2026
		-- Melee Crit Chance (per tier)
		-- Chainaxes, Chainswords, Eviscerators, Force Swords -- 40% | 60% | 80% | 100%
		["loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill_desc"] = { -- crit_chance: +100%, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." on your next Melee Attack after Special Attack Kill.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." для вашей следующей атаки ближнего боя после убийства врага специальной атакой.", -- Кровожадный
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." sur votre prochaine attaque de mêlée après une élimination avec une attaque spéciale.",
			["zh-tw"] = "在特殊攻擊擊殺敵人後，\n下一次近戰攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."。", -- 嗜血
			["zh-cn"] = "特殊攻击击杀敌人时，\n使下次近战攻击 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。", -- 嗜血
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für euren nächsten Nahkampfangriff nach einem Spezialangriff-Kill.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." sul prossimo Attacco Corpo a Corpo dopo un'Uccisione con Attacco Speciale.",
			ja = "特殊攻撃キル後、次の近接攻撃の"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。",
			ko = "특수 공격으로 적 처치 시 다음 근접 공격의 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." dla następnego Ataku w Walce Wręcz po Zabójstwie Atakiem Specjalnym.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." no seu próximo Ataque Corpo a Corpo após um Abate com Ataque Especial.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." en tu siguiente Ataque Cuerpo a Cuerpo tras una Muerte con Ataque Especial.",
		},
		--[+ HEADTAKER +]-- ruof Головорез	20.04.2026
		-- Melee Power per stack (per tier)
		-- Chainaxes, Combat Axes, Pickaxes, Tactical Axes, Thunder Hammers -- 3.5% 4% 4.5% 5% (up to +25%)
		-- Heavy Swords -- 6.5% 7% 7.5% 8% (up to +40%)
		["loc_trait_bespoke_increase_power_on_hit_desc"] = { -- power_level: +5%, time: 3.5, stacks: 5, s->seconds, +colors, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Puissance", "Strength_rgb_fr").." pour "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "每層 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，可持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"), -- 奪顱者
			["zh-cn"] = "命中时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。\n攻击每命中一个目标叠加 "..CNumb("1", "n_1_rgb").." 层。"..CNote("Pwr_note"), -- 夺颅者
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden bei Treffer. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi a Colpo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			ja = "ヒット時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回までスタック。\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			ko = "적중 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩됩니다.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siła", "Strength_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. przy Trafieniu. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Acertar. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Golpear. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
		},
		--[+ SLAUGHTERER +]-- ruof Душегуб	20.04.2026
		-- Power per stack (per tier)
		-- Chainaxes, Cleavers, Crusher, Force Swords, Pickaxes, Power Swords, Thunder Hammers -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_increase_power_on_kill_desc"] = { -- power_level: +5%, time: 4.5, stacks: 5, s->seconds, +colors, +added info, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Kill. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при убийстве. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"),
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Puissance", "Strength_rgb_fr").." pour "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "擊殺敵人時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，可持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次擊殺可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"), -- 殺戮者
			["zh-cn"] = "击杀敌人时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 屠宰者
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden bei einem Kill. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi dopo un'Uccisione. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			ja = "キル時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回までスタック。\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			ko = "처치 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩됩니다.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siła", "Strength_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. przy Zabójstwie. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Matar. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Matar. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.\n"..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
		},
		--[+ REV IT UP +]-- ruof Бодрость	20.04.2026
		-- Movement Speed (per tier)
		-- Chainaxes, Chainswords, Eviscerators -- 17% | 18% | 19% | 20%
		["loc_trait_bespoke_movement_speed_on_activation_desc"] = { -- movement_speed: +20%, time: 2, s->seconds, +colors
			en = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Movement Speed for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Weapon Special Activation.",
			ru = CNumb("{movement_speed:%s}", "movspd_var_rgb").." к скорости передвижения на "..CNumb("{time:%s}", "time_var_rgb").." секунды при активации специальной атаки.", -- Ускорься
			fr = CNumb("{movement_speed:%s}", "movspd_var_rgb").." de vitesse déplacement pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors de l'activation spéciale d'une arme.",
			["zh-tw"] = "在武器特殊技能啟動時 "..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 移動速度。\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 提速
			["zh-cn"] = "激活武器特殊动作时\n"..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 移动速度，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 加速
			de = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Bewegungsgeschwindigkeit für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden bei Waffenspezialaktivierung.",
			it = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Velocità di Movimento per "..CNumb("{time:%s}", "time_var_rgb").." secondi all'Attivazione Speciale dell'Arma.",
			ja = "武器特殊起動時、"..CNumb("{time:%s}", "time_var_rgb").."秒間、移動速度が "..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 増加。",
			ko = "무기 특수 기능 발동 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 이동 속도가 "..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 증가합니다.",
			pl = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Prędkości Ruchu na "..CNumb("{time:%s}", "time_var_rgb").." sek. po Aktywacji Specjalnej Broni.",
			["pt-br"] = CNumb("{movement_speed:%s}", "movspd_var_rgb").." de Velocidade de Movimento por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Ativar Ação Especial da Arma.",
			es = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Velocidad de Movimiento durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Activar el Ataque Especial del Arma.",
		},
		--[+ THRUST +]-- ruof Выпад	20.04.2026
		-- Melee Power per stack (per tier)
		-- Bully Clubs, Chainaxes, Cleavers, Combat Axes, Crusher, Duelling Swords, Heavy Swords, Latrine Shovels, Pickaxes, Power Swords, Sapper Shovels, Shock Mauls, Thunder Hammers -- 5% | 10% | 15% | 20% (up to +60%)
		["loc_trait_bespoke_power_bonus_based_on_charge_time_desc"] = { -- power_level: +5%, stacks: 3, +colors, +note
			en = "Up to "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." based on the charge time of your heavy attacks. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CNote("Pwr_note"),
			ru = "До "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в зависимости от времени заряжания ваших тяжёлых атак. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раза. "
				..CNote("Pwr_note"),
			fr = "Jusqu'à "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Puissance", "Strength_rgb_fr").." selon le temps de charge de vos attaques puissantes. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "根據重攻擊的續力時間增加 "..CKWord("威力", "Strength_rgb_tw").." ，\n每層 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，最多可疊加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"), -- 推進
			["zh-cn"] = "随重攻击蓄力时间增加叠加层数，\n每层 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 助推
			de = "Bis zu "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." basierend auf der Ladezeit eurer schweren Angriffe. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.\n"..CNote("Pwr_note"),
			it = "Fino a "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." in base al tempo di carica degli attacchi pesanti. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.\n"..CNote("Pwr_note"),
			ja = "ヘビーアタックのチャージ時間に応じて、最大 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_ja").." を獲得。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。\n"..CNote("Pwr_note"),
			ko = "강공격 차지 시간에 따라 최대 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("위력", "Strength_rgb_ko").." 증가. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩됩니다.\n"..CNote("Pwr_note"),
			pl = "Do "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." w zależności od czasu ładowania ciężkich ataków. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.\n"..CNote("Pwr_note"),
			["pt-br"] = "Até "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." baseado no tempo de carga dos seus ataques pesados. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.\n"..CNote("Pwr_note"),
			es = "Hasta "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." basada en el tiempo de carga de tus ataques pesados. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.\n"..CNote("Pwr_note"),
		},
		--[+ THUNDEROUS +]-- ruof Словно раскаты грома	20.04.2026
		-- Brittleness Stacks (per tier)
		-- Arbites Shock Maul, Bully Clubs, Chainaxes, Combat Axes, Crusher, Latrine Shovels, Pickaxes, Thunder Hammers -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_targets_receive_rending_debuff_desc"] = { -- stacks: 4, rending: 2.5%, time: 5, max_stacks: 16, rewrited, +colors, +added info, +note
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." are applied on hitting to enemy. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..". "
				..CNote("Brtl_note"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони применяется к врагу при ударе. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. До "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядов, вплоть до "..CNumb("40%", "pc_40_rgb")..". "
				..CNote("Brtl_note"), -- Громобой
			fr = CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilité", "Brittleness_rgb_fr").." sont appliqué lors d'un coup sur un ennemie. Pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes. Jusqu'à "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls, pour un total de "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["zh-tw"] = "擊中敵人時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_tw").."。\n可持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層。"..CNote("Brtl_note"),
			["zh-cn"] = "命中时，对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").." 。"..CNote("Brtl_note"),
			de = "Fügt getroffenen Gegnern "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel von "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Sprödigkeit", "Brittleness_rgb_de").." zu. Hält "..CNumb("{time:%s}", "time_var_rgb").." Sekunden. Maximal "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stapel, bis zu "..CNumb("40%", "pc_40_rgb")..". "..CNote("Brtl_note"),
			it = "Applica "..CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilità", "Brittleness_rgb_it").." al nemico colpito. Dura "..CNumb("{time:%s}", "time_var_rgb").." secondi. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." accumuli, fino al "..CNumb("40%", "pc_40_rgb")..". "..CNote("Brtl_note"),
			ja = "ヒット時、敵に "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_ja").."を "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック付与。持続時間 "..CNumb("{time:%s}", "time_var_rgb").."秒。最大 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." スタック、最大 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			ko = "적중 시 적에게 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("취약", "Brittleness_rgb_ko").."을 "..CNumb("{stacks:%s}", "stacks_var_rgb").."중첩 부여합니다. "..CNumb("{time:%s}", "time_var_rgb").."초 동안 지속. 최대 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").."중첩, 최대 "..CNumb("40%", "pc_40_rgb").." 증가."..CNote("Brtl_note"),
			pl = "Nakłada "..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Kruchości", "Brittleness_rgb_pl").." na trafionego wroga. Trwa "..CNumb("{time:%s}", "time_var_rgb").." sek. Maks. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." ładunków, do "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["pt-br"] = "Aplica "..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidade", "Brittleness_rgb_pt_br").." ao inimigo atingido. Dura "..CNumb("{time:%s}", "time_var_rgb").." segundos. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acúmulos, até "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			es = "Aplica "..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidad", "Brittleness_rgb_es").." al enemigo golpeado. Dura "..CNumb("{time:%s}", "time_var_rgb").." segundos. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acumulaciones, hasta "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
		},
		--[+ WRATH +]-- ruof Гнев	20.04.2026
		-- Max Hit Mass Increase per stack (per tier)
		-- Bone Saw -- 10% | 15% | 20% | 25% (up to +125%)
		-- Chainswords, Devil's Claw Swords, Eviscerators, Force Greatswords, Heavy Swords, Pickaxes, Power Falchions, Relic Blades -- 25% | 30% | 35% | 40% (up to +200%)
		-- Power Swords -- 35% | 40% | 45% | 50% (up to +250%)
		["loc_trait_bespoke_chained_hits_increases_cleave_desc"] = { -- cleave: +40%, stacks: 5, +colors, +added info
			en = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Cleave", "Cleave_rgb").." on Hit for "..CNumb("3.5", "n_3_5_rgb").." seconds. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_nc.." Generates "..CNumb("1", "n_1_rgb").." Stack per swing.\n"
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"),
			ru = CNumb("{cleave:%s}", "cleave_var_rgb").." к "..CKWord("рассечению", "rassecheniu_rgb_ru").." при ударе на "..CNumb("3.5", "n_3_5_rgb").." секунды. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..Dot_nc.." Даёт "..CNumb("1", "n_1_rgb").." заряд за удар. "..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"),
			fr = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Transpercement", "Cleave_rgb_fr").." lors d'un coup pendant "..CNumb("3.5", "n_3_5_rgb").." secondes. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "擊中敵人時 "..CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("順劈攻擊", "Cleave_rgb_tw").."，持續 "..CNumb("3.5", "n_3_5_rgb").." 秒。\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "连锁攻击命中时 "..CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("劈裂值", "Cleave_rgb_zh_cn").."，\n持续 "..CNumb("3.5", "n_3_5_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Spaltwert", "Cleave_rgb_de").." bei Treffer für "..CNumb("3.5", "n_3_5_rgb").." Sekunden. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Fendente", "Cleave_rgb_it").." a Colpo per "..CNumb("3.5", "n_3_5_rgb").." secondi. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "ヒット時、"..CNumb("3.5", "n_3_5_rgb").."秒間"..CKWord("薙ぎ払い", "Cleave_rgb_ja").."が "..CNumb("{cleave:%s}", "cleave_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回までスタック。",
			ko = "적중 시 "..CNumb("3.5", "n_3_5_rgb").."초 동안 "..CKWord("베어넘기기", "Cleave_rgb_ko").."가 "..CNumb("{cleave:%s}", "cleave_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩됩니다.",
			pl = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Przebicie", "Cleave_rgb_pl").." przy Trafieniu na "..CNumb("3.5", "n_3_5_rgb").." sek. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Corte Profundo", "Cleave_rgb_pt_br").." ao Acertar por "..CNumb("3.5", "n_3_5_rgb").." segundos. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Hendidura", "Cleave_rgb_es").." al Golpear durante "..CNumb("3.5", "n_3_5_rgb").." segundos. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
	--[+ SHRED +]-- ruof Расстрел	20.04.2026
		-- Crit Chance per stack (per tier)
		-- Bone Saw, Chainswords, Combat Axes, Devil's Claw Swords, Duelling Swords, Eviscerators, Force Greatswords, Force Swords, Tactical Axes -- 2.5% | 3% | 3.5% | 4% (up to +20%)
		["loc_trait_bespoke_chained_hits_increases_crit_chance_desc"] = { -- crit_chance: +4%, stacks: 5, +colors, +added info
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Bonus "..CKWord("Critical Chance", "Crit_chance_rgb").." on Chained Hit for "..CNumb("3.5", "n_3_5_rgb").." seconds. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..Dot_nc.." Generates "..CNumb("1", "n_1_rgb").." Stack per swing. "..CPhrs("Can_be_refr").."\n"
				..Dot_red.." Doesn't benefit Ranged weapons.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("3.5", "n_3_5_rgb").." секунды при серии ударов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..""..Dot_red.." Не влияет на оружие дальнего боя.", -- Кромсание
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." lors d'un coup en chaîne pendant "..CNumb("3.5", "n_3_5_rgb").." secondes. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "每次攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，持續 "..CNumb("3.5", "n_3_5_rgb").." 秒。\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。\n需連續命中不得揮空。",
			["zh-cn"] = "连锁攻击命中时\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("3.5", "n_3_5_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." bei aufeinanderfolgenden Treffern für "..CNumb("3.5", "n_3_5_rgb").." Sek. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." a Colpi Concatenati per "..CNumb("3.5", "n_3_5_rgb").." sec. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連鎖ヒット時、"..CNumb("3.5", "n_3_5_rgb").."秒間"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。",
			ko = "연속 적중 시 "..CNumb("3.5", "n_3_5_rgb").."초 동안 근접 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." przy Kolejnym Trafieniu na "..CNumb("3.5", "n_3_5_rgb").." sek. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." em Acertos Consecutivos por "..CNumb("3.5", "n_3_5_rgb").." seg. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." en Golpes Encadenados durante "..CNumb("3.5", "n_3_5_rgb").." seg. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ SAVAGE SWEEP +]-- ruof Дикость	20.04.2026
		-- Max Hit Mass Increase (per tier)
		-- Chainswords, Cleavers, Devil's Claw Swords, Eviscerators, Heavy Swords -- 140% | 160% | 180% | 200%
		["loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc"] = { -- multiple_hit: 3, cleave: +200%, time: 2, +colors, +added info
			en = CNumb("{cleave:%s}", "cleave_var_rgb").." enemy "..CKWord("Cleave", "Cleave_rgb").." for your attacks for "..CNumb("{time:%s}", "time_var_rgb").." seconds after hitting at least "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemies. "
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"),
			ru = CNumb("{cleave:%s}", "cleave_var_rgb").." к "..CKWord("рассечению", "rassecheniu_rgb_ru").." врагов на "..CNumb("{time:%s}", "time_var_rgb").." секунды при попадании как минимум по "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." врагам. "
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"), -- Дикий взмах
			fr = CNumb("{cleave:%s}", "cleave_var_rgb").." de "..CKWord("Transpercement", "Cleave_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en touchant au moins "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." ennemies avec une attaque.",
			["zh-tw"] = "當一次攻擊命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 敵人時，\n"..CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("順劈攻擊", "Cleave_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 名敌人时 \n"..CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("劈裂值", "Cleave_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Spaltwert", "Cleave_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden, wenn mindestens "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." Gegner mit einem Angriff getroffen werden.",
			it = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Fendente", "Cleave_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi colpendo almeno "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." nemici con un attacco.",
			ja = "一度の攻撃で "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 体以上の敵にヒットすると、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("薙ぎ払い", "Cleave_rgb_ja").."が "..CNumb("{cleave:%s}", "cleave_var_rgb").." 増加。",
			ko = "한 번의 공격으로 최소 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").."명의 적을 적중시키면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("베어넘기기", "Cleave_rgb_ko").."가 "..CNumb("{cleave:%s}", "cleave_var_rgb").." 증가합니다.",
			pl = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Przebicie", "Cleave_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po trafieniu co najmniej "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." wrogów jednym atakiem.",
			["pt-br"] = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Corte Profundo", "Cleave_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao atingir pelo menos "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." inimigos com um ataque.",
			es = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Hendidura", "Cleave_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al golpear al menos a "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemigos con un ataque.",
		},
		--[+ RAMPAGE +]-- ruof Буйство	20.04.2026
		-- Melee Power (per tier)
		-- Chainswords, Devil's Claw Swords, Duelling Swords, Eviscerators, Heavy Swords, Power Swords, Relic Blades -- 24% | 28% | 32% | 36%
		["loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc"] = { -- multiple_hit: 3, damage: 36%, time: 3, Damage -> Strength, +colors, +added info, +note
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Strength", "Strength_rgb").." to your Melee attacks for "..CNumb("{time:%s}", "time_var_rgb").." seconds when hitting at least "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemies. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." атак ближнего боя на "..CNumb("{time:%s}", "time_var_rgb").." секунды при попадании как минимум по "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." врагам. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de bonus à votre "..CKWord("Puissance", "Strength_rgb_fr").." pour vos attaques de mélées pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en touchant au moins "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." ennemies avec une attaque."..CNote("Pwr_note"),
			["zh-tw"] = "當一次攻擊命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 敵人時，\n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 名敌人 \n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für Nahkampfangriffe für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden, wenn mindestens "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." Gegner mit einem Angriff getroffen werden."..CNote("Pwr_note"),
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per gli attacchi in Corpo a Corpo per "..CNumb("{time:%s}", "time_var_rgb").." secondi colpendo almeno "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." nemici con un attacco."..CNote("Pwr_note"),
			ja = "一度の攻撃で "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 体以上の敵にヒットすると、"..CNumb("{time:%s}", "time_var_rgb").."秒間、近接"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = "한 번의 공격으로 최소 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").."명의 적을 적중시키면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 근접 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." do ataków w Walce Wręcz na "..CNumb("{time:%s}", "time_var_rgb").." sek. po trafieniu co najmniej "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." wrogów jednym atakiem."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." para ataques Corpo a Corpo por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao atingir pelo menos "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." inimigos com um ataque."..CNote("Pwr_note"),
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." para ataques Cuerpo a Cuerpo durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al golpear al menos a "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemigos con un ataque."..CNote("Pwr_note"),
		},
		--[+ DEVASTATING STRIKE +]-- ruof Сокрушительный удар	20.04.2026
		-- Max Hit Mass Increase (per tier)
		-- Chainswords, Cleavers, Devil's Claw Swords, Relic Blades -- 65% | 70% | 75% | 80%
		["loc_trait_bespoke_infinite_melee_cleave_on_crit_desc"] = { -- hit_mass: +80%, time: 5, +colors, +added info
			en = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Cleave", "Cleave_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"),
			ru = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." к "..CKWord("рассечению", "rassecheniu_rgb_ru").." врагов на "..CNumb("{time:%s}", "time_var_rgb").." секунд при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..". "
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"),
			fr = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." de "..CKWord("Transpercement", "Cleave_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".",
			["zh-tw"] = CKWord("暴擊命中", "Crit_hit_rgb_tw").." 時，"..CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("順劈攻擊", "Cleave_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时 "..CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("劈裂值", "Cleave_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Spaltwert", "Cleave_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de")..".",
			it = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Fendente", "Cleave_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it")..".",
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("薙ぎ払い", "Cleave_rgb_ja").."が "..CNumb("{hit_mass:%s}", "hitmass_var_rgb").." 増加。",
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("베어넘기기", "Cleave_rgb_ko").."가 "..CNumb("{hit_mass:%s}", "hitmass_var_rgb").." 증가합니다.",
			pl = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Przebicie", "Cleave_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl")..".",
			["pt-br"] = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Corte Profundo", "Cleave_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao causar um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br")..".",
			es = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Hendidura", "Cleave_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al asestar un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es")..".",
		},
		--[+ DECIMATOR +]-- ruof Дециматор	20.04.2026
		-- Melee Power per stack (per tier)
		-- Bone Saw, Combat Axes, Sapper Shovels, Tactical Axes -- 2% | 3% | 4% | 5% (up to +50%)
		["loc_trait_bespoke_chained_hits_increases_power_desc"] = { -- power_level: +5%, stacks: 10, Power -> Strength, +colors, +added info, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on chaining "..CNumb("2", "n_2_rgb")..CNumb("+", "n_plus_rgb").." attacks. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_nc.." Generates "..CNumb("1", "n_1_rgb").." Stack per swing. "..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." при непрерывной серии из более чем "..CNumb("2", "n_2_rgb").." атак. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"),
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." en enchaînant continuellement plus de "..CNumb("2", "n_2_rgb").." attaques. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "攻擊任意目標超過 "..CNumb("2", "n_2_rgb").." 次時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。\n需連續命中不得揮空。"..CNote("Pwr_note"),
			["zh-cn"] = "连锁攻击命中 "..CNumb("2", "n_2_rgb").." 次时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." beim Verketten von über "..CNumb("2", "n_2_rgb").." Angriffen. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." concatenando più di "..CNumb("2", "n_2_rgb").." attacchi. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Pwr_note"),
			ja = "連続して "..CNumb("2", "n_2_rgb").." 回以上攻撃を命中させると、"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。"..CNote("Pwr_note"),
			ko = "연속 공격이 "..CNumb("2", "n_2_rgb").."회 이상 적중하면 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." przy ciągłych atakach powyżej "..CNumb("2", "n_2_rgb").." trafień. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." ao encadear mais de "..CNumb("2", "n_2_rgb").." ataques. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." al encadenar más de "..CNumb("2", "n_2_rgb").." ataques. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Pwr_note"),
		},
		--[+ BRUTAL MOMENTUM +]-- ruof Суровый моментум	20.04.2026
		-- Melee Weakspot Damage (per tier)
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_infinite_cleave_on_weakspot_kill_desc"] = { -- weakspot_damage: 15%, +colors, +added info
			en = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..". Also Melee Attacks ignore up to "..CNumb("3", "n_3_rgb").." non-ogryn enemies "..CKWord("Hit Mass", "Hit_mass_rgb").." upon "..CKWord("Weakspot", "Weakspot_rgb").." Kill.", -- ..CPhrs("Carap_cant_cleave)),
			ru = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..". Убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." игнорируют "..CKWord("ударную массу", "udarn_massu_rgb_ru").." до "..CNumb("3", "n_3_rgb").." врагов не огринов.", -- Жестокий моментум
			fr = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr")..". Les élimination sur "..CKWord("Point faible", "Weakspot_rgb_fr").." ignore le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." de "..CNumb("3", "n_3_rgb").." ennemies.",
			["zh-tw"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。\n"..CKWord("弱點擊殺", "Weakspot_k_dmg_rgb_tw").." 無視 "..CNumb("3", "n_3_rgb").." 個敵人的 "..CKWord("順劈目標", "Hit_mass_rgb_tw").." 。"..CNote("Hit_Mass_note"),
			["zh-cn"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。\n"..CKWord("弱点击杀", "Weakspothits_k_rgb_zh_cn").."无视 "..CNumb("3", "n_3_rgb").." 名敌人的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"),
			de = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de")..". Ignoriert bei einem "..CKWord("Schwachstellen-Kill", "Weakspot_k_dmg_rgb_de").." die "..CKWord("Treffermasse", "Hit_mass_rgb_de").." von "..CNumb("3", "n_3_rgb").." Nicht-Ogryn-Gegnern.",
			it = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it")..". Le uccisioni su "..CKWord("Punto Debole", "Weakspot_rgb_it").." ignorano la "..CKWord("Massa Impatto", "Hit_mass_rgb_it").." di "..CNumb("3", "n_3_rgb").." nemici.",
			ja = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."。 "..CKWord("弱点キル", "Weakspot_k_dmg_rgb_ja").."時、非オグリンの敵 "..CNumb("3", "n_3_rgb").." 体分の "..CKWord("ヒットマス", "Hit_mass_rgb_ja").." を無視。",
			ko = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko")..". "..CKWord("약점 처치", "Weakspot_k_dmg_rgb_ko").." 시 오그린이 아닌 적 "..CNumb("3", "n_3_rgb").."명의 "..CKWord("충돌 질량", "Hit_mass_rgb_ko").."을 무시합니다.",
			pl = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Obrażeń w słaby punkt", "Weakspot_dmg_rgb_pl")..". Zabójstwa w "..CKWord("Słaby Punkt", "Weakspot_rgb_pl").." ignorują "..CKWord("Masę Trafienia", "Hit_mass_rgb_pl").." "..CNumb("3", "n_3_rgb").." wrogów nie-ogrynów.",
			["pt-br"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br")..". Abates em "..CKWord("Ponto Fraco", "Weakspot_rgb_pt_br").." ignoram a "..CKWord("Massa de Impacto", "Hit_mass_rgb_pt_br").." de "..CNumb("3", "n_3_rgb").." inimigos.",
			es = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es")..". Las muertes en "..CKWord("Punto Débil", "Weakspot_rgb_es").." ignoran la "..CKWord("Masa de Golpe", "Hit_mass_rgb_es").." de "..CNumb("3", "n_3_rgb").." enemigos no ogretes.",
		},
		--[+ DEATHBLOW +]-- ruof Смертельный удар	20.04.2026
		-- Melee Weakspot Damage (per tier)
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"] = { -- weakspot_damage: 15%, +colors, +added info
			en = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..". Also Melee Attacks ignore up to "..CNumb("3", "n_3_rgb").." non-ogryn enemies "..CKWord("Hit Mass", "Hit_mass_rgb").." upon "..CKWord("Weakspot", "Weakspot_rgb").." Kill.", -- ..CPhrs("Carap_cant_cleave)),
			ru = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..". Убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." игнорируют "..CKWord("ударную массу", "udarn_massu_rgb_ru").." до "..CNumb("3", "n_3_rgb").." врагов не огринов.",
			fr = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr")..". Les élimination sur "..CKWord("Point faible", "Weakspot_rgb_fr").." ignore le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." de "..CNumb("3", "n_3_rgb").." ennemies.",
			["zh-tw"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。\n"..CKWord("弱點擊殺", "Weakspot_k_dmg_rgb_tw").." 無視 "..CNumb("3", "n_3_rgb").." 個敵人的 "..CKWord("順劈目標", "Hit_mass_rgb_tw").." 。"..CNote("Hit_Mass_note"),
			["zh-cn"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。\n"..CKWord("弱点击杀", "Weakspothits_k_rgb_zh_cn").."无视 "..CNumb("3", "n_3_rgb").." 名敌人的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"),
			de = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de")..". Ignoriert bei einem "..CKWord("Schwachstellen-Kill", "Weakspot_k_dmg_rgb_de").." die "..CKWord("Treffermasse", "Hit_mass_rgb_de").." von "..CNumb("3", "n_3_rgb").." Nicht-Ogryn-Gegnern.",
			it = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it")..". Le uccisioni su "..CKWord("Punto Debole", "Weakspot_rgb_it").." ignorano la "..CKWord("Massa Impatto", "Hit_mass_rgb_it").." di "..CNumb("3", "n_3_rgb").." nemici.",
			ja = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."。 "..CKWord("弱点キル", "Weakspot_k_dmg_rgb_ja").."時、非オグリンの敵 "..CNumb("3", "n_3_rgb").." 体分の "..CKWord("ヒットマス", "Hit_mass_rgb_ja").." を無視。",
			ko = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko")..". "..CKWord("약점 처치", "Weakspot_k_dmg_rgb_ko").." 시 오그린이 아닌 적 "..CNumb("3", "n_3_rgb").."명의 "..CKWord("충돌 질량", "Hit_mass_rgb_ko").."을 무시합니다.",
			pl = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Obrażeń w słaby punkt", "Weakspot_dmg_rgb_pl")..". Zabójstwa w "..CKWord("Słaby Punkt", "Weakspot_rgb_pl").." ignorują "..CKWord("Masę Trafienia", "Hit_mass_rgb_pl").." "..CNumb("3", "n_3_rgb").." wrogów nie-ogrynów.",
			["pt-br"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br")..". Abates em "..CKWord("Ponto Fraco", "Weakspot_rgb_pt_br").." ignoram a "..CKWord("Massa de Impacto", "Hit_mass_rgb_pt_br").." de "..CNumb("3", "n_3_rgb").." inimigos.",
			es = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es")..". Las muertes en "..CKWord("Punto Débil", "Weakspot_rgb_es").." ignoran la "..CKWord("Masa de Golpe", "Hit_mass_rgb_es").." de "..CNumb("3", "n_3_rgb").." enemigos no ogretes.",
		},
		--[+ LIMBSPLITTER +]-- ruof Расщепитель	20.04.2026
		-- Cooldown (per tier)
		-- Bone Saw, Combat Axes, Crowbar, Pickaxes, Sapper Shovels, Tactical Axes -- 5 | 4.5 | 4 | 3.5 seconds
		["loc_trait_bespoke_power_bonus_on_first_attack_desc"] = { -- power_level: +60%, cooldown: 3.5, +colors, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on your First Attack every "..CNumb("{cooldown:%s}", "cd_var_rgb").." seconds. "
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." для вашей первой атаки каждые "..CNumb("{cooldown:%s}", "cd_var_rgb").." секунды. "
				..CNote("Pwr_note"), -- Расчленитель
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." sur votre première attaque toute les "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondes."..CNote("Pwr_note"),
			["zh-tw"] = "每 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒，第一次攻擊增加 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."。",
			["zh-cn"] = "每 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒，首次攻击 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für euren ersten Angriff alle "..CNumb("{cooldown:%s}", "cd_var_rgb").." Sekunden."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." sul primo attacco ogni "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondi."..CNote("Pwr_note"),
			ja = CNumb("{cooldown:%s}", "cd_var_rgb").." 秒ごとに、最初の攻撃の"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = CNumb("{cooldown:%s}", "cd_var_rgb").."초마다 첫 공격의 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." dla Pierwszego Ataku co "..CNumb("{cooldown:%s}", "cd_var_rgb").." sek."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." no seu Primeiro Ataque a cada "..CNumb("{cooldown:%s}", "cd_var_rgb").." segundos."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." en tu Primer Ataque cada "..CNumb("{cooldown:%s}", "cd_var_rgb").." segundos."..CNote("Pwr_note"),
		},
		--[+ ALL OR NOTHING +]-- ruof Все или ничего	20.04.2026
		-- Melee Power per stack (per tier)
		-- Arbites Shock Maul, Combat Axes, Crowbar, Pickaxes, Sapper Shovels, Shock Maul and Shield, Tactical Axes -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_power_bonus_scaled_on_stamina_desc"] = { -- power_level: +8%, rewrited, +colors, +note
			en = "You gain "..CNumb("1", "n_1_rgb").." Stack of "..CNumb("+", "n_plus_rgb")..CNumb("8%", "pc_8_rgb").." "..CKWord("Strength", "Strength_rgb").." per "..CNumb("20%", "pc_20_rgb").." of missing "..CKWord("Stamina", "Stamina_rgb")..". Stacks "..CNumb("5", "n_5_rgb").." times. Up to "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb")..". "..Dot_red.." T4 description!\n"
				..Dot_nc.." T1: "..CNumb("+", "n_plus_rgb")..CNumb("5%", "pc_5_rgb").." | T2: "..CNumb("+", "n_plus_rgb")..CNumb("6%", "pc_6_rgb").." | T3: "..CNumb("+", "n_plus_rgb")..CNumb("7%", "pc_7_rgb")..". "
				..CNote("Pwr_note"),
			ru = "Вы получаете "..CNumb("1", "n_1_rgb").." заряд "..CNumb("+", "n_plus_rgb")..CNumb("8%", "pc_8_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за каждые "..CNumb("20%", "pc_20_rgb").." потраченной "..CKWord("выносливости", "vynoslivosti_rgb_ru")..". До "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." при "..CNumb("5", "n_5_rgb").." зарядах. "..Dot_red.." Описание 4 уровня!\n"
				..Dot_nc.." У1: "..CNumb("+", "n_plus_rgb")..CNumb("5%", "pc_5_rgb").." | У2: "..CNumb("+", "n_plus_rgb")..CNumb("6%", "pc_6_rgb").." | У3: "..CNumb("+", "n_plus_rgb")..CNumb("7%", "pc_7_rgb")..".",
				-- ..CNote("Pwr_note"), -- Всё или ничего
			fr = "Jusqu'à "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr")..", en fonction "..CKWord("Endurance", "Stamina_rgb_fr").." épuisée. Chaque "..CNumb("20%", "pc_20_rgb").." de la barre d'"..CKWord("Endurance", "Stamina_rgb_fr").." épuisée donne "..CNumb("1", "n_1_rgb").." cumule. Jusqu'à "..CNumb("5", "n_5_rgb").." cumuls. "..CNote("Pwr_note"),
			["zh-tw"] = "每消耗最大 "..CKWord("耐力", "Stamina_rgb_tw").." 的 "..CNumb("20%", "pc_20_rgb").." 獲得一層。\n每一層 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").." ，上限 "..CNumb("5", "n_5_rgb").." 層。 "..CNote("Pwr_note"),
			["zh-cn"] = "随"..CKWord("体力", "Stamina_rgb_zh_cn").."消耗叠加层数，\n每消耗 "..CNumb("20%", "pc_20_rgb").."，"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。 "..CNote("Pwr_note"),
			de = "Erhaltet bis zu "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de")..", basierend auf verbrauchter "..CKWord("Ausdauer", "Stamina_rgb_de")..". Pro "..CNumb("20%", "pc_20_rgb").." fehlender Ausdauer "..CNumb("1", "n_1_rgb").." Stapel. Bis zu "..CNumb("5", "n_5_rgb").." Stapel. "..CNote("Pwr_note"),
			it = "Ottieni fino a "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." in base al "..CKWord("Vigore", "Stamina_rgb_it").." mancante. Ogni "..CNumb("20%", "pc_20_rgb").." di vigore mancante garantisce "..CNumb("1", "n_1_rgb").." accumulo. Fino a "..CNumb("5", "n_5_rgb").." accumuli. "..CNote("Pwr_note"),
			ja = "失った"..CKWord("スタミナ", "Stamina_rgb_ja").."に応じて、最大 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_ja").." を獲得。スタミナ "..CNumb("20%", "pc_20_rgb").." ごとに "..CNumb("1", "n_1_rgb").." スタック。最大 "..CNumb("5", "n_5_rgb").." スタック。 "..CNote("Pwr_note"),
			ko = "소모된 "..CKWord("스태미나", "Stamina_rgb_ko").."에 따라 최대 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("위력", "Strength_rgb_ko").."을 얻습니다. 스태미나 "..CNumb("20%", "pc_20_rgb").." 소모마다 "..CNumb("1", "n_1_rgb").."중첩. 최대 "..CNumb("5", "n_5_rgb").."중첩. "..CNote("Pwr_note"),
			pl = "Otrzymujesz do "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." w zależności od utraconej "..CKWord("Wytrzymałości", "Stamina_rgb_pl")..". Każde "..CNumb("20%", "pc_20_rgb").." utraconej wytrzymałości daje "..CNumb("1", "n_1_rgb").." ładunek. Maks. "..CNumb("5", "n_5_rgb").." ładunków. "..CNote("Pwr_note"),
			["pt-br"] = "Ganhe até "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." baseado no "..CKWord("Vigor", "Stamina_rgb_pt_br").." perdido. Cada "..CNumb("20%", "pc_20_rgb").." de vigor perdido concede "..CNumb("1", "n_1_rgb").." acúmulo. Até "..CNumb("5", "n_5_rgb").." acúmulos. "..CNote("Pwr_note"),
			es = "Obtienes hasta "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." según el "..CKWord("Aguante", "Stamina_rgb_es").." perdido. Cada "..CNumb("20%", "pc_20_rgb").." de aguante perdido otorga "..CNumb("1", "n_1_rgb").." acumulación. Hasta "..CNumb("5", "n_5_rgb").." acumulaciones. "..CNote("Pwr_note"),
		},
		--[+ DECAPITATOR +]-- ruof Палач	20.04.2026
		-- Melee Finesse Bonus per stack (per tier)
		-- Bone Saw, Combat Axes, Power Falchions -- 18% | 20% | 22% | 24% (up to +120%)
		["loc_trait_bespoke_stacking_rending_on_one_hit_kills_desc"] = { -- finesse: +24%, time: 5, stacks: 5, s->seconds, +colors, +note
			en = CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("Finesse", "Finesse_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Enemy One-Shot. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Fns_note"),
			ru = CNumb("{finesse:%s}", "fin_var_rgb").." к "..CKWord("ловкости", "lovkosti_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд при убийстве врага одним ударом. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CNote("Fns_note"), -- ..CPhrs("Can_be_refr") -- Обезглавливатель
			fr = CNumb("{finesse:%s}", "fin_var_rgb").." de "..CKWord("Finesse", "Finesse_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lorsque l'ennemie est tué en un coup. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Fns_note"),
			["zh-tw"] = "一擊斃命時 "..CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("靈巧", "Finesse_rgb_tw").." ，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次擊殺可疊加一層，上限 "..CNumb("5", "n_5_rgb").." 層。"..CNote("Fns_note"),
			["zh-cn"] = "一击毙敌时 "..CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Fns_note"),
			de = CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("Finesse", "Finesse_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden bei einem One-Shot-Kill. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Fns_note"),
			it = CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("Finezze", "Finesse_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi dopo un'Uccisione con un Colpo Singolo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Fns_note"),
			ja = "敵を一撃で倒すと、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("技巧", "Finesse_rgb_ja").."が "..CNumb("{finesse:%s}", "fin_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。"..CNote("Fns_note"),
			ko = "적을 일격에 처치하면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("기교", "Finesse_rgb_ko").."가 "..CNumb("{finesse:%s}", "fin_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩."..CNote("Fns_note"),
			pl = CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("Finezyjności", "Finesse_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. po Zabiciu Jednym Ciosem. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Fns_note"),
			["pt-br"] = CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("Destreza", "Finesse_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Matar com Um Golpe. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Fns_note"),
			es = CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("Destreza", "Finesse_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Matar de un Golpe. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Fns_note"),
		},
		--[+ AGILE +]-- ruof Ловкий	20.04.2026
		-- Melee Weakspot Damage (per tier)
		-- Duelling Swords, Tactical Axes -- 2.5% | 5% | 7.5% | 10%
		["loc_trait_bespoke_dodge_count_reset_on_weakspot_hit_and_weakspot_damage_desc"] = { -- melee_weakspot_damage: +10%, +colors
			en = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." Melee "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..". Refreshed Dodge Efficiency on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..".",
			ru = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." для атак ближнего боя. Эффективность уклонения обновляется при ударе в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".", -- Проворный
			fr = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." de "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." de mélée. Actualise l'efficacité de l'esquive lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			["zh-tw"] = "近戰武器 "..CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").." 。\n在 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時，重置閃躲次數。",
			["zh-cn"] = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。\n"..CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，刷新有效闪避。",
			de = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." Nahkampf-"..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de")..". Setzt die Ausweicheffizienz bei einem "..CKWord("Schwachstellentreffer", "Weakspothit_rgb_de").." zurück.",
			it = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it").." in Corpo a Corpo. L'efficienza della schivata si ricarica colpendo un "..CKWord("Punto Debole", "Weakspothit_rgb_it")..".",
			ja = "近接"..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."が "..CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." 増加。 "..CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、回避回数がリセットされる。",
			ko = "근접 "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko").."가 "..CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." 증가합니다. "..CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 회피 효율이 초기화됩니다.",
			pl = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." "..CKWord("Obrażeń w słaby punkt", "Weakspot_dmg_rgb_pl").." w Walce Wręcz. Odświeża Efektywność Uników przy "..CKWord("Trafieniu w Słaby Punkt", "Weakspothit_rgb_pl")..".",
			["pt-br"] = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br").." Corpo a Corpo. A Eficiência de Esquiva é restaurada ao "..CKWord("Acertar um Ponto Fraco", "Weakspothit_rgb_pt_br")..".",
			es = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es").." Cuerpo a Cuerpo. La Eficiencia de Esquiva se restablece al "..CKWord("Golpear un Punto Débil", "Weakspothit_rgb_es")..".",
		},
		--[+ SLAUGHTER SPREE +]-- ruof Убойная сила	20.04.2026
		-- Crit Chance (per tier)
		-- Tactical Axes -- 40% | 60% | 80% | 100%
		["loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_desc"] = { -- crit_chance: +100%, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." to the next Melee attack within "..CNumb("5", "n_5_rgb").." seconds on "..CKWord("Weak Spot", "Weak_spot_rgb").." "..CKWord("Critical Hit", "Crit_hit_rgb").." Kill.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." для следующей атаки ближнего боя на "..CNumb("5", "n_5_rgb").." секунд при убийствах "..CKWord("Critical Hits", "krit_udarami_rgb_ru").." в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".", -- Резня
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pour la prochaine attaque de mélée dans les "..CNumb("5", "n_5_rgb").." secondes suivant une élimination sur "..CKWord("Point faible", "Weakspot_rgb_fr").." et "..CKWord("Critique", "Crit_rgb_fr")..".",
			["zh-tw"] = "在 "..CKWord("弱點", "Weakspot_rgb_tw").." "..CKWord("暴擊擊殺", "Crit_k_rgb_tw").." 後的 "..CNumb("5", "n_5_rgb").." 秒內，\n下一次近戰攻擊必定 "..CKWord("暴擊", "Crit_rgb_tw").." 。",
			["zh-cn"] = CKWord("弱点", "Weakspot_rgb_zh_cn")..""..CKWord("暴击击杀", "Crit_hits_k_rgb_zh_cn").."时，下次近战攻击 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("5", "n_5_rgb").." 秒。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für den nächsten Nahkampfangriff innerhalb von "..CNumb("5", "n_5_rgb").." Sek. nach einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de").." auf eine "..CKWord("Schwachstelle", "Weak_spot_rgb_de")..".",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per il prossimo attacco Corpo a Corpo entro "..CNumb("5", "n_5_rgb").." sec. dopo un'Uccisione con "..CKWord("Colpo Critico", "Crit_hit_rgb_it").." su "..CKWord("Punto Debole", "Weak_spot_rgb_it")..".",
			ja = CKWord("弱点", "Weakspot_rgb_ja")..""..CKWord("クリティカルキル", "Crit_k_rgb_ja").."後、"..CNumb("5", "n_5_rgb").."秒以内の次の近接攻撃の"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。",
			ko = CKWord("약점", "Weakspot_rgb_ko").." "..CKWord("크리티컬 처치", "Crit_k_rgb_ko").." 후 "..CNumb("5", "n_5_rgb").."초 이내의 다음 근접 공격의 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." dla następnego ataku w Walce Wręcz w ciągu "..CNumb("5", "n_5_rgb").." sek. po Zabójstwie "..CKWord("Krytycznym", "Crit_rgb_pl").." w "..CKWord("Słaby Punkt", "Weak_spot_rgb_pl")..".",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." no próximo ataque Corpo a Corpo em "..CNumb("5", "n_5_rgb").." segundos após um Abate com "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br").." em "..CKWord("Ponto Fraco", "Weak_spot_rgb_pt_br")..".",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." para el siguiente ataque Cuerpo a Cuerpo durante "..CNumb("5", "n_5_rgb").." seg. tras una Muerte con "..CKWord("Golpe Crítico", "Crit_hit_rgb_es").." en "..CKWord("Punto Débil", "Weak_spot_rgb_es")..".",
		},
		--[+ RELENTLESS STRIKES +]-- ruof Безжалостность	20.04.2026
		-- Melee Power per stack (per tier)
		-- Arbites Shock Maul, Bone Saw, Duelling Swords, Tactical Axes -- 4% | 6% | 8% | 10% (up to +50%)
		["loc_trait_bespoke_power_bonus_on_same_enemy_attacks_desc"] = { -- power_level: +10%, time: 2, stacks: 5, s->seconds, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds when hitting the Same enemy. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при повторном попадании по врагу. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Безжалостные удары
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en attaquant le même ennemie. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "命中同一敵人 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續"..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多可疊加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 次。"..CNote("Pwr_note"),
			["zh-cn"] = "再次命中同一敌人时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden, wenn derselbe Gegner getroffen wird. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi colpendo lo stesso nemico. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Pwr_note"),
			ja = "同じ敵に連続でヒットさせると、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。"..CNote("Pwr_note"),
			ko = "동일한 적에게 재차 적중시키면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. przy trafieniu Tego Samego Wroga. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao acertar o Mesmo Inimigo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al golpear al Mismo Enemigo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Pwr_note"),
		},
		--[+ FLESH TEARER +]-- ruof Раздиратель плоти	20.04.2026
		-- Bleed Stacks (per tier)
		-- Combat Blades, Shivs -- 5 | 6 | 7 | 8
		["loc_trait_bespoke_bleed_on_crit_melee_desc"] = { -- stacks: +8, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks. "..Dot_nc.." Lasts "..CNumb("1.5", "n_1_5_rgb").." seconds. "..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." добавляется при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..". "
				..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов. "..Dot_nc.." Длится "..CNumb("1.5", "n_1_5_rgb").." секунды. "..CPhrs("Refr_dur_stappl").."\n"
				..CPhrs("Cant_appl_thr_shlds"),
			fr = CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." en cas de "..CKWord("Coup critique", "Crit_hit_rgb_fr")..". Jusqu'à "..CNumb("16", "n_16_rgb").." Cumuls.",
			["zh-tw"] = "在暴擊時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").." 。\n上限 "..CNumb("16", "n_16_rgb").." 層。",
			["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时 ".. CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。",
			de = CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CKWord("Blutung", "Bleed_rgb_de").." bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de")..". Maximal "..CNumb("16", "n_16_rgb").." Stapel.",
			it = CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CKWord("Sanguinamento", "Bleed_rgb_it").." con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it")..". Fino a "..CNumb("16", "n_16_rgb").." accumuli.",
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、敵に "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの"..CKWord("出血", "Bleed_rgb_ja").."を付与。最大 "..CNumb("16", "n_16_rgb").." スタック。",
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 적에게 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CKWord("출혈", "Bleed_rgb_ko").."을 부여합니다. 최대 "..CNumb("16", "n_16_rgb").." 중첩.",
			pl = CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CKWord("Krwawienia", "Bleed_rgb_pl").." przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl")..". Maks. "..CNumb("16", "n_16_rgb").." ładunków.",
			["pt-br"] = CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CKWord("Sangramento", "Bleed_rgb_pt_br").." ao causar um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br")..". Máximo de "..CNumb("16", "n_16_rgb").." acúmulos.",
			es = CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CKWord("Sangrado", "Bleed_rgb_es").." al asestar un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es")..". Máximo "..CNumb("16", "n_16_rgb").." acumulaciones.",
		},
		--[+ LACERATE +]-- ruof Терзание	20.04.2026
		-- Combat Blades, Shivs -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_bleed_on_non_weakspot_hit_desc"] = { -- stacks: +4, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks on non-"..CKWord("Weakspot Hits", "Weakspothits_rgb")..".\n"
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks. "..Dot_nc.." Lasts "..CNumb("1.5", "n_1_5_rgb").." seconds.\n"
				..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." добавляется при попаданиях не в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".\n"
				..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов. "..Dot_nc.." Длится "..CNumb("1.5", "n_1_5_rgb").." секунды.\n"
				..CPhrs("Refr_dur_stappl"), -- ..CPhrs("Cant_appl_thr_shlds_ru
			fr = CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." sur les attaque hors "..CKWord("Points faibles", "Weakspothits_rgb_fr")..". Jusqu'à "..CNumb("16", "n_16_rgb").." Cumuls.",
			["zh-tw"] = "非 "..CKWord("命中弱點", "Weakspothits_rgb_tw").." 時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").." 。\n上限 "..CNumb("16", "n_16_rgb").." 層。",
			["zh-cn"] = "非"..CKWord("弱点命中", "Weakspothits_rgb_zh_cn").."时 ".. CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。",
			de = CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CKWord("Blutung", "Bleed_rgb_de").." bei Treffern, die keine "..CKWord("Schwachstellentreffer", "Weakspothits_rgb_de").." sind. Maximal "..CNumb("16", "n_16_rgb").." Stapel.",
			it = CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CKWord("Sanguinamento", "Bleed_rgb_it").." con Colpi non su "..CKWord("Punto Debole", "Weakspothits_rgb_it")..". Fino a "..CNumb("16", "n_16_rgb").." accumuli.",
			ja = "非"..CKWord("弱点ヒット", "Weakspothits_rgb_ja").."時に、敵に "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの"..CKWord("出血", "Bleed_rgb_ja").."を付与。最大 "..CNumb("16", "n_16_rgb").." スタック。",
			ko = "비"..CKWord("약점 적중", "Weakspothits_rgb_ko").." 시 적에게 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CKWord("출혈", "Bleed_rgb_ko").."을 부여합니다. 최대 "..CNumb("16", "n_16_rgb").." 중첩.",
			pl = CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CKWord("Krwawienia", "Bleed_rgb_pl").." przy Trafieniu nie w "..CKWord("Słaby Punkt", "Weakspothits_rgb_pl")..". Maks. "..CNumb("16", "n_16_rgb").." ładunków.",
			["pt-br"] = CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CKWord("Sangramento", "Bleed_rgb_pt_br").." em Acertos que não são em "..CKWord("Pontos Fracos", "Weakspothits_rgb_pt_br")..". Máximo de "..CNumb("16", "n_16_rgb").." acúmulos.",
			es = CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CKWord("Sangrado", "Bleed_rgb_es").." al Golpear fuera de "..CKWord("Puntos Débiles", "Weakspothits_rgb_es")..". Máximo "..CNumb("16", "n_16_rgb").." acumulaciones.",
		},
		--[+ EXECUTOR +]-- ruof Экзекутор	20.04.2026
		-- Power per stack (per tier)
		-- Combat Blades, Force Swords, Shivs -- 4.5% | 5% | 5.5% | 6% (up to +30%)
		["loc_trait_bespoke_chained_weakspot_hits_increases_power_desc"] = { -- power_level: +6%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on Repeated "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_nc.." Stacks last "..CNumb("2.5", "n_2_5_rgb").." seconds.\n"
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." при повторном ударе в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"), -- ..Dot_nc.." Заряды длятся "..CNumb("2.5", "n_2_5_rgb").." секунды. " -- Каратель
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." lors d'un coup sur "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." répété. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. "..CNote("Pwr_note"),
			["zh-tw"] = "命中 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").."	秒。\n持續命中時每次疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = "连续"..CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。 "..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." bei wiederholten "..CKWord("Schwachstellentreffern", "Weakspothit_rgb_de")..". Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal. "..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." a Colpi ripetuti su "..CKWord("Punto Debole", "Weakspothit_rgb_it")..". Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte. "..CNote("Pwr_note"),
			ja = "連続"..CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。 "..CNote("Pwr_note"),
			ko = "연속 "..CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩. "..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." przy Wielokrotnym "..CKWord("Trafieniu w Słaby Punkt", "Weakspothit_rgb_pl")..". Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy. "..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." em "..CKWord("Acertos em Ponto Fraco", "Weakspothit_rgb_pt_br").." Consecutivos. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes. "..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." en "..CKWord("Golpes a Punto Débil", "Weakspothit_rgb_es").." Repetidos. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces. "..CNote("Pwr_note"),
		},
		--[+ RIPOSTE +]-- ruof Ответный удар	20.04.2026
		-- Crit Chance (per tier)
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords, Shivs -- 12.5% | 15% | 17.5% | 20%
		["loc_trait_bespoke_dodge_grants_crit_chance_desc"] = { -- crit_chance: +20%, time: 6, s->seconds, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on successful Dodge. "
				..CPhrs("Can_be_refr")..Dot_nc.." Procs on dodging Melee/Ranged (non Gunners/Reapers/Snipers) or disabler attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд при успешном уклонении.\n"
				..CPhrs("Can_be_refr"), -- ..Dot_nc.." Срабатывает от атак ближнего/дальнего боя (не Пулемётчик/Жнец/Снайпер) и выводящих из строя."
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une esquive réussie.",
			["zh-tw"] = "成功閃避時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "成功闪避时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden nach einem erfolgreichen Ausweichen.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi dopo una Schivata riuscita.",
			ja = "回避成功時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。",
			ko = "회피 성공 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 근접 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po Udanej Uniku.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos após uma Esquiva bem-sucedida.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos tras una Esquiva exitosa.",
		},
		--[+ PRECOGNITION +]-- ruof Познание	20.04.2026
		-- Finesse Bonus (per tier)
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords -- 45% | 50% | 55% | 60%
		-- Shivs -- 30% | 35% | 40% | 45%
		["loc_trait_bespoke_dodge_grants_finesse_bonus_desc"] = { -- damage: +60%, time: 2, s->seconds, +colors, +note
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Finesse", "Finesse_rgb").." "..CKWord("Damage", "Damage_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on successful Dodge. "
				..CNote("Fns_note"),
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." от "..CKWord("ловкости", "lovkosti_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при успешном уклонении. "
				..CNote("Fns_note"), -- Предвидение
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." de "..CKWord("Finesse", "Finesse_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une esquive réussie."..CNote("Fns_note"),
			["zh-tw"] = "成功閃躲時 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("靈巧傷害", "Finesse_dmg_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，"..CNote("Fns_note"),
			["zh-cn"] = "成功闪避时 "..CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."".."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Fns_note"),
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Finesse-Schaden", "Finesse_dmg_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden nach einem erfolgreichen Ausweichen."..CNote("Fns_note"),
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno da Finezze", "Finesse_dmg_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi dopo una Schivata riuscita."..CNote("Fns_note"),
			ja = "回避成功時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("技巧ダメージ", "Finesse_dmg_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。"..CNote("Fns_note"),
			ko = "회피 성공 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 근접 "..CKWord("기교 피해", "Finesse_dmg_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다."..CNote("Fns_note"),
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń Finezyjnych", "Finesse_dmg_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po Udanej Uniku."..CNote("Fns_note"),
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano de Destreza", "Finesse_dmg_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos após uma Esquiva bem-sucedida."..CNote("Fns_note"),
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño de Destreza", "Finesse_dmg_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos tras una Esquiva exitosa."..CNote("Fns_note"),
		},
		--[+ HAYMAKER +]-- ruof Коса	20.04.2026
		-- Instakill Chance per stack (per tier)
		-- Bully Clubs, Combat Blades, Shivs -- 1% | 2% | 3% | 4% (up to +20%)
		["loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc"] = { -- proc_chance: +4%, stacks: 5, +colors
			en = CNumb("{proc_chance:%s}", "procch_var_rgb").." to Instakill human-sized enemies on Chained Heavy Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Instakill prevents other triggers. "
				..CPhrs("Can_be_refr_drop_1"),
			ru = CNumb("{proc_chance:%s}", "procch_var_rgb").." к шансу убить одним ударом врага человеческого размера при серии тяжёлых ударов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. Таланты, работающие от убийств, не активируются при этом.", -- Жнец
			fr = CNumb("{proc_chance:%s}", "procch_var_rgb").." de chance de tuer instantanément les ennemies de taille humaines sur les attaques puissantes répétées. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. A noter que d'autres déclencheurs potentiels ne seront pas activés lors d'une élimination instantanée.",
			["zh-tw"] = "連續重擊時 \n"..CNumb("{proc_chance:%s}", "procch_var_rgb").." 對人類大小的敵人即死機會，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。\n注意\n - 潛在Buff觸發即死時不會啟動。\n - Boss類無效。",
			["zh-cn"] = "连锁重攻击命中时 \n"..CNumb("{proc_chance:%s}", "procch_var_rgb").." 直接击杀人形敌人的几率。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。\n攻击每命中一个目标叠加 "..CNumb("1", "n_1_rgb").." 层。\n注意，通过这种方式直接击杀敌人不会触发其他效果。",
			de = CNumb("{proc_chance:%s}", "procch_var_rgb").." Chance, menschgroße Gegner mit aufeinanderfolgenden schweren Angriffen sofort zu töten. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal. Andere Auslöser werden bei Soforttötung nicht aktiviert.",
			it = CNumb("{proc_chance:%s}", "procch_var_rgb").." di uccidere all'istante i nemici di taglia umana con Colpi Pesanti Concatenati. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte. Le uccisioni istantanee non attivano altri effetti.",
			ja = "連続ヘビーヒット時、人型サイズの敵を即死させる確率が "..CNumb("{proc_chance:%s}", "procch_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。即死時は他の効果が発動しない。",
			ko = "연속 강공격 시 인간형 적을 즉사시킬 확률이 "..CNumb("{proc_chance:%s}", "procch_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩. 즉사 시 다른 효과가 발동하지 않습니다.",
			pl = CNumb("{proc_chance:%s}", "procch_var_rgb").." szansy na Natychmiastowe Zabicie wrogów rozmiaru człowieka przy Kolejnych Ciężkich Trafieniach. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy. Inne efekty nie aktywują się przy natychmiastowym zabójstwie.",
			["pt-br"] = CNumb("{proc_chance:%s}", "procch_var_rgb").." de chance de Matar Instantaneamente inimigos de tamanho humano em Acertos Pesados Consecutivos. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes. Outros gatilhos não são ativados em mortes instantâneas.",
			es = CNumb("{proc_chance:%s}", "procch_var_rgb").." de probabilidad de Matar Instantáneamente a enemigos de tamaño humano con Golpes Pesados Encadenados. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces. Otros efectos no se activan en muertes instantáneas.",
		},
		--[+ SMACKDOWN +]-- ruof Смятение	20.04.2026
		-- Crit Chance (per tier)
		-- Bully Clubs, Combat Blades -- 12.5% | 15% | 17.5% | 20%
		["loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy_desc"] = { -- crit_chance: +20%, time: 2, s->seconds, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on hitting a "..CKWord("Staggered", "Staggered_rgb").." enemy on Special Action Hit. "
				..CPhrs("Can_be_refr")..Dot_red.." Does not benefit Ranged weapons.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при атаке "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов специальными атаками.\n"
				..CPhrs("Can_be_refr"), -- ..Dot_red.." Не влияет на оружие дальнего боя." -- Сокрушение
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes pendant qu'un ennemie "..CKWord("vacille", "Staggered_rgb_fr").." grâce à un coup d'action spéciale.",
			["zh-tw"] = "特殊攻擊擊中 "..CKWord("硬直中", "Staggered_rgb_tw").." 敵人時 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "特殊攻击命中"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人时 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. beim Treffen eines "..CKWord("taumelnden", "Staggered_rgb_de").." Gegners mit einem Spezialangriff.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. colpendo un nemico "..CKWord("Barcollante", "Staggered_rgb_it").." con un Attacco Speciale.",
			ja = "特殊アクションヒットで"..CKWord("スタッガー状態", "Staggered_rgb_ja").."の敵を攻撃すると、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。",
			ko = "특수 공격으로 "..CKWord("스태거 상태", "Staggered_rgb_ko").."의 적을 적중시키면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 근접 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po trafieniu "..CKWord("Oślepionego", "Staggered_rgb_pl").." wroga Atakiem Specjalnym.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao acertar um inimigo "..CKWord("Cambaleante", "Staggered_rgb_pt_br").." com um Ataque Especial.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al golpear a un enemigo "..CKWord("Tambaleante", "Staggered_rgb_es").." con un Ataque Especial.",
		},
		--[+ MERCY KILLER +]-- ruof Милосердие	20.04.2026
		-- Melee Weakspot Damage (per tier)
		-- Combat Blades, Shivs -- 52.5% | 55% | 57.5% | 60%
		["loc_trait_bespoke_increased_weakspot_damage_on_bleeding_desc"] = { -- damage: +60%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." to Enemies with "..CKWord("Bleed", "Bleed_rgb").." Stacks.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." врагам с зарядами "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".", -- Милосердный убийца
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." au ennemies avec des cumuls de "..CKWord("Saignement", "Bleed_rgb_fr")..".",
			["zh-tw"] = "攻擊有 "..CKWord("流血", "Bleed_rgb_tw").." 的敵人，\n增加 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").." 。",
			["zh-cn"] = "对"..CKWord("流血", "Bleed_rgb_zh_cn").."敌人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de").." gegen Gegner mit "..CKWord("Blutungs-Stapeln", "Bleed_rgb_de")..".",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it").." contro nemici con accumuli di "..CKWord("Sanguinamento", "Bleed_rgb_it")..".",
			ja = CKWord("出血", "Bleed_rgb_ja").."状態の敵への"..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。",
			ko = CKWord("출혈", "Bleed_rgb_ko").." 중첩이 있는 적에게 "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다.",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń w słaby punkt", "Weakspot_dmg_rgb_pl").." przeciwko wrogom z ładunkami "..CKWord("Krwawienia", "Bleed_rgb_pl")..".",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br").." contra inimigos com acúmulos de "..CKWord("Sangramento", "Bleed_rgb_pt_br")..".",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es").." contra enemigos con acumulaciones de "..CKWord("Sangrado", "Bleed_rgb_es")..".",
		},
		--[+ RUTHLESS BACKSTAB +]-- ruof Беспощадный удар в спину	20.04.2026
		-- Backstab Rending (per tier)
		-- Combat Blades, Shivs -- 70% | 80% | 90% | 100%
		["loc_trait_bespoke_rending_on_backstabs_desc"] = { -- rending: +100%, +colors
			en = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rending", "Rending_rgb").." on Backstab Hit. "
				..Dot_nc.." Enables backstabbing. "..CNote("Rend_note"),
			ru = CNumb("{rending:%s}", "rending_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони при ударе в спину. "
				..Dot_nc.." Активируется удар в спину.\n"
				..CNote("Rend_note"),
			fr = CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Déchirure", "Rending_rgb_fr").." lors d'un coup dans le dos."..CNote("Rend_note"),
			["zh-tw"] = "背刺時，增加 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").." 。",
			["zh-cn"] = "背刺时 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."。"..CNote("Rend_note"),
			de = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Durchschlag", "Rending_rgb_de").." bei einem Hinterhältigen Treffer."..CNote("Rend_note"),
			it = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetrazione", "Rending_rgb_it").." sui Colpi alle Spalle."..CNote("Rend_note"),
			ja = "背後からの攻撃時、"..CKWord("貫通", "Rending_rgb_ja").."が "..CNumb("{rending:%s}", "rending_var_rgb").." 増加。"..CNote("Rend_note"),
			ko = "후방 공격 시 "..CKWord("관통", "Rending_rgb_ko").."이 "..CNumb("{rending:%s}", "rending_var_rgb").." 증가합니다."..CNote("Rend_note"),
			pl = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rozrywanie", "Rending_rgb_pl").." przy Trafieniu w Plecy."..CNote("Rend_note"),
			["pt-br"] = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetração", "Rending_rgb_pt_br").." em Acertos pelas Costas."..CNote("Rend_note"),
			es = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetración", "Rending_rgb_es").." al Golpear por la Espalda."..CNote("Rend_note"),
		},
		--[+ UNCANNY STRIKE +]-- ruof Жуткий удар	20.04.2026
		-- Rending per stack (per tier)
		-- Combat Blades, Duelling Swords, Force Swords, Sapper Shovels -- 12% | 16% | 20% | 24% (up to +120%)
		-- Shivs -- 4% | 5% | 6% | 8% (up to +40%)
		["loc_trait_bespoke_stacking_rending_on_weakspot_desc"] = { -- rending: +24%, time: 3.5, stacks: 5, s->seconds, +colors
			en = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rending", "Rending_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Enemy "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Rend_note"),
			ru = CNumb("{rending:%s}", "rending_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони на "..CNumb("{time:%s}", "time_var_rgb").." секунды при попадании в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr"), -- ..CNote("Rend_note")
			fr = CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Déchirure", "Rending_rgb_fr").." sur un coup sur "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Rend_note"),
			["zh-tw"] = CKWord("弱點命中", "Weakspothit_rgb_tw").." 時 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").." ，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Rend_note"),
			["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加"..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Rend_note"),
			de = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Durchschlag", "Rending_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei einem "..CKWord("Schwachstellentreffer", "Weakspothit_rgb_de")..". Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Rend_note"),
			it = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetrazione", "Rending_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. con un "..CKWord("Colpo a Punto Debole", "Weakspothit_rgb_it")..". Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Rend_note"),
			ja = CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("貫通", "Rending_rgb_ja").."が "..CNumb("{rending:%s}", "rending_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。"..CNote("Rend_note"),
			ko = CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("관통", "Rending_rgb_ko").."이 "..CNumb("{rending:%s}", "rending_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩."..CNote("Rend_note"),
			pl = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rozrywanie", "Rending_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. po "..CKWord("Trafieniu w Słaby Punkt", "Weakspothit_rgb_pl")..". Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Rend_note"),
			["pt-br"] = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetração", "Rending_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao "..CKWord("Acertar um Ponto Fraco", "Weakspothit_rgb_pt_br")..". Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Rend_note"),
			es = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetración", "Rending_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al "..CKWord("Golpear un Punto Débil", "Weakspothit_rgb_es")..". Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Rend_note"),
		},
		--[+ TRAUMA +]-- ruof Травма	20.04.2026
		-- Melee Stagger Strength and Stagger Duration per stack (per tier)
		-- Crusher, Devil's Claw Swords, Sapper Shovels, Thunder Hammers -- 14% and 10% | 16% and 10% | 18% and 10% | 20% and 10% (up to +100% and +61%)
		["loc_trait_bespoke_consecutive_hits_increases_stagger_desc"] = { -- impact: +20%, time: 2, stacks: 5, +colors
			en = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impact", "Impact_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Repeated Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{impact:%s}", "impact_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при повторных попаданиях. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr"),
			fr = CNumb("{impact:%s}", "impact_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup répété. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "連續攻擊時 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").." ，持續"..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次攻擊可疊加一層，上限 "..CNumb("5", "n_5_rgb").." 層。",
			["zh-cn"] = "再次命中同一敌人时 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Wucht", "Impact_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei wiederholten Treffern. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impatto", "Impact_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. a Colpi Ripetuti. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続ヒット時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("衝撃", "Impact_rgb_ja").."が "..CNumb("{impact:%s}", "impact_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。",
			ko = "연속 적중 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("충격", "Impact_rgb_ko").."이 "..CNumb("{impact:%s}", "impact_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impet", "Impact_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. przy Wielokrotnym Trafieniu. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impacto", "Impact_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos em Acertos Repetidos. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impacto", "Impact_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Golpear Repetidamente. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ VICIOUS SLICE +]-- ruof Жестокая нарезка	20.04.2026
		-- Melee Stagger Strength per stack (per tier)
		-- Devil's Claw Swords -- 14% | 16% | 18% | 20% (up to +100%)
		["loc_trait_bespoke_increase_stagger_per_hit_in_sweep_desc"] = { -- impact: +20%, +colors
			en = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impact", "Impact_rgb").." to Target for each Enemy already Hit by the same Attack. "
						..Dot_nc.." Up to "..CNumb("5", "n_5_rgb").." Stacks. "..CNote("Impact_note"),
			ru = CNumb("{impact:%s}", "impact_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." цели за каждого врага, ранее поражённого этой же атакой. "
				..Dot_nc.." До "..CNumb("5", "n_5_rgb").." зарядов.\n"
				..CNote("Impact_note"), -- Жестокий разрез
			fr = CNumb("{impact:%s}", "impact_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." à la cible pour chaque ennemie déjà touché par la même attaque. Jusqu'à "..CNumb("5", "n_5_rgb").." cumuls.",
			["zh-tw"] = "命中同一敵人 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").." ，\n每次攻擊可疊加一層，上限 "..CNumb("5", "n_5_rgb").."層。",
			["zh-cn"] = "每有一个已被同一攻击命中的敌人，\n"..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."。最多叠加 "..CNumb("5", "n_5_rgb").." 层。",
			de = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Wucht", "Impact_rgb_de").." auf das Ziel für jeden Gegner, der bereits von demselben Angriff getroffen wurde. Bis zu "..CNumb("5", "n_5_rgb").." Stapel.",
			it = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impatto", "Impact_rgb_it").." sul bersaglio per ogni nemico già colpito dallo stesso attacco. Fino a "..CNumb("5", "n_5_rgb").." accumuli.",
			ja = "同じ攻撃で既に命中した敵の数に応じて、対象への"..CKWord("衝撃", "Impact_rgb_ja").."が "..CNumb("{impact:%s}", "impact_var_rgb").." 増加。最大 "..CNumb("5", "n_5_rgb").." 回スタック。",
			ko = "동일한 공격에 이미 적중한 적 한 명당 대상에게 "..CKWord("충격", "Impact_rgb_ko").."이 "..CNumb("{impact:%s}", "impact_var_rgb").." 증가합니다. 최대 "..CNumb("5", "n_5_rgb").." 중첩.",
			pl = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impetu", "Impact_rgb_pl").." na Cel za każdego wroga już trafionego tym samym atakiem. Maks. "..CNumb("5", "n_5_rgb").." ładunków.",
			["pt-br"] = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impacto", "Impact_rgb_pt_br").." no Alvo para cada inimigo já atingido pelo mesmo ataque. Até "..CNumb("5", "n_5_rgb").." acúmulos.",
			es = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impacto", "Impact_rgb_es").." al Objetivo por cada enemigo ya golpeado por el mismo ataque. Hasta "..CNumb("5", "n_5_rgb").." acumulaciones.",
		},
		--[+ HAMMERBLOW +]-- ruof Удар молотом	20.04.2026
		-- Melee Stagger Strength per stack (per tier)
		-- Arbites Shock Maul, Crusher, Devil's Claw Swords, Sapper Shovels, Shock Mauls, Shock Mauls and Shield, Thunder Hammers -- 19% | 21% | 23% | 25% (up to +125%)
		["loc_trait_bespoke_stacking_increase_impact_on_hit_desc"] = { -- impact: +25%, time: 1.5, stacks: 5, s->seconds, +colors
			en = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impact", "Impact_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_green.." Can generate multiple stacks per swing or push action. "..CPhrs("Can_be_refr"),
			ru = CNumb("{impact:%s}", "impact_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..Dot_green.." Может дать несколько зарядов за удар или толчок. "..CPhrs("Can_be_refr"), -- Молотобой
			fr = CNumb("{impact:%s}", "impact_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Jusqu'à "..CNumb("5", "n_5_rgb").." cumuls par coup.",
			["zh-tw"] = "每次攻擊 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n上限 "..CNumb("5", "n_5_rgb").." 層。",
			["zh-cn"] = "命中时 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。\n攻击每命中一个目标叠加 "..CNumb("1", "n_1_rgb").." 层。",
			de = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Wucht", "Impact_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei Treffer. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal. Kann pro Schlag mehrere Stapel erzeugen.",
			it = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impatto", "Impact_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. a Colpo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte. Può generare più accumuli per colpo.",
			ja = "ヒット時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("衝撃", "Impact_rgb_ja").."が "..CNumb("{impact:%s}", "impact_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。一撃で複数スタック獲得可能。",
			ko = "적중 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("충격", "Impact_rgb_ko").."이 "..CNumb("{impact:%s}", "impact_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩. 한 번의 공격으로 여러 중첩을 얻을 수 있습니다.",
			pl = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impetu", "Impact_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. przy Trafieniu. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy. Może generować wiele ładunków na uderzenie.",
			["pt-br"] = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impacto", "Impact_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Acertar. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes. Pode gerar múltiplos acúmulos por golpe.",
			es = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impacto", "Impact_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Golpear. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces. Puede generar múltiples acumulaciones por golpe.",
		},
		--[+ SKULLCRUSHER +]-- ruof Череподробитель	20.04.2026
		-- Debuff Stacks Applied (per tier)
		-- Battle Maul and Shield, Bully Clubs, Crusher, Devil's Claw Swords, Latrine Shovels, Power Maul, Sapper Shovels, Shock Mauls, Thunder Hammers -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff_desc"] = { -- stacks: 4, damage: +10%, time: 5, Stack(s)->Stacks, +colors
			en = "Target receives "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." if already "..CKWord("Staggered", "Staggered_rgb")..", to a maximum of "..CNumb("8", "n_8_rgb").." Stacks on target. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..CPhrs("Can_be_refr"),
			ru = "Цель получает "..CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru")..", если уже "..CKWord("ошеломлена", "oshelomlena_rgb_ru")..", вплоть до "..CNumb("8", "n_8_rgb").." зарядов. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд.\n"
				..CPhrs("Can_be_refr"),
			fr = "La cible subit "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." si elle "..CKWord("vacille", "Staggered_rgb_fr").." déjà, jusqu'à un maximum de "..CNumb("8", "n_8_rgb").." cumuls. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			["zh-tw"] = "對 "..CKWord("硬直中", "Staggered_rgb_tw").." 的敵人，\n使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw"),
			["zh-cn"] = "对"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."效果，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("8", "n_8_rgb").." 层。",
			de = "Das Ziel erhält "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de")..", falls es bereits "..CKWord("taumelt", "Staggered_rgb_de")..". Maximal "..CNumb("8", "n_8_rgb").." Stapel. Hält "..CNumb("{time:%s}", "time_var_rgb").." Sek.",
			it = "Il bersaglio riceve "..CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." se già "..CKWord("Barcollante", "Staggered_rgb_it")..". Max "..CNumb("8", "n_8_rgb").." accumuli. Dura "..CNumb("{time:%s}", "time_var_rgb").." sec.",
			ja = "対象が既に"..CKWord("スタッガー状態", "Staggered_rgb_ja").."の場合、"..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").."を付与。最大 "..CNumb("8", "n_8_rgb").." スタック。持続 "..CNumb("{time:%s}", "time_var_rgb").."秒。",
			ko = "대상이 이미 "..CKWord("스태거 상태", "Staggered_rgb_ko").."인 경우 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").."를 부여합니다. 최대 "..CNumb("8", "n_8_rgb").." 중첩. "..CNumb("{time:%s}", "time_var_rgb").."초 지속.",
			pl = "Cel otrzymuje "..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl")..", jeśli już "..CKWord("Oślepiony", "Staggered_rgb_pl")..". Maks. "..CNumb("8", "n_8_rgb").." ładunków. Trwa "..CNumb("{time:%s}", "time_var_rgb").." sek.",
			["pt-br"] = "O alvo recebe "..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." se já estiver "..CKWord("Cambaleante", "Staggered_rgb_pt_br")..". Máx. "..CNumb("8", "n_8_rgb").." acúmulos. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg.",
			es = "El objetivo recibe "..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." si ya está "..CKWord("Tambaleante", "Staggered_rgb_es")..". Máx. "..CNumb("8", "n_8_rgb").." acumulaciones. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg.",
		},
		--[+ THUNDERSTRIKE +]-- ruof Гроза	20.04.2026
		-- Debuff Stacks Applied (per tier)
		-- Battle Maul and Shield, Crusher, Devil's Claw Swords, Power Maul, Sapper Shovels, Thunder Hammers -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff_desc"] = { -- stacks: 4, impact: +10%, time: 5, Stack(s)->Stacks, +colors
			en = "Target receives "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impact", "Impact_rgb").." if already "..CKWord("Staggered", "Staggered_rgb")..", to a maximum of "..CNumb("8", "n_8_rgb").." Stacks on target. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..CPhrs("Can_be_refr"),
			ru = "Цель получает "..CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{impact:%s}", "impact_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..", если уже "..CKWord("ошеломлена", "oshelomlena_rgb_ru")..", вплоть до "..CNumb("8", "n_8_rgb").." зарядов. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. "
				..CPhrs("Can_be_refr"), -- Удар грома
			fr = "La cible subit "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{impact:%s}", "impact_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." si elle "..CKWord("vacille", "Staggered_rgb_fr").." déjà, jusqu'à un maximum de "..CNumb("8", "n_8_rgb").." cumuls. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			["zh-tw"] = "對 "..CKWord("硬直中", "Staggered_rgb_tw").." 的敵人，\n使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").."，持續"..CNumb("{time:%s}", "time_var_rgb").." 秒。\n上限 "..CNumb("8", "n_8_rgb").." 層。",
			["zh-cn"] = "对"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."效果，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("8", "n_8_rgb").." 层。",
			de = "Das Ziel erhält "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Wucht", "Impact_rgb_de")..", falls es bereits "..CKWord("taumelt", "Staggered_rgb_de")..". Maximal "..CNumb("8", "n_8_rgb").." Stapel. Hält "..CNumb("{time:%s}", "time_var_rgb").." Sek.",
			it = "Il bersaglio riceve "..CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impatto", "Impact_rgb_it").." se già "..CKWord("Barcollante", "Staggered_rgb_it")..". Max "..CNumb("8", "n_8_rgb").." accumuli. Dura "..CNumb("{time:%s}", "time_var_rgb").." sec.",
			ja = "対象が既に"..CKWord("スタッガー状態", "Staggered_rgb_ja").."の場合、"..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("衝撃", "Impact_rgb_ja").."を付与。最大 "..CNumb("8", "n_8_rgb").." スタック。持続 "..CNumb("{time:%s}", "time_var_rgb").."秒。",
			ko = "대상이 이미 "..CKWord("스태거 상태", "Staggered_rgb_ko").."인 경우 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("충격", "Impact_rgb_ko").."을 부여합니다. 최대 "..CNumb("8", "n_8_rgb").." 중첩. "..CNumb("{time:%s}", "time_var_rgb").."초 지속.",
			pl = "Cel otrzymuje "..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impetu", "Impact_rgb_pl")..", jeśli już "..CKWord("Oślepiony", "Staggered_rgb_pl")..". Maks. "..CNumb("8", "n_8_rgb").." ładunków. Trwa "..CNumb("{time:%s}", "time_var_rgb").." sek.",
			["pt-br"] = "O alvo recebe "..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impacto", "Impact_rgb_pt_br").." se já estiver "..CKWord("Cambaleante", "Staggered_rgb_pt_br")..". Máx. "..CNumb("8", "n_8_rgb").." acúmulos. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg.",
			es = "El objetivo recibe "..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impacto", "Impact_rgb_es").." si ya está "..CKWord("Tambaleante", "Staggered_rgb_es")..". Máx. "..CNumb("8", "n_8_rgb").." acumulaciones. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg.",
		},
		--[+ CHAINED DEATHBLOW +]-- ruof Цепочка смертельных ударов	20.04.2026
		-- Melee Crit Chance (per tier)
		-- Heavy Swords -- 5% | 10% | 15% | 20%
		["loc_trait_bespoke_increased_crit_chance_on_weakspot_kill_desc"] = { -- crit_chance: +20%, time: 3, s->seconds, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Weak Spot", "Weak_spot_rgb").." kill. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". "
				..CPhrs("Can_be_refr"), -- Цепь смертоносных ударов
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination sur "..CKWord("Point faible", "Weakspot_rgb_fr")..". {#color(255, 35, 5)}(bug:+10% de taux de coup critique peu importe le niveau de la bénédiction){#reset()}",
			["zh-tw"] = CKWord("弱點", "Weakspot_rgb_tw").." 擊殺時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."。\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。{#color(255, 35, 5)}\n(bug: 所有等級 +10%){#reset()}",
			["zh-cn"] = CKWord("弱点击杀", "Weakspothits_k_rgb_zh_cn").."时 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。{#color(255, 35, 5)}\n（存在BUG：无论祝福级别如何，数值始终为 +10% 暴击几率。）{#reset()}",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei einem "..CKWord("Schwachstellen-Kill", "Weakspot_k_dmg_rgb_de")..". {#color(255, 35, 5)}(Bug: +10% unabhängig von der Segensstufe){#reset()}",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. dopo un'Uccisione su "..CKWord("Punto Debole", "Weakspot_rgb_it")..". {#color(255, 35, 5)}(bug: +10% a prescindere dal livello){#reset()}",
			ja = CKWord("弱点キル", "Weakspot_k_dmg_rgb_ja").."時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。{#color(255, 35, 5)}(バグ：全ティアで+10%){#reset()}",
			ko = CKWord("약점 처치", "Weakspot_k_dmg_rgb_ko").." 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다. {#color(255, 35, 5)}(버그: 모든 단계에서 +10%){#reset()}",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po Zabójstwie w "..CKWord("Słaby Punkt", "Weakspot_rgb_pl")..". {#color(255, 35, 5)}(Błąd: +10% niezależnie od poziomu){#reset()}",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Matar com "..CKWord("Ponto Fraco", "Weakspot_rgb_pt_br")..". {#color(255, 35, 5)}(bug: +10% independente do nível){#reset()}",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Matar en "..CKWord("Punto Débil", "Weakspot_rgb_es")..". {#color(255, 35, 5)}(bug: +10% sin importar el nivel){#reset()}",
		},
		--[+ PERFECT STRIKE +]-- ruof Безупречный удар	20.04.2026
		-- Melee Crit Damage (per tier)
		-- Battle Maul and Shield, Bully Clubs, Eviscerators, Heavy Swords, Latrine Shovels, Power Maul -- 2.5% | 5% | 7.5% | 10%
		["loc_trait_bespoke_pass_past_armor_on_crit_new_desc"] = { -- crit_damage: +10%, +colors
			en = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." Melee "..CKWord("Critical Hit", "Crit_hit_rgb").." "..CKWord("Damage", "Damage_rgb")..". "..CKWord("Critical Hits", "Crit_hits_rgb").." ignore "..CKWord("Hit Mass", "Hit_mass_rgb").." bonus from Armour.\n"
						..Dot_green.." Carapace armor can be "..CKWord("Cleaved", "Cleaved_rgb")..".",
			ru = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." к "..CKWord("урону критического удара", "krit_udara_uron_rgb_ru").." в ближнем бою. "..CKWord("Критические удары", "Krit_udary_rgb_ru").." игнорируют "..CKWord("ударную массу", "udarn_massu_rgb_ru").." от брони, позволяя "..CKWord("рассекать", "rassekat_rgb_ru").." панцирную броню.",
			fr = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." de "..CKWord("Coup critique", "Crit_hit_rgb_fr").." en mélée. Les "..CKWord("Coups critiques", "Crit_hits_rgb_fr").." ignore le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." de l'armure.",
			["zh-tw"] = "近戰 "..CKWord("暴擊", "Crit_rgb_tw").." 時 "..CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("暴擊傷害", "Crit_dmg_r_rgb_tw").."。\n無視 "..CKWord("順劈目標", "Hit_mass_rgb_tw").." 護甲加成。",
			["zh-cn"] = "近战"..CKWord("暴击命中", "Crit_hit_rgb_tw").."时 "..CNumb("{crit_damage:%s}", "critdmg_var_rgb")..CKWord("", "Damage_rgb_zh_cn").."。\n"..CKWord("暴击", "Crit0_rgb_zh_cn").."同时无视装甲赋予的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"),
			de = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." Nahkampf-"..CKWord("Kritischer Trefferschaden", "Crt_strk_dmg_rgb_de")..". "..CKWord("Kritische Treffer", "Crit_hits_rgb_de").." ignorieren den "..CKWord("Treffermasse", "Hit_mass_rgb_de").."-Bonus durch Rüstung.",
			it = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Danno da colpo critico", "Crt_strk_dmg_rgb_it").." in Corpo a Corpo. I "..CKWord("Colpi Critici", "Crit_hits_rgb_it").." ignorano il bonus alla "..CKWord("Massa Impatto", "Hit_mass_rgb_it").." dell'armatura.",
			ja = "近接"..CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."ダメージが "..CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 増加。クリティカルヒットは装甲による"..CKWord("ヒットマス", "Hit_mass_rgb_ja").."ボーナスを無視。",
			ko = "근접 "..CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 피해가 "..CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 증가합니다. 크리티컬 적중은 방어구의 "..CKWord("충돌 질량", "Hit_mass_rgb_ko").." 보너스를 무시합니다.",
			pl = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Obrażenia krytycznego ataku", "Crt_strk_dmg_rgb_pl").." w Walce Wręcz. "..CKWord("Krytyczne Trafienia", "Crit_hits_rgb_pl").." ignorują premię do "..CKWord("Masy Trafienia", "Hit_mass_rgb_pl").." z pancerza.",
			["pt-br"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Dano de golpe crítico", "Crt_strk_dmg_rgb_pt_br").." Corpo a Corpo. "..CKWord("Acertos Críticos", "Crit_hits_rgb_pt_br").." ignoram o bônus de "..CKWord("Massa de Impacto", "Hit_mass_rgb_pt_br").." da armadura.",
			es = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Daño de golpe crítico", "Crt_strk_dmg_rgb_es").." Cuerpo a Cuerpo. Los "..CKWord("Golpes Críticos", "Crit_hits_rgb_es").." ignoran el bono de "..CKWord("Masa de Golpe", "Hit_mass_rgb_es").." de la armadura.",
		},
		--[+ BLADED MOMENTUM +]-- ruof Моментум лезвия	07.04.2026
		-- Rending per stack (per tier)
		-- Heavy Swords -- 5% & 2.5s | 6% & 3s | 7% & 3.5s | 8% & 4s (up to +32%)
		["loc_trait_bespoke_stacking_rending_on_cleave_desc"] = { -- rending: +8%, time: 4, stacks: 4, +colors, +note
			en = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rending", "Rending_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds when hitting "..CNumb("2", "n_2_rgb").." or more enemies with a melee attack. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr")..CNote("Rend_note"),
			ru = CNumb("{rending:%s}", "rending_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе по "..CNumb("2", "n_2_rgb").." или более врагам за раз. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Rend_note"), -- Инерция клинка
			fr = CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Déchirure", "Rending_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup en mélée multiple. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Rend_note"),
			["zh-tw"] = "在一次攻擊命中多名敵人 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").." ，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。" .. CNote("Rend_note"),
			["zh-cn"] = "命中多名敌人时"..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Rend_note"),
			de = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Durchschlag", "Rending_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden, wenn mit einem Nahkampfangriff mindestens "..CNumb("2", "n_2_rgb").." Gegner getroffen werden. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Rend_note"),
			it = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetrazione", "Rending_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi colpendo almeno "..CNumb("2", "n_2_rgb").." nemici con un attacco in Corpo a Corpo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Rend_note"),
			ja = "一度の攻撃で "..CNumb("2", "n_2_rgb").." 体以上の敵に命中すると、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("貫通", "Rending_rgb_ja").."が "..CNumb("{rending:%s}", "rending_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。"..CNote("Rend_note"),
			ko = "한 번의 공격으로 "..CNumb("2", "n_2_rgb").."명 이상의 적을 적중시키면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("관통", "Rending_rgb_ko").."이 "..CNumb("{rending:%s}", "rending_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩."..CNote("Rend_note"),
			pl = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rozrywanie", "Rending_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. przy trafieniu co najmniej "..CNumb("2", "n_2_rgb").." wrogów jednym atakiem. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Rend_note"),
			["pt-br"] = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetração", "Rending_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao atingir "..CNumb("2", "n_2_rgb").." ou mais inimigos com um ataque Corpo a Corpo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Rend_note"),
			es = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Penetración", "Rending_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al golpear a "..CNumb("2", "n_2_rgb").." o más enemigos con un ataque Cuerpo a Cuerpo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Rend_note"),
		},
		--[+ DEFLECTOR +]-- ruof Отражатель	07.04.2026
		-- Block Cost Reduction (per tier)
		-- Force Greatswords, Force Swords -- 22.5% | 25% | 27.5% | 30%
		["loc_trait_bespoke_can_block_ranged_desc"] = { -- block_cost: 30%, +colors
			en = CNumb("{block_cost:%s}", "block_var_rgb").." Block Cost. This weapon Blocks both Melee and Ranged attacks.",
			ru = CNumb("{block_cost:%s}", "block_var_rgb").." стоимости блока. Это оружие блокирует атаки и ближнего, и дальнего боя.",
			fr = "Cette arme bloque les attaques à distance et en mélée. De plus, le coût du blocage est réduit de "..CNumb("{block_cost:%s}", "block_var_rgb")..".",
			["zh-tw"] = "此武器可以格擋近戰和遠程攻擊。\n此外，格擋消耗 "..CNumb("{block_cost:%s}", "block_var_rgb"),
			["zh-cn"] = CNumb("{block_cost:%s}", "block_var_rgb").." 格挡消耗。\n此武器可格挡近战与远程攻击。",
			de = "Diese Waffe blockt sowohl Nah- als auch Fernkampfangriffe. Zusätzlich werden die Blockkosten um "..CNumb("{block_cost:%s}", "block_var_rgb").." reduziert.",
			it = "Quest'arma può Bloccare sia gli attacchi in Corpo a Corpo che a Distanza. Inoltre, il costo di blocco è ridotto del "..CNumb("{block_cost:%s}", "block_var_rgb")..".",
			ja = "この武器は近接攻撃と遠隔攻撃の両方をブロック可能。さらにブロックコストが "..CNumb("{block_cost:%s}", "block_var_rgb").." 減少。",
			ko = "이 무기는 근접 및 원거리 공격을 모두 막을 수 있습니다. 또한 블록 소모가 "..CNumb("{block_cost:%s}", "block_var_rgb").." 감소합니다.",
			pl = "Ta broń blokuje zarówno ataki w Walce Wręcz, jak i Dystansowe. Dodatkowo, koszt blokowania zmniejsza się o "..CNumb("{block_cost:%s}", "block_var_rgb")..".",
			["pt-br"] = "Esta arma Bloqueia ataques Corpo a Corpo e à Distância. Além disso, o custo de bloqueio é reduzido em "..CNumb("{block_cost:%s}", "block_var_rgb")..".",
			es = "Esta arma Bloquea tanto ataques Cuerpo a Cuerpo como a Distancia. Además, el coste de bloqueo se reduce un "..CNumb("{block_cost:%s}", "block_var_rgb")..".",
		},
		--[+ MOMENTUM +]-- ruof Моментум	07.04.2026
		-- Max Toughness Percentage (per tier)
		-- Bully Clubs, Cleavers, Eviscerators, Force Greatswords, Thunder Hammers
		-- 12% | 13% | 14% | 15%
		["loc_trait_bespoke_toughness_recovery_on_multiple_hits_desc"] = { -- toughness: 15%, multiple_hit: 3, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restores when hitting at least "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemies with an attack. "
				..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается, если вы попали атакой по "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." или более врагам. "
				..CPhrs("Dont_intw_coher_tghn"),
			fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de régénération de "..CKWord("Robustesse", "Toughness_rgb_fr").." en touchant au moins "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." ennemies avec une attaque.",
			["zh-tw"] = "在一次攻擊命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 個敵人時，\n恢復 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").." 。",
			["zh-cn"] = "命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 名敌人时，\n"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。",
			de = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").." Wiederherstellung, wenn mindestens "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." Gegner mit einem Angriff getroffen werden.",
			it = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Tempra", "Toughness_rgb_it").." ripristinata colpendo almeno "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." nemici con un attacco.",
			ja = "一度の攻撃で "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 体以上の敵にヒットすると、"..CKWord("タフネス", "Toughness_rgb_ja").."が "..CNumb("{toughness:%s}", "tghns_var_rgb").." 回復。",
			ko = "한 번의 공격으로 최소 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").."명의 적을 적중시키면 "..CKWord("강인함", "Toughness_rgb_ko").."이 "..CNumb("{toughness:%s}", "tghns_var_rgb").." 회복됩니다.",
			pl = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Wytrzymałości", "Toughness_rgb_pl").." przy trafieniu co najmniej "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." wrogów jednym atakiem.",
			["pt-br"] = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br").." restaurada ao atingir pelo menos "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." inimigos com um ataque.",
			es = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Aguante", "Toughness_rgb_es").." restaurada al golpear al menos a "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemigos con un ataque.",
		},
		--[+ MURDEROUS TRANQUILITY +]-- ruof Убийственное спокойствие	07.04.2026
		-- Peril Amount Removed (per tier)
		-- Force Greatswords -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_vent_warp_charge_on_multiple_hits_desc"] = { -- multiple_hit: 3, warp_charge: 2%, +colors
			en = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Peril", "Peril_rgb").." is quelled by hitting at least "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemies with an attack. "
				..Dot_nc.." Procs once per attack. "..Dot_red.." Cannot be triggered by a Special Attack.",
			ru = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при попадании атакой по "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." или более врагам. "
				..Dot_nc.." Срабатывает раз за удар.\n"
				..Dot_red.." Не срабатывает от специальных атак.",
			fr = "Toucher au moins "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." ennemies avec une attaque, réduit de "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." le "..CKWord("Péril", "Peril_rgb_fr")..".",
			["zh-tw"] = "在一次攻擊命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 個敵人時，\n消除 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." 點的 "..CKWord("反噬", "Peril_rgb_tw").." 。",
			["zh-cn"] = "命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 名敌人时，\n平息 " ..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."。",
			de = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Gefahr", "Peril_rgb_de").." wird abgebaut, wenn mindestens "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." Gegner mit einem Angriff getroffen werden.",
			it = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Pericolo", "Peril_rgb_it").." placato colpendo almeno "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." nemici con un attacco.",
			ja = "一度の攻撃で "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 体以上の敵に命中すると、"..CKWord("ペリル", "Peril_rgb_ja").."が "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." 解消される。",
			ko = "한 번의 공격으로 최소 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").."명의 적을 적중시키면 "..CKWord("위험도", "Peril_rgb_ko").."가 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." 감소합니다.",
			pl = "Trafienie co najmniej "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." wrogów jednym atakiem rozprasza "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl")..".",
			["pt-br"] = "Atingir pelo menos "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." inimigos com um ataque aplaca "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Perigo", "Peril_rgb_pt_br")..".",
			es = "Golpear al menos a "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemigos con un ataque aplaca "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Peligro", "Peril_rgb_es")..".",
		},
		--[+ BLAZING SPIRIT -- !!! MELEE !!! ruof Пламенный дух	07.04.2026
		-- Soulblaze Stacks and Max Stacks (per tier)
		-- Force Swords -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		-- !!!FORCE GREATSWORD TEMPORARILY USES THE DESCRIPTION FROM THE RANGED BLESSING!!!
		-- Force Greatswords -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		["loc_trait_bespoke_warp_burninating_on_crit_desc"] = { -- stacks: +4, max_stacks: 12, Stack(s)->Stacks, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." are gained by the enemy on "..CKWord("Critical Hit", "Crit_hit_rgb")..", up to "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks.\n"
				..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds. "..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("горения души", "gorenia_dushi_rgb_ru").." получает враг при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..", вплоть до "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядов. "
				..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
				..CPhrs("Cant_appl_thr_shlds"), -- ..CPhrs("Refr_dur_stappl") -- Пылающий дух
			fr = "L'ennemi gagne "..CNumb("+", "n_plus_rgb")..""..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls d'"..CKWord("Embrasement d'âme", "Soulblaze_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..", Jusqu'à "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls.",
			["zh-tw"] = CKWord("暴擊命中", "Crit_hit_rgb_tw").." 敵人時，\n使其獲得 "..CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." 層的 "..CKWord("靈火", "Soulblaze_rgb_tw").."。\n上限 "..CNumb("6", "n_6_rgb").." 層，烈焰力場巨劍 "..CNumb("12", "n_12_rgb").." 層。",
			["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时, 对敌人施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."。最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 次。",
			de = "Der Gegner erhält bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de").." "..CNumb("+", "n_plus_rgb")..""..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CKWord("Seelenbrand", "Soulblaze_rgb_de")..". Bis zu "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stapel.",
			it = "Il nemico ottiene "..CNumb("+", "n_plus_rgb")..""..CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CKWord("Fiamma dell'Anima", "Soulblaze_rgb_it").." con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it")..". Fino a "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." accumuli.",
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、敵に "..CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."を付与。最大 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." スタック。",
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 적에게 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CKWord("영혼의 불꽃", "Soulblaze_rgb_ko").."을 부여합니다. 최대 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 중첩.",
			pl = "Wróg otrzymuje "..CNumb("+", "n_plus_rgb")..""..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CKWord("Pożogi Duszy", "Soulblaze_rgb_pl").." przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl")..". Maks. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." ładunków.",
			["pt-br"] = "O inimigo ganha "..CNumb("+", "n_plus_rgb")..""..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CKWord("Labareda d'Alma", "Soulblaze_rgb_pt_br").." ao sofrer um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br")..". Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acúmulos.",
			es = "El enemigo obtiene "..CNumb("+", "n_plus_rgb")..""..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CKWord("Fuego de Alma", "Soulblaze_rgb_es").." al recibir un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es")..". Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acumulaciones.",
		},
		--[+ UNSTABLE POWER +]-- ruof Нестабильная мощь	07.04.2026
		-- Power per stack (per tier)
		-- Force Greatswords, Force Swords -- 3.5% | 4% | 4.5% | 5% (up to +20%)
		["loc_trait_bespoke_warp_charge_power_bonus_desc"] = { -- power_level: +20%, +colors
			en = "Up to "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb")..", with increasing "..CKWord("Peril", "Peril_rgb").." Level. "
				..Dot_nc.." Stacks "..CNumb("4", "n_4_rgb").." times. "..CNote("Pwr_note"),
			ru = "До "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." вы получаете, с увеличением уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
				..Dot_nc.." Суммируется "..CNumb("4", "n_4_rgb").." раза. "..CNote("Pwr_note"),
			fr = "Jusqu'à "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Puissance", "Strength_rgb_fr")..", en fonction du "..CKWord("Péril", "Peril_rgb_fr")..". Se cumule "..CNumb("4", "n_4_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = CKWord("反噬", "Peril_rgb_tw").." 每增加"..CNumb("20%", "pc_20_rgb").."， 獲得一層，\n每一層 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").." ，上限 "..CNumb("4", "n_4_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = "随"..CKWord("危机值", "Peril_rgb_zh_cn").."增长叠加层数，\n每增长 "..CNumb("20%", "pc_20_rgb").."，"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("4", "n_4_rgb").." 层。"..CNote("Pwr_note"),
			de = "Bis zu "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de")..", abhängig vom "..CKWord("Gefahr", "Peril_rgb_de").."-Level. Stapelt "..CNumb("4", "n_4_rgb").." Mal."..CNote("Pwr_note"),
			it = "Fino a "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it")..", in base al livello di "..CKWord("Pericolo", "Peril_rgb_it")..". Cumulabile "..CNumb("4", "n_4_rgb").." volte."..CNote("Pwr_note"),
			ja = CKWord("ペリル", "Peril_rgb_ja").."量に応じて、最大 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_ja").." を獲得。最大 "..CNumb("4", "n_4_rgb").." 回スタック。"..CNote("Pwr_note"),
			ko = CKWord("위험도", "Peril_rgb_ko").."에 따라 최대 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("위력", "Strength_rgb_ko").."을 얻습니다. 최대 "..CNumb("4", "n_4_rgb").."회 중첩."..CNote("Pwr_note"),
			pl = "Do "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." w zależności od poziomu "..CKWord("Zagrożenia", "Peril_rgb_pl")..". Kumuluje się "..CNumb("4", "n_4_rgb").." razy."..CNote("Pwr_note"),
			["pt-br"] = "Até "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br")..", baseado no nível de "..CKWord("Perigo", "Peril_rgb_pt_br")..". Acumula "..CNumb("4", "n_4_rgb").." vezes."..CNote("Pwr_note"),
			es = "Hasta "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es")..", según el nivel de "..CKWord("Peligro", "Peril_rgb_es")..". Se acumula "..CNumb("4", "n_4_rgb").." veces."..CNote("Pwr_note"),
		},
		--[+ WARP SLICE +]-- ruof Варп-удар
		-- Cooldown (per tier)
		-- Force Greatswords -- 30s | 25s | 20s | 15s
		["loc_trait_bespoke_wind_slash_crits_desc"] = { -- cooldown: 50, s->seconds, +colors
			en = "Guaranteed Activated "..CKWord("Critical Strike", "Crit_strike_rgb")..". Cooldown "..CNumb("{cooldown:%s}", "cd_var_rgb").." seconds.",
			ru = "Следующая специальная атака будет гарантированным "..CKWord("критическим ударом", "krit_udarom_rgb_ru")..". Восстанавливается "..CNumb("{cooldown:%s}", "cd_var_rgb").." секунд.", -- Варп нарезка
			fr = CKWord("Coup critique", "Crit_hit_rgb_fr").." garranti activé. Temps de recharge : "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondes.",
			["zh-tw"] = "攻擊必定 "..CKWord("暴擊", "Crit_rgb_tw").."，冷卻時間 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒",
			["zh-cn"] = "使下次充能攻击必定"..CKWord("暴击", "Crit_rgb_zh_cn").."，\n冷却时间 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。",
			de = "Garantierter "..CKWord("Kritischer Treffer", "Crit_strike_rgb_de").." bei Aktivierung. Abklingzeit "..CNumb("{cooldown:%s}", "cd_var_rgb").." Sekunden.",
			it = CKWord("Colpo Critico", "Crit_strike_rgb_it").." Garantito all'Attivazione. Ricarica "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondi.",
			ja = "発動時、必ず"..CKWord("クリティカルストライク", "Crit_strike_rgb_ja").."になる。クールダウン "..CNumb("{cooldown:%s}", "cd_var_rgb").."秒。",
			ko = "발동 시 "..CKWord("크리티컬 스트라이크", "Crit_strike_rgb_ko").."가 확정됩니다. 재사용 대기시간 "..CNumb("{cooldown:%s}", "cd_var_rgb").."초.",
			pl = "Gwarantowany "..CKWord("Krytyczny Atak", "Crit_strike_rgb_pl").." po aktywacji. Czas odnowienia "..CNumb("{cooldown:%s}", "cd_var_rgb").." sek.",
			["pt-br"] = CKWord("Golpe Crítico", "Crit_strike_rgb_pt_br").." Garantido ao Ativar. Tempo de recarga "..CNumb("{cooldown:%s}", "cd_var_rgb").." segundos.",
			es = CKWord("Golpe Crítico", "Crit_strike_rgb_es").." Garantizado al Activar. Tiempo de recarga "..CNumb("{cooldown:%s}", "cd_var_rgb").." segundos.",
		},
		--[+ EXORCIST +]-- ruof Экзорцист
		-- Peril Amount Removed (per tier)
		-- Force Swords -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge_desc"] = { -- warp_charge: 5%, +colors
			en = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." of "..CKWord("Peril", "Peril_rgb").." is quelled on Repeated "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". "
				..Dot_nc.." Procs only once per swing regardless of how many enemy "..CKWord("Weakspots", "Weakspots_rgb").." are hit.",
			ru = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при повторном попадании в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..". "
				..Dot_nc.." Срабатывает только "..CNumb("1", "n_1_rgb").." раз за атаку.",
			fr = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." du "..CKWord("Péril", "Peril_rgb_fr").." est dissipé sur les "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." répété.",
			["zh-tw"] = "連續 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時，消除 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("反噬", "Peril_rgb_tw").." 。",
			["zh-cn"] = "连锁攻击"..CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，\n平息 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."。",
			de = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Gefahr", "Peril_rgb_de").." wird bei wiederholten "..CKWord("Schwachstellentreffern", "Weakspothit_rgb_de").." abgebaut.",
			it = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Pericolo", "Peril_rgb_it").." placato a Colpi ripetuti su "..CKWord("Punto Debole", "Weakspothit_rgb_it")..".",
			ja = "連続"..CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、"..CKWord("ペリル", "Peril_rgb_ja").."が "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." 解消。",
			ko = "연속 "..CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 "..CKWord("위험도", "Peril_rgb_ko").."가 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." 감소합니다.",
			pl = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl").." rozpraszane przy Wielokrotnym "..CKWord("Trafieniu w Słaby Punkt", "Weakspothit_rgb_pl")..".",
			["pt-br"] = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Perigo", "Peril_rgb_pt_br").." é aplacado em "..CKWord("Acertos em Ponto Fraco", "Weakspothit_rgb_pt_br").." Repetidos.",
			es = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Peligro", "Peril_rgb_es").." se aplaca en "..CKWord("Golpes a Punto Débil", "Weakspothit_rgb_es").." Repetidos.",
		},
		--[+ SUPERIORITY +]-- ruof Превосходство	20.04.2026
		-- Power per stack (per tier)
		-- Crowbar, Force Swords -- 5% | 7.5% | 10% | 12.5% (up to +37.5%)
		["loc_trait_bespoke_elite_kills_grants_stackable_power_desc"] = { -- stacks: 5, power_level: +12.5%, time: 7, s->seconds, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Elite and Specialist Kill. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr_drop_1").." "..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд при убийстве элитного врага или специалиста. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раза. "
				..CPhrs("Can_be_refr_drop_1"), -- ..CNote("Pwr_note")
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination d'élite. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Les cumuls se détériorent un à un."..CNote("Pwr_note"),
			["zh-tw"] = "擊殺精英時，增加 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次擊殺可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = "击杀精英敌人时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层，该效果逐层衰减。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden bei Elite-Kill. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal. Stapel bauen einzeln ab."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. dopo un'Uccisione di Élite. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte. Gli accumuli decadono singolarmente."..CNote("Pwr_note"),
			ja = "エリートキル時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。スタックは個別に消失。"..CNote("Pwr_note"),
			ko = "엘리트 처치 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩. 중첩은 하나씩 사라집니다."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. po Zabiciu Elity. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy. Ładunki zanikają pojedynczo."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Matar um Elite. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes. Acúmulos decaem individualmente."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Matar a un Élite. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces. Las acumulaciones decaen individualmente."..CNote("Pwr_note"),
		},
		--[+ LIGHTNING REFLEXES +]-- ruof Молниеносные рефлексы
		-- Melee Power (per tier)
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc"] = { -- power_level: 25%, duration: 3, cooldown_duration: 3, +colors
			en = "Perfect Block "..CKWord("Stuns", "Stuns_rgb").." attacker, and grant you "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds. Cooldown "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." seconds. "
				..CNote("Pwr_note"),
			ru = "При идеальном блоке атакующий враг "..CKWord("ошеломляется", "oshelomlaetsa_rgb_ru")..", а вы получаете "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." ближнего боя на "..CNumb("{duration:%s}", "dur_var_rgb").." секунды. Восстанавливается "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." секунды.", -- ..CNote("Pwr_note_rgb_ru
			fr = "Les blocages opportuns "..CKWord("étourdissent", "Stun_s_rgb_fr").." l'attaquant et vous octroient "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." de mélée pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes. Temps de recharge : "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." secondes."..CNote("Pwr_note"),
			["zh-tw"] = "完美格擋會使攻擊者 "..CKWord("暈眩", "Staggers_rgb_tw").." ，\n並 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 近戰 "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n冷卻時間為 "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." 秒。"..CNote("Pwr_note"),
			["zh-cn"] = "完美格挡会使目标"..CKWord("眩晕", "Electrocute_rgb_zh_cn").."，\n同时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 近战"..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n冷却时间 "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." 秒。"..CNote("Pwr_note"),
			de = "Perfektes Blocken "..CKWord("betäubt", "Stuns_rgb_de").." den Angreifer und gewährt "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Nahkampf-"..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{duration:%s}", "dur_var_rgb").." Sek. Abklingzeit "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." Sek."..CNote("Pwr_note"),
			it = "I Blocchi Perfetti "..CKWord("Stordiscono", "Stuns_rgb_it").." l'attaccante e garantiscono "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." in Corpo a Corpo per "..CNumb("{duration:%s}", "dur_var_rgb").." sec. Ricarica "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." sec."..CNote("Pwr_note"),
			ja = "パーフェクトブロックで攻撃者を"..CKWord("スタン", "Stuns_rgb_ja").."させ、"..CNumb("{duration:%s}", "dur_var_rgb").."秒間、近接"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。クールダウン "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").."秒。"..CNote("Pwr_note"),
			ko = "완벽한 블록 시 공격자를 "..CKWord("기절", "Stuns_rgb_ko").."시키고 "..CNumb("{duration:%s}", "dur_var_rgb").."초 동안 근접 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 재사용 대기시간 "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").."초."..CNote("Pwr_note"),
			pl = "Perfekcyjny Blok "..CKWord("Ogłusza", "Stuns_rgb_pl").." atakującego i zapewnia "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." w Walce Wręcz na "..CNumb("{duration:%s}", "dur_var_rgb").." sek. Odnowienie "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." sek."..CNote("Pwr_note"),
			["pt-br"] = "Bloqueios Perfeitos "..CKWord("Atordoam", "Stuns_rgb_pt_br").." o atacante e concedem "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." Corpo a Corpo por "..CNumb("{duration:%s}", "dur_var_rgb").." seg. Tempo de recarga "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." seg."..CNote("Pwr_note"),
			es = "Bloqueos Perfectos "..CKWord("Aturden", "Stuns_rgb_es").." al atacante y otorgan "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." Cuerpo a Cuerpo durante "..CNumb("{duration:%s}", "dur_var_rgb").." seg. Tiempo de recarga "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." seg."..CNote("Pwr_note"),
		},
		--[+ HIGH VOLTAGE +]-- ruof Высокое напряжение
		-- Damage vs Electrocuted (per tier)
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_damage_bonus_vs_electrocuded_desc"] = { -- damage: +25%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs "..CKWord("Electrocuted", "Electrocuted_rgb").." enemies.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." против врагов, поражённых "..CKWord("электрошоком", "elektroshokom_rgb_ru")..".",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les ennemies "..CKWord("Électrocutés", "Electrocuted_rgb_fr").." .",
			["zh-tw"] = "對 "..CKWord("被電擊", "Electrocuted_rgb_tw").." 的敵人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." 。",
			["zh-cn"] = "对"..CKWord("眩晕", "Electrocuted_rgb_zh_cn").."敌人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen "..CKWord("elektrokutierte", "Electrocuted_rgb_de").." Gegner.",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." contro nemici "..CKWord("Elettrizzati", "Electrocuted_rgb_it")..".",
			ja = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("ダメージ", "Damage_rgb_ja").." vs "..CKWord("感電状態", "Electrocuted_rgb_ja").."の敵。",
			ko = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("피해", "Damage_rgb_ko").." vs "..CKWord("감전된", "Electrocuted_rgb_ko").." 적.",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." przeciwko "..CKWord("Porażonym", "Electrocuted_rgb_pl").." wrogom.",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." contra inimigos "..CKWord("Eletrocutados", "Electrocuted_rgb_pt_br")..".",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." contra enemigos "..CKWord("Electrocutados", "Electrocuted_rgb_es")..".",
		},
		--[+ FALTER +]-- ruof Дрожь
		-- Weakspot Stagger Reduction Modifier (per tier)
		-- Arbites Shock Maul, Shock Mauls -- 60% | 70% | 80% | 90%
		["loc_trait_bespoke_negate_stagger_reduction_on_weakspot_desc"] = { -- stagger: 90%, ranged_stagger: 30%, +colors
			en = CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." Ranged "..CKWord("Stagger", "Stagger_rgb").." strength.\n"
				..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Stagger", "Stagger_rgb").." on enemies on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..".",
			ru = CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." к силе "..CKWord("ошеломления", "oshelomlenia_rgb_ru").." для дальнобойных атак.\n"
				..CNumb("{stagger:%s}", "stgr_var_rgb").." к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." врагов при попадании в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".",
			fr = "Le "..CKWord("Vacillement", "Stagger_rgb_fr").." des ennemis augmente de "..CNumb("{stagger:%s}", "stgr_var_rgb")..", lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..". De plus augmente la puissance du "..CKWord("Vacillement", "Stagger_rgb_fr").." à distance de "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb")..".",
			["zh-tw"] = CKWord("弱點命中", "Weakspothit_rgb_tw").." 時，增加 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("踉蹌效果", "Stagger2_rgb_tw").." ，\n與 "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." 的遠程 "..CKWord("踉蹌效果", "Stagger2_rgb_tw").." 。",
			["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，\n对敌人施加的"..CKWord("踉跄", "Stagger_rgb_zh_cn").."效果 "..CNumb("{stagger:%s}", "stgr_var_rgb").."。\n远程武器带有该祝福时，\n额外 "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."。",
			de = "Erhöht die "..CKWord("Wucht", "Stagger_rgb_de").." bei einem "..CKWord("Schwachstellentreffer", "Weakspothit_rgb_de").." um "..CNumb("{stagger:%s}", "stgr_var_rgb")..". Zusätzlich "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." Fernkampf-"..CKWord("Wucht", "Stagger_rgb_de")..".",
			it = "Aumenta lo "..CKWord("Barcollamento", "Stagger_rgb_it").." dei nemici del "..CNumb("{stagger:%s}", "stgr_var_rgb").." con un "..CKWord("Colpo a Punto Debole", "Weakspothit_rgb_it")..". Inoltre, aumenta la potenza di "..CKWord("Barcollamento", "Stagger_rgb_it").." a distanza del "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb")..".",
			ja = CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、敵への"..CKWord("スタッガー", "Stagger_rgb_ja").."効果が "..CNumb("{stagger:%s}", "stgr_var_rgb").." 増加。さらに遠隔"..CKWord("スタッガー", "Stagger_rgb_ja").."効果が "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." 増加。",
			ko = CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 적에게 주는 "..CKWord("스태거", "Stagger_rgb_ko").." 효과가 "..CNumb("{stagger:%s}", "stgr_var_rgb").." 증가합니다. 또한 원거리 "..CKWord("스태거", "Stagger_rgb_ko").." 효과가 "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." 증가합니다.",
			pl = "Zwiększa "..CKWord("Oszołomienie", "Stagger_rgb_pl").." wrogów o "..CNumb("{stagger:%s}", "stgr_var_rgb").." przy "..CKWord("Trafieniu w Słaby Punkt", "Weakspothit_rgb_pl")..". Dodatkowo, siła "..CKWord("Oszołomienia", "Stagger_rgb_pl").." na dystans wzrasta o "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb")..".",
			["pt-br"] = "Aumenta o "..CKWord("Cambaleio", "Stagger_rgb_pt_br").." dos inimigos em "..CNumb("{stagger:%s}", "stgr_var_rgb").." ao "..CKWord("Acertar um Ponto Fraco", "Weakspothit_rgb_pt_br")..". Também aumenta o "..CKWord("Cambaleio", "Stagger_rgb_pt_br").." à distância em "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb")..".",
			es = "Aumenta el "..CKWord("Tambaleo", "Stagger_rgb_es").." de los enemigos en "..CNumb("{stagger:%s}", "stgr_var_rgb").." al "..CKWord("Golpear un Punto Débil", "Weakspothit_rgb_es")..". También aumenta la potencia de "..CKWord("Tambaleo", "Stagger_rgb_es").." a distancia en "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb")..".",
		},
		--[+ OVERWHELMING FORCE +]-- ruof Подавляющая сила
		-- Cooldown and Proc Chance (per tier)
		-- Shock Mauls -- 5s and 10% | 4.5s and 15% | 4s and 20% | 3.5s and 25%
		["loc_trait_bespoke_staggering_hits_has_chance_to_stun_desc"] = { -- chance: 25%, cooldown: 3.5, +colors
			en = CKWord("Staggering", "Staggering_rgb").." an Enemy has a "..CNumb("{chance:%s}", "chnc_var_rgb").." Chance to "..CKWord("Electrocute", "Electrocute_rgb").." the enemy. Cooldown "..CNumb("{cooldown:%s}", "cd_var_rgb").." seconds. "
				..Dot_red.." Does not proc on pushes.",
			ru = CKWord("Ошеломление", "Oshelomlenie_rgb_ru").." врага с шансом в "..CNumb("{chance:%s}", "chnc_var_rgb").." может наложить эффект "..CKWord("электрошока", "elektroshoka_rgb_ru").." на врага. Восстанавливается "..CNumb("{cooldown:%s}", "cd_var_rgb").." секунды. "
				..Dot_red.." Не срабатывает при толчках.",
			fr = "Faire "..CKWord("vaciller", "Staggering_rgb_fr").." un ennemie à "..CNumb("{chance:%s}", "chnc_var_rgb").." de chance de l'"..CKWord("Électrocuter", "Electrocute_rgb_fr")..". Temps de recharge : "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondes.",
			["zh-tw"] = "使敵人 "..CKWord("踉蹌", "Stagger_rgb_tw").." 時，\n有 "..CNumb("{chance:%s}", "chnc_var_rgb").." 的機率使敵人 "..CKWord("眩暈", "Staggering_rgb_tw").." 。\n冷卻時間 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。",
			["zh-cn"] = CKWord("踉跄", "Stagger_rgb_zh_cn").."敌人时 "..CNumb("{chance:%s}", "chnc_var_rgb").." 几率使目标"..CKWord("眩晕", "Electrocute_rgb_zh_cn").."。\n冷却时间 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。",
			de = "Hat eine Chance von "..CNumb("{chance:%s}", "chnc_var_rgb")..", einen "..CKWord("taumelnden", "Staggering_rgb_de").." Gegner zu "..CKWord("elektrokutieren", "Electrocute_rgb_de")..". Abklingzeit "..CNumb("{cooldown:%s}", "cd_var_rgb").." Sek.",
			it = "Far "..CKWord("Barcollare", "Staggering_rgb_it").." un nemico ha il "..CNumb("{chance:%s}", "chnc_var_rgb").." di "..CKWord("Elettrizzarlo", "Electrocute_rgb_it")..". Ricarica "..CNumb("{cooldown:%s}", "cd_var_rgb").." sec.",
			ja = "敵を"..CKWord("スタッガー", "Staggering_rgb_ja").."させると、"..CNumb("{chance:%s}", "chnc_var_rgb").." の確率で"..CKWord("感電", "Electrocute_rgb_ja").."させる。クールダウン "..CNumb("{cooldown:%s}", "cd_var_rgb").."秒。",
			ko = "적을 "..CKWord("스태거", "Staggering_rgb_ko").."시키면 "..CNumb("{chance:%s}", "chnc_var_rgb").." 확률로 적을 "..CKWord("감전", "Electrocute_rgb_ko").."시킵니다. 재사용 대기시간 "..CNumb("{cooldown:%s}", "cd_var_rgb").."초.",
			pl = "Wprawienie wroga w "..CKWord("Oszołomienie", "Staggering_rgb_pl").." daje "..CNumb("{chance:%s}", "chnc_var_rgb").." szansy na jego "..CKWord("Porażenie", "Electrocute_rgb_pl")..". Czas odnowienia "..CNumb("{cooldown:%s}", "cd_var_rgb").." sek.",
			["pt-br"] = "Fazer um inimigo "..CKWord("Cambalear", "Staggering_rgb_pt_br").." tem "..CNumb("{chance:%s}", "chnc_var_rgb").." de chance de "..CKWord("Eletrocutá-lo", "Electrocute_rgb_pt_br")..". Tempo de recarga "..CNumb("{cooldown:%s}", "cd_var_rgb").." seg.",
			es = "Hacer "..CKWord("Tambalear", "Staggering_rgb_es").." a un enemigo tiene un "..CNumb("{chance:%s}", "chnc_var_rgb").." de probabilidad de "..CKWord("Electrocutarlo", "Electrocute_rgb_es")..". Tiempo de recarga "..CNumb("{cooldown:%s}", "cd_var_rgb").." seg.",
		},
		--[+ COUNTERATTACK +]-- ruof Контратака
		-- Melee Attack Speed (per tier)
		-- Power Falchions, Relic Blade, Shock Mauls and Shield -- 6% | 8% | 10% | 12%
		["loc_attack_speed_on_perfect_block_desc"] = { -- attack_speed: 10%, duration: 5, interval: 8, +colors
			en = CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." Attack Speed for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds on a Perfect Block. Can only occur once every "..CNumb("{interval:%s}", "interval_var_rgb").." seconds. "
				..Dot_red.." Сannot be refreshed during active duration.",
			ru = CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." к скорости атаки на "..CNumb("{duration:%s}", "dur_var_rgb").." секунд при идеальном блоке. Срабатывает раз в "..CNumb("{interval:%s}", "interval_var_rgb").." секунд. "
				..Dot_red.." Нельзя обновить во время действия.",
			fr = "Gagnez "..CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." de Vitesse d'attaque pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes lors d'un blocage parfait. Ne peux se produire que toute les "..CNumb("{interval:%s}", "interval_var_rgb").." secondes.",
			["zh-tw"] = "完美格擋時，\n獲得 "..CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." 的攻擊速度，持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n每 "..CNumb("{interval:%s}", "interval_var_rgb").." 秒觸發一次",
			["zh-cn"] = "完美格挡时 "..CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." 攻击速度，持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n每 "..CNumb("{interval:%s}", "interval_var_rgb").." 秒只能触发一次。",
			de = CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." Angriffsgeschwindigkeit für "..CNumb("{duration:%s}", "dur_var_rgb").." Sek. bei einem Perfekten Block. Kann nur einmal alle "..CNumb("{interval:%s}", "interval_var_rgb").." Sek. auftreten.",
			it = CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." Velocità d'Attacco per "..CNumb("{duration:%s}", "dur_var_rgb").." sec. con un Blocco Perfetto. Può verificarsi solo una volta ogni "..CNumb("{interval:%s}", "interval_var_rgb").." sec.",
			ja = "パーフェクトブロック時、"..CNumb("{duration:%s}", "dur_var_rgb").."秒間、攻撃速度が "..CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." 増加。"..CNumb("{interval:%s}", "interval_var_rgb").."秒に一度のみ発動可能。",
			ko = "완벽한 블록 시 "..CNumb("{duration:%s}", "dur_var_rgb").."초 동안 공격 속도가 "..CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." 증가합니다. "..CNumb("{interval:%s}", "interval_var_rgb").."초에 한 번만 발동합니다.",
			pl = CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." Szybkości Ataku na "..CNumb("{duration:%s}", "dur_var_rgb").." sek. po Perfekcyjnym Bloku. Może wystąpić raz na "..CNumb("{interval:%s}", "interval_var_rgb").." sek.",
			["pt-br"] = CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." de Velocidade de Ataque por "..CNumb("{duration:%s}", "dur_var_rgb").." seg. ao realizar um Bloqueio Perfeito. Só pode ocorrer uma vez a cada "..CNumb("{interval:%s}", "interval_var_rgb").." seg.",
			es = CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." Velocidad de Ataque durante "..CNumb("{duration:%s}", "dur_var_rgb").." seg. al realizar un Bloqueo Perfecto. Solo puede ocurrir una vez cada "..CNumb("{interval:%s}", "interval_var_rgb").." seg.",
		},
		--[+ CRANIAL GROUNDING +]-- ruof Черепное заземление
		-- Overheat Cost Reduction and Finesse Bonus per stack (per tier)
		-- Power Falchions, Relic Blade -- 3% and 1% | 4% and 2% | 5%and 3% | 6% and 4% (up to ~26.6% and +20%)
		["loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat_desc"] = { -- buildup_amount: 6%, damage: 4%, duration: 3 , stacks: 5, s->seconds, +colors
			en = CNumb("{buildup_amount:%s}", "buildup_var_rgb").." "..CKWord("Heat", "Heat_rgb").." buildup and "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds on chained "..CKWord("Weakspot Hits", "Weakspothits_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{buildup_amount:%s}", "buildup_var_rgb").." к набору "..CKWord("перегрева", "peregreva_rgb_ru").." и "..CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." на "..CNumb("{duration:%s}", "dur_var_rgb").." секунды при серии ударов в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr"),
			fr = "Réduit la génération de "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." et augmente les "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." de "..CNumb("{damage:%s}", "dmg_var_rgb").." pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes lors de "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." répétés. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "連續 "..CKWord("命中弱點", "Weakspothits_rgb_tw").." 時 "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." "..CKWord("熱能", "Heat_rgb_tw").." ，\n且 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."，\n持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 \n"..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."积累，同时 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."，\n持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Fns_note"),
			de = "Reduziert den "..CKWord("Hitze", "Heat_rgb_de").."-Aufbau um "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." und erhöht "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de").." um "..CNumb("{damage:%s}", "dmg_var_rgb").." für "..CNumb("{duration:%s}", "dur_var_rgb").." Sek. bei aufeinanderfolgenden "..CKWord("Schwachstellentreffern", "Weakspothits_rgb_de")..". Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = "Riduce l'accumulo di "..CKWord("Calore", "Heat_rgb_it").." del "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." e aumenta i "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it").." del "..CNumb("{damage:%s}", "dmg_var_rgb").." per "..CNumb("{duration:%s}", "dur_var_rgb").." sec. a "..CKWord("Colpi a Punto Debole", "Weakspothits_rgb_it").." ripetuti. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続"..CKWord("弱点ヒット", "Weakspothits_rgb_ja").."時、"..CNumb("{duration:%s}", "dur_var_rgb").."秒間"..CKWord("ヒート", "Heat_rgb_ja").."蓄積が "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." 減少し、"..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。",
			ko = "연속 "..CKWord("약점 적중", "Weakspothits_rgb_ko").." 시 "..CNumb("{duration:%s}", "dur_var_rgb").."초 동안 "..CKWord("열기", "Heat_rgb_ko").." 축적이 "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." 감소하고 "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = "Zmniejsza generowanie "..CKWord("Ciepła", "Heat_rgb_pl").." o "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." i zwiększa "..CKWord("Obrażenia w słaby punkt", "Weakspot_dmg_rgb_pl").." o "..CNumb("{damage:%s}", "dmg_var_rgb").." na "..CNumb("{duration:%s}", "dur_var_rgb").." sek. przy Wielokrotnych "..CKWord("Trafieniach w Słaby Punkt", "Weakspothits_rgb_pl")..". Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = "Reduz o acúmulo de "..CKWord("Calor", "Heat_rgb_pt_br").." em "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." e aumenta o "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br").." em "..CNumb("{damage:%s}", "dmg_var_rgb").." por "..CNumb("{duration:%s}", "dur_var_rgb").." segundos em "..CKWord("Acertos em Ponto Fraco", "Weakspothits_rgb_pt_br").." consecutivos. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = "Reduce la acumulación de "..CKWord("Calor", "Heat_rgb_es").." en "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." y aumenta el "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es").." en "..CNumb("{damage:%s}", "dmg_var_rgb").." durante "..CNumb("{duration:%s}", "dur_var_rgb").." segundos al "..CKWord("Golpear Puntos Débiles", "Weakspothits_rgb_es").." repetidamente. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
			-- !!! Removed "+". Fix in the Enhanced_Descriptions.lua file !!! --
		--[+ OVERLOAD +]-- ruof Перегрузка
		-- Overheat Amount Removed (per tier)
		-- Power Falchions, Relic Blade -- 10% | 15% | 20% | 25%
		["loc_explosion_on_overheat_lockout_desc"] = { -- overheat_reduction: 25%, +colors
			en = CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." "..CKWord("Heat", "Heat_rgb").." is reduced immediately upon Lockout, and you cause an Explosion around you.",
			ru = CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." "..CKWord("перегрева", "peregreva_rgb_ru").." немедленно сбрасывается при полном перегреве.\nТакже происходит небольшой взрыв, который наносит малый "..CKWord("урон", "uron_rgb_ru").." и слегка "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов.",
			fr = "Lorsque vous entrez en état de Verouillage, vous produisez une Explosion autour de vous et réduisez immédiatement la "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb")..".",
			["zh-tw"] = "進入鎖定狀態時，產生爆炸，\n並立即降低 "..CKWord("熱能", "Heat_rgb_tw").." "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." 。",
			["zh-cn"] = CKWord("热量", "Heat_rgb_zh_cn").."达到 "..CNumb("100%", "pc_100_rgb").." 并进入锁定状态时，\n在周身范围引发一次爆炸，\n并立刻减少 "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."。",
			de = "Beim Erreichen der Überhitzungssperre wird eine Explosion um euch herum ausgelöst und die "..CKWord("Hitze", "Heat_rgb_de").." sofort um "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." reduziert.",
			it = "Quando entri in stato di Blocco, provochi un'Esplosione intorno a te e riduci immediatamente il "..CKWord("Calore", "Heat_rgb_it").." del "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb")..".",
			ja = "ロックアウト状態になると、周囲に爆発を起こし、"..CKWord("ヒート", "Heat_rgb_ja").."が即座に "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." 減少する。",
			ko = "과열 잠금 상태에 돌입하면 주변에 폭발을 일으키고 "..CKWord("열기", "Heat_rgb_ko").."가 즉시 "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." 감소합니다.",
			pl = "Po wejściu w stan Zablokowania, wywołujesz Eksplozję wokół siebie i natychmiast redukujesz "..CKWord("Ciepło", "Heat_rgb_pl").." o "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb")..".",
			["pt-br"] = "Ao entrar em estado de Travamento, você causa uma Explosão ao redor e reduz imediatamente o "..CKWord("Calor", "Heat_rgb_pt_br").." em "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb")..".",
			es = "Al entrar en estado de Bloqueo, causas una Explosión a tu alrededor y reduces inmediatamente el "..CKWord("Calor", "Heat_rgb_es").." en "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb")..".",
		},
		--[+ ENERGY LEAKAGE +]-- ruof Утечка энергии
		-- Power per stack (per tier)
		-- Power Falchions, Relic Blades -- 1.5% | 2% | 3% | 4% (up to +20%)
		["loc_power_bonus_scaled_on_heat_desc"] = { -- amount: 4%, +colors
			en = "Up to "..CNumb("{amount}", "amount_var_rgb").." "..CKWord("Strength", "Strength_rgb")..", scaled on "..CKWord("Heat", "Heat_rgb")..".\n"
				..CNote("Pwr_note"),
			ru = "До "..CNumb("{amount}", "amount_var_rgb").." к "..CKWord("силе", "sile_rgb_ru")..", в зависимости от "..CKWord("перегрева", "peregreva_rgb_ru")..". "
				..CNote("Pwr_note"),
			fr = "Augmente la "..CKWord("Puissance", "Strength_rgb_fr").." jusqu'à "..CNumb("{amount}", "amount_var_rgb")..", en fonction de la "..CKWord("Chaleur", "Heat_rgb_fr").."."..CNote("Pwr_note"),
			["zh-tw"] = "依據當前 "..CKWord("熱能", "Heat_rgb_tw").." ，最多獲得 "..CNumb("{amount}", "amount_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").." 。"..CNote("Pwr_note"),
			["zh-cn"] = "随"..CKWord("热量", "Heat_rgb_zh_cn").."增长叠加层数，\n每增长 "..CNumb("20%", "pc_20_rgb").."，"..CNumb("{amount}", "amount_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。"..CNote("Pwr_note"),
			de = "Erhöht die "..CKWord("Stärke", "Strength_rgb_de").." um bis zu "..CNumb("{amount}", "amount_var_rgb")..", abhängig vom "..CKWord("Hitze", "Heat_rgb_de").."-Level."..CNote("Pwr_note"),
			it = "Aumenta la "..CKWord("Potenza", "Strength_rgb_it").." fino a "..CNumb("{amount}", "amount_var_rgb")..", in base al livello di "..CKWord("Calore", "Heat_rgb_it").."."..CNote("Pwr_note"),
			ja = CKWord("ヒート", "Heat_rgb_ja").."量に応じて、最大 "..CNumb("{amount}", "amount_var_rgb").." "..CKWord("威力", "Strength_rgb_ja").." を獲得。"..CNote("Pwr_note"),
			ko = CKWord("열기", "Heat_rgb_ko").."에 따라 최대 "..CNumb("{amount}", "amount_var_rgb").." "..CKWord("위력", "Strength_rgb_ko").."을 얻습니다."..CNote("Pwr_note"),
			pl = "Zwiększa "..CKWord("Siłę", "Strength_rgb_pl").." nawet do "..CNumb("{amount}", "amount_var_rgb")..", w zależności od poziomu "..CKWord("Ciepła", "Heat_rgb_pl").."."..CNote("Pwr_note"),
			["pt-br"] = "Aumenta a "..CKWord("Potência", "Strength_rgb_pt_br").." em até "..CNumb("{amount}", "amount_var_rgb")..", baseado no nível de "..CKWord("Calor", "Heat_rgb_pt_br").."."..CNote("Pwr_note"),
			es = "Aumenta la "..CKWord("Potencia", "Strength_rgb_es").." hasta "..CNumb("{amount}", "amount_var_rgb")..", según el nivel de "..CKWord("Calor", "Heat_rgb_es").."."..CNote("Pwr_note"),
		},
		--[+ HEATSINK +]-- ruof Теплоотвод
		-- Overheat Amount Removed (per tier)
		-- Power Falchions, Relic Blades -- 4% | 6% | 8% | 10%
		["loc_reduce_fixed_overheat_amount_desc"] = { -- amount: 10%, time: 3, s->seconds, +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("{amount}", "amount_var_rgb").." "..CKWord("Heat", "Heat_rgb").." over "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Weakspot", "Weakspot_rgb").." or "..CKWord("Critical", "Critical_rgb").." Kills. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("-", "n_minus_rgb")..CNumb("{amount}", "amount_var_rgb").." "..CKWord("перегрева", "peregreva_rgb_ru").." за "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийств "..CKWord("Critical Hits", "krit_udarami_rgb_ru").." или убийств в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".\n"
				..CPhrs("Can_be_refr"),
			fr = "Les éliminations sur "..CKWord("Point faible", "Weakspot_rgb_fr").." et "..CKWord("Coups critiques", "Crit_hits_rgb_fr").." réduisent la "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{amount}", "amount_var_rgb").." sur "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			["zh-tw"] = CKWord("弱點擊殺", "Weakspot_k_dmg_rgb_tw").." 和 "..CKWord("暴擊擊殺", "Crit_k_rgb_tw").." ， \n在 "..CNumb("{time:%s}", "time_var_rgb").." 秒內 "..CKWord("熱能", "Heat_rgb_tw").." 減少 "..CNumb("{amount}", "amount_var_rgb"),
			["zh-cn"] = CKWord("弱点击杀", "Weakspothits_k_rgb_zh_cn").."和"..CKWord("暴击击杀", "Crit_hits_k_rgb_zh_cn").."时，\n在 "..CNumb("{time:%s}", "time_var_rgb").." 秒内减少"..CNumb("{amount}", "amount_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."。",
			de = CNumb("{amount}", "amount_var_rgb").." "..CKWord("Hitze", "Heat_rgb_de").." wird über "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei "..CKWord("Schwachstellen-", "Weakspot_rgb_de").." oder "..CKWord("Kritischen Kills", "Crit_hits_rgb_de").." reduziert.",
			it = "Le uccisioni su "..CKWord("Punto Debole", "Weakspot_rgb_it").." o "..CKWord("Critiche", "Crit_hits_rgb_it").." riducono il "..CKWord("Calore", "Heat_rgb_it").." di "..CNumb("{amount}", "amount_var_rgb").." in "..CNumb("{time:%s}", "time_var_rgb").." sec.",
			ja = CKWord("弱点キル", "Weakspot_k_dmg_rgb_ja").."か"..CKWord("クリティカルキル", "Crit_k_rgb_ja").."時、"..CNumb("{time:%s}", "time_var_rgb").."秒間で"..CKWord("ヒート", "Heat_rgb_ja").."が "..CNumb("{amount}", "amount_var_rgb").." 減少。",
			ko = CKWord("약점 처치", "Weakspot_k_dmg_rgb_ko").." 또는 "..CKWord("크리티컬 처치", "Crit_k_rgb_ko").." 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("열기", "Heat_rgb_ko").."가 "..CNumb("{amount}", "amount_var_rgb").." 감소합니다.",
			pl = "Zabójstwa w "..CKWord("Słaby Punkt", "Weakspot_rgb_pl").." lub "..CKWord("Krytyczne", "Crit_hits_rgb_pl").." redukują "..CKWord("Ciepło", "Heat_rgb_pl").." o "..CNumb("{amount}", "amount_var_rgb").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek.",
			["pt-br"] = "Abates em "..CKWord("Ponto Fraco", "Weakspot_rgb_pt_br").." ou "..CKWord("Críticos", "Crit_hits_rgb_pt_br").." reduzem o "..CKWord("Calor", "Heat_rgb_pt_br").." em "..CNumb("{amount}", "amount_var_rgb").." por "..CNumb("{time:%s}", "time_var_rgb").." seg.",
			es = "Las muertes en "..CKWord("Punto Débil", "Weakspot_rgb_es").." o "..CKWord("Críticas", "Crit_hits_rgb_es").." reducen el "..CKWord("Calor", "Heat_rgb_es").." en "..CNumb("{amount}", "amount_var_rgb").." durante "..CNumb("{time:%s}", "time_var_rgb").." seg.",
		},
		--[+ SYPHON +]-- ruof Сифон
		-- Max Toughness Percentage (per tier)
		-- Relic Blade -- 10% | 12% | 14% | 16%
		["loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special_desc"] = { -- toughness: 16%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." regains on hitting at least "..CNumb("3", "n_3_rgb").." enemies with an attack while weapon Special is active. "
				..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при попадании по "..CNumb("3", "n_3_rgb").." или более врагам при активированной специальной атаке.\n"
				..CPhrs("Dont_intw_coher_tghn"), -- Выкачивание
			fr = "Toucher au moins "..CNumb("3", "n_3_rgb").." ennemis avec une attaque lorsque la forme Spéciale de l'arme est active, restaure "..CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr")..".",
			["zh-tw"] = "在武器充能期間，\n一次攻擊命中至少 "..CNumb("3", "n_3_rgb").." 個敵人時，\n"..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").." 。",
			["zh-cn"] = "武器充能期间，\n命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时，"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。",
			de = "Das Treffen von mindestens "..CNumb("3", "n_3_rgb").." Gegnern mit einem Angriff bei aktiver Waffenspezialfunktion stellt "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").." wieder her.",
			it = "Colpire almeno "..CNumb("3", "n_3_rgb").." nemici con un attacco mentre l'Attacco Speciale dell'arma è attivo, ripristina "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Tempra", "Toughness_rgb_it")..".",
			ja = "武器特殊アクション発動中に、一度の攻撃で "..CNumb("3", "n_3_rgb").." 体以上の敵に命中すると、"..CKWord("タフネス", "Toughness_rgb_ja").."が "..CNumb("{toughness:%s}", "tghns_var_rgb").." 回復。",
			ko = "무기 특수 기능이 활성화된 동안 한 번의 공격으로 최소 "..CNumb("3", "n_3_rgb").."명의 적을 적중시키면 "..CKWord("강인함", "Toughness_rgb_ko").."이 "..CNumb("{toughness:%s}", "tghns_var_rgb").." 회복됩니다.",
			pl = "Trafienie co najmniej "..CNumb("3", "n_3_rgb").." wrogów jednym atakiem, gdy aktywny jest Specjalny Tryb Broni, przywraca "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Wytrzymałości", "Toughness_rgb_pl")..".",
			["pt-br"] = "Atingir pelo menos "..CNumb("3", "n_3_rgb").." inimigos com um ataque enquanto o Ataque Especial da arma está ativo restaura "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br")..".",
			es = "Golpear al menos a "..CNumb("3", "n_3_rgb").." enemigos con un ataque mientras el Ataque Especial del arma está activo restaura "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Aguante", "Toughness_rgb_es")..".",
		},
		--[+ ENERGY TRANSFER +]-- ruof Передача энергии	20.04.2026
		-- Overheat Cost Reduction and Increased Dissipation (per tier)
		-- Power Falchions, Relic Blades -- 16% and 3% | 18% and 4% | 20% and 5% | 22% and 6%
		["loc_slower_heat_buildup_on_perfect_block_desc"] = { -- heat_reduction: 20%, heat_dissipation: 5%, time: 5, interval: 8, +colors
			en = CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." "..CKWord("Heat", "Heat_rgb").." buildup and "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." "..CKWord("Heat", "Heat_rgb").." dissipation for "..CNumb("{time:%s}", "time_var_rgb").." seconds on a Perfect Block. Can only occur once every "..CNumb("{interval:%s}", "interval_var_rgb").." seconds.",
			ru = CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." к набору "..CKWord("перегрева", "peregreva_rgb_ru").." и "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." к рассеиванию "..CKWord("перегрева", "peregreva_rgb_ru").." в течение "..CNumb("{time:%s}", "time_var_rgb").." секунд при идеальном блоке. Срабатывает раз в "..CNumb("{interval:%s}", "interval_var_rgb").." секунд.",
			fr = "Réduit la génération de "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." et augmente la dissipation de "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un blocage parfait. Ne peux se produire que toute les "..CNumb("{interval:%s}", "interval_var_rgb").." secondes.",
			["zh-tw"] = "完美格擋時 "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." "..CKWord("熱能", "Heat_rgb_tw").." ，\n並 "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." "..CKWord("Heat_diss", "Heat_diss_rgb_tw").." ，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n此效果每 "..CNumb("{interval:%s}", "interval_var_rgb").." 秒最多觸發一次。",
			["zh-cn"] = "完美格挡时"..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."积累，\n同时 "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."消散，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每 "..CNumb("{interval:%s}", "interval_var_rgb").." 秒只能触发一次。",
			de = "Reduziert den "..CKWord("Hitze", "Heat_rgb_de").."-Aufbau um "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." und erhöht die "..CKWord("Hitze", "Heat_rgb_de").."-Ableitung um "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei einem Perfekten Block. Kann nur einmal alle "..CNumb("{interval:%s}", "interval_var_rgb").." Sek. auftreten.",
			it = "Riduce l'accumulo di "..CKWord("Calore", "Heat_rgb_it").." del "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." e aumenta la dissipazione di "..CKWord("Calore", "Heat_rgb_it").." del "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. con un Blocco Perfetto. Può verificarsi solo una volta ogni "..CNumb("{interval:%s}", "interval_var_rgb").." sec.",
			ja = "パーフェクトブロック時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("ヒート", "Heat_rgb_ja").."蓄積が "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." 減少し、"..CKWord("ヒート", "Heat_rgb_ja").."消散が "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." 増加。"..CNumb("{interval:%s}", "interval_var_rgb").."秒に一度のみ発動可能。",
			ko = "완벽한 블록 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("열기", "Heat_rgb_ko").." 축적이 "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." 감소하고 "..CKWord("열기", "Heat_rgb_ko").." 소산이 "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." 증가합니다. "..CNumb("{interval:%s}", "interval_var_rgb").."초에 한 번만 발동합니다.",
			pl = "Zmniejsza generowanie "..CKWord("Ciepła", "Heat_rgb_pl").." o "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." i zwiększa rozpraszanie "..CKWord("Ciepła", "Heat_rgb_pl").." o "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. przy Perfekcyjnym Bloku. Może wystąpić raz na "..CNumb("{interval:%s}", "interval_var_rgb").." sek.",
			["pt-br"] = "Reduz o acúmulo de "..CKWord("Calor", "Heat_rgb_pt_br").." em "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." e aumenta a dissipação de "..CKWord("Calor", "Heat_rgb_pt_br").." em "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." por "..CNumb("{time:%s}", "time_var_rgb").." seg. ao realizar um Bloqueio Perfeito. Só pode ocorrer uma vez a cada "..CNumb("{interval:%s}", "interval_var_rgb").." seg.",
			es = "Reduce la acumulación de "..CKWord("Calor", "Heat_rgb_es").." en "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." y aumenta la disipación de "..CKWord("Calor", "Heat_rgb_es").." en "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." durante "..CNumb("{time:%s}", "time_var_rgb").." seg. al realizar un Bloqueo Perfecto. Solo puede ocurrir una vez cada "..CNumb("{interval:%s}", "interval_var_rgb").." seg.",
		},
		--[+ SHOCK & AWE / SHOCK AND AWE +]-- ruof Шок и трепет
		-- Enemy Hit Mass Reduction (per tier)
		-- Bone Saw, Thunder Hammers -- 30% | 40% | 50% | 60%
		["loc_trait_bespoke_hit_mass_consumption_reduction_on_kill_desc"] = { -- hit_mass: -40%, time: 2, s->seconds, +colors
			en = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." Enemy "..CKWord("Hit Mass", "Hit_mass_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Kill. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." от "..CKWord("ударной массы", "udarn_massy_rgb_ru").." врагов на "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийства. "
				..CPhrs("Can_be_refr"),
			fr = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." ennemie pour "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination.",
			["zh-tw"] = "擊殺敵人後，敵人 "..CKWord("順劈目標", "Hit_mass_rgb_tw").." "..CNumb("{hit_mass:%s}", "hitmass_var_rgb").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "击杀敌人时，使敌人 "..CKWord("打击质量", "Hit_mass_rgb_zh_cn").." 降至"..CNumb("{hit_mass:%s}", "hitmass_var_rgb").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Hit_Mass_note"),
			de = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." gegnerische "..CKWord("Treffermasse", "Hit_mass_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei einem Kill.",
			it = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Massa Impatto", "Hit_mass_rgb_it").." nemica per "..CNumb("{time:%s}", "time_var_rgb").." sec. dopo un'Uccisione.",
			ja = "キル時、"..CNumb("{time:%s}", "time_var_rgb").."秒間、敵の"..CKWord("ヒットマス", "Hit_mass_rgb_ja").."が "..CNumb("{hit_mass:%s}", "hitmass_var_rgb").." 減少。",
			ko = "처치 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 적의 "..CKWord("충돌 질량", "Hit_mass_rgb_ko").."이 "..CNumb("{hit_mass:%s}", "hitmass_var_rgb").." 감소합니다.",
			pl = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Masy Trafienia", "Hit_mass_rgb_pl").." wroga na "..CNumb("{time:%s}", "time_var_rgb").." sek. po Zabójstwie.",
			["pt-br"] = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Massa de Impacto", "Hit_mass_rgb_pt_br").." inimiga por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Matar.",
			es = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Masa de Golpe", "Hit_mass_rgb_es").." enemiga durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Matar.",
		},
		--[+ TAKE A SWING +]-- ruof Замах
		-- Weakspot Damage (per tier)
		-- Crowbar, Sapper Shovels -- 45% | 50% | 55% | 60%
		["loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies_desc"] = { -- toughness: +60%, time: 3, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Pushing Enemies. "
				..CPhrs("Can_be_refr")..Dot_red.." Does not benefit Ranged attacks.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при отталкивании врагов.\n"
				..CPhrs("Can_be_refr").."\n"
				..Dot_red.." Не влияет на дальнобойные атаки.",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une poussée d'ennemis.",
			["zh-tw"] = "推開敵人後 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "推搡敌人 \n"..CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. beim Schubsen von Gegnern.",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. spingendo i nemici.",
			ja = "敵を押した後、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。",
			ko = "적을 밀쳐낸 후 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다.",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń w słaby punkt", "Weakspot_dmg_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. po Odepchnięciu Wrogów.",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Empurrar Inimigos.",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Empujar Enemigos.",
		},
		--[+ SUPERCHARGE +]-- ruof Суперзаряд	20.04.2026
		-- Brittleness Stacks (per tier)
		-- Power Maul -- 10 | 12 | 14 | 16
		-- Power Swords -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_armor_rend_on_activated_attacks_desc"] = { -- rend: +4, +colors
			en = CNumb("{rend:%s}", "rend_var_rgb").." Stacks of "..CKWord("Brittleness", "Brittleness_rgb").." applied to enemies on Energised Hit.\n"
				..CPhrs("Can_be_refr")..CNote("Brtl_note"),
			ru = "До "..CNumb("{rend:%s}", "rend_var_rgb").." зарядов "..CKWord("хрупкости", "hrupkosti_rgb_ru").." применяется к врагу при заряженном ударе.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Brtl_note"),
			fr = CNumb("{rend:%s}", "rend_var_rgb").." cumuls de "..CKWord("Fragilité", "Brittleness_rgb_fr").." lors d'un coup énergisé."..CNote("Brtl_note"),
			["zh-tw"] = "特殊攻擊敵人時，\n使其獲得 "..CNumb("{rend:%s}", "rend_var_rgb").." 層 "..CKWord("脆弱", "Brittleness_rgb_tw").."，上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層。 "..CNote("Brtl_note"),
			["zh-cn"] = "充能攻击命中时，\n对目标施加 "..CNumb("{rend:%s}", "rend_var_rgb").." 层"..CKWord("脆弱", "Brittleness_rgb_zh_cn").."。"..CNote("Brtl_note"),
			de = CNumb("{rend:%s}", "rend_var_rgb").." Stapel "..CKWord("Sprödigkeit", "Brittleness_rgb_de").." bei einem energetisierten Treffer."..CNote("Brtl_note"),
			it = CNumb("{rend:%s}", "rend_var_rgb").." accumuli di "..CKWord("Fragilità", "Brittleness_rgb_it").." con un Colpo Energizzato."..CNote("Brtl_note"),
			ja = "エネルギー攻撃ヒット時、敵に "..CNumb("{rend:%s}", "rend_var_rgb").." スタックの"..CKWord("脆弱", "Brittleness_rgb_ja").."を付与。"..CNote("Brtl_note"),
			ko = "에너지 충전 공격 적중 시 적에게 "..CNumb("{rend:%s}", "rend_var_rgb").." 중첩의 "..CKWord("취약", "Brittleness_rgb_ko").."을 부여합니다."..CNote("Brtl_note"),
			pl = CNumb("{rend:%s}", "rend_var_rgb").." ładunków "..CKWord("Kruchości", "Brittleness_rgb_pl").." przy Naładowanym Energetycznie Trafieniu."..CNote("Brtl_note"),
			["pt-br"] = CNumb("{rend:%s}", "rend_var_rgb").." acúmulos de "..CKWord("Fragilidade", "Brittleness_rgb_pt_br").." ao Acertar com Ataque Energizado."..CNote("Brtl_note"),
			es = CNumb("{rend:%s}", "rend_var_rgb").." acumulaciones de "..CKWord("Fragilidad", "Brittleness_rgb_es").." al Golpear con Ataque Energizado."..CNote("Brtl_note"),
		},
		--[+ POWER CYCLER +]-- ruof Цикл силы
		-- Melee Stagger Strength and Additional Activated Attacks (per tier)
		-- Power Swords -- 2.5% and 1 | 5% and 1 | 7.5% and 2 | 10% and 2
		["loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks_desc"] = { -- extra_hits: +2, stagger: +10%, +colors
			en = CNumb("+", "n_plus_rgb")..CNumb("{extra_hits:%s}", "extrahits_var_rgb").." Extra Chained Energised Hits and\n"..CNumb("+", "n_plus_rgb")..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Impact", "Impact_rgb").." on Energised Hits. "
				..CNote("Impact_note"),
			ru = CNumb("+", "n_plus_rgb")..CNumb("{extra_hits:%s}", "extrahits_var_rgb").." заряда к заряженным ударам и\n"
				..CNumb("+", "n_plus_rgb")..CNumb("{stagger:%s}", "stgr_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." для заряженных ударов. "
				..CNote("Impact_note"), -- Энергоцикл
			fr = CNumb("{extra_hits:%s}", "extrahits_var_rgb").." Coups d'énergie en chaîne supplémentaires et "..CNumb("{stagger:%s}", "stgr_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." lors d'un coup énergisé.",
			["zh-tw"] = "特殊啟動攻擊時 "..CNumb("+", "n_plus_rgb")..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").." ，\n並獲得 "..CNumb("{extra_hits:%s}", "extrahits_var_rgb").." 次額外充能攻擊次數。",
			["zh-cn"] = "武器充能期间 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，\n充能连锁攻击时 "..CNumb("{extra_hits:%s}", "extrahits_var_rgb").." 额外充能攻击次数。",
			de = CNumb("{extra_hits:%s}", "extrahits_var_rgb").." zusätzliche aufeinanderfolgende energetisierte Treffer und "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Wucht", "Impact_rgb_de").." bei energetisierten Treffern.",
			it = CNumb("{extra_hits:%s}", "extrahits_var_rgb").." Colpi Energizzati Extra in Catena e "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Impatto", "Impact_rgb_it").." sui Colpi Energizzati.",
			ja = "エネルギー攻撃ヒット時、"..CKWord("衝撃", "Impact_rgb_ja").."が "..CNumb("{stagger:%s}", "stgr_var_rgb").." 増加し、連続エネルギー攻撃回数が "..CNumb("{extra_hits:%s}", "extrahits_var_rgb").." 回増加。",
			ko = "에너지 충전 공격 적중 시 "..CKWord("충격", "Impact_rgb_ko").."이 "..CNumb("{stagger:%s}", "stgr_var_rgb").." 증가하고, 추가 에너지 충전 공격 횟수가 "..CNumb("{extra_hits:%s}", "extrahits_var_rgb").."회 증가합니다.",
			pl = CNumb("{extra_hits:%s}", "extrahits_var_rgb").." Dodatkowych Energetycznych Trafień w Serii i "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Impetu", "Impact_rgb_pl").." przy Energetycznych Trafieniach.",
			["pt-br"] = CNumb("{extra_hits:%s}", "extrahits_var_rgb").." Acertos Energizados Adicionais em Corrente e "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Impacto", "Impact_rgb_pt_br").." em Acertos Energizados.",
			es = CNumb("{extra_hits:%s}", "extrahits_var_rgb").." Golpes Energizados Extra en Cadena y "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Impacto", "Impact_rgb_es").." en Golpes Energizados.",
		},
		--[+ SUNDER +]-- ruof Сандер
		-- Energized Heavy Melee Attack Damage (per tier)
		-- Power Swords -- 5% | 10% | 15% | 20%
		["loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks_and_heavy_damage_desc"] = { -- heavy_damage: +20%, +colors
			en = "On Energised Attacks:\n"
				..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").." Heavy Melee Attack "..CKWord("Damage", "Damage_rgb")..",\n"
				..CNumb("-", "n_minus_rgb")..CNumb("75%", "pc_75_rgb").." enemy "..CKWord("Hit Mass", "Hit_mass_rgb").." which increases "..CKWord("Cleave", "Cleave_rgb")..".",
			ru = "Заряженные атаки получают:\n"
				..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." от тяжёлых атак и\n"
				..CNumb("75%", "pc_75_rgb").." игнорирования "..CKWord("ударной массы", "udarn_massy_rgb_ru").." врага, что увеличивает "..CKWord("рассечение", "rassechenie_rgb_ru")..".", -- Сокрушение
			fr = "Lors d'un coup énergisé, augmente le "..CKWord("Transpercement", "Cleave_rgb_fr").." et les "..CKWord("Dégâts", "Damage_rgb_fr").." des attaques puissantes de mélée de "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb")..".",
			["zh-tw"] = "充能攻擊時 "..CKWord("傷害", "Damage_s_rgb_tw").." "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").."，\n並強化 "..CKWord("順劈攻擊", "Cleaving_rgb_tw").." 。",
			["zh-cn"] = "充能攻击 "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").." 近战重攻击"..CKWord("伤害", "Damage_rgb_zh_cn").."，\n同时无视装甲赋予的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"),
			de = "Erhöht bei energetisierten Angriffen den "..CKWord("Spaltwert", "Cleave_rgb_de").." und den Schaden schwerer Nahkampfangriffe um "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb")..".",
			it = "Sugli Attacchi Energizzati, aumenta il "..CKWord("Fendente", "Cleave_rgb_it").." e i "..CKWord("Danni", "Damage_rgb_it").." degli Attacchi Pesanti in Corpo a Corpo del "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb")..".",
			ja = "エネルギー攻撃時、近接ヘビーアタックの"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").." 増加し、"..CKWord("薙ぎ払い", "Cleave_rgb_ja").."が強化される。",
			ko = "에너지 충전 공격 시 근접 강공격 "..CKWord("피해", "Damage_rgb_ko").."가 "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").." 증가하고 "..CKWord("베어넘기기", "Cleave_rgb_ko").."가 강화됩니다.",
			pl = "Przy Energetycznych Atakach: Zwiększa "..CKWord("Przebicie", "Cleave_rgb_pl").." i "..CKWord("Obrażenia", "Damage_rgb_pl").." Ciężkich Ataków w Walce Wręcz o "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb")..".",
			["pt-br"] = "Em Ataques Energizados: Aumenta o "..CKWord("Corte Profundo", "Cleave_rgb_pt_br").." e o "..CKWord("Dano", "Damage_rgb_pt_br").." de Ataques Pesados Corpo a Corpo em "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb")..".",
			es = "En Ataques Energizados: Aumenta la "..CKWord("Hendidura", "Cleave_rgb_es").." y el "..CKWord("Daño", "Damage_rgb_es").." de Ataques Pesados Cuerpo a Cuerpo un "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb")..".",
		},
		--[+ SUCKER PUNCH +]-- ruof Удар исподтишка
		-- Melee Crit Chance (per tier)
		-- Latrine Shovels -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_increased_crit_chance_after_punch_desc"] = { -- crit_chance: +15%, time: 3, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Special Action Hit. "
				..CPhrs("Can_be_refr")..Dot_red.." Does not benefit Ranged weapons.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе специальной атакой.\n"
				..CPhrs("Can_be_refr").."\n"
				..Dot_red.." Не влияет на дальнобойные атаки.",
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup d'action spéciale.",
			["zh-tw"] = "特殊攻擊命中時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "特殊攻击命中敌人时 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei einem Spezialangriff-Treffer.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. colpendo con un Attacco Speciale.",
			ja = "特殊アクションヒット時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。",
			ko = "특수 공격 적중 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 근접 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po Trafieniu Atakiem Specjalnym.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Acertar um Ataque Especial.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Golpear con un Ataque Especial.",
		},
		--[+ CONFIDENT STRIKE +]-- ruof Уверенный удар
		-- Max Toughness Percentage (per tier)
		-- Arbites Shock Maul, Battle Maul and Shield, Bully Clubs, Cleavers, Latrine Shovels, Pickaxes, Power Maul, Shock Mauls and Shield -- 5% | 6% | 7% | 8%
		["loc_trait_bespoke_toughness_recovery_on_chained_attacks_desc"] = { -- toughness: +8%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." on Chained Hit. "
				..Dot_green.." Procs additionally to "..CKWord("Toughness", "Toughness_rgb").." replenishments from Talents. "..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." при серии ударов.\n"
				..Dot_green.." Срабатывает совместно с восстановлением "..CKWord("стойкости", "stoikosti_rgb_ru").." от талантов. "..CPhrs("Dont_intw_coher_tghn"),
			fr = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Robustesse", "Toughness_rgb_fr").." lors d'un coup en chaîne.",
			["zh-tw"] = "連續攻擊時 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。",
			["zh-cn"] = "连锁攻击命中时，"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。",
			de = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").." bei aufeinanderfolgenden Treffern.",
			it = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Tempra", "Toughness_rgb_it").." a Colpi Concatenati.",
			ja = "連鎖ヒット時、"..CKWord("タフネス", "Toughness_rgb_ja").."が "..CNumb("{toughness:%s}", "tghns_var_rgb").." 回復。",
			ko = "연속 적중 시 "..CKWord("강인함", "Toughness_rgb_ko").."이 "..CNumb("{toughness:%s}", "tghns_var_rgb").." 회복됩니다.",
			pl = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Wytrzymałości", "Toughness_rgb_pl").." przy Kolejnym Trafieniu.",
			["pt-br"] = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br").." em Acertos Consecutivos.",
			es = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Aguante", "Toughness_rgb_es").." en Golpes Encadenados.",
		},
		--[+ NO GUTS, NO GLORY +]-- ruof Нет смелости — нет славы
		-- Duration (per tier)
		-- Bully Clubs -- 2s | 3s | 4s | 5s
		["loc_trait_bespoke_toughness_regen_on_punching_elites_desc"] = { -- toughness: +8%,  time: 5, s->seconds, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." Regeneration per second for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Elite Special Action Hit.\n"
				..CPhrs("Can_be_refr"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." к восстанавлению "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду в течение "..CNumb("{time:%s}", "time_var_rgb").." секунд при попадании специальной атакой по элитному врагу.",
			fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de régénération de "..CKWord("Robustesse", "Toughness_rgb_fr").." par seconde pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup d'action spéciale sur un élite.",
			["zh-tw"] = "特殊攻擊命中精英時，每秒恢復 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n兩段式恢復，立刻恢復X韌性、持續恢復X韌性。",
			["zh-cn"] = "特殊攻击命中精英敌人时 \n"..CNumb("{toughness:%s}", "tghns_var_rgb").." 连携"..CKWord("韧性", "Toughness_rgb_zh_cn").."回复，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeitsregeneration", "Toughness_rgb_de").." pro Sek. für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei einem Spezialangriff-Treffer auf einen Elitegegner.",
			it = CNumb("{toughness:%s}", "tghns_var_rgb").." Rigenerazione di "..CKWord("Tempra", "Toughness_rgb_it").." al secondo per "..CNumb("{time:%s}", "time_var_rgb").." sec. colpendo un Élite con un Attacco Speciale.",
			ja = "エリートへの特殊アクションヒット時、"..CNumb("{time:%s}", "time_var_rgb").."秒間、毎秒"..CKWord("タフネス", "Toughness_rgb_ja").."が "..CNumb("{toughness:%s}", "tghns_var_rgb").." 回復。",
			ko = "엘리트에게 특수 공격 적중 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 초당 "..CKWord("강인함", "Toughness_rgb_ko").."이 "..CNumb("{toughness:%s}", "tghns_var_rgb").." 회복됩니다.",
			pl = CNumb("{toughness:%s}", "tghns_var_rgb").." Regeneracji "..CKWord("Wytrzymałości", "Toughness_rgb_pl").." na sekundę przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po Trafieniu Elitarnego Wroga Atakiem Specjalnym.",
			["pt-br"] = CNumb("{toughness:%s}", "tghns_var_rgb").." de Regeneração de "..CKWord("Resistência", "Toughness_rgb_pt_br").." por segundo durante "..CNumb("{time:%s}", "time_var_rgb").." seg. ao Acertar um Elite com um Ataque Especial.",
			es = CNumb("{toughness:%s}", "tghns_var_rgb").." de Regeneración de "..CKWord("Aguante", "Toughness_rgb_es").." por segundo durante "..CNumb("{time:%s}", "time_var_rgb").." seg. al Golpear a un Élite con un Ataque Especial.",
		},
		--[+ BASH +]-- ruof Удар
		-- Crit Chance (per tier)
		-- Cleavers -- 7.5% | 10% | 12.5% | 15%
		-- Crowbar -- 5% | 7.5% | 10% | 12.5%
		["loc_trait_bespoke_crit_chance_on_push_desc"] = { -- crit_chance: +15%,  time: 3, s->seconds, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Pushing Enemies. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при отталкивании врагов.\n"
				..CPhrs("Can_be_refr"),
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en poussant les ennemies.",
			["zh-tw"] = "推開敵人時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "推搡敌人时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. beim Schubsen von Gegnern.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. spingendo i nemici.",
			ja = "敵を押した後、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。",
			ko = "적을 밀쳐낸 후 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 근접 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po Odepchnięciu Wrogów.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Empurrar Inimigos.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al Empujar Enemigos.",
		},
		--[+ TENDERISER +]-- ruof Молот мясника
		-- Power (per tier)
		-- Cleavers -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits_desc"] = { -- power: +15%, +colors
			en = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for your next "..CNumb("3", "n_3_rgb").." Melee attacks after Weapon Special attack Hit.\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power:%s}", "pwr_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." для следующих "..CNumb("3", "n_3_rgb").." атак ближнего боя после удара специальной атакой. "
				..CNote("Pwr_note"),
			fr = CNumb("{power:%s}", "pwr_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour vos "..CNumb("3", "n_3_rgb").." prochaines attaques de mélée lors d'une attaque spéciale d'arme réussie."..CNote("Pwr_note"),
			["zh-tw"] = "特殊攻擊命中敵人時，接下來 "..CNumb("3", "n_3_rgb").." 次的近戰攻擊，\n獲得 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").." 。"..CNote("Pwr_note"),
			["zh-cn"] = "特殊攻击命中敌人时，\n下 "..CNumb("3", "n_3_rgb").." 次近战攻击 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。"..CNote("Pwr_note"),
			de = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für die nächsten "..CNumb("3", "n_3_rgb").." Nahkampfangriffe nach einem erfolgreichen Waffenspezialangriff."..CNote("Pwr_note"),
			it = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per i successivi "..CNumb("3", "n_3_rgb").." attacchi in Corpo a Corpo dopo un Attacco Speciale riuscito."..CNote("Pwr_note"),
			ja = "武器特殊攻撃が命中すると、次の近接攻撃 "..CNumb("3", "n_3_rgb").." 回の"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power:%s}", "pwr_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = "특수 공격 적중 시 이후 "..CNumb("3", "n_3_rgb").."회의 근접 공격 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power:%s}", "pwr_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." dla następnych "..CNumb("3", "n_3_rgb").." ataków w Walce Wręcz po trafieniu Specjalnym Atakiem Broni."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." para seus próximos "..CNumb("3", "n_3_rgb").." ataques Corpo a Corpo após acertar um Ataque Especial da arma."..CNote("Pwr_note"),
			es = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." para tus siguientes "..CNumb("3", "n_3_rgb").." ataques Cuerpo a Cuerpo tras asestar un Ataque Especial del arma."..CNote("Pwr_note"),
		},
		--[+ UNSTOPPABLE FORCE +]-- ruof Неудержимая сила	20.04.2026
		-- Fully Charged Melee Damage (per tier)
		-- Cleavers, Crowbar -- 2.5% | 5% | 7.5% | 10%
		["loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack_desc"] = { -- damage: 10%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." to Fully Charged Heavy Attacks. They also ignore Enemy "..CKWord("Hit Mass", "Hit_mass_rgb")..".",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." для полностью заряженных тяжёлых атак. Они также игнорируют "..CKWord("ударную массу", "udarn_massu_rgb_ru").." врага.",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." pour les attaques puissantes pleinement chargées, elles ignorent également le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." des ennemies.",
			["zh-tw"] = "完全蓄力的重攻擊 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，\n並無視敵人的 "..CKWord("順劈目標", "Hit_mass_rgb_tw").."。",
			["zh-cn"] = "完全蓄力的重攻击 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").." 同时无视装甲赋予的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"),
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." für voll aufgeladene schwere Angriffe. Sie ignorieren außerdem die gegnerische "..CKWord("Treffermasse", "Hit_mass_rgb_de")..".",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." per gli Attacchi Pesanti completamente carichi, che ignorano anche la "..CKWord("Massa Impatto", "Hit_mass_rgb_it").." nemica.",
			ja = "完全チャージのヘビーアタックの"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加し、敵の"..CKWord("ヒットマス", "Hit_mass_rgb_ja").."を無視。",
			ko = "완전 충전된 강공격의 "..CKWord("피해", "Damage_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가하고 적의 "..CKWord("충돌 질량", "Hit_mass_rgb_ko").."을 무시합니다.",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." dla W Pełni Naładowanych Ciężkich Ataków, które ignorują również "..CKWord("Masę Trafienia", "Hit_mass_rgb_pl").." wroga.",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." para Ataques Pesados Totalmente Carregados. Eles também ignoram a "..CKWord("Massa de Impacto", "Hit_mass_rgb_pt_br").." inimiga.",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." para Ataques Pesados Completamente Cargados. También ignoran la "..CKWord("Masa de Golpe", "Hit_mass_rgb_es").." enemiga.",
		},
		--[+ TORMENT +]-- ruof Истязание
		-- Melee Power (per tier)
		-- Pickaxes -- 12% | 16% | 20% | 24%
		["loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"] = { -- power_level: +24%,  time: 3.5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Weapon Special Hit. "
				..CPhrs("Can_be_refr").." "..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе специальной атакой. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une attaque spéciale d'arme réussie."..CNote("Pwr_note"),
			["zh-tw"] = "特殊攻擊命中敵人時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			["zh-cn"] = "特殊攻击命中敌人时 \n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei einem Waffenspezialangriff."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. con un Attacco Speciale dell'arma."..CNote("Pwr_note"),
			ja = "武器特殊攻撃ヒット時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = "특수 공격 적중 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. po Trafieniu Specjalnym Atakiem Broni."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao Acertar um Ataque Especial da arma."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al asestar un Ataque Especial del arma."..CNote("Pwr_note"),
		},
		--[+ SLOW AND STEADY +]-- ruof Медленный и упорный
		-- Max Toughness Percentage per stack (per tier)
		-- Pickaxes -- 5% | 6% | 7% | 8% (up to 24%)
		["loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc"] = { -- toughness: 8%, +colors
			en = "Up to "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." recovered based on the charge time of your Heavy Attacks.\n"
				..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при ударе врага тяжёлой атакой, в зависимости от времени заряжания атаки.", -- Медленно, но верно
			fr = "Récupérez "..CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." lorsque vous touchez un ennemie avec une attaque puissante, dépend du temps de charge.",
			["zh-tw"] = "重擊攻擊命中敵人時 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，\n回復量依據蓄力時間恢復。",
			["zh-cn"] = "随重攻击蓄力时间增加叠加层数，\n命中敌人时，每层使"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。\n最多叠加 "..CNumb("3", "n_3_rgb").." 层。",
			de = "Stellt basierend auf der Ladezeit eurer schweren Angriffe bis zu "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").." wieder her, wenn ihr einen Gegner mit einem schweren Angriff trefft.",
			it = "Recuperi fino a "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Tempra", "Toughness_rgb_it").." colpendo un nemico con un attacco pesante, in base al tempo di carica.",
			ja = "ヘビーアタックのチャージ時間に応じて、敵にヒット時に最大 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("タフネス", "Toughness_rgb_ja").." 回復。",
			ko = "강공격 차지 시간에 따라 적 적중 시 최대 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("강인함", "Toughness_rgb_ko").." 회복됩니다.",
			pl = "Odzyskaj do "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Wytrzymałości", "Toughness_rgb_pl").." przy trafieniu wroga ciężkim atakiem, w zależności od czasu ładowania.",
			["pt-br"] = "Recupere até "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br").." ao atingir um inimigo com um ataque pesado, baseado no tempo de carga.",
			es = "Recupera hasta "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Aguante", "Toughness_rgb_es").." al golpear a un enemigo con un ataque pesado, según el tiempo de carga.",
		},
		--[+ POWER SURGE +]-- ruof Скачок напряжения	20.04.2026
		-- Explosion Radius Increase (per tier)
		-- Power Maul -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_explosion_on_activated_attacks_on_armor_new_desc"] = { -- explosion_radius: 25%, +colors
			en = CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").." Explosion Radius to Special Attacks. Special Attacks on Armored Enemies cause an additional Shockwave.",
			ru = CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").." к радиусу взрыва от специальных атак. Специальные атаки по бронированным врагам создают дополнительную ударную волну.", -- Энерговсплеск
			fr = "Le rayon d'explosion des attaques spéciales augmente de "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb")..". Les attaques spéciales sur des ennemies en armure engendrent une onde de choc supplémentaire.",
			["zh-tw"] = "特殊攻擊的爆炸半徑 "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").."。\n對護甲敵人使用特殊攻擊時產生額外的衝擊波。",
			["zh-cn"] = CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").." 充能攻击爆炸范围。\n充能攻击命中首个目标后，\n命中着甲敌人，额外引发一次爆炸。",
			de = "Erhöht den Explosionsradius von Spezialangriffen um "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb")..". Spezialangriffe auf gepanzerte Gegner verursachen eine zusätzliche Schockwelle.",
			it = "Aumenta il Raggio dell'Esplosione degli Attacchi Speciali del "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb")..". Gli attacchi speciali su nemici corazzati causano un'onda d'urto aggiuntiva.",
			ja = "特殊攻撃の爆発半径が "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").." 増加。装甲敵への特殊攻撃は追加の衝撃波を発生させる。",
			ko = "특수 공격의 폭발 반경이 "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").." 증가합니다. 장갑 적에 대한 특수 공격은 추가 충격파를 발생시킵니다.",
			pl = "Zwiększa promień wybuchu Ataków Specjalnych o "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb")..". Ataki Specjalne na Opancerzonych Wrogów wywołują dodatkową Falę Uderzeniową.",
			["pt-br"] = "Aumenta o Raio da Explosão dos Ataques Especiais em "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb")..". Ataques Especiais em inimigos com Armadura causam uma Onda de Choque adicional.",
			es = "Aumenta el Radio de Explosión de los Ataques Especiales un "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb")..". Los Ataques Especiales sobre Enemigos Blindados provocan una Onda de Choque adicional.",
		},
		--[+ LAST GUARD +]-- ruof Последний страж
		-- Cooldown and Block Cost Reduction (per tier)
		-- Battle Maul and Shield, Shock Mauls and Shield -- 18s and 15% | 15s and 20% | 12s and 25% | 9s and 30%
		["loc_trait_block_break_pushes_new_desc"] = { -- block_cost: -30%, cooldown: 15, +colors
			en = CNumb("{block_cost:%s}", "block_var_rgb").." Block Cost. Pushes back enemies within a "..CNumb("5", "n_5_rgb").." meter radius when "..CKWord("Stamina", "Stamina_rgb").." reaches "..CNumb("0", "n_0_rgb").." from Blocking an attack. Cooldown "..CNumb("{cooldown:%s}", "cd_var_rgb").." seconds.",
			ru = CNumb("{block_cost:%s}", "block_var_rgb").." затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на блок. Вы отталкиваете врагов в радиусе "..CNumb("5", "n_5_rgb").." метров, когда уровень "..CKWord("выносливости", "vynoslivosti_rgb_ru").." достигает "..CNumb("0", "n_0_rgb").." при блокировании атак. Восстановление "..CNumb("{cooldown:%s}", "cd_var_rgb").." секунд.",
			fr = CNumb("{block_cost:%s}", "block_var_rgb").." de réduction du coût de blocage. Quand l'"..CKWord("Endurance", "Stamina_rgb_fr").." atteint "..CNumb("0", "n_0_rgb").." en bloquant des attaques, repousse les ennemies dans un rayon de "..CNumb("5", "n_5_rgb").." mètres. Temps de recharge : "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondes.",
			["zh-tw"] = "格擋消耗降低 "..CNumb("{block_cost:%s}", "block_var_rgb").."。\n當耐力降至 "..CNumb("0", "n_0_rgb").." 並成功格擋攻擊時，\n擊退 "..CNumb("5", "n_5_rgb").." 公尺內的敵人。冷卻時間 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。",
			["zh-cn"] = CNumb("{block_cost:%s}", "block_var_rgb").." 格挡消耗。格挡期间"..CKWord("体力", "Stamina_rgb_zh_cn").."耗尽时，\n推开 "..CNumb("5", "n_5_rgb").." 米内的敌人，冷却时间 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。",
			de = CNumb("{block_cost:%s}", "block_var_rgb").." Blockkosten. Wenn die "..CKWord("Ausdauer", "Stamina_rgb_de").." beim Blocken von Angriffen "..CNumb("0", "n_0_rgb").." erreicht, werden Gegner in einem Radius von "..CNumb("5", "n_5_rgb").." Metern zurückgestoßen. Abklingzeit "..CNumb("{cooldown:%s}", "cd_var_rgb").." Sek.",
			it = CNumb("{block_cost:%s}", "block_var_rgb").." Costo di Blocco. Quando il "..CKWord("Vigore", "Stamina_rgb_it").." raggiunge "..CNumb("0", "n_0_rgb").." bloccando un attacco, respingi i nemici entro "..CNumb("5", "n_5_rgb").." metri. Ricarica "..CNumb("{cooldown:%s}", "cd_var_rgb").." sec.",
			ja = "ブロックコスト "..CNumb("{block_cost:%s}", "block_var_rgb").." 。攻撃をブロックして"..CKWord("スタミナ", "Stamina_rgb_ja").."が "..CNumb("0", "n_0_rgb").." になると、"..CNumb("5", "n_5_rgb").." メートル以内の敵をノックバック。クールダウン "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。",
			ko = "블록 소모 "..CNumb("{block_cost:%s}", "block_var_rgb").." . 공격을 블록하여 "..CKWord("스태미나", "Stamina_rgb_ko").."가 "..CNumb("0", "n_0_rgb").."이 되면 "..CNumb("5", "n_5_rgb").." 미터 내의 적을 밀쳐냅니다. 재사용 대기시간 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 초.",
			pl = CNumb("{block_cost:%s}", "block_var_rgb").." Kosztu Bloku. Gdy "..CKWord("Wytrzymałość", "Stamina_rgb_pl").." podczas blokowania ataków osiągnie "..CNumb("0", "n_0_rgb")..", odpycha wrogów w promieniu "..CNumb("5", "n_5_rgb").." metrów. Odnowienie "..CNumb("{cooldown:%s}", "cd_var_rgb").." sek.",
			["pt-br"] = CNumb("{block_cost:%s}", "block_var_rgb").." Custo de Bloqueio. Quando o "..CKWord("Vigor", "Stamina_rgb_pt_br").." chega a "..CNumb("0", "n_0_rgb").." ao Bloquear um ataque, empurra inimigos em um raio de "..CNumb("5", "n_5_rgb").." metros. Tempo de recarga "..CNumb("{cooldown:%s}", "cd_var_rgb").." seg.",
			es = CNumb("{block_cost:%s}", "block_var_rgb").." Coste de Bloqueo. Cuando el "..CKWord("Aguante", "Stamina_rgb_es").." llega a "..CNumb("0", "n_0_rgb").." al Bloquear un ataque, empuja a los enemigos en un radio de "..CNumb("5", "n_5_rgb").." metros. Tiempo de recarga "..CNumb("{cooldown:%s}", "cd_var_rgb").." seg.",
		},
		--[+ OFFENSIVE DEFENCE +]-- ruof Активная оборона
		-- Melee Power per stack (per tier)
		-- Battle Maul and Shield, Shock Mauls and Shield -- 4% | 6% | 8% | 10% (up to +50%)
		["loc_trait_damage_bonus_on_block_desc"] = { -- power: +10%, duration: 3.5, stacks: 5, +colors -- ..CNote("Pwr_note_rgb
			en = CNumb("{power:%s}", "pwr_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." for your next Attack per "..CKWord("Stamina", "Stamina_rgb").." bar spent while Blocking. Stacks up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Lasts "..CNumb("{duration:%s}", "dur_var_rgb").." seconds per Stack. Each Attack consumes "..CNumb("1", "n_1_rgb").." Stack and refreshes the active duration.",
			ru = CNumb("{power:%s}", "pwr_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." следующей атаки ближнего боя на "..CNumb("{duration:%s}", "dur_var_rgb").." секунды за каждую полоску "..CKWord("выносливости", "vynoslivosti_rgb_ru")..", потраченную на блок. До "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов. За удар тратится заряд, а время действия обновляется.", -- ..CNote("Pwr_note_rgb_ru -- Атакующая оборона
			fr = "Pour chaque point d'"..CKWord("Endurance", "Stamina_rgb_fr").." dépensé pour bloquer. Votre prochaine attaque de mélée gagne "..CNumb("{power:%s}", "pwr_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." par cumule et consomme un cumule. Dure "..CNumb("{duration:%s}", "dur_var_rgb").." secondes. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "每消耗一格 "..CKWord("耐力", "Stamina_rgb_tw").." 格擋時會獲得一層，\n下一次近戰攻擊每層 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n並消耗 "..CNumb("1", "n_1_rgb").." 層充能。\n效果持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = "格挡期间，每消耗 "..CNumb("1", "n_1_rgb").." "..CKWord("体力", "Stamina_rgb_zh_cn").." "..CNumb("{power:%s}", "pwr_var_rgb").." 近战"..CKWord("强度", "Strength_rgb_zh_cn").."，\n持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"),
			de = "Für jeden Punkt verbrauchter "..CKWord("Ausdauer", "Stamina_rgb_de").." beim Blocken erhaltet ihr einen Stapel. Der nächste Nahkampfangriff verbraucht einen Stapel und erhält "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de")..". Hält "..CNumb("{duration:%s}", "dur_var_rgb").." Sek. pro Stapel. Maximal "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel."..CNote("Pwr_note"),
			it = "Per ogni punto di "..CKWord("Vigore", "Stamina_rgb_it").." speso per Bloccare, ottieni una carica. Il tuo prossimo attacco in Corpo a Corpo consuma una carica e guadagna "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per carica. Dura "..CNumb("{duration:%s}", "dur_var_rgb").." sec. per carica. Max "..CNumb("{stacks:%s}", "stacks_var_rgb").." cariche."..CNote("Pwr_note"),
			ja = "ブロック時に"..CKWord("スタミナ", "Stamina_rgb_ja").."を "..CNumb("1", "n_1_rgb").." 消費するごとにスタックを獲得。次の近接攻撃でスタックを "..CNumb("1", "n_1_rgb").." 消費し、"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power:%s}", "pwr_var_rgb").." 増加。効果時間 "..CNumb("{duration:%s}", "dur_var_rgb").."秒。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。"..CNote("Pwr_note"),
			ko = "블록 시 "..CKWord("스태미나", "Stamina_rgb_ko").."를 "..CNumb("1", "n_1_rgb").." 소모할 때마다 중첩을 얻습니다. 다음 근접 공격 시 중첩을 "..CNumb("1", "n_1_rgb").." 소모하고 근접 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power:%s}", "pwr_var_rgb").." 증가합니다. 지속 시간 "..CNumb("{duration:%s}", "dur_var_rgb").."초. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩."..CNote("Pwr_note"),
			pl = "Za każdy punkt "..CKWord("Wytrzymałości", "Stamina_rgb_pl").." zużyty na Blokowanie zyskujesz ładunek. Twój następny atak w Walce Wręcz zużywa ładunek i zyskuje "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." za ładunek. Trwa "..CNumb("{duration:%s}", "dur_var_rgb").." sek. Maks. "..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków."..CNote("Pwr_note"),
			["pt-br"] = "Para cada ponto de "..CKWord("Vigor", "Stamina_rgb_pt_br").." gasto Bloqueando, você ganha um acúmulo. Seu próximo ataque Corpo a Corpo consome um acúmulo e ganha "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." por acúmulo. Dura "..CNumb("{duration:%s}", "dur_var_rgb").." seg. Máx. "..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos."..CNote("Pwr_note"),
			es = "Por cada punto de "..CKWord("Aguante", "Stamina_rgb_es").." gastado Bloqueando, ganas una acumulación. Tu siguiente ataque Cuerpo a Cuerpo consume una acumulación y gana un "..CNumb("{power:%s}", "pwr_var_rgb").." de "..CKWord("Potencia", "Strength_rgb_es").." por acumulación. Dura "..CNumb("{duration:%s}", "dur_var_rgb").." seg. Máx. "..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones."..CNote("Pwr_note"),
		},
		--[+ CAN OPENER +]-- MELEE! ruof Открывашка	27.03.2026
		-- Brittleness Stacks (per tier)
		-- Crowbar -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_armor_rending_bayonette_crowbar_desc"] = { -- rending: 2.5%, stacks: 4, time: 5, max_stacks: 16, s->seconds, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." apply on Hit to enemies while in Secondary mode. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..".\n"
				..CNote("Brtl_note"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони применяется к врагу при ударе, когда вы во вторичном режиме. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. До "..CNumb("40%", "pc_40_rgb").." при "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядах. "
				..CNote("Brtl_note"),
			fr = "Toucher un ennemi avec l'attaque spéciale lui octroie "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Fragilité", "Brittleness_rgb_fr")..". Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes. Pour un maximum de "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls, Pour un total de "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["zh-tw"] = "特殊攻擊命中敵人時，\n使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒， "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層時為 "..CNumb("40%", "pc_40_rgb").." 。"..CNote("Brtl_note"),
			["zh-cn"] = "特殊攻击命中时，对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			de = "Ein Treffer mit dem Spezialangriff verleiht dem Ziel "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Sprödigkeit", "Brittleness_rgb_de")..". Hält "..CNumb("{time:%s}", "time_var_rgb").." Sek. Maximal "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stapel, insgesamt bis zu "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			it = "Colpire un nemico con l'attacco speciale gli infligge "..CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilità", "Brittleness_rgb_it")..". Dura "..CNumb("{time:%s}", "time_var_rgb").." sec. Massimo "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." accumuli, fino al "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			ja = "特殊攻撃を命中させると、敵に "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_ja").."を "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック付与。持続 "..CNumb("{time:%s}", "time_var_rgb").."秒。最大 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." スタック、合計 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			ko = "특수 공격 적중 시 적에게 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("취약", "Brittleness_rgb_ko").."을 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩 부여합니다. "..CNumb("{time:%s}", "time_var_rgb").."초 지속. 최대 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 중첩, 최대 "..CNumb("40%", "pc_40_rgb").." 증가."..CNote("Brtl_note"),
			pl = "Trafienie wroga Atakiem Specjalnym nakłada "..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Kruchości", "Brittleness_rgb_pl")..". Trwa "..CNumb("{time:%s}", "time_var_rgb").." sek. Maks. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." ładunków, łącznie do "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["pt-br"] = "Acertar um inimigo com o ataque especial aplica "..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidade", "Brittleness_rgb_pt_br")..". Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acúmulos, até "..CNumb("40%", "pc_40_rgb").." no total."..CNote("Brtl_note"),
			es = "Golpear a un enemigo con el ataque especial aplica "..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidad", "Brittleness_rgb_es")..". Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acumulaciones, hasta un "..CNumb("40%", "pc_40_rgb").." en total."..CNote("Brtl_note"),
		},
		--[+ REFINED LETHALITY +]-- ruof Отточеная смертоносность	20.04.2026
		-- Melee Weakspot Damage (per tier)
		-- Bone Saw -- 52.5% | 55% | 57.5% | 60%
		["loc_trait_bespoke_increased_weakspot_damage_against_toxin_status_desc"] = { -- damage: +60%, time: 2, s->seconds, +colors, +note
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." against enemies affected by "..CKWord("Chem Toxin", "Chem_Tox_rgb")..".",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." врагам на которых действует эффект "..CKWord("Хим-токсина", "Chem_Toxa_rgb_ru")..".", -- Искусная смертоносность
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts sur point faible", "Weakspot_dmg_rgb_fr").." contre les ennemis affectés par "..CKWord("Toxine Chimique", "Chem_Tox_rgb_fr")..".",
			["zh-tw"] = "對受 "..CKWord("化學毒素", "Chem_Tox_rgb_tw").." 影響的敵人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。",
			["zh-cn"] = "对受"..CKWord("化学毒素", "Chem_Tox_rgb_zh_cn").."影响的敌人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de").." gegen Gegner, die von "..CKWord("Chem-Toxin", "Chem_Tox_rgb_de").." betroffen sind.",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it").." contro nemici affetti da "..CKWord("Chem-Tossina", "Chem_Tox_rgb_it")..".",
			ja = CKWord("ケムトキシン", "Chem_Tox_rgb_ja").."状態の敵への"..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。",
			ko = CKWord("화학 독소", "Chem_Tox_rgb_ko").."에 영향을 받는 적에게 "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다.",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń w słaby punkt", "Weakspot_dmg_rgb_pl").." przeciwko wrogom pod wpływem "..CKWord("Chem-Toksyny", "Chem_Tox_rgb_pl")..".",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br").." contra inimigos afetados por "..CKWord("Quimiotoxina", "Chem_Tox_rgb_pt_br")..".",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es").." contra enemigos afectados por "..CKWord("Quimio-Toxina", "Chem_Tox_rgb_es")..".",
		},


	--[+ RANGED - ДАЛЬНИЙ БОЙ - 远程武器 +]-- ruof Обстрел
		--[+ RAKING FIRE +]--	20.04.2026
		-- Flanking Damage (per tier)
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Infantry Autoguns, Laspistols -- 32.5% | 35% | 37.5% | 40%
		["loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking_desc"] = { -- damage: +40%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." when shooting Enemies in the back.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." при стрельбе врагам в спину.", -- Огонь по тылам
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." lorsque vous tirez dans le dos des ennemis.",
			["zh-tw"] = "從側翼或背後射擊敵人時 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。",
			["zh-cn"] = "远程背刺攻击 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." beim Schießen auf Gegner in den Rücken.",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." sparando ai nemici alle spalle.",
			ja = "敵の背後から射撃すると、"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。",
			ko = "적의 후방에서 사격 시 "..CKWord("피해", "Damage_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다.",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." przy strzelaniu wrogom w plecy.",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." ao atirar em inimigos pelas costas.",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." al disparar a enemigos por la espalda.",
		},
		--[+ DUMDUM +]-- ruof Дамдам
		-- Close Damage per stack (per tier)
		-- Infantry Autoguns, Laspistols, Recon Lasguns -- 4.5% | 5% | 5.5% | 6% (up to +30%)
		["loc_trait_bespoke_consecutive_hits_increases_close_damage_desc"] = { -- damage: +6%, stacks: 5, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." to enemies within "..CNumb("12.5", "n_12_5_rgb").." meters on Repeated Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..CPhrs("Can_be_refr"),
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров при повторной атаке. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr"), -- Дум-дум
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." rapprochés lors d'un coup répété. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內，\n連續命中時 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "反复命中时，对 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人\n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Gegner innerhalb von "..CNumb("12.5", "n_12_5_rgb").." Metern bei wiederholten Treffern. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." ai nemici entro "..CNumb("12.5", "n_12_5_rgb").." metri a Colpi Ripetuti. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続ヒット時、"..CNumb("12.5", "n_12_5_rgb").."メートル以内の敵への"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。",
			ko = "연속 적중 시 "..CNumb("12.5", "n_12_5_rgb").."미터 이내의 적에게 "..CKWord("피해", "Damage_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." do wrogów w odległości do "..CNumb("12.5", "n_12_5_rgb").." metrów przy Wielokrotnym Trafieniu. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." a inimigos a até "..CNumb("12.5", "n_12_5_rgb").." metros em Acertos Repetidos. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." a enemigos en un radio de "..CNumb("12.5", "n_12_5_rgb").." metros al Golpear Repetidamente. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ HIT & RUN / HIT AND RUN +]-- ruof Бей и беги	20.04.2026
		-- Duration (per tier)
		-- Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Dual Stub Pistols, Infantry Autoguns, Recon Lasguns -- 0.7s | 0.8s | 0.9s | 1s
		["loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill_desc"] = { -- time: 1, s->second, +colors
			en = "Immune to Ranged Attacks for "..CNumb("{time:%s}", "time_var_rgb").." second after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters.\n"
				..CPhrs("Can_be_refr"),
			ru = "Иммунитет к дальнобойным атакам на "..CNumb("{time:%s}", "time_var_rgb").." секунду при убийстве врага на расстоянии не более "..CNumb("12.5", "n_12_5_rgb").." метров.\n"
				..CPhrs("Can_be_refr"),
			fr = "Immunité contre les attaques à distance pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres.",
			["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人時，\n獲得對遠程攻擊的免疫效果，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时，\n闪避全部远程攻击，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = "Immunität gegen Fernkampfangriffe für "..CNumb("{time:%s}", "time_var_rgb").." Sek. nach einem Kill innerhalb von "..CNumb("12.5", "n_12_5_rgb").." Metern.",
			it = "Immunità agli attacchi a distanza per "..CNumb("{time:%s}", "time_var_rgb").." sec. dopo aver ucciso un nemico entro "..CNumb("12.5", "n_12_5_rgb").." metri.",
			ja = CNumb("12.5", "n_12_5_rgb").."メートル以内の敵をキルすると、"..CNumb("{time:%s}", "time_var_rgb").."秒間、遠隔攻撃を回避。",
			ko = CNumb("12.5", "n_12_5_rgb").."미터 이내의 적을 처치하면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 원거리 공격을 회피합니다.",
			pl = "Odporność na ataki dystansowe przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po zabiciu wroga w odległości do "..CNumb("12.5", "n_12_5_rgb").." metrów.",
			["pt-br"] = "Imunidade a ataques à distância por "..CNumb("{time:%s}", "time_var_rgb").." seg. após matar um inimigo a até "..CNumb("12.5", "n_12_5_rgb").." metros.",
			es = "Inmunidad a ataques a distancia durante "..CNumb("{time:%s}", "time_var_rgb").." seg. tras matar a un enemigo a "..CNumb("12.5", "n_12_5_rgb").." metros o menos.",
		},
		--[+ SUSTAINED FIRE +]-- ruof Непрерывный огонь	20.04.2026
		-- Ranged Damage (per tier)
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Exterminator Shotguns, Helbore Lasguns, Infantry Autoguns, Recon Lasguns, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 14% | 16% | 18% | 20%
		["loc_trait_bespoke_followup_shots_ranged_damage_desc"] = { -- damage: +20%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." on Second, Third and Fourth shots in a Salvo.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." для второго, третьего и четвёртого выстрела залпа.", -- Непрерывная стрельба
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." lors des "..CNumb("2e", "n_2e_rgb")..", "..CNumb("3e", "n_3e_rgb")..", "..CNumb("4e", "n_4e_rgb").." tirs d'une salve.",
			["zh-tw"] = "齊射的第二、三與第四發射擊，\n獲得 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。",
			["zh-cn"] = "齐射的第二、第三和第四发射击\n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." für den zweiten, dritten und vierten Schuss einer Salve.",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." per il secondo, terzo e quarto colpo di una Salva.",
			ja = "斉射の "..CNumb("2", "n_2_rgb").."発目、"..CNumb("3", "n_3_rgb").."発目、"..CNumb("4", "n_4_rgb").."発目の"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。",
			ko = "일제 사격의 "..CNumb("2", "n_2_rgb").."번째, "..CNumb("3", "n_3_rgb").."번째, "..CNumb("4", "n_4_rgb").."번째 사격의 "..CKWord("피해", "Damage_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다.",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." przy drugim, trzecim i czwartym strzale w Salwie.",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." no segundo, terceiro e quarto disparos de uma Salva.",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." en el segundo, tercer y cuarto disparo de una Salva.",
		},
		--[+ PUNISHING SALVO +]-- ruof Карательный залп
		-- Ranged Weakspot Damage (per tier)
		-- Exterminator Shotguns, Infantry Autoguns, Recon Lasguns -- 35% | 40% | 45% | 50%
		["loc_trait_bespoke_followup_shots_ranged_weakspot_damage_desc"] = { -- damage: +50%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." on Second, Third and Fourth shots in a Salvo.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." для второго, третьего и четвёртого выстрела залпа.",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." lors des "..CNumb("2e", "n_2e_rgb")..", "..CNumb("3e", "n_3e_rgb")..", "..CNumb("4e", "n_4e_rgb").." tirs d'une salve.",
			["zh-tw"] = "齊射的第二、三與第四發射擊，\n獲得 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。",
			["zh-cn"] = "齐射的第二、第三和第四发射击\n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de").." für den zweiten, dritten und vierten Schuss einer Salve.",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it").." per il secondo, terzo e quarto colpo di una Salva.",
			ja = "斉射の "..CNumb("2", "n_2_rgb").."発目、"..CNumb("3", "n_3_rgb").."発目、"..CNumb("4", "n_4_rgb").."発目の"..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。",
			ko = "일제 사격의 "..CNumb("2", "n_2_rgb").."번째, "..CNumb("3", "n_3_rgb").."번째, "..CNumb("4", "n_4_rgb").."번째 사격의 "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다.",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń w słaby punkt", "Weakspot_dmg_rgb_pl").." przy drugim, trzecim i czwartym strzale w Salwie.",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br").." no segundo, terceiro e quarto disparos de uma Salva.",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es").." en el segundo, tercer y cuarto disparo de una Salva.",
		},
		--[+ FIRE FRENZY +]-- ruof Огненное неистовство
		-- Close Damage per stack (per tier)
		-- Boltguns, Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Ripper Guns, Shotpistol and Shield -- 7% | 8% | 9% | 10% (up to +50%)
		["loc_trait_bespoke_increase_close_damage_on_close_kill_desc"] = { -- close_damage: +10%, time: 3.5, stacks: 5, +colors
			en = CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("Damage", "Damage_rgb").." to enemies within "..CNumb("12.5", "n_12_5_rgb").." meters for "..CNumb("{time:%s}", "time_var_rgb").." seconds after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{close_damage:%s}", "dmgcls_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров на "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийства врага в пределах "..CNumb("12.5", "n_12_5_rgb").." метров. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr"), -- Неистовая стрельба
			fr = "Gagnez "..CNumb("{close_damage:%s}", "dmgcls_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." rapprochés pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人，\n"..CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("近戰傷害", "Damage_melee_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时 \n对 "..CNumb("12.5", "n_12_5_rgb").." 米内目标 "..CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Gegner innerhalb von "..CNumb("12.5", "n_12_5_rgb").." Metern für "..CNumb("{time:%s}", "time_var_rgb").." Sek. nach einem Kill innerhalb von "..CNumb("12.5", "n_12_5_rgb").." Metern. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." ai nemici entro "..CNumb("12.5", "n_12_5_rgb").." metri per "..CNumb("{time:%s}", "time_var_rgb").." sec. dopo un'uccisione entro "..CNumb("12.5", "n_12_5_rgb").." metri. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = CNumb("12.5", "n_12_5_rgb").."メートル以内の敵をキルすると、"..CNumb("{time:%s}", "time_var_rgb").."秒間、同範囲内の敵への"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{close_damage:%s}", "dmgcls_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。",
			ko = CNumb("12.5", "n_12_5_rgb").."미터 이내의 적을 처치하면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("피해", "Damage_rgb_ko").."가 "..CNumb("{close_damage:%s}", "dmgcls_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." do wrogów w odległości do "..CNumb("12.5", "n_12_5_rgb").." metrów na "..CNumb("{time:%s}", "time_var_rgb").." sek. po zabiciu wroga w tym zasięgu. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." a inimigos a até "..CNumb("12.5", "n_12_5_rgb").." metros por "..CNumb("{time:%s}", "time_var_rgb").." seg. após matar um inimigo nesse alcance. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." a enemigos en un radio de "..CNumb("12.5", "n_12_5_rgb").." metros durante "..CNumb("{time:%s}", "time_var_rgb").." seg. tras matar a un enemigo en ese radio. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ DEATHSPITTER +]-- ruof Смертоносец
		-- Power per stack (per tier) and Stack Duration
		-- Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Recon Lasguns, Shotpistol and Shield -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 3.5s
		-- Double-Barrel Shotgun -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 5s
		["loc_trait_bespoke_increase_power_on_close_kill_desc"] = { -- power_level: 6.5%, time: 3.5, stacks: 5, +colors, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters. Up to "..CNumb("5", "n_5_rgb").." Stacks. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при убийстве врага на дистанции до "..CNumb("12.5", "n_12_5_rgb").." метров. До "..CNumb("5", "n_5_rgb").." зарядов. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Смертоплюй
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres. Se cumule jusqu'à "..CNumb("5", "n_5_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "在"..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("5", "n_5_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时 \n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. nach einem Kill innerhalb von "..CNumb("12.5", "n_12_5_rgb").." Metern. Bis zu "..CNumb("5", "n_5_rgb").." Stapel."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. dopo un'uccisione entro "..CNumb("12.5", "n_12_5_rgb").." metri. Fino a "..CNumb("5", "n_5_rgb").." accumuli."..CNote("Pwr_note"),
			ja = CNumb("12.5", "n_12_5_rgb").."メートル以内の敵をキルすると、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("5", "n_5_rgb").." 回スタック。"..CNote("Pwr_note"),
			ko = CNumb("12.5", "n_12_5_rgb").."미터 이내의 적을 처치하면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("5", "n_5_rgb").."회 중첩."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sek. po zabiciu wroga w odległości do "..CNumb("12.5", "n_12_5_rgb").." metrów. Maks. "..CNumb("5", "n_5_rgb").." ładunków."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." seg. após matar um inimigo a até "..CNumb("12.5", "n_12_5_rgb").." metros. Acumula até "..CNumb("5", "n_5_rgb").." vezes."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." seg. tras matar a un enemigo a "..CNumb("12.5", "n_12_5_rgb").." metros o menos. Hasta "..CNumb("5", "n_5_rgb").." acumulaciones."..CNote("Pwr_note"),
		},
		--[+ STRIPPED DOWN +]-- ruof Срез	20.04.2026
		-- Max Stamina Percentage Threshold (per tier)
		-- Braced Autoguns, Infantry Autoguns, Needle Pistols, Recon Lasguns -- 80% | 70% | 60% | 50%
		["loc_trait_bespoke_increased_sprint_speed_desc"] = { -- stamina: 50%, +colors
			en = "Gain Ranged Attack Immunity while Sprinting with over "..CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Stamina", "Stamina_rgb")..".",
			ru = "Вы получаете иммунитет от атак дальнего боя при беге с уровнем "..CKWord("выносливости", "vynoslivosti_rgb_ru").." превышающим "..CNumb("{stamina:%s}", "stam_var_rgb")..".", -- Сбросить лишнее
			fr = "Gagnez une immunité contre les attaques à distance lorsque vous courez avec plus de "..CNumb("{stamina:%s}", "stam_var_rgb").." d'"..CKWord("Endurance", "Stamina_rgb_fr")..".",
			["zh-tw"] = "當衝刺時 "..CKWord("耐力消耗", "Stamina_c_r_rgb_tw").." 超過 "..CNumb("{stamina:%s}", "stam_var_rgb").." 時，\n將獲得對遠程攻擊的免疫效果。",
			["zh-cn"] = "以超过 "..CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("体力", "Stamina_rgb_zh_cn").."疾跑时，\n闪避全部远程攻击。",
			de = "Erhaltet Immunität gegen Fernkampfangriffe beim Sprinten mit über "..CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Ausdauer", "Stamina_rgb_de")..".",
			it = "Ottieni immunità agli attacchi a distanza mentre scatti con più del "..CNumb("{stamina:%s}", "stam_var_rgb").." di "..CKWord("Vigore", "Stamina_rgb_it")..".",
			ja = CKWord("スタミナ", "Stamina_rgb_ja").."が "..CNumb("{stamina:%s}", "stam_var_rgb").." 以上の状態でダッシュすると、遠隔攻撃を回避。",
			ko = CKWord("스태미나", "Stamina_rgb_ko").."가 "..CNumb("{stamina:%s}", "stam_var_rgb").." 이상인 상태로 질주하면 원거리 공격을 회피합니다.",
			pl = "Zyskujesz odporność na ataki dystansowe podczas sprintu z ponad "..CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Wytrzymałości", "Stamina_rgb_pl")..".",
			["pt-br"] = "Ganha imunidade a ataques à distância ao Correr com mais de "..CNumb("{stamina:%s}", "stam_var_rgb").." de "..CKWord("Vigor", "Stamina_rgb_pt_br")..".",
			es = "Ganas inmunidad a ataques a distancia mientras Esprintas con más del "..CNumb("{stamina:%s}", "stam_var_rgb").." de "..CKWord("Aguante", "Stamina_rgb_es")..".",
		},
		--[+ SPEEDLOAD +]-- ruof Скоростная загрузка	20.04.2026
		-- Reload Speed per stack (per tier) and Duration
		-- Autopistol, Dual Autopistols, Dual Stub Pistols -- 7% | 8% | 9% | 10% (up to +50%) | 2s
		-- Braced Autoguns, Infantry Autoguns -- 7% | 8% | 9% | 10% (up to +50%) | 2.5s 
		-- Double-Barrel Shotgun, Laspistols, Needle Pistols, Recon Lasguns -- 7% | 8% | 9% | 10% (up to +50%) | 3s
		-- Shotpistol and Shield, Stub Revolvers -- 7% | 8% | 9% | 10% (up to +50%) | 4s
		["loc_trait_bespoke_reload_speed_on_slide_desc"] = { -- reload_speed: 10%, time: 2.5, stacks: 5, +colors, +note
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed for "..CNumb("{time:%s}", "time_var_rgb").." seconds after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").." "..Dot_red.." DoT kills cannot proc it.",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки на "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийства врага на дистанции до "..CNumb("12.5", "n_12_5_rgb").." метров. До "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов. "
				..CPhrs("Can_be_refr").." "..Dot_red.." Не срабатывает от убийств эффектами.", -- Быстрая перезарядка
			fr = CNumb("{reload_speed:%s}", "reload_var_rgb").." de vitesse de rechargement pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人後，\n"..CNumb("{reload_speed:%s}", "reload_var_rgb").." 換彈速度，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时\n"..CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{reload_speed:%s}", "reload_var_rgb").." Nachladegeschwindigkeit für "..CNumb("{time:%s}", "time_var_rgb").." Sek. nach einem Kill innerhalb von "..CNumb("12.5", "n_12_5_rgb").." Metern. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{reload_speed:%s}", "reload_var_rgb").." Velocità di Ricarica per "..CNumb("{time:%s}", "time_var_rgb").." sec. dopo un'uccisione entro "..CNumb("12.5", "n_12_5_rgb").." metri. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = CNumb("12.5", "n_12_5_rgb").."メートル以内の敵をキルすると、"..CNumb("{time:%s}", "time_var_rgb").."秒間リロード速度が "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。",
			ko = CNumb("12.5", "n_12_5_rgb").."미터 이내의 적을 처치하면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 재장전 속도가 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{reload_speed:%s}", "reload_var_rgb").." Prędkości Przeładowania na "..CNumb("{time:%s}", "time_var_rgb").." sek. po zabiciu wroga w odległości do "..CNumb("12.5", "n_12_5_rgb").." metrów. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{reload_speed:%s}", "reload_var_rgb").." de Velocidade de Recarga por "..CNumb("{time:%s}", "time_var_rgb").." seg. após matar um inimigo a até "..CNumb("12.5", "n_12_5_rgb").." metros. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{reload_speed:%s}", "reload_var_rgb").." de Velocidad de Recarga durante "..CNumb("{time:%s}", "time_var_rgb").." seg. tras matar a un enemigo a "..CNumb("12.5", "n_12_5_rgb").." metros o menos. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ TERRIFYING BARRAGE +]-- ruof Устрашающий натиск	20.04.2026
		-- Suppression Amount (per tier)
		-- Autopistol, Boltguns, Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Twin-Linked Stubbers, Infantry Autoguns, Inferno Staff, Kickback, Ripper Guns, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 15 | 20 | 25 | 30
		["loc_trait_bespoke_suppression_on_close_kill_desc"] = { -- rewrited, +colors, 5m->5meters
			en = "Suppress Enemies within "..CNumb("12.5", "n_12_5_rgb").." meters after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters away.",
			ru = "Вы подавляете врагов в радиусе "..CNumb("12.5", "n_12_5_rgb").." метров после убийства врага на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров.", -- Ужасающий шквал
			fr = "Infligez Suppression aux ennemies lors d'une élimination jusqu'à une distance de "..CNumb("12.5", "n_12_5_rgb").." mètres.",
			["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人後，\n對 "..CNumb("8", "n_8_rgb").." 公尺內敵人造成壓制效果。",
			["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时，\n压制 "..CNumb("12", "n_12_rgb").." 米内的敌人。",
			de = "Unterdrückt Gegner in einem Umkreis von "..CNumb("12.5", "n_12_5_rgb").." Metern nach einem Kill innerhalb dieses Bereichs.",
			it = "Sopprimi i nemici entro "..CNumb("12.5", "n_12_5_rgb").." metri dopo aver ucciso un nemico entro la stessa distanza.",
			ja = CNumb("12.5", "n_12_5_rgb").."メートル以内の敵をキルすると、同範囲内の敵を制圧する。",
			ko = CNumb("12.5", "n_12_5_rgb").."미터 이내의 적을 처치하면 같은 범위 내의 적을 제압합니다.",
			pl = "Wprowadza w Stan Supresji wrogów w promieniu "..CNumb("12.5", "n_12_5_rgb").." metrów po zabiciu wroga w tej odległości.",
			["pt-br"] = "Suprime inimigos em um raio de "..CNumb("12.5", "n_12_5_rgb").." metros após matar um inimigo a essa distância.",
			es = "Suprime a los enemigos en un radio de "..CNumb("12.5", "n_12_5_rgb").." metros tras matar a un enemigo a esa distancia.",
		},
		--[+ ROARING ADVANCE +]-- ruof Ревущее наступление	20.04.2026
		-- Alt Fire Move Speed Penalty Reduction per stack (per tier)
		-- Braced Autoguns -- 10% | 15% | 20% | 25% (up to ~76%)
		-- Twin-Linked Stubbers -- 7% | 8% | 9% | 10% (up to ~41%)
		["loc_trait_bespoke_movement_speed_on_continuous_fire_desc"] = { -- movement_speed: 25%, ammo: 5%, stacks: 5, s->seconds, +colors
			en = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Movement Speed Reduction for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{movement_speed:%s}", "movspd_var_rgb").." от штрафа снижения скорости движения при прицеливании за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.",
			fr = CNumb("{movement_speed:%s}", "movspd_var_rgb").." de réduction de vitesse de déplacement pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").." du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n"..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 的移動速度懲罰，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 的弹药，\n移动速度惩罚 "..CNumb("{movement_speed:%s}", "movspd_var_rgb").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Bewegungsgeschwindigkeitsreduktion für je "..CNumb("{ammo:%s}", "ammo_var_rgb").." des Magazins, die bei Dauerfeuer verbraucht werden. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{movement_speed:%s}", "movspd_var_rgb").." di Riduzione della Velocità di Movimento per ogni "..CNumb("{ammo:%s}", "ammo_var_rgb").." del caricatore speso durante il fuoco continuo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続射撃中、消費したマガジンの "..CNumb("{ammo:%s}", "ammo_var_rgb").." ごとに移動速度ペナルティが "..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 回復。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。",
			ko = "연속 사격 중 탄창의 "..CNumb("{ammo:%s}", "ammo_var_rgb").."를 소모할 때마다 이동 속도 페널티가 "..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 감소합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Redukcji Prędkości Ruchu za każde "..CNumb("{ammo:%s}", "ammo_var_rgb").." magazynka zużytego podczas ognia ciągłego. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{movement_speed:%s}", "movspd_var_rgb").." de Redução de Velocidade de Movimento para cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." do carregador gasto durante fogo contínuo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{movement_speed:%s}", "movspd_var_rgb").." de Reducción de Velocidad de Movimiento por cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." del cargador gastado durante fuego continuo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ CEASELESS BARRAGE +]-- ruof Беспощадный натиск	20.04.2026
		-- Increased Suppression and Damage vs Suppressed (per tier)
		-- Braced Autoguns, Twin-Linked Stubbers -- 12.5% and 4% | 15% and 5% | 17.5% and 6% | 20% and 7% (up to +100% and +35%)
		["loc_trait_bespoke_suppression_on_continuous_fire_desc"] = { -- suppression: +20%, damage_vs_suppressed: +6%, ammo: 2.5%, stacks: 5, +colors
			en = CNumb("{suppression:%s}", "spprsn_var_rgb").." Suppression and "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("Damage", "Damage_rgb").." against Suppressed Enemies for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{suppression:%s}", "spprsn_var_rgb").." к подавлению и "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." по подавленным врагам за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Бесконечный шквал
			fr = CNumb("{suppression:%s}", "spprsn_var_rgb").." de suppression et "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les ennemies sous suppression pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").." du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n獲得 "..CNumb("{suppression:%s}", "spprsn_var_rgb").." 壓制效果強度，\n並對被壓制的敵人造成 "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 的弹药，\n"..CNumb("{suppression:%s}", "spprsn_var_rgb").." 压制效果，同时对被压制的敌人 "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{suppression:%s}", "spprsn_var_rgb").." Unterdrückung und "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen unterdrückte Gegner für je "..CNumb("{ammo:%s}", "ammo_var_rgb").." des Magazins, die bei Dauerfeuer verbraucht werden. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{suppression:%s}", "spprsn_var_rgb").." Soppressione e "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." contro nemici soppressi per ogni "..CNumb("{ammo:%s}", "ammo_var_rgb").." del caricatore speso durante il fuoco continuo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続射撃中、消費したマガジンの "..CNumb("{ammo:%s}", "ammo_var_rgb").." ごとに制圧効果が "..CNumb("{suppression:%s}", "spprsn_var_rgb").." 増加し、制圧状態の敵への"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。",
			ko = "연속 사격 중 탄창의 "..CNumb("{ammo:%s}", "ammo_var_rgb").."를 소모할 때마다 제압 효과가 "..CNumb("{suppression:%s}", "spprsn_var_rgb").." 증가하고 제압된 적에게 "..CKWord("피해", "Damage_rgb_ko").."가 "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{suppression:%s}", "spprsn_var_rgb").." Supresji i "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." przeciwko wrogom w stanie supresji za każde "..CNumb("{ammo:%s}", "ammo_var_rgb").." magazynka zużytego podczas ognia ciągłego. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{suppression:%s}", "spprsn_var_rgb").." de Supressão e "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." contra inimigos suprimidos para cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." do carregador gasto durante fogo contínuo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{suppression:%s}", "spprsn_var_rgb").." de Supresión y "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." de "..CKWord("Daño", "Damage_rgb_es").." contra enemigos suprimidos por cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." del cargador gastado durante fuego continuo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ INSPIRING BARRAGE +]-- ruof Вдохновляющий натиск	20.04.2026
		-- Max Toughness Percentage per stack (per tier)
		-- Autopistol, Boltguns, Braced Autoguns, Dual Autopistols, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns -- 1% | 2% | 3% | 4% (up to 20%)
		["loc_trait_bespoke_toughness_on_continuous_fire_desc"] = { -- toughness: +4%, ammo: 10%, stacks: 5, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Вдохновляющий шквал
			fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").." du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n恢復 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 的弹药，回复"..CKWord("韧性", "Toughness_rgb_zh_cn")..",\n每叠加 "..CNumb("1", "n_1_rgb").." 层，"..CKWord("韧性", "Toughness_rgb_zh_cn").."回复效果 "..CNumb("{toughness:%s}", "tghns_var_rgb").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").." für je "..CNumb("{ammo:%s}", "ammo_var_rgb").." des Magazins, die bei Dauerfeuer verbraucht werden. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Tempra", "Toughness_rgb_it").." per ogni "..CNumb("{ammo:%s}", "ammo_var_rgb").." del caricatore speso durante il fuoco continuo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続射撃中、消費したマガジンの "..CNumb("{ammo:%s}", "ammo_var_rgb").." ごとに"..CKWord("タフネス", "Toughness_rgb_ja").."が "..CNumb("{toughness:%s}", "tghns_var_rgb").." 回復。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 回スタック。",
			ko = "연속 사격 중 탄창의 "..CNumb("{ammo:%s}", "ammo_var_rgb").."를 소모할 때마다 "..CKWord("강인함", "Toughness_rgb_ko").."이 "..CNumb("{toughness:%s}", "tghns_var_rgb").." 회복됩니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Wytrzymałości", "Toughness_rgb_pl").." za każde "..CNumb("{ammo:%s}", "ammo_var_rgb").." magazynka zużytego podczas ognia ciągłego. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br").." para cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." do carregador gasto durante fogo contínuo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Aguante", "Toughness_rgb_es").." por cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." del cargador gastado durante fuego continuo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ GHOST +]-- ruof Призрак	20.04.2026
		-- Duration (per tier)
		-- Infantry Lasguns, Laspistols, Needle Pistols, Vigilant Autoguns -- 0.6s | 0.8s | 1s | 1.2s
		["loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot_desc"] = { -- time: 1.2, +colors
			en = "Immune to Ranged Attacks for "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". "
				..CPhrs("Can_be_refr"),
			ru = "Иммунитет к дальнобойным атакам на "..CNumb("{time:%s}", "time_var_rgb").." секунды при выстрелах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". "
				..CPhrs("Can_be_refr"),
			fr = "Immunité contre les attaques à distance pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			["zh-tw"] = "命中 "..CKWord("命中弱點", "Weakspothits_rgb_tw").." 時，\n獲得對遠程攻擊的免疫效果，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，\n闪避全部远程攻击，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = "Immunität gegen Fernkampfangriffe für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei einem "..CKWord("Schwachstellentreffer", "Weakspothit_rgb_de")..".",
			it = "Immunità agli attacchi a distanza per "..CNumb("{time:%s}", "time_var_rgb").." sec. con un "..CKWord("Colpo a Punto Debole", "Weakspothit_rgb_it")..".",
			ja = CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、"..CNumb("{time:%s}", "time_var_rgb").."秒間、遠隔攻撃を回避。",
			ko = CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 원거리 공격을 회피합니다.",
			pl = "Odporność na ataki dystansowe przez "..CNumb("{time:%s}", "time_var_rgb").." sek. przy "..CKWord("Trafieniu w Słaby Punkt", "Weakspothit_rgb_pl")..".",
			["pt-br"] = "Imunidade a ataques à distância por "..CNumb("{time:%s}", "time_var_rgb").." seg. ao "..CKWord("Acertar um Ponto Fraco", "Weakspothit_rgb_pt_br")..".",
			es = "Inmunidad a ataques a distancia durante "..CNumb("{time:%s}", "time_var_rgb").." seg. al "..CKWord("Golpear un Punto Débil", "Weakspothit_rgb_es")..".",
		},
		--[+ SURGICAL +]-- ruof Зоркость
		-- Stack Interval (per tier)
		-- Boltguns, Heavy Stubbers, Kickback, Vigilant Autoguns -- 0.35s | 0.3s | 0.25s | 0.2s
		-- Bolt Pistols, Helbore Lasguns, Stub Revolvers -- 0.45s | 0.4s | 0.35s | 0.3s
		["loc_trait_bespoke_crit_chance_based_on_aim_time_desc"] = { -- crit_chance: +10%, time: 0.2, stacks: 10, +colors, second->seconds
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for every "..CNumb("{time:%s}", "time_var_rgb").." seconds while aiming. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Discharges all Stacks upon firing.\n"
				..Dot_nc.." Removes all Stacks when leaving alt fire mode.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." каждые "..CNumb("{time:%s}", "time_var_rgb").." секунды пока вы целитесь во врагов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. Все заряды сбрасываются при стрельбе или при выходе из режима прицеливания.", -- Хирургическая точность
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." chaque fois de vous passez "..CNumb("{time:%s}", "time_var_rgb").." secondes à viser. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Tous les cumuls sont déchargés lorsque vous tirez.",
			["zh-tw"] = "持續瞄準時，\n每 "..CNumb("{time:%s}", "time_var_rgb").." 秒 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層，射擊後將重置所有層數。",
			["zh-cn"] = "瞄准期间，每 "..CNumb("{time:%s}", "time_var_rgb").." 秒 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层，射击后清空所有层数。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." alle "..CNumb("{time:%s}", "time_var_rgb").." Sek. beim Zielen. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal. Verliert alle Stapel beim Schießen oder Verlassen des Zielmodus.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." ogni "..CNumb("{time:%s}", "time_var_rgb").." secondi mirando. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte. Perdi tutte le cariche sparando o uscendo dalla mira.",
			ja = "照準中、"..CNumb("{time:%s}", "time_var_rgb").."秒ごとに"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。射撃または照準解除で全スタック消失。",
			ko = "조준 중 "..CNumb("{time:%s}", "time_var_rgb").."초마다 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩. 사격 또는 조준 해제 시 모든 중첩이 사라집니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." co "..CNumb("{time:%s}", "time_var_rgb").." sek. podczas celowania. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy. Wszystkie ładunki tracone przy strzale lub opuszczeniu celowania.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." a cada "..CNumb("{time:%s}", "time_var_rgb").." segundos mirando. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes. Todos os acúmulos são perdidos ao atirar ou sair da mira.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." cada "..CNumb("{time:%s}", "time_var_rgb").." segundos apuntando. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces. Pierde todas las acumulaciones al disparar o dejar de apuntar.",
		},
		--[+ CRUCIAN ROULETTE +]-- ruof Круцианская рулетка	20.04.2026
		-- Crit Chance per Missing Round (per tier)
		-- Dual Stub Pistols -- 1% | 1.25% | 1.5% | 2%
		-- Stub Revolvers -- 4.5% | 5% | 5.5% | 6%
		-- Vigilant Autoguns -- 0.45% | 0.5% | 0.55% | 0.6%
		["loc_trait_bespoke_crit_chance_based_on_ammo_left_desc"] = { -- crit_chance: +0.6%, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for each expended round in your weapon. Resets on reload.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." за каждый израсходованный патрон в вашем оружии. Сбрасывается при перезарядке.",
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pour chaque munition utilisée dans votre arme. Se réinitialise lorsque vous rechargez.",
			["zh-tw"] = "每消耗一發彈藥 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."。\n在重新裝填時重置效果。",
			["zh-cn"] = "弹匣每缺失一枚弹药 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für jede verbrauchte Patrone. Wird beim Nachladen zurückgesetzt.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per ogni colpo esaurito nell'arma. Si resetta ricaricando.",
			ja = "消費した弾薬 "..CNumb("1", "n_1_rgb").." 発ごとに"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。リロードでリセット。",
			ko = "소모된 탄약 한 발당 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다. 재장전 시 초기화됩니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." za każdy zużyty nabój. Resetuje się przy przeładowaniu.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." para cada munição gasta na arma. Reseta ao recarregar.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." por cada cartucho gastado. Se reinicia al recargar.",
		},
		--[+ DEADLY ACCURATE +]-- ruof Смертоностная точность
		-- Crit Weakspot Damage (per tier)
		-- Bolt Pistols, Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns -- 70% | 80% | 90% | 100%
		["loc_trait_bespoke_crit_weakspot_finesse_desc"] = { -- crit_weakspot_damage: +100%, +colors
			en = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." "..CKWord("Critical", "Critical_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..".",
			ru = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." к "..CKWord("критическому", "kriticheskomu_rgb_ru").." "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..".",
			fr = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." de "..CKWord("Dégâts de coup critique", "Crit_dmg_r_rgb_fr").." sur un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			["zh-tw"] = CKWord("暴擊", "Crit_rgb_tw").." 時 "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").." "..CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").."。",
			["zh-cn"] = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." "..CKWord("暴击", "Crit_rgb_zh_cn")..""..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。",
			de = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." "..CKWord("Kritischer Trefferschaden", "Crt_strk_dmg_rgb_de").." auf "..CKWord("Schwachstellen", "Weakspot_rgb_de")..".",
			it = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." "..CKWord("Danno da colpo critico", "Crt_strk_dmg_rgb_it").." su "..CKWord("Punto Debole", "Weakspot_rgb_it")..".",
			ja = CKWord("弱点", "Weakspot_rgb_ja").."への"..CKWord("クリティカルダメージ", "Crit_dmg_r_rgb_ja").."が "..CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." 増加。",
			ko = CKWord("약점", "Weakspot_rgb_ko").."에 대한 "..CKWord("크리티컬 피해", "Crit_dmg_r_rgb_ko").."가 "..CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." "..CKWord("Obrażeń krytycznych", "Crt_strk_dmg_rgb_pl").." w "..CKWord("Słaby Punkt", "Weakspot_rgb_pl")..".",
			["pt-br"] = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." "..CKWord("Dano de golpe crítico", "Crt_strk_dmg_rgb_pt_br").." em "..CKWord("Ponto Fraco", "Weakspot_rgb_pt_br")..".",
			es = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." "..CKWord("Daño de golpe crítico", "Crt_strk_dmg_rgb_es").." en "..CKWord("Punto Débil", "Weakspot_rgb_es")..".",
		},
		--[+ NO RESPITE +]-- ruof Нет отдыху
		-- Stagger Count Damage (per tier)
		-- Combat Shotguns, Helbore Lasguns, Infantry Lasguns, Shotpistol and Shield, Vigilant Autoguns -- 14% | 16% | 18% | 20% (up to +140%)
		["loc_trait_bespoke_stagger_count_bonus_damage_desc"] = { -- damage: +20%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." on Hit to "..CKWord("Staggered", "Staggered_rgb").." Enemy. Enemies take increased "..CKWord("Damage", "Damage_rgb").." based on the strength of the "..CKWord("Stagger", "Stagger_rgb").." effect applied to them. Stacks "..CNumb("7", "n_7_rgb").." times.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." "..CKWord("ошеломлённым", "oshelomlennym_rgb_ru").." врагам. Враги получают повышенный "..CKWord("урон", "uron_rgb_ru").." в зависимости от мощности эффекта "..CKWord("ошеломления", "oshelomlenia_rgb_ru")..", наложенного на них. Суммируется "..CNumb("7", "n_7_rgb").." раз.", -- Без передышки
			fr = "Jusqu'à "..CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." lors d'un coup sur un ennemi qui "..CKWord("vacille", "Staggered_rgb_fr")..". Le plus l'ennemie "..CKWord("vacille", "Staggered_rgb_fr").." le plus il reçoit de "..CKWord("Dégâts", "Damage_rgb_fr")..".",
			["zh-tw"] = "攻擊 "..CKWord("硬直中", "Stuns_rgb_tw").." 敵人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。\n依據效果強度，你對其 "..CKWord("傷害", "Damage_rgb_tw").." 越高。",
			["zh-cn"] = "命中"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人时，\n随敌人"..CKWord("踉跄", "Stagger_rgb_zh_cn").."程度增长叠加层数，\n每层 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。最多叠加"..CNumb("7", "n_7_rgb").." 层。",
			de = "Bis zu "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." bei Treffern gegen "..CKWord("taumelnde", "Staggered_rgb_de").." Gegner. Der Schaden erhöht sich mit der Stärke des "..CKWord("Taumel", "Stagger_rgb_de").."-Effekts.",
			it = "Fino a "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." a Colpo su nemici "..CKWord("Barcollanti", "Staggered_rgb_it")..". Il danno aumenta in base alla potenza del "..CKWord("Barcollamento", "Stagger_rgb_it").." inflitto.",
			ja = CKWord("スタッガー状態", "Staggered_rgb_ja").."の敵へのヒット時、"..CKWord("ダメージ", "Damage_rgb_ja").."が最大 "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。スタッガー効果が強いほどダメージ増加。",
			ko = CKWord("스태거 상태", "Staggered_rgb_ko").."의 적 적중 시 "..CKWord("피해", "Damage_rgb_ko").."가 최대 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다. 스태거 효과가 강할수록 피해가 증가합니다.",
			pl = "Do "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." przy trafieniu "..CKWord("Oślepionego", "Staggered_rgb_pl").." wroga. Obrażenia rosną w zależności od siły efektu "..CKWord("Oszołomienia", "Stagger_rgb_pl")..".",
			["pt-br"] = "Até "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." ao acertar um inimigo "..CKWord("Cambaleante", "Staggered_rgb_pt_br")..". O dano aumenta baseado na força do "..CKWord("Cambaleio", "Stagger_rgb_pt_br").." aplicado.",
			es = "Hasta "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." al golpear a un enemigo "..CKWord("Tambaleante", "Staggered_rgb_es")..". El daño aumenta según la fuerza del "..CKWord("Tambaleo", "Stagger_rgb_es").." aplicado.",
		},
		--[+ OPENING SALVO +]-- ruof Открывающий залп
		-- Ranged Power (per tier)
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns -- 14% | 16% | 18% | 20%
		["loc_trait_bespoke_power_bonus_on_first_shot_desc"] = { -- power_level: +20%, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on Salvo's First shot.\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." для первого выстрела залпа. "
				..CNote("Pwr_note"),
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." lors du premier tir d'une salve."..CNote("Pwr_note"),
			["zh-tw"] = "齊射的第一發射擊 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."。"..CNote("Pwr_note"),
			["zh-cn"] = "齐射的第一发射击 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für den ersten Schuss einer Salve."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." sul primo colpo di una Salva."..CNote("Pwr_note"),
			ja = "斉射の "..CNumb("1", "n_1_rgb").."発目の"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = "일제 사격의 첫 번째 사격의 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." przy pierwszym strzale Salwy."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." no primeiro disparo de uma Salva."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." en el primer disparo de una Salva."..CNote("Pwr_note"),
		},
		--[+ HEADHUNTER +]-- ruof Охотник за головами
		-- Crit Chance per stack (per tier)
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns -- 14% | 16% | 18% | 20% (up to +100%)
		-- Recon Lasguns -- 3.5% | 4% | 4.5% | 5% (up to +20%)
		["loc_trait_bespoke_weakspot_stacking_crit_chance_desc"] = { -- crit_chance: +20%, stacks: 5, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." on "..CKWord("Weakspot Hit", "Weakspothit_rgb").." until your next "..CKWord("Critical Hit", "Crit_hit_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." при выстрелах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". Расходуется при следующем "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.",
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." sur un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." jusqu'à votre prochain "..CKWord("Coup critique", "Crit_hit_rgb_fr")..". Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = CKWord("命中弱點", "Weakspothits_rgb_tw").." "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n在下一次 "..CKWord("暴擊", "Crit_rgb_tw").." 時消耗一層，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层，\n"..CKWord("暴击命中", "Crit_hit_rgb_tw").."后清空所有叠加层数。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." bei einem "..CKWord("Schwachstellentreffer", "Weakspothit_rgb_de").." bis zum nächsten "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de")..". Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." su "..CKWord("Colpo a Punto Debole", "Weakspothit_rgb_it").." fino al prossimo "..CKWord("Colpo Critico", "Crit_hit_rgb_it")..". Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。次のクリティカルヒットで消費。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。",
			ko = CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 다음 "..CKWord("크리티컬 적중", "Crit_hit_rgb_ko").."까지 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." przy "..CKWord("Trafieniu w Słaby Punkt", "Weakspothit_rgb_pl").." do następnego "..CKWord("Krytycznego Trafienia", "Crit_hit_rgb_pl")..". Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." ao "..CKWord("Acertar um Ponto Fraco", "Weakspothit_rgb_pt_br").." até o próximo "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br")..". Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." al "..CKWord("Golpear un Punto Débil", "Weakspothit_rgb_es").." hasta el siguiente "..CKWord("Golpe Crítico", "Crit_hit_rgb_es")..". Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ BETWEEN THE EYES +]-- ruof Промеж глаз	20.04.2026
		-- Duration (per tier)
		-- Infantry Lasguns, Laspistols, Needle Pistols, Vigilant Autoguns -- 2.4s | 2.8s | 3.2s | 3.6s
		["loc_trait_bespoke_suppression_negation_on_weakspot_desc"] = { -- time: 3.6, s->seconds, +colors
			en = "Gain Suppression Immunity for "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". "
				..CPhrs("Can_be_refr"),
			ru = "Вы получаете иммунитет к подавлению на "..CNumb("{time:%s}", "time_var_rgb").." секунды при выстрелах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". "
				..CPhrs("Can_be_refr"),
			fr = "Gagnez une immunité à la suppression pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			["zh-tw"] = CKWord("命中弱點", "Weakspothits_rgb_tw").." 免疫壓制效果，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时免疫压制，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = "Erhaltet Unterdrückungsimmunität für "..CNumb("{time:%s}", "time_var_rgb").." Sek. bei einem "..CKWord("Schwachstellentreffer", "Weakspothit_rgb_de")..".",
			it = "Ottieni immunità alla soppressione per "..CNumb("{time:%s}", "time_var_rgb").." sec. con un "..CKWord("Colpo a Punto Debole", "Weakspothit_rgb_it")..".",
			ja = CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、"..CNumb("{time:%s}", "time_var_rgb").."秒間、制圧無効。",
			ko = CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 제압에 면역됩니다.",
			pl = "Odporność na supresję przez "..CNumb("{time:%s}", "time_var_rgb").." sek. przy "..CKWord("Trafieniu w Słaby Punkt", "Weakspothit_rgb_pl")..".",
			["pt-br"] = "Imunidade à supressão por "..CNumb("{time:%s}", "time_var_rgb").." seg. ao "..CKWord("Acertar um Ponto Fraco", "Weakspothit_rgb_pt_br")..".",
			es = "Inmunidad a la supresión durante "..CNumb("{time:%s}", "time_var_rgb").." seg. al "..CKWord("Golpear un Punto Débil", "Weakspothit_rgb_es")..".",
		},
		--[+ BLAZE AWAY +]-- ruof Энтузиазм	20.04.2026
		-- Power per stack (per tier)
		-- Autopistol, Dual Autopistols, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_power_bonus_on_continuous_fire_desc"] = { -- power_level: +8%, ammo: 10%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CNote("Pwr_note"), -- Стрельба без устали
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").." du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 的弹药，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für je "..CNumb("{ammo:%s}", "ammo_var_rgb").." des Magazins, die bei Dauerfeuer verbraucht werden. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per ogni "..CNumb("{ammo:%s}", "ammo_var_rgb").." del caricatore speso durante il fuoco continuo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Pwr_note"),
			ja = "連続射撃中、消費したマガジンの "..CNumb("{ammo:%s}", "ammo_var_rgb").." ごとに"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。"..CNote("Pwr_note"),
			ko = "연속 사격 중 탄창의 "..CNumb("{ammo:%s}", "ammo_var_rgb").."를 소모할 때마다 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." za każde "..CNumb("{ammo:%s}", "ammo_var_rgb").." magazynka zużytego podczas ognia ciągłego. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." para cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." do carregador gasto durante fogo contínuo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." por cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." del cargador gastado durante fuego continuo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Pwr_note"),
		},
		--[+ POWDERBURN +]-- ruof Пороховой ожог	20.04.2026
		-- Damage vs Suppressed and Suppression and Reduced Recoil (per tier)
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Exterminator Shotguns -- 14% and 28% and -28% | 16% and 32% and -32% | 18% and 36% and -36% | 20% and 40% and -40%
		["loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills_desc"] = { -- damage: +20%, suppression: +40%, recoil_reduction: -40%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." against Suppressed Enemies, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." Suppression and "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." Recoil on killing enemies within "..CNumb("12.5", "n_12_5_rgb").." meters. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." против подавленных врагов, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." к подавлению и "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." к отдаче при убийстве врагов на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров.\n"
				..CPhrs("Can_be_refr"),
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les ennemies subissant Suppression, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." de suppression et "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." de recul jusqu'à une distance de "..CNumb("12.5", "n_12_5_rgb").." mètres.",
			["zh-tw"] = CNumb("12.5", "n_12_5_rgb").." 公尺內，\n對被壓制的敵人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，\n"..CNumb("{suppression:%s}", "spprsn_var_rgb").." 壓制強度，降低 "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." 後座力。",
			["zh-cn"] = "对被压制敌人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时\n"..CNumb("{suppression:%s}", "spprsn_var_rgb").." 压制效果，同时 "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." 后坐力。",
			de = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen unterdrückte Gegner, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." Unterdrückung und "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." Rückstoß nach einem Kill innerhalb von "..CNumb("12.5", "n_12_5_rgb").." Metern.",
			it = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." contro nemici soppressi, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." Soppressione e "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." Rinculo dopo un'uccisione entro "..CNumb("12.5", "n_12_5_rgb").." metri.",
			ja = "制圧状態の敵への"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{damage:%s}", "dmg_var_rgb").." 増加。 "..CNumb("12.5", "n_12_5_rgb").."メートル以内の敵をキルすると、制圧効果 "..CNumb("{suppression:%s}", "spprsn_var_rgb").."、反動 "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").."。",
			ko = "제압된 적에게 "..CKWord("피해", "Damage_rgb_ko").."가 "..CNumb("{damage:%s}", "dmg_var_rgb").." 증가합니다. "..CNumb("12.5", "n_12_5_rgb").."미터 이내의 적을 처치하면 제압 효과 "..CNumb("{suppression:%s}", "spprsn_var_rgb")..", 반동 "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb")..".",
			pl = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." przeciwko wrogom w stanie supresji, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." Supresji i "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." Odrzutu po zabiciu wroga w odległości do "..CNumb("12.5", "n_12_5_rgb").." metrów.",
			["pt-br"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." contra inimigos suprimidos, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." de Supressão e "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." de Recuo ao matar inimigos a até "..CNumb("12.5", "n_12_5_rgb").." metros.",
			es = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." contra enemigos suprimidos, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." de Supresión y "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." de Retroceso al matar enemigos a "..CNumb("12.5", "n_12_5_rgb").." metros o menos.",
		},
		--[+ CAVALCADE +]-- ruof Кавалькада	20.04.2026
		-- Crit Chance per stack (per tier)
		-- Autopistol, Boltguns, Heavy Stubbers, Ripper Guns -- 3.5% | 4% | 4.5% | 5% (up to +25%)
		["loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire_desc"] = { -- crit_chance: +20%, ammo: 10%, stacks: 5, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.",
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").."  du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").."的弹药，\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für je "..CNumb("{ammo:%s}", "ammo_var_rgb").." des Magazins, die bei Dauerfeuer verbraucht werden. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per ogni "..CNumb("{ammo:%s}", "ammo_var_rgb").." del caricatore speso durante il fuoco continuo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続射撃中、消費したマガジンの "..CNumb("{ammo:%s}", "ammo_var_rgb").." ごとに"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。",
			ko = "연속 사격 중 탄창의 "..CNumb("{ammo:%s}", "ammo_var_rgb").."를 소모할 때마다 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." za każde "..CNumb("{ammo:%s}", "ammo_var_rgb").." magazynka zużytego podczas ognia ciągłego. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." para cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." do carregador gasto durante fogo contínuo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." por cada "..CNumb("{ammo:%s}", "ammo_var_rgb").." del cargador gastado durante fuego continuo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ PINNING FIRE +]-- ruof Схватывающий огонь	20.04.2026
		-- Power per stack (per tier)
		-- Autopistol, Boltguns, Dual Autopistols, Dual Stub Pistols, Heavy Stubbers -- 4.25% | 4.5% | 4.75% | 5% (up to +25%)
		["loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies_desc"] = { -- power_level: +8%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for every Enemy you "..CKWord("Stagger", "Stagger_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за каждого "..CKWord("ошеломлённого", "oshelomlennogo_rgb_ru").." вами врага. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"), -- Подавляющий огонь
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour chaque ennemie que vous faites "..CKWord("vaciller", "Staggering_rgb_fr")..". Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "使敵人 "..CKWord("暈眩", "Stun_rgb_tw").." 時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = CKWord("踉跄", "Stagger_rgb_zh_cn").."敌人时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für jeden Gegner, den ihr zum "..CKWord("Taumeln", "Staggering_rgb_de").." bringt. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per ogni nemico fatto "..CKWord("Barcollare", "Staggering_rgb_it")..". Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Pwr_note"),
			ja = "敵を"..CKWord("スタッガー", "Staggering_rgb_ja").."させるたびに、"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。"..CNote("Pwr_note"),
			ko = "적을 "..CKWord("스태거", "Staggering_rgb_ko").."시킬 때마다 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." za każdego wroga, którego wprawisz w "..CKWord("Oszołomienie", "Staggering_rgb_pl")..". Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." para cada inimigo que você faz "..CKWord("Cambalear", "Staggering_rgb_pt_br")..". Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." por cada enemigo que hagas "..CKWord("Tambalear", "Staggering_rgb_es")..". Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Pwr_note"),
		},
		--[+ RUN 'N' GUN - RUN AND GUN +]-- ruof Стреляй и беги	20.04.2026
		-- Close Damage (per tier) and Spread Reduction
		-- Bolt Pistols, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Inferno Staff, Kickback, Needle Pistols, Shotpistol and Shield, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 6% | 9% | 12% | 15% | -30%
		-- Double-Barrel Shotgun -- 6% | 9% | 12% | 15% | -10%
		["loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats_desc"] = { -- damage_near: +15%, weapon_spread: 30%, +colors
			en = CNumb("{damage_near:%s}", "dmgnr_var_rgb").." "..CKWord("Damage", "Damage_rgb").." to enemies within "..CNumb("12.5", "n_12_5_rgb").." meters while Sprinting. "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." weapon Spread. You can Hipfire with this weapon while Sprinting.",
			ru = CNumb("{damage_near:%s}", "dmgnr_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." по врагам в пределах "..CNumb("12.5", "n_12_5_rgb").." метров от вас пока вы бежите.\n"
				..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." к разбросу оружия. Вы можете с этим оружием вести огонь от бедра на бегу.",
			fr = "Vous pouvez tirer à l'aveugle avec cette arme en courant. "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." rapprochés en courant. Réduit également l'angle de tir des armes de "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." en toute circonstance.",
			["zh-tw"] = "衝刺時可以腰射。\n衝刺期間近距離傷害 "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，\n並 "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." 武器散布。",
			["zh-cn"] = "武器散布 "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").."。疾跑时可以腰射。\n对 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人 "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
			de = "Ermöglicht Hüftfeuer beim Sprinten. "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." Nahkampfschaden beim Sprinten und "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." Waffenstreuung.",
			it = "Permette di sparare senza mirare mentre scatti. "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." Danni ravvicinati durante lo scatto e "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." dispersione dell'arma.",
			ja = "ダッシュ中の腰撃ちが可能。ダッシュ中の近距離ダメージ "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").."、武器の拡散 "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").."。",
			ko = "질주 중 사격 가능. 질주 중 근거리 피해 "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." 및 무기 확산 "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb")..".",
			pl = "Pozwala strzelać z biodra podczas sprintu. "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." Obrażeń w zwarciu podczas sprintu i "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." Rozrzutu broni.",
			["pt-br"] = "Permite atirar sem mirar enquanto corre. "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." Dano de perto correndo e "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." Dispersão da arma.",
			es = "Permite disparar desde la cadera mientras esprintas. "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." Daño cercano al esprintar y "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." Dispersión del arma.",
		},
		--[+ PUNCTURE +]-- ruof Прокол
		-- Bleed Stacks (per tier)
		-- Boltguns, Bolt Pistols -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_bleed_on_ranged_desc"] = { -- stacks: 4, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CKWord("Bleed", "Bleed_rgb").." applied to enemies on Ranged hits. "
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks. "..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается на врагов при дальнобойных атаках.\n"
				..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов. "..CPhrs("Refr_dur_stappl").."\n"
				..CPhrs("Cant_appl_thr_shlds"),
			fr = CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." aux ennemis sur les coups à distance.",
			["zh-tw"] = "遠程攻擊命中敵人時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").."。\n上限 "..CNumb("16", "n_16_rgb").." 層。",
			["zh-cn"] = "远程攻击命中时 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。",
			de = CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CKWord("Blutung", "Bleed_rgb_de").." bei Fernkampftreffern.",
			it = CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CKWord("Sanguinamento", "Bleed_rgb_it").." ai nemici con Colpi a Distanza.",
			ja = "遠隔攻撃ヒット時、敵に "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの"..CKWord("出血", "Bleed_rgb_ja").."を付与。",
			ko = "원거리 공격 적중 시 적에게 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CKWord("출혈", "Bleed_rgb_ko").."을 부여합니다.",
			pl = CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CKWord("Krwawienia", "Bleed_rgb_pl").." przy Trafieniach Dystansowych.",
			["pt-br"] = CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CKWord("Sangramento", "Bleed_rgb_pt_br").." em Acertos à Distância.",
			es = CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CKWord("Sangrado", "Bleed_rgb_es").." en Golpes a Distancia.",
		},
		--[+ LETHAL PROXIMITY +]-- ruof Смертельное сближение	20.04.2026
		-- Explosion Radius Increase (per tier)
		-- Bolt Pistols -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_close_explosion_desc"] = { -- radius: +25%, +colors
			en = CNumb("{radius:%s}", "radius_var_rgb").." Explosion Radius. Point blank shots cause an Explosion. "
				..Dot_green.." This buff is active at all times and also applies to all other explosions.",
			ru = "Выстрелы в упор вызывают взрыв. "..CNumb("{radius:%s}", "radius_var_rgb").." к радиусу взрыва. "
				..Dot_green.." Этот эффект активен постоянно и влияет также на все остальные взрывные эффекты от гранат, талантов и оружия.",
			fr = "Les tirs à bout portant provoquent une explosion. Le rayon d'explosion augmente de "..CNumb("{radius:%s}", "radius_var_rgb")..".",
			["zh-tw"] = "爆炸半徑增加 "..CNumb("{radius:%s}", "radius_var_rgb").." 。\n"..CNumb("12.5", "n_12_5_rgb").." 公尺內射擊會引發爆炸。",
			["zh-cn"] = CNumb("{radius:%s}", "radius_var_rgb").." 爆炸范围。\n"..CNumb("5", "n_5_rgb").." 米内射击也会引发爆炸。",
			de = "Schüsse aus nächster Nähe lösen eine Explosion aus. Erhöht den Explosionsradius um "..CNumb("{radius:%s}", "radius_var_rgb")..".",
			it = "I colpi a bruciapelo provocano un'Esplosione. Aumenta il raggio dell'esplosione del "..CNumb("{radius:%s}", "radius_var_rgb")..".",
			ja = "至近距離射撃で爆発が発生。爆発半径 "..CNumb("{radius:%s}", "radius_var_rgb").." 増加。",
			ko = "근접 사격 시 폭발을 일으킵니다. 폭발 반경 "..CNumb("{radius:%s}", "radius_var_rgb").." 증가.",
			pl = "Strzały z bliska wywołują Eksplozję. Zwiększa promień eksplozji o "..CNumb("{radius:%s}", "radius_var_rgb")..".",
			["pt-br"] = "Tiros à queima-roupa causam uma Explosão. Aumenta o Raio da Explosão em "..CNumb("{radius:%s}", "radius_var_rgb")..".",
			es = "Los disparos a bocajarro provocan una Explosión. Aumenta el Radio de Explosión un "..CNumb("{radius:%s}", "radius_var_rgb")..".",
		},
		--[+ POINT BLANK +]-- ruof В упор	20.04.2026
		-- Ranged Crit Chance (per tier) and Duration
		-- Bolt Pistols, Needle Pistols -- 14% | 16% | 18% | 20% | 3.5s
		-- Stub Revolvers -- 14% | 16% | 18% | 20% | 2.5s
		["loc_trait_bespoke_crit_chance_bonus_on_melee_kills_desc"] = { -- crit_chance: +20%, time: 3.5, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Ranged "..CKWord("Critical Chance", "Crit_chance_rgb").." after Melee Kill for "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийства в ближнем бою. "
				..CPhrs("Can_be_refr"),
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." à distance après une élimination avec une arme de mélée pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			["zh-tw"] = "近戰擊殺後，遠程攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "近战击杀时 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." Fernkampf-"..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. nach einem Nahkampf-Kill.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." a Distanza per "..CNumb("{time:%s}", "time_var_rgb").." sec. dopo un'Uccisione in Corpo a Corpo.",
			ja = "近接キル後、"..CNumb("{time:%s}", "time_var_rgb").."秒間、遠隔"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。",
			ko = "근접 처치 후 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 원거리 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." na Dystans przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po Zabójstwie w Walce Wręcz.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." à Distância por "..CNumb("{time:%s}", "time_var_rgb").." seg. após um Abate Corpo a Corpo.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." a Distancia durante "..CNumb("{time:%s}", "time_var_rgb").." seg. tras una Muerte Cuerpo a Cuerpo.",
		},
		--[+ EXECUTION +]-- ruof Казнь
		-- Damage vs Staggered (per tier)
		-- Bolt Pistols, Exterminator Shotguns -- 5% |10% | 15% | 20%
		["loc_trait_bespoke_damage_vs_stagger_desc"] = { -- vs_stagger: 20%, +colors
			en = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("Damage", "Damage_rgb").." Bonus vs "..CKWord("Staggered", "Staggered_rgb").." enemies.",
			ru = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." против "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов.",
			fr = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." Bonus contre les ennemis qui "..CKWord("vacillent", "Staggered_rgb_fr")..".",
			["zh-tw"] = "攻擊 "..CKWord("硬直中", "Staggered_rgb_tw").." 敵人 "..CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。",
			["zh-cn"] = "对"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人 "..CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
			de = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." Bonus gegen "..CKWord("taumelnde", "Staggered_rgb_de").." Gegner.",
			it = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." Bonus contro nemici "..CKWord("Barcollanti", "Staggered_rgb_it")..".",
			ja = CKWord("スタッガー状態", "Staggered_rgb_ja").."の敵への"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." 増加。",
			ko = CKWord("스태거 상태", "Staggered_rgb_ko").."의 적에게 "..CKWord("피해", "Damage_rgb_ko").."가 "..CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." 증가합니다.",
			pl = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." Bonus przeciwko "..CKWord("Oślepionym", "Staggered_rgb_pl").." wrogom.",
			["pt-br"] = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." Bônus contra inimigos "..CKWord("Cambaleantes", "Staggered_rgb_pt_br")..".",
			es = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." adicional contra enemigos "..CKWord("Tambaleantes", "Staggered_rgb_es")..".",
		},
		--[+ GLORYHUNTER +]-- ruof Охотник за славой	20.04.2026
		-- Max Toughness Percentage (per tier)
		-- Boltguns, Heavy Stubbers -- 10% | 12% | 14% | 16%
		-- Needle Pistols, Plasma Gun -- 17.5% | 20% | 22.5% | 25%
		-- Bolt Pistols, Stub Revolvers -- 18% | 22% | 26% | 30%
		-- Grenadier Gauntlet, Rumbler -- 20% | 25% | 30% | 35%
		["loc_trait_bespoke_toughness_on_elite_kills_desc"] = { -- toughness: +30%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." on Elite Kill. "
				..Dot_green.." Can proc multiple times per shot. "..Dot_red.." DoT kills cannot proc it.",
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." при убийстве элитного врага. "
				..Dot_green.." Может срабатывать несколько раз за выстрел. "..Dot_red.." Не срабатывает от убийств эффектами.",
			fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." lors d'une élimination d'élite.",
			["zh-tw"] = "擊殺精英敵人 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。",
			["zh-cn"] = "击杀精英敌人时"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。",
			de = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").." bei einem Elite-Kill.",
			it = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Tempra", "Toughness_rgb_it").." dopo un'Uccisione di Élite.",
			ja = "エリートキル時、"..CKWord("タフネス", "Toughness_rgb_ja").."が "..CNumb("{toughness:%s}", "tghns_var_rgb").." 回復。",
			ko = "엘리트 처치 시 "..CKWord("강인함", "Toughness_rgb_ko").."이 "..CNumb("{toughness:%s}", "tghns_var_rgb").." 회복됩니다.",
			pl = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Wytrzymałości", "Toughness_rgb_pl").." przy Zabójstwie Elity.",
			["pt-br"] = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br").." ao Matar um Elite.",
			es = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Aguante", "Toughness_rgb_es").." al Matar a un Élite.",
		},
		--[+ SURGE +]-- ruof Импульс	20.04.2026
		-- Ranged Crit Chance (per tier)
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc"] = { -- crit_chance: +5%, value: 2, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Ranged "..CKWord("Critical Chance", "Crit_chance_rgb")..".\n"
				..CNumb("{value:%s}", "value_var_rgb").." Shots on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_red.." For Electrokinetic Staff and Voidblast Staff, additional projectiles can only spawn on Primary Attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..".\n"
				..CNumb("{value:%s}", "value_var_rgb").." снаряда вылетает при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..Dot_red.." У Электрокинетических посохов и посохов Травмы "..CNumb("{value:%s}", "value_var_rgb").." снаряд появляется только от основных атак.", -- Всплеск
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." à distance.\n"..CNumb("{value:%s}", "value_var_rgb").." tirs lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." de l'attaque principale.",
			["zh-tw"] = "遠程攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").." 。\n當主攻擊 "..CKWord("暴擊", "Crit_rgb_tw").." 會自動發射 "..CNumb("{value:%s}", "value_var_rgb").." 次。",
			["zh-cn"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n主要攻击"..CKWord("暴击命中", "Crit_hit_rgb_tw").."时，发射 "..CNumb("{value:%s}", "value_var_rgb").." 枚射弹。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." Fernkampf-"..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de")..".\n"..CNumb("{value:%s}", "value_var_rgb").." Schüsse bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de").." des Primärangriffs.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." a Distanza.\n"..CNumb("{value:%s}", "value_var_rgb").." Colpi con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it").." dell'Attacco Primario.",
			ja = "遠隔"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").." "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 。\n主攻撃のクリティカルヒット時に "..CNumb("{value:%s}", "value_var_rgb").." 発射。",
			ko = "원거리 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").." "..CNumb("{crit_chance:%s}", "crit_var_rgb").." .\n주 공격 크리티컬 적중 시 "..CNumb("{value:%s}", "value_var_rgb").."회 발사.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." na Dystans.\n"..CNumb("{value:%s}", "value_var_rgb").." Strzałów przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl").." ataku głównego.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." à Distância.\n"..CNumb("{value:%s}", "value_var_rgb").." Disparos em um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br").." do Ataque Primário.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." a Distancia.\n"..CNumb("{value:%s}", "value_var_rgb").." Disparos en un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es").." del Ataque Principal.",
		},
		--[+ SURGE +]-- ruof Импульс DOUBLE!	20.04.2026
		-- Ranged Crit Chance (per tier)
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_double_shot_on_crit_and_crit_chance_desc"] = { -- crit_chance: +5%, value: 2, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Ranged "..CKWord("Critical Chance", "Crit_chance_rgb")..".\n"
				..CNumb("{value:%s}", "value_var_rgb").." Shots on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_red.." For Electrokinetic Staff and Voidblast Staff, additional projectiles can only spawn on Primary Attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..".\n"
				..CNumb("{value:%s}", "value_var_rgb").." снаряда вылетает при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..Dot_red.." У Электрокинетических посохов и посохов Травмы "..CNumb("{value:%s}", "value_var_rgb").." снаряд появляется только от основных атак.", -- Всплеск
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." à distance.\n"..CNumb("{value:%s}", "value_var_rgb").." tirs lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." de l'attaque principale.",
			["zh-tw"] = "遠程攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").." 。\n當主攻擊 "..CKWord("暴擊", "Crit_rgb_tw").." 會自動發射 "..CNumb("{value:%s}", "value_var_rgb").." 次。",
			["zh-cn"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n主要攻击"..CKWord("暴击命中", "Crit_hit_rgb_tw").."时，发射 "..CNumb("{value:%s}", "value_var_rgb").." 枚射弹。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." Fernkampf-"..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de")..".\n"..CNumb("{value:%s}", "value_var_rgb").." Schüsse bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de").." des Primärangriffs.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." a Distanza.\n"..CNumb("{value:%s}", "value_var_rgb").." Colpi con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it").." dell'Attacco Primario.",
			ja = "遠隔"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").." "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 。\n主攻撃のクリティカルヒット時に "..CNumb("{value:%s}", "value_var_rgb").." 発射。",
			ko = "원거리 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").." "..CNumb("{crit_chance:%s}", "crit_var_rgb").." .\n주 공격 크리티컬 적중 시 "..CNumb("{value:%s}", "value_var_rgb").."회 발사.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." na Dystans.\n"..CNumb("{value:%s}", "value_var_rgb").." Strzałów przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl").." ataku głównego.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." à Distância.\n"..CNumb("{value:%s}", "value_var_rgb").." Disparos em um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br").." do Ataque Primário.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." a Distancia.\n"..CNumb("{value:%s}", "value_var_rgb").." Disparos en un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es").." del Ataque Principal.",
		},
		--[+ WARP FLURRY +]-- ruof Варп-шквал	20.04.2026
		-- Charge Time Reduction per stack (per tier)
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 5.5% | 6.5% | 7.5% | 8.5% (up to 25.5%)
		["loc_trait_bespoke_faster_charge_on_chained_secondary_attacks_desc"] = { -- charge_time: -8.5%, stacks: 3, +colors
			en = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Charge Time on Chained Secondary Attack. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_red.." Charge time is unaffected by Attack Speed buffs.",
			ru = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." от времени заряжания вторичной атаки в серии ударов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раза. "
				..Dot_red.." Усиления скорости атаки не влияют на этот эффект.",
			fr = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." de temps de charge lors d'une attaque secondaire. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "連續使用次要攻擊時，\n充能時間 "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "连续进行次要攻击时 \n"..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." 蓄力时间。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Ladezeit bei aufeinanderfolgenden Sekundärangriffen. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Tempo di Carica su Attacchi Secondari in Catena. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続セカンダリ攻撃時、チャージ時間 "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." 。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。",
			ko = "연속 보조 공격 시 충전 시간 "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." . 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Czasu Ładowania przy Kolejnych Atakach Specjalnych. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." de Tempo de Carga em Ataques Secundários Consecutivos. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." de Tiempo de Carga en Ataques Secundarios Encadenados. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ WARP NEXUS +]-- ruof Варп-сектор	20.04.2026
		-- Crit Chance per stack (per tier)
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 3.5% | 4% | 4.5% | 5% (up to +20%)
		["loc_trait_bespoke_increased_crit_chance_scaled_on_peril_desc"] = { -- crit_chance: 5%, crit_chance_max: 20%, +colors
			en = CNumb("+", "n_plus_rgb")..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." per "..CNumb("20%", "pc_20_rgb").." "..CKWord("Peril", "Peril_rgb")..".\n"
				..Dot_nc.." Stacks up to "..CNumb("4", "n_4_rgb").." times. Maximum of "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." at "..CNumb("80%", "pc_80_rgb").." "..CKWord("Peril", "Peril_rgb")..".",
			ru = CNumb("+", "n_plus_rgb")..CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." за каждые "..CNumb("20%", "pc_20_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..". "
				..Dot_nc.." Суммируется до "..CNumb("4", "n_4_rgb").." раз, вплоть до "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." при "..CNumb("80%", "pc_80_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".", -- Связь с варпом
			fr = "Obtenez entre "..CNumb("{crit_chance:%s}", "crit_var_rgb").." et "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." en fonction de votre niveau de "..CKWord("Péril", "Peril_rgb_fr").." actuel.",
			["zh-tw"] = "根據當前的 "..CKWord("反噬", "Peril_rgb_tw").." ，\n增加 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 至 "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").." 。",
			["zh-cn"] = "随"..CKWord("危机值", "Peril_rgb_zh_cn").."增长叠加层数，\n每增长 "..CNumb("20%", "pc_20_rgb").."，"..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("4", "n_4_rgb").." 层，最高 "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").."。",
			de = "Erhöht die "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." um "..CNumb("{crit_chance:%s}", "crit_var_rgb").." bis "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." abhängig vom aktuellen "..CKWord("Gefahr", "Peril_rgb_de").."-Level.",
			it = "Ottieni tra "..CNumb("{crit_chance:%s}", "crit_var_rgb").." e "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." di "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." in base al tuo livello di "..CKWord("Pericolo", "Peril_rgb_it").." attuale.",
			ja = "現在の"..CKWord("ペリル", "Peril_rgb_ja").."量に応じて、"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." ～ "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." 増加。",
			ko = "현재 "..CKWord("위험도", "Peril_rgb_ko").."에 따라 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 에서 "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." 까지 증가합니다.",
			pl = "Zyskaj od "..CNumb("{crit_chance:%s}", "crit_var_rgb").." do "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("Szansy na krytyka", "Crit_chance_rgb_pl").." w zależności od aktualnego poziomu "..CKWord("Zagrożenia", "Peril_rgb_pl")..".",
			["pt-br"] = "Ganha entre "..CNumb("{crit_chance:%s}", "crit_var_rgb").." e "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." de "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." baseado no seu nível de "..CKWord("Perigo", "Peril_rgb_pt_br").." atual.",
			es = "Obtén entre "..CNumb("{crit_chance:%s}", "crit_var_rgb").." y "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." de "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." según tu nivel de "..CKWord("Peligro", "Peril_rgb_es").." actual.",
		},
		--[+ TRANSFER PERIL +]-- ruof Перемещение угрозы	20.04.2026
		-- Peril Amount Removed (per tier)
		-- Electrokinetic Staff, Voidblast Staff -- 7% | 8% | 9% | 10%
		-- Voidstrike Staff -- 6.5% | 7% | 7.5% | 8%
		["loc_trait_bespoke_peril_vent_on_weakspot_hit_desc"] = { -- warp_charge: 10%, +colors
			en = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Peril", "Peril_rgb").." is quelled on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..".\n"
				..Dot_green.." Can proc multiple times per shot when "..CKWord("Cleaving", "Cleaving_rgb").." enemy "..CKWord("Weakspots", "Weakspots_rgb")..".",
			ru = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при попадании в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
				..Dot_green.." Может срабатывать несколько раз за выстрел при пробивании нескольких противников в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".", -- Перемещение опасности
			fr = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." de votre "..CKWord("Péril", "Peril_rgb_fr").." est dissipé lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			["zh-tw"] = CKWord("命中弱點", "Weakspothits_rgb_tw").." "..CNumb("-", "n_minus_rgb")..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("反噬", "Peril_rgb_tw").."。",
			["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，平息 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."。",
			de = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Gefahr", "Peril_rgb_de").." wird bei einem "..CKWord("Schwachstellentreffer", "Weakspothit_rgb_de").." abgebaut.",
			it = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Pericolo", "Peril_rgb_it").." viene placato con un "..CKWord("Colpo a Punto Debole", "Weakspothit_rgb_it")..".",
			ja = CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、"..CKWord("ペリル", "Peril_rgb_ja").."が "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." 解消。",
			ko = CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 "..CKWord("위험도", "Peril_rgb_ko").."가 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." 감소합니다.",
			pl = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl").." jest rozpraszane przy "..CKWord("Trafieniu w Słaby Punkt", "Weakspothit_rgb_pl")..".",
			["pt-br"] = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Perigo", "Peril_rgb_pt_br").." é aplacado ao "..CKWord("Acertar um Ponto Fraco", "Weakspothit_rgb_pt_br")..".",
			es = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Peligro", "Peril_rgb_es").." se aplaca al "..CKWord("Golpear un Punto Débil", "Weakspothit_rgb_es")..".",
		},
		--[+ RENDING SHOCKWAVE +]-- ruof Разрушительная волна	20.04.2026
		-- Brittleness Stacks (per tier)
		-- Voidblast Staff -- 2 | 4 | 6 | 8
		["loc_trait_bespoke_rend_armor_on_aoe_charge_desc"] = { -- stacks: 8, rending: 2.5%, time: 5, max_stacks: 16, s->seconds, +colors
			en = "Up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." based on Secondary Attack charge time. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..".\n"
				..CNote("Brtl_note"),
			ru = "Цель получает до "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." в зависимости от времени заряжания вторичной атаки. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. Максимум "..CNumb("40%", "pc_40_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." при "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядах.", -- ..CNote("Brtl_note")
			fr = "La cible subit jusqu'à "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilité", "Brittleness_rgb_fr")..", en fonction du temps de charge de l'attaque secondaire. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls maximum, pour un total de "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["zh-tw"] = "根據次要攻擊的蓄力時間，\n使攻擊目標獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{rending:%s}", "rending_var_rgb").." 的 "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n可持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層 "..CNumb("40%", "pc_40_rgb").." 。"..CNote("Brtl_note"),
			["zh-cn"] = "随次要攻击蓄力时间提升效果，\n最多对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，\n持续"..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高"..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			de = "Fügt dem Ziel basierend auf der Ladezeit des Sekundärangriffs bis zu "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Sprödigkeit", "Brittleness_rgb_de").." zu. Hält "..CNumb("{time:%s}", "time_var_rgb").." Sek. Max. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stapel, insgesamt bis zu "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			it = "Infligge fino a "..CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilità", "Brittleness_rgb_it").." in base al tempo di carica dell'attacco secondario. Dura "..CNumb("{time:%s}", "time_var_rgb").." sec. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." accumuli, fino al "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			ja = "セカンダリ攻撃のチャージ時間に応じて、敵に最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_ja").."を付与。持続 "..CNumb("{time:%s}", "time_var_rgb").."秒。最大 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." スタック、合計 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			ko = "보조 공격 차지 시간에 따라 적에게 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("취약", "Brittleness_rgb_ko").."을 부여합니다. "..CNumb("{time:%s}", "time_var_rgb").."초 지속. 최대 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 중첩, 최대 "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			pl = "Nakłada do "..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Kruchości", "Brittleness_rgb_pl").." w zależności od czasu ładowania ataku specjalnego. Trwa "..CNumb("{time:%s}", "time_var_rgb").." sek. Maks. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." ładunków, łącznie do "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["pt-br"] = "Aplica até "..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidade", "Brittleness_rgb_pt_br").." baseado no tempo de carga do ataque secundário. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acúmulos, até "..CNumb("40%", "pc_40_rgb").." no total."..CNote("Brtl_note"),
			es = "Aplica hasta "..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidad", "Brittleness_rgb_es").." según el tiempo de carga del ataque secundario. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acumulaciones, hasta un "..CNumb("40%", "pc_40_rgb").." en total."..CNote("Brtl_note"),
		},
		--[+ FOCUSED CHANNELLING +]-- ruof Сосредоточенный призыв	20.04.2026
		-- Charge Move Speed Penalty Reduction (per tier)
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 20% | 30% | 40% | 50%
		["loc_trait_bespoke_uninterruptable_while_charging_and_movement_desc"] = { -- reduction: 50%, +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("{reduction:%s}", "red_var_rgb").." Movement Speed penalty during Secondary Attack. Your Secondary Attack cannot be interrupted. "
				..Dot_red.." Charging actions of all Staves are already uninterruptible by default.",
			ru = CNumb("-", "n_minus_rgb")..CNumb("{reduction:%s}", "red_var_rgb").." к штрафу скорости передвижения во время вторичной атаки. Ваша вторичная атака не может быть прервана. "
				..Dot_red.." Вторичные атаки всех посохов и так невозможно прервать.",
			fr = "Votre attaque secondaire ne peut pas être interrompue et les pénalités de vitesse de déplacement de l'attaque secondaire sont réduite de "..CNumb("{reduction:%s}", "red_var_rgb")..".",
			["zh-tw"] = "次要攻擊的移動速度懲罰 "..CNumb("-", "n_minus_rgb")..CNumb("{reduction:%s}", "red_var_rgb").."，\n且無法被中斷。",
			["zh-cn"] = "次要攻击蓄力期间 "..CNumb("-", "n_minus_rgb")..CNumb("{reduction:%s}", "red_var_rgb").." 移动速度惩罚，\n同时敌人的近战及远程攻击无法眩晕你。",
			de = "Euer Sekundärangriff kann nicht unterbrochen werden und die Bewegungsgeschwindigkeitsstrafe für Sekundärangriffe wird um "..CNumb("{reduction:%s}", "red_var_rgb").." reduziert.",
			it = "Il tuo Attacco Secondario non può essere interrotto e la penalità alla Velocità di Movimento dell'Attacco Secondario è ridotta del "..CNumb("{reduction:%s}", "red_var_rgb")..".",
			ja = "セカンダリ攻撃が中断されなくなり、セカンダリ攻撃中の移動速度ペナルティが "..CNumb("{reduction:%s}", "red_var_rgb").." 減少。",
			ko = "보조 공격이 방해받지 않으며, 보조 공격 시 이동 속도 페널티가 "..CNumb("{reduction:%s}", "red_var_rgb").." 감소합니다.",
			pl = "Twój Atak Specjalny nie może zostać przerwany, a kara do Prędkości Ruchu podczas Ataku Specjalnego jest zmniejszona o "..CNumb("{reduction:%s}", "red_var_rgb")..".",
			["pt-br"] = "Seu Ataque Secundário não pode ser interrompido e a penalidade de Velocidade de Movimento do Ataque Secundário é reduzida em "..CNumb("{reduction:%s}", "red_var_rgb")..".",
			es = "Tu Ataque Secundario no puede ser interrumpido y la penalización de Velocidad de Movimiento del Ataque Secundario se reduce un "..CNumb("{reduction:%s}", "red_var_rgb")..".",
		},
			-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ BLAZING SPIRIT +]-- ruof Пламенный дух	20.04.2026
		-- Soulblaze Stacks (per tier)
		-- Voidblast Staff, Voidstrike Staff -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_warpfire_burn_on_crit_desc"] = { -- stacks: 4, +colors -- REMOVED: [Up to 6 Stacks.] because for some reason this description is used for the Psyker Greatsword, but it has 12 stacks max. Fatshark FFS!
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." applied to enemies on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..CPhrs("Refr_dur_stappl"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("горения души", "gorenia_dushi_rgb_ru").." получает враг при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..". "
				..CPhrs("Refr_dur_stappl"), --  Вплоть до 6 зарядов. -- Пылающий дух
			fr = "L'ennemi gagne "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CKWord("Embrasement d'âme", "Soulblaze_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".",
			["zh-tw"] = "敵人於 "..CKWord("暴擊命中", "Crit_hit_rgb_tw").." 時會獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("靈火", "Soulblaze_rgb_tw").."。",
			["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时, 对敌人施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."。",
			de = "Der Gegner erhält bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de").." "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CKWord("Seelenbrand", "Soulblaze_rgb_de")..".",
			it = "Il nemico ottiene "..CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CKWord("Fiamma dell'Anima", "Soulblaze_rgb_it").." con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it")..".",
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、敵に "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."を付与。",
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 적에게 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CKWord("영혼의 불꽃", "Soulblaze_rgb_ko").."을 부여합니다.",
			pl = "Wróg otrzymuje "..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CKWord("Pożogi Duszy", "Soulblaze_rgb_pl").." przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl")..".",
			["pt-br"] = "O inimigo ganha "..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CKWord("Labareda d'Alma", "Soulblaze_rgb_pt_br").." ao sofrer um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br")..".",
			es = "El enemigo obtiene "..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CKWord("Fuego de Alma", "Soulblaze_rgb_es").." al recibir un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es")..".",
		},
		--[+ PENETRATING FLAME +]-- ruof Убойное пламя	20.04.2026
		-- Brittleness Stacks (per tier)
		-- Flamer, Inferno Staff -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_armor_rending_from_dot_burning_desc"] = { -- num_stacks: 4, rending_percentage: 1%, duration: 5, max_stacks: 10, +colors
			en = "Direct hits apply "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." Stacks of "..CNumb("1%", "pc_1_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds. Up to "..CNumb("20%", "pc_20_rgb")..". "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Brtl_note"),
			ru = "Прямые попадания накладывают "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." заряда "..CNumb("1%", "pc_1_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони на "..CNumb("{duration:%s}", "dur_var_rgb").." секунд. Вплоть до "..CNumb("20%", "pc_20_rgb")..". "
				..CPhrs("Can_be_refr")..CNote("Brtl_note"), -- Проникающее пламя
			fr = "Les coups directs appliquent "..CNumb("1", "n_1_rgb").." cumul de "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb")..CNumb("%", "pc_rgb").." "..CKWord("Fragilité", "Brittleness_rgb_fr").." pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes. Jusqu'à "..CNumb("20%", "pc_20_rgb").."."..CNote("Brtl_note"),
			["zh-tw"] = "被攻擊目標獲得 "..CNumb("1", "n_1_rgb").." 層 "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb")..CNumb("%", "pc_rgb").." 的 "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒，上限 "..CNumb("20%", "pc_20_rgb").." 。"..CNote("Brtl_note"),
			["zh-cn"] = "命中时，对目标施加 "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." 层 "..CNumb("1%", "pc_1_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n最多叠加 "..CNumb("20", "n_20_rgb").." 层，最高 "..CNumb("20%", "pc_20_rgb").."。"..CNote("Brtl_note"),
			de = "Direkte Treffer verursachen "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." Stapel "..CNumb("1%", "pc_1_rgb").." "..CKWord("Sprödigkeit", "Brittleness_rgb_de").." für "..CNumb("{duration:%s}", "dur_var_rgb").." Sek. Bis zu "..CNumb("20%", "pc_20_rgb").."."..CNote("Brtl_note"),
			it = "I colpi diretti applicano "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." accumuli di "..CNumb("1%", "pc_1_rgb").." "..CKWord("Fragilità", "Brittleness_rgb_it").." per "..CNumb("{duration:%s}", "dur_var_rgb").." sec. Fino al "..CNumb("20%", "pc_20_rgb").."."..CNote("Brtl_note"),
			ja = "直撃時、敵に "..CNumb("1%", "pc_1_rgb").." "..CKWord("脆弱", "Brittleness_rgb_ja").."を "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." スタック付与。持続 "..CNumb("{duration:%s}", "dur_var_rgb").."秒。最大 "..CNumb("20%", "pc_20_rgb").."。"..CNote("Brtl_note"),
			ko = "직접 타격 시 적에게 "..CNumb("1%", "pc_1_rgb").." "..CKWord("취약", "Brittleness_rgb_ko").."을 "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." 중첩 부여합니다. "..CNumb("{duration:%s}", "dur_var_rgb").."초 지속. 최대 "..CNumb("20%", "pc_20_rgb").." 증가."..CNote("Brtl_note"),
			pl = "Bezpośrednie trafienia nakładają "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." ładunków "..CNumb("1%", "pc_1_rgb").." "..CKWord("Kruchości", "Brittleness_rgb_pl").." na "..CNumb("{duration:%s}", "dur_var_rgb").." sek. Maks. "..CNumb("20%", "pc_20_rgb").."."..CNote("Brtl_note"),
			["pt-br"] = "Acertos diretos aplicam "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." acúmulos de "..CNumb("1%", "pc_1_rgb").." "..CKWord("Fragilidade", "Brittleness_rgb_pt_br").." por "..CNumb("{duration:%s}", "dur_var_rgb").." seg. Até "..CNumb("20%", "pc_20_rgb").."."..CNote("Brtl_note"),
			es = "Los golpes directos aplican "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." acumulaciones de "..CNumb("1%", "pc_1_rgb").." "..CKWord("Fragilidad", "Brittleness_rgb_es").." durante "..CNumb("{duration:%s}", "dur_var_rgb").." seg. Hasta un "..CNumb("20%", "pc_20_rgb").."."..CNote("Brtl_note"),
		},
		--[+ SHOWSTOPPER +]-- ruof Театральная пауза	20.04.2026
		-- Chance to Explode (per tier)
		-- Flamer, Inferno Staff -- 14% | 16% | 18% | 20%
		["loc_trait_bespoke_chance_to_explode_elites_on_kill_desc"] = { -- proc_chance: 20%
			en = CNumb("{proc_chance:%s}", "procch_var_rgb").." chance Elite and Special enemies Explode on kill.",
			ru = CNumb("{proc_chance:%s}", "procch_var_rgb").." шанс, что элитные враги или специалисты взорвутся при смерти.", -- Взрывной финал
			fr = CNumb("{proc_chance:%s}", "procch_var_rgb").." de chance que les Élite et les spécialistes explosent lors d'une élimination.",
			["zh-tw"] = "精英或專家死亡時，\n有 "..CNumb("{proc_chance:%s}", "procch_var_rgb").." 機率引發爆炸。",
			["zh-cn"] = "击杀精英和专家敌人时 \n"..CNumb("{proc_chance:%s}", "procch_var_rgb").." 几率引发爆炸。",
			de = CNumb("{proc_chance:%s}", "procch_var_rgb").." Chance, dass Elite- und Spezialgegner bei einem Kill explodieren.",
			it = CNumb("{proc_chance:%s}", "procch_var_rgb").." di probabilità che i nemici Élite e Specialisti esplodano alla morte.",
			ja = "エリートまたはスペシャリストをキルした時、"..CNumb("{proc_chance:%s}", "procch_var_rgb").." の確率で爆発が発生。",
			ko = "엘리트 및 특수 적 처치 시 "..CNumb("{proc_chance:%s}", "procch_var_rgb").." 확률로 적이 폭발합니다.",
			pl = CNumb("{proc_chance:%s}", "procch_var_rgb").." szansy, że elitarni i specjalni wrogowie eksplodują po zabiciu.",
			["pt-br"] = CNumb("{proc_chance:%s}", "procch_var_rgb").." de chance de inimigos de Elite e Especiais Explodirem ao morrer.",
			es = CNumb("{proc_chance:%s}", "procch_var_rgb").." de probabilidad de que los enemigos Élite y Especiales Exploten al morir.",
		},
		--[+ INFERNUS +]-- ruof Инфернус	20.04.2026
		-- Burn Stacks and Max Stacks (per tier)
		-- Helbore Lasguns, Infantry Lasguns, Laspistols, Recon Lasguns -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		["loc_trait_bespoke_burninating_on_crit_desc"] = { -- stacks: +4, max_stacks: 12, Stack(s)->Stacks, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Burn", "Burn_rgb").." Stacks applied to enemies on "..CKWord("Critical Hit", "Crit_hit_rgb").." to a maximum of "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks.\n"
				..CPhrs("Refr_dur_stappl")..Dot_red.." Can't apply "..CKWord("Burn", "Burn_rgb").." through shields.",
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("горения", "gorenia_rgb_ru").." применяется к врагу при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..", вплоть до "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядов. "
				..CPhrs("Refr_dur_stappl")..Dot_red.." Заряды "..CKWord("горения", "gorenia_rgb_ru").." не накладываются через щиты.",
			fr = CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CKWord("Brûlure", "Burn_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." jusqu'à un maximum de "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls.",
			["zh-tw"] = "在 "..CKWord("暴擊命中", "Crit_hit_rgb_tw").." 時 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("燃燒", "Burn_rgb_tw").."，\n上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層。",
			["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("燃烧", "Burn_rgb_zh_cn").."。最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层。",
			de = CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CKWord("Verbrennung", "Burn_rgb_de").." bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de").." bis zu einem Maximum von "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stapeln.",
			it = CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CKWord("Bruciatura", "Burn_rgb_it").." con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it").." fino a un massimo di "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." accumuli.",
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、"..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの"..CKWord("燃焼", "Burn_rgb_ja").."を付与。最大 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." スタック。",
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CKWord("화상", "Burn_rgb_ko").."을 부여합니다. 최대 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 중첩.",
			pl = CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CKWord("Podpalenia", "Burn_rgb_pl").." przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl")..". Maks. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." ładunków.",
			["pt-br"] = CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CKWord("Queimadura", "Burn_rgb_pt_br").." ao causar um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br")..". Máximo de "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acúmulos.",
			es = CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CKWord("Quemadura", "Burn_rgb_es").." al asestar un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es")..". Máximo de "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acumulaciones.",
		},
		--[+ EFFICIENCY +]-- ruof Эффективность	20.04.2026
		-- Cooldown (per tier)
		-- Infantry Lasguns -- 1.25s | 1s | 0.75s | 0.5s
		["loc_trait_bespoke_first_shot_ammo_cost_reduction_desc"] = { -- ammo: 66%, time: 4, s->seconds, +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("66%", "pc_66_rgb").." Ammo consumption per shot every "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..Dot_nc.." The Mk "..CKWord("VII", "n_VII_rgb").." and the Mk "..CKWord("IX", "n_IX_rgb").." consumes "..CNumb("1", "n_1_rgb").." ammo per shot instead of "..CNumb("3", "n_3_rgb")..", and the Mk "..CKWord("IIB", "n_IIB_rgb").." - "..CNumb("1", "n_1_rgb").." instead of "..CNumb("2", "n_2_rgb")..".",
			ru = CNumb("-", "n_minus_rgb")..CNumb("66%", "pc_66_rgb").." от затрат боеприпасов на выстрел раз в "..CNumb("{time:%s}", "time_var_rgb").." секунды. "
				..Dot_nc.." Модели "..CKWord("VII", "n_VII_rgb").." и "..CKWord("IX", "n_IX_rgb").." тратят "..CNumb("1", "n_1_rgb").." боеприпас за выстрел вместо "..CNumb("3", "n_3_rgb")..", а модель "..CKWord("IIB", "n_IIB_rgb").." - "..CNumb("1", "n_1_rgb").." вместо "..CNumb("2", "n_2_rgb")..".",
			fr = CNumb("{ammo:%s}", "ammo_var_rgb").." de réduction des munitions dépensées lorsque vous ne tirez pas pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			["zh-tw"] = "每過 "..CNumb("{time:%s}", "time_var_rgb").." 秒，\n首次射擊的彈藥消耗將減少 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 。",
			["zh-cn"] = "下次射击 "..CNumb("-", "n_minus_rgb")..CNumb("{ammo:%s}", "ammo_var_rgb").." 弹药消耗，\n冷却时间 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{ammo:%s}", "ammo_var_rgb").." weniger Munitionsverbrauch, wenn "..CNumb("{time:%s}", "time_var_rgb").." Sek. nicht geschossen wurde.",
			it = CNumb("{ammo:%s}", "ammo_var_rgb").." di riduzione del consumo di munizioni se non si spara per "..CNumb("{time:%s}", "time_var_rgb").." secondi.",
			ja = CNumb("{time:%s}", "time_var_rgb").."秒間射撃しないと、次の射撃の弾薬消費が "..CNumb("{ammo:%s}", "ammo_var_rgb").." 減少。",
			ko = CNumb("{time:%s}", "time_var_rgb").."초 동안 사격하지 않으면 다음 사격의 탄약 소모가 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 감소합니다.",
			pl = CNumb("{ammo:%s}", "ammo_var_rgb").." mniejsze zużycie amunicji, jeśli nie strzelano przez "..CNumb("{time:%s}", "time_var_rgb").." sek.",
			["pt-br"] = CNumb("{ammo:%s}", "ammo_var_rgb").." de redução de consumo de munição ao ficar "..CNumb("{time:%s}", "time_var_rgb").." segundos sem atirar.",
			es = CNumb("{ammo:%s}", "ammo_var_rgb").." de reducción de consumo de munición al estar "..CNumb("{time:%s}", "time_var_rgb").." segundos sin disparar.",
		},
		--[+ CONCENTRATED FIRE +]-- ruof Интенсивный огонь	20.04.2026
		-- Crit Chance per stack (per tier)
		-- Laspistols, Needle Pistols -- 2% | 3% | 4% | 5% (up to +25%)
		["loc_trait_bespoke_crit_chance_on_chained_weakspot_hits_desc"] = { -- crit_chance: +5%, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." on Chained Ranged "..CKWord("Weakspot Hit", "Weakspothit_rgb").." to Any Target. "
				..Dot_nc.." Up to "..CNumb("5", "n_5_rgb").." Stacks. "..Dot_red.." Does not benefit Melee attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." при серии попаданий в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." любой цели. "
				..Dot_nc.." До "..CNumb("5", "n_5_rgb").." зарядов. "..Dot_red.." Не влияет на атаки ближнего боя.", -- Сосредоточенный огонь
			fr = "Jusqu'à "..CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." répété à distance (toute cible). Jusqu'à "..CNumb("5", "n_5_rgb").." cumuls.",
			["zh-tw"] = "連續 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時（任意目標），\n獲得最多 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n上限 "..CNumb("5", "n_5_rgb").." 層。",
			["zh-cn"] = "连续"..CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。",
			de = "Bis zu "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." bei aufeinanderfolgenden Fernkampf-"..CKWord("Schwachstellentreffern", "Weakspothit_rgb_de").." (beliebiges Ziel). Bis zu "..CNumb("5", "n_5_rgb").." Stapel.",
			it = "Fino a "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." a Colpi ripetuti a Distanza su "..CKWord("Punto Debole", "Weakspothit_rgb_it").." (qualsiasi bersaglio). Fino a "..CNumb("5", "n_5_rgb").." accumuli.",
			ja = "連続で遠隔"..CKWord("弱点ヒット", "Weakspothit_rgb_ja").."を当てると、"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が最大 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。最大 "..CNumb("5", "n_5_rgb").." スタック。",
			ko = "연속 원거리 "..CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 최대 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다. 최대 "..CNumb("5", "n_5_rgb").." 중첩.",
			pl = "Do "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansy na krytyka", "Crit_chance_rgb_pl").." przy Wielokrotnych Dystansowych "..CKWord("Trafieniach w Słaby Punkt", "Weakspothit_rgb_pl").." (dowolny cel). Maks. "..CNumb("5", "n_5_rgb").." ładunków.",
			["pt-br"] = "Até "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." em "..CKWord("Acertos em Ponto Fraco", "Weakspothit_rgb_pt_br").." consecutivos à Distância (qualquer alvo). Acumula até "..CNumb("5", "n_5_rgb").." vezes.",
			es = "Hasta "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." en "..CKWord("Golpes a Punto Débil", "Weakspothit_rgb_es").." a Distancia repetidos (cualquier objetivo). Hasta "..CNumb("5", "n_5_rgb").." acumulaciones.",
		},
		--[+ DESPERADO +]-- ruof Сорвиголова	20.04.2026
		-- Crit Chance (per tier)
		-- Dual Stub Pistols, Laspistols, Needle Pistols -- 12.5% | 15% | 17.5% | 20%
		["loc_trait_bespoke_crit_chance_on_successful_dodge_desc"] = { -- crit_chance: +12.5%, time: 6, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on successful Dodge. "
				..CPhrs("Can_be_refr")..Dot_red.." Does not benefit Melee attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд при успешном уклонении.\n"
				..CPhrs("Can_be_refr").."\n"
				..Dot_red.." Не влияет на атаки ближнего боя.",
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une esquive réussie.",
			["zh-tw"] = "成功閃避時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "成功闪避时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. nach einem erfolgreichen Ausweichen.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi dopo una Schivata riuscita.",
			ja = "回避成功時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。",
			ko = "회피 성공 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 원거리 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po Udanej Uniku.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos após uma Esquiva bem-sucedida.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos tras una Esquiva exitosa.",
		},
		--[+ REASSURINGLY ACCURATE +]-- ruof Внушительная точность
		-- Grenadier Gauntlet -- 24% | 28% | 32% | 36%
		-- Laspistols -- 10% | 12% | 14% | 16%
		["loc_trait_bespoke_toughness_on_crit_kills_desc"] = { -- toughness: 16%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." on "..CKWord("Critical Hit", "Crit_hit_rgb").." Kill. "
				..Dot_green.." Can proc multiple times per shot and also on "..CKWord("Crit", "Crit_rgb").." kills with Melee attacks or special Melee actions. "..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." при убийствах "..CKWord("Critical Hits", "krit_udarami_rgb_ru")..". "
				..Dot_green.." Может срабатывать несколько раз за выстрел. "..CPhrs("Dont_intw_coher_tghn"), -- Успокаивающая точность
			fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." lors d'une élimination par "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".",
			["zh-tw"] = CKWord("暴擊擊殺", "Crit_k_rgb_tw").." 時 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。",
			["zh-cn"] = CKWord("暴击击杀", "Crit_hits_k_rgb_zh_cn").."时，"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。",
			de = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").." bei einem "..CKWord("Kritischen Kill", "Crit_kill_rgb_de")..".",
			it = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Tempra", "Toughness_rgb_it").." con un'Uccisione "..CKWord("Critica", "Crit_kill_rgb_it")..".",
			ja = CKWord("クリティカルキル", "Crit_kill_rgb_ja").."時、"..CKWord("タフネス", "Toughness_rgb_ja").."が "..CNumb("{toughness:%s}", "tghns_var_rgb").." 回復。",
			ko = CKWord("크리티컬 처치", "Crit_kill_rgb_ko").." 시 "..CKWord("강인함", "Toughness_rgb_ko").."이 "..CNumb("{toughness:%s}", "tghns_var_rgb").." 회복됩니다.",
			pl = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Wytrzymałości", "Toughness_rgb_pl").." przy Zabójstwie "..CKWord("Krytycznym", "Crit_kill_rgb_pl")..".",
			["pt-br"] = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br").." ao Matar com um "..CKWord("Crítico", "Crit_kill_rgb_pt_br")..".",
			es = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Aguante", "Toughness_rgb_es").." al Matar con un "..CKWord("Golpe Crítico", "Crit_kill_rgb_es")..".",
		},
		--[+ FLECHETTE +]-- ruof Флешетта	20.04.2026
		-- Bleed Stacks (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Ripper Guns -- 3 | 4 | 5 | 6
		["loc_trait_bespoke_bleed_on_crit_ranged_desc"] = { -- stacks: 6, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks. "..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..Dot_nc.." Вплоть до "..CNumb("16", "n_16_rgb").." зарядов. "..CPhrs("Refr_dur_stappl_ru")..CPhrs("Cant_appl_thr_shlds"),
			fr = CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..". Jusqu'à "..CNumb("16", "n_16_rgb").." cumuls.",
			["zh-tw"] = CKWord("暴擊", "Crit_rgb_tw").." 時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").."。\n上限 "..CNumb("16", "n_16_rgb").." 層。",
			["zh-cn"] = CKWord("暴击", "Crit_rgb_zh_cn").."时 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。",
			de = CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CKWord("Blutung", "Bleed_rgb_de").." bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de")..". Bis zu "..CNumb("16", "n_16_rgb").." Stapel.",
			it = CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CKWord("Sanguinamento", "Bleed_rgb_it").." con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it")..". Fino a "..CNumb("16", "n_16_rgb").." accumuli.",
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、敵に "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの"..CKWord("出血", "Bleed_rgb_ja").."を付与。最大 "..CNumb("16", "n_16_rgb").." スタック。",
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 적에게 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CKWord("출혈", "Bleed_rgb_ko").."을 부여합니다. 최대 "..CNumb("16", "n_16_rgb").." 중첩.",
			pl = CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CKWord("Krwawienia", "Bleed_rgb_pl").." przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl")..". Maks. "..CNumb("16", "n_16_rgb").." ładunków.",
			["pt-br"] = CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CKWord("Sangramento", "Bleed_rgb_pt_br").." ao causar um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br")..". Máximo de "..CNumb("16", "n_16_rgb").." acúmulos.",
			es = CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CKWord("Sangrado", "Bleed_rgb_es").." al asestar un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es")..". Máximo "..CNumb("16", "n_16_rgb").." acumulaciones.",
		},
		--[+ MAN-STOPPER +]-- ruof Усмирение	20.04.2026
		-- Ranged Stagger Strength (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Shotpistol and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_cleave_on_crit_and_stagger_desc"] = { -- stagger: +25%, +colors
			en = CNumb("{stagger:%s}", "stgr_var_rgb").." Ranged Attack "..CKWord("Stagger", "Stagger_rgb")..". Increased "..CKWord("Cleave", "Cleave_rgb").." on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..CPhrs("Carap_cant_cleave"),
			ru = CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("ошеломления", "oshelomlenia_rgb_ru").." от выстрелов. Увеличивается "..CKWord("прострел", "prostrel_rgb_ru").." при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..CPhrs("Carap_cant_cleave"), -- Тяжёлый боеприпас
			fr = "Augmente le "..CKWord("Transpercement", "Cleave_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." augmente également de "..CNumb("{stagger:%s}", "stgr_var_rgb").." le "..CKWord("Vacillement", "Stagger_rgb_fr")..".",
			["zh-tw"] = "在 "..CKWord("暴擊機率", "Crit_chance_r_rgb_tw").." 時提升 "..CKWord("順劈攻擊", "Cleaving_r_rgb_tw").."，\n並使遠程攻擊 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("眩暈", "Staggering_rgb_tw").."。",
			["zh-cn"] = CKWord("暴击", "Crit_rgb_zh_cn").."时 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，\n同时无视敌人的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"),
			de = "Erhöht den "..CKWord("Spaltwert", "Cleave_rgb_de").." bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de").." und erhöht die Fernkampf-"..CKWord("Wucht", "Stagger_rgb_de").." um "..CNumb("{stagger:%s}", "stgr_var_rgb")..".",
			it = "Aumenta il "..CKWord("Fendente", "Cleave_rgb_it").." con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it").." e aumenta lo "..CKWord("Barcollamento", "Stagger_rgb_it").." a Distanza del "..CNumb("{stagger:%s}", "stgr_var_rgb")..".",
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時に"..CKWord("薙ぎ払い", "Cleave_rgb_ja").."が増加し、遠隔攻撃の"..CKWord("スタッガー", "Stagger_rgb_ja").."効果が "..CNumb("{stagger:%s}", "stgr_var_rgb").." 増加。",
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 "..CKWord("베어넘기기", "Cleave_rgb_ko").."가 증가하고, 원거리 "..CKWord("스태거", "Stagger_rgb_ko").." 효과가 "..CNumb("{stagger:%s}", "stgr_var_rgb").." 증가합니다.",
			pl = "Zwiększa "..CKWord("Przebicie", "Cleave_rgb_pl").." przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl").." oraz zwiększa "..CKWord("Oszołomienie", "Stagger_rgb_pl").." na Dystans o "..CNumb("{stagger:%s}", "stgr_var_rgb")..".",
			["pt-br"] = "Aumenta o "..CKWord("Corte Profundo", "Cleave_rgb_pt_br").." em um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br").." e também aumenta o "..CKWord("Cambaleio", "Stagger_rgb_pt_br").." à Distância em "..CNumb("{stagger:%s}", "stgr_var_rgb")..".",
			es = "Aumenta la "..CKWord("Hendidura", "Cleave_rgb_es").." al asestar un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es").." y también aumenta el "..CKWord("Tambaleo", "Stagger_rgb_es").." a Distancia un "..CNumb("{stagger:%s}", "stgr_var_rgb")..".",
		},
		--[+ SCATTERSHOT +]-- ruof Разброс	20.04.2026
		-- Ranged Crit Chance per stack (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield -- 6% | 8% | 10% | 12% (up to +60%)
		["loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot_desc"] = { -- crit_chance: +12%, stacks: 5, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for each Enemy Hit by your previous attack. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..Dot_red.." Removes All Stacks on the next shot even when shooting air.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." за каждого врага, поражённого вашей предыдущей атакой. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..Dot_red.." Все заряды тратятся, даже при промахе.", -- Картечь
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pour chaque ennemie touché par votre attaque précédente. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "前一次攻擊每命中一名敵人，\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").." ，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "上次攻击每命中一名敌人\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für jeden mit dem vorherigen Angriff getroffenen Gegner. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per ogni nemico colpito dall'attacco precedente. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "前回の攻撃で命中した敵 "..CNumb("1", "n_1_rgb").." 体ごとに、"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。",
			ko = "이전 공격으로 적중한 적 한 명당 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." za każdego wroga trafionego poprzednim atakiem. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." para cada inimigo atingido pelo seu ataque anterior. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." por cada enemigo golpeado por tu ataque anterior. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ FULL BORE +]-- ruof Напор	20.04.2026
		-- Power (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield -- 14% | 16% | 18% | 20%
		-- Kickback -- 18% | 22% | 26% | 30%
		["loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all_desc"] = { -- power_level: +20%, time: 5, s->seconds, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds when every pellet in a shot hits the same enemy.\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд, если каждая пуля в выстреле попадает в одного и того же врага.", -- Полный калибр
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lorsque chaque plomb d'un tir touche le même ennemi."..CNote("Pwr_note"),
			["zh-tw"] = "單次射擊的所有子彈皆命中同一名敵人，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			["zh-cn"] = "一次射击的全部弹丸都命中同一敌人时\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden, wenn jedes Projektil eines Schusses denselben Gegner trifft."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi quando ogni pallino di un colpo colpisce lo stesso nemico."..CNote("Pwr_note"),
			ja = "一度の射撃の全弾が同一の敵に命中すると、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = "한 번의 사격의 모든 탄환이 동일한 적에게 적중하면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sekund, gdy wszystkie pociski z jednego strzału trafią tego samego wroga."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos quando todos os projéteis de um disparo atingem o mesmo inimigo."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos cuando todos los perdigones de un disparo golpean al mismo enemigo."..CNote("Pwr_note"),
		},
		--[+ BOTH BARRELS +]-- ruof Дуплет	20.04.2026
		-- Reload Animation Speed (per tier)
		-- Double-Barrel Shotgun -- 40% | 50% | 60% | 70%
		["loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill_desc"] = { -- reload_speed: 70%, +colors
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed after killing an enemy with both barrels while aiming.",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки после убийства врага прицельным выстрелом из обоих стволов.",
			fr = "Si vous tuez un ennemi en tirant les deux canons, votre prochain rechargement sera "..CNumb("{reload_speed:%s}", "reload_var_rgb").." plus rapide.",
			["zh-tw"] = "擊殺敵人後，\n下一次換彈速度 "..CNumb("{reload_speed:%s}", "reload_var_rgb").."。",
			["zh-cn"] = "进行次要攻击并发射两枚弹药时\n"..CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度。",
			de = CNumb("{reload_speed:%s}", "reload_var_rgb").." schnellere Nachladegeschwindigkeit nach einem Kill mit beiden Läufen im Zielmodus.",
			it = CNumb("{reload_speed:%s}", "reload_var_rgb").." Velocità di Ricarica dopo aver ucciso un nemico con entrambe le canne mirando.",
			ja = "両方の銃身でキルすると、次のリロード速度が "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 増加。",
			ko = "양쪽 총신으로 적을 처치하면 다음 재장전 속도가 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 증가합니다.",
			pl = CNumb("{reload_speed:%s}", "reload_var_rgb").." Szybkości Przeładowania po zabiciu wroga z obu luf podczas celowania.",
			["pt-br"] = CNumb("{reload_speed:%s}", "reload_var_rgb").." de Velocidade de Recarga após matar um inimigo com ambos os canos enquanto mira.",
			es = CNumb("{reload_speed:%s}", "reload_var_rgb").." de Velocidad de Recarga tras matar a un enemigo con ambos cañones mientras apuntas.",
		},
		--[+ TRICKSHOOTER +]-- ruof Меткий стрелок	20.04.2026
		-- Ranged Power per stack (per tier)
		-- Stub Revolvers -- 4.5% | 5% | 5.5% | 6% (up to +30%)
		["loc_trait_bespoke_power_bonus_on_chained_weakspot_hits_desc"] = { -- power_level: +6%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on Chained "..CKWord("Weakspot Hit", "Weakspothit_rgb").." to Any Target. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." при серии ударов в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." любых целей. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." en chaîne (toute cible). Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "連續 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時（任意目標），\n獲得最多 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." bei aufeinanderfolgenden "..CKWord("Schwachstellentreffern", "Weakspothit_rgb_de").." (beliebiges Ziel). Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." a Colpi in Catena su "..CKWord("Punto Debole", "Weakspothit_rgb_it").." (qualsiasi bersaglio). Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Pwr_note"),
			ja = "連続"..CKWord("弱点ヒット", "Weakspothit_rgb_ja").."時、"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。"..CNote("Pwr_note"),
			ko = "연속 "..CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." przy Kolejnych "..CKWord("Trafieniach w Słaby Punkt", "Weakspothit_rgb_pl").." (dowolny cel). Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." em "..CKWord("Acertos em Ponto Fraco", "Weakspothit_rgb_pt_br").." consecutivos (qualquer alvo). Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." en "..CKWord("Golpes a Punto Débil", "Weakspothit_rgb_es").." Encadenados (cualquier objetivo). Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Pwr_note"),
		},
		--[+ HAND-CANNON +]-- ruof Ручная пушка	20.04.2026
		-- Rending (per tier)
		-- Stub Revolvers -- 30% | 40% | 50% | 60%
		["loc_trait_bespoke_rending_on_crit_desc"] = { -- rend: +60%, +colors
			en = CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("Rending", "Rending_rgb").." on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..CNote("Rend_note"),
			ru = CNumb("{rend:%s}", "rend_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..". "
				..CNote("Rend_note"),
			fr = CNumb("{rend:%s}", "rend_var_rgb").." de "..CKWord("Déchirure", "Rending_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").."."..CNote("Rend_note"),
			["zh-tw"] = CKWord("暴擊命中", "Crit_hit_rgb_tw").." 時 "..CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").."。"..CNote("Rend_note"),
			["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").." "..CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."。"..CNote("Rend_note"),
			de = CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("Durchschlag", "Rending_rgb_de").." bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de").."."..CNote("Rend_note"),
			it = CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("Penetrazione", "Rending_rgb_it").." con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it").."."..CNote("Rend_note"),
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、"..CKWord("貫通", "Rending_rgb_ja").."が "..CNumb("{rend:%s}", "rend_var_rgb").." 増加。"..CNote("Rend_note"),
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 "..CKWord("관통", "Rending_rgb_ko").."이 "..CNumb("{rend:%s}", "rend_var_rgb").." 증가합니다."..CNote("Rend_note"),
			pl = CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("Rozrywanie", "Rending_rgb_pl").." przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl").."."..CNote("Rend_note"),
			["pt-br"] = CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("Penetração", "Rending_rgb_pt_br").." ao causar um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br").."."..CNote("Rend_note"),
			es = CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("Penetración", "Rending_rgb_es").." al asestar un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es").."."..CNote("Rend_note"),
		},
		--[+ SHATTERING IMPACT +]-- ruof Рассеивающий импульс	20.04.2026
		-- Brittleness Stacks (per tier)
		-- Boltguns, Grenadier Gauntlet, Plasma Gun, Rumbler -- 1 | 2 | 3| 4
		["loc_trait_bespoke_armor_rend_on_projectile_hit_desc"] = { -- stacks: 4, rending: 2.5%, time: 5, max_stacks: 16, s->seconds, +colors
			en = "Target receives "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." on direct projectile hit. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..". "
				..CPhrs("Can_be_refr"), --  ..CNote("Brtl_note_rgb
			ru = "Цель получает "..CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони при прямом попадании. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. До "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядов, вплоть до "..CNumb("40%", "pc_40_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru")..".\n"
				..CPhrs("Can_be_refr"), -- ..CNote("Brtl_note_rgb_ru -- Разрушительный удар
			fr = "La cible reçoit "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Fragilité", "Brittleness_rgb_fr").." si elle est touchée directement par un projectile. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls maximum, jusqu'à "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["zh-tw"] = "命中目標時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層，最高至 "..CNumb("40%", "pc_40_rgb").." 。"..CNote("Brtl_note"),
			["zh-cn"] = "命中时，对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." \n"..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			de = "Das Ziel erhält bei direktem Projektil-Treffer "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Sprödigkeit", "Brittleness_rgb_de")..". Hält "..CNumb("{time:%s}", "time_var_rgb").." Sek. Max. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stapel, bis zu "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			it = "Il bersaglio riceve "..CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilità", "Brittleness_rgb_it").." se colpito direttamente da un proiettile. Dura "..CNumb("{time:%s}", "time_var_rgb").." sec. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." accumuli, fino al "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			ja = "直撃時、敵に "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_ja").."を "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック付与。持続 "..CNumb("{time:%s}", "time_var_rgb").."秒。最大 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." スタック、合計 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			ko = "직접 사격 적중 시 적에게 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("취약", "Brittleness_rgb_ko").."을 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩 부여합니다. "..CNumb("{time:%s}", "time_var_rgb").."초 지속. 최대 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 중첩, 최대 "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			pl = "Cel otrzymuje "..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Kruchości", "Brittleness_rgb_pl").." przy bezpośrednim trafieniu pociskiem. Trwa "..CNumb("{time:%s}", "time_var_rgb").." sek. Maks. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." ładunków, do "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["pt-br"] = "O alvo recebe "..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidade", "Brittleness_rgb_pt_br").." se atingido diretamente por um projétil. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acúmulos, até "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			es = "El objetivo recibe "..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidad", "Brittleness_rgb_es").." al ser golpeado directamente por un proyectil. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acumulaciones, hasta un "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
		},
		--[+ EVERLASTING FLAME +]-- ruof Бесконечное пламя	20.04.2026
		-- Ammo Transferred (per tier)
		-- Flamer -- 2 | 3 | 4 | 5
		["loc_trait_bespoke_ammo_spent_from_reserve_on_crit_desc"] = { -- +colors
			en = CKWord("Critical Hits", "Crit_hits_rgb").." spend Ammo from your Reserve instead of you current fuel tank.",
			ru = CKWord("Критические удары", "Krit_udary_rgb_ru").." тратят топливо из вашего резерва вместо текущего топливного бака.", -- Неугасимое пламя
			fr = "Les "..CKWord("Coups critiques", "Crit_hits_rgb_fr").." dépensent des munitions de votre réserve à la place de votre réservoir de carburant actuel.",
			["zh-tw"] = CKWord("暴擊", "Crit0_rgb_tw").." 消耗備彈，而非彈夾中的彈藥。",
			["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时，从弹药储备填装数枚弹药。",
			de = CKWord("Kritische Treffer", "Crit_hits_rgb_de").." verbrauchen Munition aus eurer Reserve anstatt aus dem aktuellen Tank.",
			it = "I "..CKWord("Colpi Critici", "Crit_hits_rgb_it").." consumano munizioni dalla Riserva invece che dal serbatoio attuale.",
			ja = CKWord("クリティカルヒット", "Crit_hits_rgb_ja").."時、現在のタンクではなく予備弾薬から消費する。",
			ko = CKWord("크리티컬 적중", "Crit_hits_rgb_ko").." 시 현재 연료 탱크 대신 예비 탄약에서 탄약을 소모합니다.",
			pl = CKWord("Krytyczne Trafienia", "Crit_hits_rgb_pl").." zużywają Amunicję z Rezerwy zamiast z bieżącego zbiornika paliwa.",
			["pt-br"] = CKWord("Acertos Críticos", "Crit_hits_rgb_pt_br").." gastam Munição da sua Reserva em vez do tanque de combustível atual.",
			es = "Los "..CKWord("Golpes Críticos", "Crit_hits_rgb_es").." gastan Munición de tu Reserva en lugar de tu tanque de combustible actual.",
		},
		--[+ QUICKFLAME +]-- ruof Воспламенение	20.04.2026
		-- Reload Speed (per tier)
		-- Flamer -- 24% | 28% | 32% | 36%
		["loc_trait_bespoke_faster_reload_on_empty_clip_desc"] = { -- reload_speed: +36%, +colors
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed if empty.",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки, если бак пуст.", -- Скорое пламя
			fr = CNumb("{reload_speed:%s}", "reload_var_rgb").." de vitesse de rechargement si vide.",
			["zh-tw"] = "當彈夾為空時 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 換彈速度。",
			["zh-cn"] = "弹匣空时 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度。",
			de = CNumb("{reload_speed:%s}", "reload_var_rgb").." Nachladegeschwindigkeit, wenn leer.",
			it = CNumb("{reload_speed:%s}", "reload_var_rgb").." Velocità di Ricarica se vuoto.",
			ja = "装填数が "..CNumb("0", "n_0_rgb").." の時、リロード速度 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 。",
			ko = "탄창이 비었을 때 재장전 속도 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." .",
			pl = CNumb("{reload_speed:%s}", "reload_var_rgb").." Prędkości Przeładowania, jeśli pusty.",
			["pt-br"] = CNumb("{reload_speed:%s}", "reload_var_rgb").." de Velocidade de Recarga se vazio.",
			es = CNumb("{reload_speed:%s}", "reload_var_rgb").." de Velocidad de Recarga si está vacío.",
		},
		--[+ FAN THE FLAMES +]-- ruof Раздувая пламя	20.04.2026
		-- Stagger Reduction Modifier and Ranged Stagger Strength (per tier)
		-- Flamer -- 40% and 30% | 50% and 35% | 60% and 40% | 70% and 45%
		["loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning_desc"] = { -- stagger_reduction: 60%, impact_modifier: +45%, +colors
			en = "Primary Attack ignores "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." "..CKWord("Stagger", "Stagger_rgb").." Resistance on "..CKWord("Burning", "Burning_rgb").." Enemies, as well as dealing "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("Impact", "Impact_rgb")..".",
			ru = "Основная атака получает:\n"
				..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." и\n"
				..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." к игнорированию сопротивления "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." для "..CKWord("горящих", "goriaschih_rgb_ru").." врагов.", -- Раздуй пламя
			fr = "Votre attaque principale ignore "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." de le résistance "..CKWord("Vacillement", "Stagger_rgb_fr").." des ennemis qui "..CKWord("Brûlant", "Burning_rgb_fr")..", et inflige "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr")..".",
			["zh-tw"] = "對 "..CKWord("燃燒中", "Burning_rgb_tw").." 敵人使用主攻擊時，\n無視 "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." "..CKWord("踉蹌效果", "Stagger2_rgb_tw").." 並 "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").."。",
			["zh-cn"] = "主要攻击无视"..CKWord("燃烧", "Burn_rgb_zh_cn").."敌人 "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." "..CKWord("踉跄", "Stagger_rgb_zh_cn").."抗性，同时 "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."。",
			de = "Primärangriffe ignorieren "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." der "..CKWord("Taumelresistenz", "Stagger_rgb_de").." von "..CKWord("brennenden", "Burning_rgb_de").." Gegnern und verursachen "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("Wucht", "Impact_rgb_de")..".",
			it = "L'Attacco Primario ignora "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." della Resistenza allo "..CKWord("Barcollamento", "Stagger_rgb_it").." dei nemici "..CKWord("Brucianti", "Burning_rgb_it")..", e infligge "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("Impatto", "Impact_rgb_it")..".",
			ja = "主攻撃が"..CKWord("燃焼中", "Burning_rgb_ja").."の敵の"..CKWord("スタッガー", "Stagger_rgb_ja").."耐性を "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." 無視し、"..CKWord("衝撃", "Impact_rgb_ja").."が "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." 増加。",
			ko = "주 공격이 "..CKWord("화상 중", "Burning_rgb_ko").."인 적의 "..CKWord("스태거", "Stagger_rgb_ko").." 저항을 "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." 무시하고 "..CKWord("충격", "Impact_rgb_ko").."이 "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." 증가합니다.",
			pl = "Atak Podstawowy ignoruje "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." Odporności na "..CKWord("Oszołomienie", "Stagger_rgb_pl").." u "..CKWord("Płonących", "Burning_rgb_pl").." wrogów oraz zadaje "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("Impetu", "Impact_rgb_pl")..".",
			["pt-br"] = "O Ataque Primário ignora "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." da Resistência a "..CKWord("Cambaleio", "Stagger_rgb_pt_br").." de inimigos "..CKWord("Queimando", "Burning_rgb_pt_br")..", e causa "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("Impacto", "Impact_rgb_pt_br")..".",
			es = "El Ataque Principal ignora "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." de la Resistencia al "..CKWord("Tambaleo", "Stagger_rgb_es").." de los enemigos "..CKWord("Ardiendo", "Burning_rgb_es")..", e inflige "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("Impacto", "Impact_rgb_es")..".",
		},
		--[+ OVERPRESSURE +]-- ruof Избыточное давление	20.04.2026
		-- Power per stack (per tier)
		-- Flamer -- 2% | 3% | 4% | 5% (up to +25%)
		["loc_trait_bespoke_power_scales_with_clip_percentage_desc"] = { -- power_level: +5%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb")..", scaling with remaining Ammunition. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..Dot_nc.." Holds all current Stacks until reload.\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в зависимости от количества оставшихся боеприпасов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..Dot_nc.." Заряды сохраняются до перезарядки. "..CNote("Pwr_note"),
			fr = "Jusqu'à "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr")..", en fonction des munitions restantes. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "依照剩餘彈藥量 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = "随弹匣剩余弹药叠加层数，\n每消耗弹匣容量 "..CNumb("20%", "pc_20_rgb").." 的弹药\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de")..", abhängig von der verbleibenden Munition. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." in base alle munizioni rimanenti. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Pwr_note"),
			ja = "残弾数に応じて、"..CKWord("威力", "Strength_rgb_ja").."が最大 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。"..CNote("Pwr_note"),
			ko = "남은 탄약량에 따라 "..CKWord("위력", "Strength_rgb_ko").."이 최대 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." w zależności od pozostałej amunicji. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." baseado na munição restante. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." según la munición restante. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Pwr_note"),
		},
		--[+ HOT-SHOT +]-- ruof В точку	20.04.2026
		-- Enemy Hit Mass Reduction (per tier)
		-- Helbore Lasguns, Needle Pistols -- 20% | 30% | 40% | 50%
		["loc_trait_bespoke_cleave_on_weakspot_hits_desc"] = { -- hit_mass_reduction: +50%, +colors
			en = CNumb("+", "n_plus_rgb")..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." "..CKWord("Cleave", "Cleave_rgb").." to "..CKWord("Weakspot Hits", "Weakspothits_rgb")..".",
			ru = CNumb("+", "n_plus_rgb")..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." к "..CKWord("прострелу", "prostrelu_rgb_ru").." выстрелам в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".", -- Прожигающий выстрел
			fr = "Les "..CKWord("Points faibles", "Weakspothits_rgb_fr").." gagnent "..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." de "..CKWord("Transpercement", "Cleave_rgb_fr")..".",
			["zh-tw"] = CKWord("命中弱點", "Weakspothits_rgb_tw").." "..CNumb("+", "n_plus_rgb")..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." "..CKWord("順劈攻擊", "Cleave_rgb_tw").."。",
			["zh-cn"] = CKWord("弱点命中", "Weakspothits_rgb_zh_cn").."使目标"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."降至 "..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").."。"..CNote("Hit_Mass_note"),
			de = CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." "..CKWord("Spaltwert", "Cleave_rgb_de").." bei "..CKWord("Schwachstellentreffern", "Weakspothits_rgb_de")..".",
			it = CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." "..CKWord("Fendente", "Cleave_rgb_it").." con "..CKWord("Colpi a Punto Debole", "Weakspothits_rgb_it")..".",
			ja = CKWord("弱点ヒット", "Weakspothits_rgb_ja").."時、"..CKWord("薙ぎ払い", "Cleave_rgb_ja").."が "..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." 増加。",
			ko = CKWord("약점 적중", "Weakspothits_rgb_ko").." 시 "..CKWord("베어넘기기", "Cleave_rgb_ko").."가 "..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." 증가합니다.",
			pl = CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." "..CKWord("Przebicia", "Cleave_rgb_pl").." przy "..CKWord("Trafieniach w Słaby Punkt", "Weakspothits_rgb_pl")..".",
			["pt-br"] = CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." "..CKWord("Corte Profundo", "Cleave_rgb_pt_br").." em "..CKWord("Acertos em Ponto Fraco", "Weakspothits_rgb_pt_br")..".",
			es = CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." "..CKWord("Hendidura", "Cleave_rgb_es").." en "..CKWord("Golpes a Punto Débil", "Weakspothits_rgb_es")..".",
		},
		--[+ WEIGHT OF FIRE +]-- ruof Плотность огня	20.04.2026
		-- Charge Time Reduction per stack (per tier)
		-- Helbore Lasguns -- 6% | 8% | 10% | 12% (up to 60%)
		["loc_trait_bespoke_faster_charge_on_chained_attacks_desc"] = { -- charge_time: -12%, stacks: 5, +colors
			en = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Charge Time per Stack. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Stacks on consecutive Aimed Charged Attacks. "
				..Dot_nc.." Stacks expire after "..CNumb("0.4", "n_04_rgb").." seconds or upon leaving Alt Fire mode.",
			ru = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." от времени заряжания выстрела за заряд. Максимум "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов при серии заряженных прицельных выстрелов.\n"
				..Dot_nc.." Заряды сгорают через "..CNumb("0.4", "n_04_rgb").." секунды или при выходе из прицеливания.",
			fr = "Enchaîner les attaques chargées réduit leurs temps de chargement de "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." par cumule. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "連續射擊會使後續射擊充能時間 "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "连续进行充能攻击时 \n"..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." 蓄力时间。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Ladezeit pro Stapel bei aufeinanderfolgenden gezielten, aufgeladenen Angriffen. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Tempo di Carica per Accumulo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte con Attacchi Caricati Mirati consecutivi.",
			ja = "連続チャージ射撃時、チャージ時間が "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." 短縮。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。",
			ko = "연속 충전 공격 시 충전 시간이 "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." 감소합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").."회 중첩.",
			pl = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Czasu Ładowania za ładunek przy kolejnych celowanych atakach ładowanych. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." de Tempo de Carga por Acúmulo em Ataques Carregados e Mirados consecutivos. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." de Tiempo de Carga por Acumulación en Ataques Cargados Apuntados consecutivos. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ ARMOURBANE +]-- ruof Бронебой	20.04.2026
		-- Brittleness Stacks (per tier)
		-- Helbore Lasguns -- 2 to 6 | 4 to 8 | 6 to 10 | 8 to 12
		["loc_trait_bespoke_rend_armor_on_charged_shots_desc"] = { -- min_stack_count: 8, max_stack_count: 12, +colors
			en = "Adds "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").."-"..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." Stacks of "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." to hit enemies, based on charge level.\n"
				..Dot_nc.." Max "..CNumb("16", "n_16_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..". "
				..CPhrs("Can_be_refr")..Dot_green.." Can apply Stacks through shields.",
			ru = "Добавляет врагу "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").."-"..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." зарядов по "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони при попадании, в зависимости от времени заряжания выстрела. До "..CNumb("40%", "pc_40_rgb")..". "
				..CPhrs("Can_be_refr"), -- CNote("Brtl_note")
			fr = "Inflige de "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." à "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." cumuls de "..CNumb("2.5%", "pc_2_5_rgb").." de "..CKWord("Fragilité", "Brittleness_rgb_fr").." aux ennemis touchés, en fonction du niveau de charge."..CNote("Brtl_note"),
			["zh-tw"] = "依據充能時間，使其獲得 "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." 至 "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." 層， "..CNumb("2.5%", "pc_2_5_rgb").." 的 "..CKWord("脆弱", "Brittleness_rgb_tw").."，上限 "..CNumb("16", "n_16_rgb").." 層，共 "..CNumb("40%", "pc_40_rgb").." 。"..CNote("Brtl_note"),
			["zh-cn"] = "随充能时间提升效果，对目标施加\n"..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." 到 "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." 层 "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			de = "Fügt getroffenen Gegnern basierend auf der Ladestufe "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." bis "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." Stapel "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Sprödigkeit", "Brittleness_rgb_de").." zu."..CNote("Brtl_note"),
			it = "Aggiunge da "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." a "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." accumuli di "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Fragilità", "Brittleness_rgb_it").." ai nemici colpiti, in base al livello di carica."..CNote("Brtl_note"),
			ja = "チャージレベルに応じて、命中した敵に "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("脆弱", "Brittleness_rgb_ja").."を "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").."～"..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." スタック付与。"..CNote("Brtl_note"),
			ko = "충전 레벨에 따라 적에게 "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("취약", "Brittleness_rgb_ko").."을 "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").."~"..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." 중첩 부여합니다."..CNote("Brtl_note"),
			pl = "Zadaje trafionym wrogom od "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." do "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." ładunków "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Kruchości", "Brittleness_rgb_pl").." w zależności od poziomu naładowania."..CNote("Brtl_note"),
			["pt-br"] = "Aplica de "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." a "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." acúmulos de "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Fragilidade", "Brittleness_rgb_pt_br").." aos inimigos atingidos, baseado no nível de carga."..CNote("Brtl_note"),
			es = "Aplica de "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." a "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." acumulaciones de "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Fragilidad", "Brittleness_rgb_es").." a los enemigos golpeados, según el nivel de carga."..CNote("Brtl_note"),
		},
		--[+ POWER BLAST +]-- ruof Мощный взрыв	20.04.2026
		-- Crit Chance per stack (per tier)
		-- Plasma Gun -- 2% | 3% | 4% | 5% (up to +25%)
		["loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time_desc"] = { -- crit_chance_min: 5%, crit_chance_max: 25%, +colors
			en = CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." per "..CNumb("20%", "pc_20_rgb").." charge level. "..Dot_nc.." Stacks up to "..CNumb("5", "n_5_rgb").." times. Maximum of "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." at "..CNumb("91%", "pc_91p_rgb").." charge level.\n"
				..Dot_nc.." Max Stacks can only be reached by the Alt fire charging action.",
			ru = CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." за каждые "..CNumb("20%", "pc_20_rgb").." перегрева. "
				..Dot_nc.." Суммируется до "..CNumb("5", "n_5_rgb").." раз, вплоть до "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." при уровне перегрева "..CNumb("91%", "pc_91p_rgb").." или выше.", -- Энерговзрыв
			fr = "Gagnez entre "..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." et "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." en fonction du niveau de charge lorsque vous tirez.",
			["zh-tw"] = "依據 "..CKWord("充能", "Heat2_rgb_tw").." 等級，\n "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." 到 "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."。",
			["zh-cn"] = "随充能程度叠加层数，每充能\n"..CNumb("20%", "pc_20_rgb").." 叠加 "..CNumb("1", "n_1_rgb").." 层，每层 "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层，最高 "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").."。",
			de = "Erhält beim Schießen basierend auf dem Ladungslevel zwischen "..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." und "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de")..".",
			it = "Ottieni tra "..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." e "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." di "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." in base al livello di carica quando spari.",
			ja = "チャージレベルに応じて、射撃時に"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").."～"..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." 増加。",
			ko = "충전 레벨에 따라 사격 시 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").."에서 "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").."까지 증가합니다.",
			pl = "Zyskaj od "..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." do "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("Szansy na krytyka", "Crit_chance_rgb_pl").." w zależności od poziomu naładowania podczas strzału.",
			["pt-br"] = "Ganha entre "..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." e "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." de "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." baseado no nível de carga ao atirar.",
			es = "Gana entre "..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." y "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." de "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." según el nivel de carga al disparar.",
		},
		--[+ GETS HOT! +]-- ruof Становится жарко!	20.04.2026
		-- Crit Chance and Ranged Crit Damage per stack (per tier)
		-- Plasma Gun -- 5.5% and 4% | 7% and 6% | 8.5 and 8% | 10% and 10% (up to +50% and +50%)
		["loc_trait_bespoke_crit_chance_scaled_on_heat_desc"] = { -- crit_chance: 50%, ranged_crit_damage: 10%, +colors
			en = "Scaling with overheat, grants Stacks.\n"
				.."Per Stack you gain:\n"
				..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb").." and\n"
				..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." "..CKWord("Critical Damage", "Crit_dmg_r_rgb")..".\n"
				..Dot_nc.." Stacks up to "..CNumb("5", "n_5_rgb").." times.",
			ru = "Повышение перегрева даёт заряды.\n"
				.."За заряд вы получаете:\n"
				..CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." и\n"
				..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." к "..CKWord("критическому урону", "krit_uronu_rgb_ru")..".\n"
				..Dot_nc.." Суммируется до "..CNumb("5", "n_5_rgb").." раз.", -- Перегрев!
			fr = "Augmente de "..CNumb("{crit_chance:%s}", "crit_var_rgb").." par cumul le "..CKWord("Taux de coup critique", "Crit_hit_chance_rgb_fr").." proportionnellement à votre niveau de "..CKWord("Chaleur", "Heat_rgb_fr").." actuel. Augmente également les "..CKWord("Dégâts de coup critique", "Crit_hit_color_rgb_fr").." à distance de "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." par cumul.",
			["zh-tw"] = "依據 "..CKWord("熱能", "Heat_rgb_tw").." 提升 "..CKWord("暴擊機率", "Crt_chance_rgb_tw").."，\n每層 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊", "Crit_hits_rgb_tw").." 跟 "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." "..CKWord("遠程暴擊傷害", "Crit_hit_r_color_rgb_tw").."。\n上限 "..CNumb("5", "n_5_rgb").." 層，共 "..CNumb("50%", "pc_50_rgb").." 。",
			["zh-cn"] = "随"..CKWord("热量", "Heat_rgb_zh_cn").."增长叠加层数，\n每层 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crt_chance_rgb_zh_cn").."，\n同时 "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." 远程"..CKWord("暴击伤害", "Crit_dmg_r_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。",
			de = "Erhöht pro Stapel die "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." um "..CNumb("{crit_chance:%s}", "crit_var_rgb").." und den Fernkampf-"..CKWord("Kritischen Trefferschaden", "Crt_strk_dmg_rgb_de").." um "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb")..", basierend auf der aktuellen "..CKWord("Hitze", "Heat_rgb_de")..". Bis zu "..CNumb("5", "n_5_rgb").." Stapel.",
			it = "Aumenta del "..CNumb("{crit_chance:%s}", "crit_var_rgb").." per accumulo la "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." e i "..CKWord("Danni da critico", "Crt_strk_dmg_rgb_it").." a distanza del "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." per accumulo, in base al livello di "..CKWord("Calore", "Heat_rgb_it").." attuale. Max "..CNumb("5", "n_5_rgb").." accumuli.",
			ja = "現在の"..CKWord("ヒート", "Heat_rgb_ja").."量に応じてスタック獲得。スタックごとに"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").." "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 、遠隔"..CKWord("クリティカルダメージ", "Crit_dmg_r_rgb_ja").." "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." 増加。最大 "..CNumb("5", "n_5_rgb").." スタック。",
			ko = "현재 "..CKWord("열기", "Heat_rgb_ko").."에 따라 중첩을 얻습니다. 중첩당 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").." "..CNumb("{crit_chance:%s}", "crit_var_rgb").." , 원거리 "..CKWord("크리티컬 피해", "Crit_dmg_r_rgb_ko").." "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." 증가. 최대 "..CNumb("5", "n_5_rgb").." 중첩.",
			pl = "Zwiększa o "..CNumb("{crit_chance:%s}", "crit_var_rgb").." na ładunek "..CKWord("Szansę na krytyka", "Crit_chance_rgb_pl").." i o "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." na ładunek Dystansowe "..CKWord("Obrażenia krytyczne", "Crt_strk_dmg_rgb_pl")..", proporcjonalnie do aktualnego poziomu "..CKWord("Ciepła", "Heat_rgb_pl")..". Maks. "..CNumb("5", "n_5_rgb").." ładunków.",
			["pt-br"] = "Aumenta em "..CNumb("{crit_chance:%s}", "crit_var_rgb").." por acúmulo a "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." e em "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." por acúmulo o "..CKWord("Dano Crítico", "Crt_strk_dmg_rgb_pt_br").." à Distância, baseado no nível de "..CKWord("Calor", "Heat_rgb_pt_br").." atual. Máx. "..CNumb("5", "n_5_rgb").." acúmulos.",
			es = "Aumenta en "..CNumb("{crit_chance:%s}", "crit_var_rgb").." por acumulación la "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." y en "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." por acumulación el "..CKWord("Daño Crítico", "Crt_strk_dmg_rgb_es").." a Distancia, según el nivel de "..CKWord("Calor", "Heat_rgb_es").." actual. Máx. "..CNumb("5", "n_5_rgb").." acumulaciones.",
		},
		--[+ VOLATILE +]-- ruof Испарение	20.04.2026
		-- Charge Time Reduction per stack (per tier)
		-- Plasma Gun -- 2.5% | 3% | 3.5% | 4% (up to 20%)
		["loc_trait_bespoke_lower_overheat_gives_faster_charge_desc"] = { -- charge_speed: +4%, stacks: 5, +colors
			en = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." Charge Speed on low "..CKWord("Overheat", "Overheat_rgb")..". Stacks up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." к скорости заряжания выстрела при низком "..CKWord("перегреве", "peregreve_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Нестабильность
			fr = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." de vitesse de charge lorsque votre surchauffe est basse. Se cumule jusqu'à "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "在 "..CKWord("熱能", "Heat_rgb_tw").." 較低時，充能速度 "..CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "随"..CKWord("热量", "Heat_rgb_zh_cn").."增长减少层数，\n每层 "..CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." 充能速度，最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." Ladegeschwindigkeit bei niedriger "..CKWord("Überhitzung", "Overheat_rgb_de")..". Stapelt bis zu "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." Velocità di Carica quando il "..CKWord("Surriscaldamento", "Overheat_rgb_it").." è basso. Cumulabile fino a "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "低"..CKWord("オーバーヒート", "Overheat_rgb_ja").."時、チャージ速度 "..CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." 。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。",
			ko = "낮은 "..CKWord("과열", "Overheat_rgb_ko").." 상태일 때 충전 속도 "..CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." . 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩.",
			pl = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." Prędkości Ładowania przy niskim "..CKWord("Przegrzaniu", "Overheat_rgb_pl")..". Kumuluje się do "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." de Velocidade de Carga com "..CKWord("Superaquecimento", "Overheat_rgb_pt_br").." baixo. Acumula até "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." de Velocidad de Carga con "..CKWord("Sobrecalentamiento", "Overheat_rgb_es").." bajo. Se acumula hasta "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ BLAZE AWAY +]-- ALT OGRYN ruof Энтузиазм	20.04.2026
		-- Power per stack (per tier)
		-- Grenadier Gauntlet, Inferno Staff, Plasma Gun -- 5% | 6% | 7% | 8% (up to +40%)
		-- Kickback, Rumbler -- 6% | 7% | 8% | 9% (up to +45%)
		["loc_trait_bespoke_power_bonus_on_continuous_fire_alternative_desc"] = { -- power_level: +8%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for every shot fired during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CNote("Pwr_note"), -- Стрельба без устали
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour chaque tir effectué en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "持續射擊時，每射出一發 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = "连续射击期间，每次射击 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für jeden Schuss bei Dauerfeuer. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per ogni colpo sparato durante il fuoco continuo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Pwr_note"),
			ja = "連続射撃中、一発撃つごとに"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。"..CNote("Pwr_note"),
			ko = "연속 사격 중 매 발사 시 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." za każdy strzał podczas ognia ciągłego. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." para cada disparo durante fogo contínuo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." por cada disparo durante fuego continuo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Pwr_note"),
		},
		--[+ RISING HEAT +]-- ruof Сильная жара	20.04.2026
		-- Power per stack (per tier)
		-- Plasma Gun -- 1.5% | 2% | 3% | 4% (up to +20%)
		["loc_trait_bespoke_power_bonus_scaled_on_heat_desc"] = { -- power_level: +8%, stacks: 5, +colors
			en = "Up to "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Strength", "Strength_rgb").." scaling with "..CKWord("Heat", "Heat_rgb").." Level. "
				..CNote("Pwr_note"),
			ru = "До "..CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в зависимости от уровня "..CKWord("перегрева", "peregreva_rgb_ru")..". "
				..CNote("Pwr_note"), -- Нарастающий жар
			fr = "Jusqu'à "..CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." en fonction du niveau de "..CKWord("Chaleur", "Heat_rgb_fr").."."..CNote("Pwr_note"),
			["zh-tw"] = "依據 "..CKWord("熱能", "Heat_rgb_tw").." 等級，最多 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").." 。"..CNote("Pwr_note"),
			["zh-cn"] = "随"..CKWord("热量", "Heat_rgb_zh_cn").."增长提升效果\n，最高 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。"..CNote("Pwr_note"),
			de = "Bis zu "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." abhängig vom "..CKWord("Hitze", "Heat_rgb_de").."-Level."..CNote("Pwr_note"),
			it = "Fino a "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." in base al livello di "..CKWord("Calore", "Heat_rgb_it").."."..CNote("Pwr_note"),
			ja = CKWord("ヒート", "Heat_rgb_ja").."レベルに応じて、最大 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("威力", "Strength_rgb_ja").." 増加。"..CNote("Pwr_note"),
			ko = CKWord("열기", "Heat_rgb_ko").." 수준에 따라 최대 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("위력", "Strength_rgb_ko").." 증가."..CNote("Pwr_note"),
			pl = "Do "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." w zależności od poziomu "..CKWord("Ciepła", "Heat_rgb_pl").."."..CNote("Pwr_note"),
			["pt-br"] = "Até "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." baseado no nível de "..CKWord("Calor", "Heat_rgb_pt_br").."."..CNote("Pwr_note"),
			es = "Hasta "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." según el nivel de "..CKWord("Calor", "Heat_rgb_es").."."..CNote("Pwr_note"),
		},
		--[+ OPTIMISED COOLING +]-- ruof Оптимизированное охлаждение	20.04.2026
		-- Overheat Cost Reduction per stack (per tier)
		-- Plasma Gun -- 4% | 6% | 8% | 10% (up to ~41%)
		["loc_trait_bespoke_reduced_heat_on_continuous_desc"] = { -- +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("10%", "pc_10_rgb").." "..CKWord("Heat", "Heat_rgb").." generation per Stack for consecutive shots or charged shots.\n"
				..Dot_nc.." Stacks up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." times for a ~"..CNumb("41%", "pc_41_rgb").." total reduction. "..Dot_red.." Description for T4!\n"
				..Dot_nc.." T1: "..CNumb("-", "n_minus_rgb")..CNumb("4%", "pc_4_rgb").." | T2: "..CNumb("-", "n_minus_rgb")..CNumb("6%", "pc_6_rgb").." | T3: "..CNumb("-", "n_minus_rgb")..CNumb("8%", "pc_8_rgb")..".",
			ru = CNumb("-", "n_minus_rgb")..CNumb("10%", "pc_10_rgb").." к набору "..CKWord("перегрева", "peregreva_rgb_ru").." за заряд для серии выстрелов или для заряженных выстрелов. "..Dot_nc.." До "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов, вплоть до ~"..CNumb("41%", "pc_41_rgb").." снижения "..CKWord("перегрева", "peregreva_rgb_ru")..". "..Dot_red.." Описание 4 уровня! "..Dot_nc.." У1: "..CNumb("-", "n_minus_rgb")..CNumb("4%", "pc_4_rgb").." | У2: "..CNumb("-", "n_minus_rgb")..CNumb("6%", "pc_6_rgb").." | У3: "..CNumb("-", "n_minus_rgb")..CNumb("8%", "pc_8_rgb")..".",
			fr = "Vitesse de chargement augmentée inversement proportionnelle au niveau de "..CKWord("Chaleur", "Heat_rgb_fr")..".",
			["zh-tw"] = "連續精準射擊時，\n降低 "..CKWord("熱能", "Heat_rgb_tw").." 提升速度。上限 "..CNumb("5", "n_5_rgb").." 層。",
			["zh-cn"] = "连续射击期间，每次射击减少"..CKWord("热量", "Heat_rgb_zh_cn").."积累。最多叠加 "..CNumb("5", "n_5_rgb").." 层。",
			de = "Reduziert den "..CKWord("Hitze", "Heat_rgb_de").."-Aufbau pro Stapel bei aufeinanderfolgenden oder aufgeladenen Schüssen. Stapelt bis zu "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = "Riduce la generazione di "..CKWord("Calore", "Heat_rgb_it").." per accumulo per colpi consecutivi o caricati. Cumulabile fino a "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続射撃またはチャージショット時、スタックごとに"..CKWord("ヒート", "Heat_rgb_ja").."蓄積が減少。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。",
			ko = "연속 사격 또는 충전 사격 시 중첩당 "..CKWord("열기", "Heat_rgb_ko").." 축적이 감소합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩.",
			pl = "Zmniejsza generację "..CKWord("Ciepła", "Heat_rgb_pl").." na ładunek przy kolejnych lub ładowanych strzałach. Kumuluje się do "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = "Reduz a geração de "..CKWord("Calor", "Heat_rgb_pt_br").." por acúmulo para tiros consecutivos ou carregados. Acumula até "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = "Reduce la generación de "..CKWord("Calor", "Heat_rgb_es").." por acumulación para disparos consecutivos o cargados. Se acumula hasta "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ FOCUSED COOLING +]-- ruof Сосредоточенное охлаждение	20.04.2026
		-- Overheat Cost Reduction (per tier)
		-- Plasma Gun -- 30% | 40% | 50% | 60%
		["loc_trait_bespoke_reduced_overheat_on_crits_desc"] = { -- +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." "..CKWord("Heat", "Heat_rgb").." generation on "..CKWord("Critical Hit", "Crit_hit_rgb")..".",
			ru = CNumb("-", "n_minus_rgb")..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." "..CKWord("перегрева", "peregreva_rgb_ru").." вырабатывается при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..".",
			fr = CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." de génération de "..CKWord("Chaleur", "Heat_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".",
			["zh-tw"] = CKWord("暴擊", "Crit_rgb_tw").." 時，產生的 "..CKWord("熱能", "Heat_rgb_tw").." 僅 "..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").."。",
			["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时，减少 "..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."积累。",
			de = CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." "..CKWord("Hitze", "Heat_rgb_de").."-Erzeugung bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de")..".",
			it = CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." di generazione di "..CKWord("Calore", "Heat_rgb_it").." con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it")..".",
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、"..CKWord("ヒート", "Heat_rgb_ja").."生成量が "..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." に減少。",
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 "..CKWord("열기", "Heat_rgb_ko").." 생성량이 "..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." 로 감소합니다.",
			pl = CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." generacji "..CKWord("Ciepła", "Heat_rgb_pl").." przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl")..".",
			["pt-br"] = CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." de geração de "..CKWord("Calor", "Heat_rgb_pt_br").." em um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br")..".",
			es = CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." de generación de "..CKWord("Calor", "Heat_rgb_es").." en un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es")..".",
		},
		--[+ GAUNTLET MOMENTUM +]-- ruof Перчатка моментума	20.04.2026
		-- Melee Power per stack (per tier)
		-- Grenadier Gauntlet -- 5% | 5% | 5% | 5% (up to +50%) (bugged)
		["loc_trait_bespoke_power_bonus_on_chained_melee_desc"] = { -- power: 5%, stacks: 10, time: 1.5, +colors
			en = CNumb("{power:%s}", "pwr_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." per Stack. Stacks on chained Melee hits, up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Each Stack lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..CNote("Pwr_note_rgb").."\n"
				..Dot_red.." {#color(255, 35, 5)}BUG:{#reset()} "..CNumb("5%", "pc_5_rgb").." all tiers.",
			ru = CNumb("{power:%s}", "pwr_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в ближнем бою. До "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов при сериях ударов, длятся "..CNumb("{time:%s}", "time_var_rgb").." секунды каждый. "
				..CNote("Pwr_note_rgb_ru").."\n"
				..Dot_red.." {#color(255, 35, 5)}СЛОМАНО:{#reset()} "..CNumb("5%", "pc_5_rgb").." все уровни.", -- Инерция перчатки
			fr = CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." cumul de "..CNumb("{power:%s}", "pwr_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." de mélée, est ajouté pour chaque attaque de mélée avec le Gantelet. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Les cumuls dure "..CNumb("{time:%s}", "time_var_rgb").." secondes. {#color(255, 35, 5)}(bug:5% tout les niveaux de la bénédiction){#reset()}"..CNote("Pwr_note"),
			["zh-tw"] = "連續近戰攻擊時， "..CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." 層 "..CKWord("近戰威力", "Strength_m_rgb_tw").." 。\n每層 "..CNumb("{power:%s}", "pwr_var_rgb").." 的 "..CKWord("近戰威力", "Strength_m_rgb_tw").." ，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n{#color(255, 35, 5)}（已知問題：所有等級皆為 5%）{#reset()}"..CNote("Pwr_note"),
			["zh-cn"] = "臂铠近战攻击命中敌人时\n"..CNumb("{power:%s}", "pwr_var_rgb").." 臂铠近战"..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。{#color(255, 35, 5)}\n（BUG：无论祝福级别如何，\n数值始终为 +5% 强度。）{#reset()}"..CNote("Pwr_note"),
			de = CNumb("{power:%s}", "pwr_var_rgb").." Nahkampf-"..CKWord("Stärke", "Strength_rgb_de").." pro Stapel. Stapelt bei aufeinanderfolgenden Nahkampftreffern, bis zu "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal. Jeder Stapel hält "..CNumb("{time:%s}", "time_var_rgb").." Sekunden. {#color(255, 35, 5)}BUG: 5% auf allen Stufen.{#reset()}"..CNote("Pwr_note"),
			it = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." in Corpo a Corpo per accumulo. Si accumula con colpi concatenati in mischia, fino a "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte. Ogni accumulo dura "..CNumb("{time:%s}", "time_var_rgb").." sec. {#color(255, 35, 5)}BUG: 5% su tutti i livelli.{#reset()}"..CNote("Pwr_note"),
			ja = "近接連続ヒットでスタック獲得。スタックごとに近接"..CKWord("威力", "Strength_rgb_ja").." "..CNumb("{power:%s}", "pwr_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。持続時間 "..CNumb("{time:%s}", "time_var_rgb").."秒。 {#color(255, 35, 5)}バグ：全ティア5%{#reset()}"..CNote("Pwr_note"),
			ko = "근접 연속 공격 시 중첩을 얻습니다. 중첩당 근접 "..CKWord("위력", "Strength_rgb_ko").." "..CNumb("{power:%s}", "pwr_var_rgb").." 증가. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩. 지속 "..CNumb("{time:%s}", "time_var_rgb").."초. {#color(255, 35, 5)}버그: 모든 단계 5%{#reset()}"..CNote("Pwr_note"),
			pl = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." w Walce Wręcz na ładunek. Ładunki zyskuje się przy kolejnych trafieniach w walce wręcz, maks. "..CNumb("{stacks:%s}", "stacks_var_rgb")..". Każdy ładunek trwa "..CNumb("{time:%s}", "time_var_rgb").." sek. {#color(255, 35, 5)}Błąd: 5% na wszystkich poziomach.{#reset()}"..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." Corpo a Corpo por acúmulo. Acumula em acertos consecutivos corpo a corpo, até "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes. Cada acúmulo dura "..CNumb("{time:%s}", "time_var_rgb").." seg. {#color(255, 35, 5)}BUG: 5% em todos os níveis.{#reset()}"..CNote("Pwr_note"),
			es = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." Cuerpo a Cuerpo por acumulación. Se acumula con golpes encadenados cuerpo a cuerpo, hasta "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces. Cada acumulación dura "..CNumb("{time:%s}", "time_var_rgb").." seg. {#color(255, 35, 5)}BUG: 5% en todos los niveles.{#reset()}"..CNote("Pwr_note"),
		},
		--[+ PULVERISE +]-- ruof Пульверизация	20.04.2026
		-- Crit Chance (per tier)
		-- Grenadier Gauntlet -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_crit_chance_on_melee_kill_desc"] = { -- crit_chance: +25%, time: 3, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Melee Kill.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при убийстве в ближнем бою.", -- Измельчение
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un élimination en mélée.",
			["zh-tw"] = "近戰擊殺時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			["zh-cn"] = "臂铠近战攻击击杀敌人时\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。",
			de = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek. nach einem Nahkampf-Kill.",
			it = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilità di critico", "Crit_chance_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." sec. dopo un'Uccisione in Corpo a Corpo.",
			ja = "近接キル時、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."が "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 増加。",
			ko = "근접 처치 시 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko").."이 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 증가합니다.",
			pl = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Szansa na krytyka", "Crit_chance_rgb_pl").." przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po Zabójstwie w Walce Wręcz.",
			["pt-br"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos após um Abate Corpo a Corpo.",
			es = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos tras una Muerte Cuerpo a Cuerpo.",
		},
		--[+ DISRUPTIVE +]-- ruof Разрывной эффект	20.04.2026
		-- Melee Power (per tier)
		-- Grenadier Gauntlet -- 15% | 20% | 25% | 30%
		["loc_trait_bespoke_melee_power_bonus_after_explosion_desc"] = { -- power_level: 30%, time: 3.5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds after hitting at least "..CNumb("3", "n_3_rgb").." enemies with a Secondary Attack. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в ближнем бою на "..CNumb("{time:%s}", "time_var_rgb").." секунды после попадания по "..CNumb("3", "n_3_rgb").." и более врагам тяжёлой атакой. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			fr = "Toucher au moins "..CNumb("3", "n_3_rgb").." ennemies avec votre attaque secondaire vous octroie "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour vos attaque de mélée pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes."..CNote("Pwr_note"),
			["zh-tw"] = "當次要攻擊命中至少 "..CNumb("3", "n_3_rgb").." 名敵人時，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("近戰威力", "Strength_m_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			["zh-cn"] = "次要攻击命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 近战"..CKWord("强度", "Strength_rgb_zh_cn").."，持续"..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			de = "Das Treffen von mindestens "..CNumb("3", "n_3_rgb").." Gegnern mit eurem Sekundärangriff gewährt "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Nahkampf-"..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sek."..CNote("Pwr_note"),
			it = "Colpire almeno "..CNumb("3", "n_3_rgb").." nemici con l'Attacco Secondario garantisce "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." in Corpo a Corpo per "..CNumb("{time:%s}", "time_var_rgb").." sec."..CNote("Pwr_note"),
			ja = "セカンダリ攻撃で "..CNumb("3", "n_3_rgb").." 体以上の敵に命中すると、"..CNumb("{time:%s}", "time_var_rgb").."秒間、近接"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = "보조 공격으로 최소 "..CNumb("3", "n_3_rgb").."명의 적을 적중시키면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 근접 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = "Trafienie co najmniej "..CNumb("3", "n_3_rgb").." wrogów Atakiem Specjalnym daje "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." w Walce Wręcz na "..CNumb("{time:%s}", "time_var_rgb").." sek."..CNote("Pwr_note"),
			["pt-br"] = "Atingir pelo menos "..CNumb("3", "n_3_rgb").." inimigos com seu Ataque Secundário concede "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." Corpo a Corpo por "..CNumb("{time:%s}", "time_var_rgb").." seg."..CNote("Pwr_note"),
			es = "Golpear al menos a "..CNumb("3", "n_3_rgb").." enemigos con tu Ataque Secundario otorga "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." Cuerpo a Cuerpo durante "..CNumb("{time:%s}", "time_var_rgb").." seg."..CNote("Pwr_note"),
		},
		--[+ EXPLOSIVE OFFENSIVE +]-- ruof Взрывное наступление	20.04.2026
		-- Power (per tier)
		-- Grenadier Gauntlet -- 6% | 9% | 12% | 15%
		["loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc"] = { -- power_level: 15%, time: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds after hitting multiple enemies with your Weapon Special explosion. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд после попадания взрывом специальной атаки по нескольким врагам. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." bonus pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes après avoir touché plusieurs ennemies avec l'explosion spéciale de votre arme."..CNote("Pwr_note"),
			["zh-tw"] = "特殊攻擊的爆炸命中多名敵人時，\n "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			["zh-cn"] = "特殊攻击爆炸命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。持续"..CNumb("{time:%s}", "time_var_rgb").."秒。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden, nachdem mehrere Gegner von der Spezialangriffsexplosion getroffen wurden."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per "..CNumb("{time:%s}", "time_var_rgb").." secondi dopo aver colpito più nemici con l'esplosione dell'Attacco Speciale dell'arma."..CNote("Pwr_note"),
			ja = "武器特殊攻撃の爆発が複数の敵に命中すると、"..CNumb("{time:%s}", "time_var_rgb").."秒間"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = "무기 특수 공격 폭발이 여러 적에게 적중하면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." na "..CNumb("{time:%s}", "time_var_rgb").." sekund po trafieniu wielu wrogów eksplozją Ataku Specjalnego Broni."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." por "..CNumb("{time:%s}", "time_var_rgb").." segundos após atingir múltiplos inimigos com a explosão do Ataque Especial da arma."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." durante "..CNumb("{time:%s}", "time_var_rgb").." segundos tras golpear a varios enemigos con la explosión del Ataque Especial del arma."..CNote("Pwr_note"),
		},
		--[+ PINPOINTING TARGET +]-- ruof Определение цели	20.04.2026
		-- Power per stack (per tier)
		-- Grenadier Gauntlet, Shotpistol and Shield -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_power_bonus_based_on_charge_time_ranged_desc"] = { -- power_level: +8%, time: 0.4, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." every "..CNumb("{time:%s}", "time_var_rgb").." seconds while aiming. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Removes all Stacks on shot, on push, or when leaving alt fire mode. "
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." каждые "..CNumb("{time:%s}", "time_var_rgb").." секунды пока вы целитесь. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. Все заряды сбрасываются при выстреле, толкании или выходе из режима прицеливания.",
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." toutes les "..CNumb("{time:%s}", "time_var_rgb").." secondes pendant la visée. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Tous les cumuls sont déchargés lorsque vous tirez."..CNote("Pwr_note"),
			["zh-tw"] = "持續瞄準時，\n每 "..CNumb("{time:%s}", "time_var_rgb").." 秒 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。射擊後會重置所有層數。"..CNote("Pwr_note"),
			["zh-cn"] = "瞄准期间，每 "..CNumb("{time:%s}", "time_var_rgb").." 秒 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层，射击后清空所有层数。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." alle "..CNumb("{time:%s}", "time_var_rgb").." Sek. beim Zielen. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal. Verliert alle Stapel beim Schießen oder Verlassen des Zielmodus."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." ogni "..CNumb("{time:%s}", "time_var_rgb").." secondi durante la mira. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte. Tutti gli accumuli si perdono sparando o uscendo dalla mira."..CNote("Pwr_note"),
			ja = "照準中、"..CNumb("{time:%s}", "time_var_rgb").."秒ごとに"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。射撃または照準解除で全スタック消失。"..CNote("Pwr_note"),
			ko = "조준 중 "..CNumb("{time:%s}", "time_var_rgb").."초마다 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩. 사격 또는 조준 해제 시 모든 중첩이 사라집니다."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." co "..CNumb("{time:%s}", "time_var_rgb").." sek. podczas celowania. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy. Wszystkie ładunki tracone przy strzale lub opuszczeniu celowania."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." a cada "..CNumb("{time:%s}", "time_var_rgb").." segundos mirando. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes. Todos os acúmulos são perdidos ao atirar ou sair da mira."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." cada "..CNumb("{time:%s}", "time_var_rgb").." segundos apuntando. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces. Pierde todas las acumulaciones al disparar o dejar de apuntar."..CNote("Pwr_note"),
		},
		--[+ CHARMED RELOAD +]-- ruof Зачарованная перезарядка	20.04.2026
		-- Bullets Transferred (per tier)
		-- Twin-Linked Stubbers -- 2 | 3 | 4 | 5
		["loc_trait_bespoke_ammo_refill_from_reserve_on_crit_desc"] = { -- bullet_amount: +5, +colors
			en = CNumb("{bullet_amount:%s}", "blltam_var_rgb").." bullets loaded from Reserve on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_nc.." Procs once per "..CKWord("Crit", "Crit_rgb")..". The shot does not need to hit an enemy.",
			ru = CNumb("{bullet_amount:%s}", "blltam_var_rgb").." патронов заряжается из резерва при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..Dot_nc.." Срабатывает раз за "..CKWord("критический выстрел", "krit_vystrel_rgb_ru")..". Выстрелу не обязательно попадать во врага.",
			fr = CNumb("+", "n_plus_rgb")..CNumb("{bullet_amount:%s}", "blltam_var_rgb").." Munitions chargées depuis la réserve lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".",
			["zh-tw"] = CKWord("暴擊命中", "Crit_hit_rgb_tw").." ，從備彈中補充 "..CNumb("{bullet_amount:%s}", "blltam_var_rgb").." 發子彈。",
			["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时，从弹药储备填装 "..CNumb("{bullet_amount:%s}", "blltam_var_rgb").." 枚弹药。",
			de = CNumb("{bullet_amount:%s}", "blltam_var_rgb").." Schuss aus der Reserve bei einem "..CKWord("Kritischen Treffer", "Crit_hit_rgb_de").." geladen.",
			it = CNumb("{bullet_amount:%s}", "blltam_var_rgb").." colpi caricati dalla Riserva con un "..CKWord("Colpo Critico", "Crit_hit_rgb_it")..".",
			ja = CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、予備弾薬から "..CNumb("{bullet_amount:%s}", "blltam_var_rgb").." 発補充。",
			ko = CKWord("크리티컬 적중", "Crit_hit_rgb_ko").." 시 예비 탄약에서 "..CNumb("{bullet_amount:%s}", "blltam_var_rgb").." 발을 장전합니다.",
			pl = CNumb("{bullet_amount:%s}", "blltam_var_rgb").." naboi załadowanych z Rezerwy przy "..CKWord("Krytycznym Trafieniu", "Crit_hit_rgb_pl")..".",
			["pt-br"] = CNumb("{bullet_amount:%s}", "blltam_var_rgb").." balas carregadas da Reserva em um "..CKWord("Acerto Crítico", "Crit_hit_rgb_pt_br")..".",
			es = CNumb("{bullet_amount:%s}", "blltam_var_rgb").." balas cargadas de la Reserva en un "..CKWord("Golpe Crítico", "Crit_hit_rgb_es")..".",
		},
		--[+ OVERWHELMING FIRE +]-- ruof Огонь на поражение	20.04.2026
		-- Ranged Power per stack (per tier)
		-- Heavy Stubbers, Twin-Linked Stubbers -- 7% | 8% | 9% | 10% (up to +50%)
		["loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target_desc"] = { -- power: +10%, hit: 4, time: 2, stacks: 5, s->seconds, +colors
			en = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for every "..CNumb("{hit:%s}", "hit_var_rgb").." Single Target Hits. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power:%s}", "pwr_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за каждое "..CNumb("{hit:%s}", "hit_var_rgb").." попадание по одному врагу. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунды. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Подавляющий огонь
			fr = CNumb("{power:%s}", "pwr_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour toutes les "..CNumb("{hit:%s}", "hit_var_rgb").." attaques sur une cible unique. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes et se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			["zh-tw"] = "每命中同一目標 "..CNumb("{hit:%s}", "hit_var_rgb").." 次 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"),
			["zh-cn"] = "每命中同一敌人 "..CNumb("{hit:%s}", "hit_var_rgb").." 次 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"),
			de = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Stärke", "Strength_rgb_de").." für je "..CNumb("{hit:%s}", "hit_var_rgb").." Treffer auf ein einzelnes Ziel. Hält "..CNumb("{time:%s}", "time_var_rgb").." Sek. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal."..CNote("Pwr_note"),
			it = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." per ogni "..CNumb("{hit:%s}", "hit_var_rgb").." Colpi su un Singolo Bersaglio. Dura "..CNumb("{time:%s}", "time_var_rgb").." sec. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte."..CNote("Pwr_note"),
			ja = "同一敵に "..CNumb("{hit:%s}", "hit_var_rgb").." 発命中するごとに、"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power:%s}", "pwr_var_rgb").." 増加。持続 "..CNumb("{time:%s}", "time_var_rgb").."秒。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。"..CNote("Pwr_note"),
			ko = "동일 대상에게 "..CNumb("{hit:%s}", "hit_var_rgb").."회 적중할 때마다 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power:%s}", "pwr_var_rgb").." 증가합니다. 지속 "..CNumb("{time:%s}", "time_var_rgb").."초. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩."..CNote("Pwr_note"),
			pl = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." za każde "..CNumb("{hit:%s}", "hit_var_rgb").." Trafienia w Pojedynczy Cel. Trwa "..CNumb("{time:%s}", "time_var_rgb").." sek. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." para cada "..CNumb("{hit:%s}", "hit_var_rgb").." Acertos no Mesmo Alvo. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes."..CNote("Pwr_note"),
			es = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." por cada "..CNumb("{hit:%s}", "hit_var_rgb").." Golpes al Mismo Objetivo. Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces."..CNote("Pwr_note"),
		},
		--[+ CAN OPENER +]-- ruof Открывашка	20.04.2026
		-- Brittleness Stacks (per tier)
		-- Ripper Guns -- 10 | 12 | 14 | 16
		["loc_trait_bespoke_armor_rending_bayonette_desc"] = { -- rending: 2.5%, stacks: 16, time: 5, max_stacks: 16, s->seconds, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." is applied to the enemy on weapon Special Hit. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..".\n"
				..CNote("Brtl_note"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони применяется к врагу при ударе специальной атакой. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. До "..CNumb("40%", "pc_40_rgb").." при "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядах. "
				..CNote("Brtl_note"),
			fr = "Toucher un ennemi avec l'attaque spéciale lui octroie "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Fragilité", "Brittleness_rgb_fr")..". Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes. Pour un maximum de "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls, Pour un total de "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["zh-tw"] = "特殊攻擊命中敵人時，\n使其獲得 "..CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒， "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層時為 "..CNumb("40%", "pc_40_rgb").." 。"..CNote("Brtl_note"),
			["zh-cn"] = "特殊攻击命中时，对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			de = "Ein Treffer mit dem Spezialangriff verleiht dem Ziel "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Sprödigkeit", "Brittleness_rgb_de")..". Hält "..CNumb("{time:%s}", "time_var_rgb").." Sek. Maximal "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stapel, insgesamt bis zu "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			it = "Colpire un nemico con l'attacco speciale gli infligge "..CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilità", "Brittleness_rgb_it")..". Dura "..CNumb("{time:%s}", "time_var_rgb").." sec. Massimo "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." accumuli, fino al "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			ja = "特殊攻撃を命中させると、敵に "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_ja").."を "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック付与。持続 "..CNumb("{time:%s}", "time_var_rgb").."秒。最大 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." スタック、合計 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"),
			ko = "특수 공격 적중 시 적에게 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("취약", "Brittleness_rgb_ko").."을 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩 부여합니다. "..CNumb("{time:%s}", "time_var_rgb").."초 지속. 최대 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 중첩, 최대 "..CNumb("40%", "pc_40_rgb").." 증가."..CNote("Brtl_note"),
			pl = "Trafienie wroga Atakiem Specjalnym nakłada "..CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Kruchości", "Brittleness_rgb_pl")..". Trwa "..CNumb("{time:%s}", "time_var_rgb").." sek. Maks. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." ładunków, łącznie do "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			["pt-br"] = "Acertar um inimigo com o ataque especial aplica "..CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidade", "Brittleness_rgb_pt_br")..". Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acúmulos, até "..CNumb("40%", "pc_40_rgb").." no total."..CNote("Brtl_note"),
			es = "Golpear a un enemigo con el ataque especial aplica "..CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilidad", "Brittleness_rgb_es")..". Dura "..CNumb("{time:%s}", "time_var_rgb").." seg. Máx. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." acumulaciones, hasta un "..CNumb("40%", "pc_40_rgb").." en total."..CNote("Brtl_note"),
		},
		--[+ BORN IN BLOOD +]-- ruof Рожденный в крови	20.04.2026
		-- Max Toughness Percentage (per tier)
		-- Dual Stub Pistols, Exterminator Shotguns, Ripper Guns -- 4.5% | 5% | 5.5% | 6%
		["loc_trait_bespoke_toughness_on_close_range_kills_desc"] = { -- toughness: +6%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." on killing enemies within "..CNumb("12.5", "n_12_5_rgb").." meters. "
				..Dot_green.." Can proc multiple times per shot.",
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." при убийстве на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров. "
				..Dot_green.." Может срабатывать несколько раз за выстрел.", -- Рождённый в крови
			fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres.",
			["zh-tw"] = CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。",
			["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时，"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。",
			de = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").." bei einem Kill innerhalb von "..CNumb("12.5", "n_12_5_rgb").." Metern.",
			it = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Tempra", "Toughness_rgb_it").." dopo un'uccisione entro "..CNumb("12.5", "n_12_5_rgb").." metri.",
			ja = CNumb("12.5", "n_12_5_rgb").."メートル以内の敵をキルすると、"..CKWord("タフネス", "Toughness_rgb_ja").."が "..CNumb("{toughness:%s}", "tghns_var_rgb").." 回復。",
			ko = CNumb("12.5", "n_12_5_rgb").."미터 이내의 적을 처치하면 "..CKWord("강인함", "Toughness_rgb_ko").."이 "..CNumb("{toughness:%s}", "tghns_var_rgb").." 회복됩니다.",
			pl = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Wytrzymałości", "Toughness_rgb_pl").." przy zabiciu wroga w odległości do "..CNumb("12.5", "n_12_5_rgb").." metrów.",
			["pt-br"] = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br").." ao matar inimigos a até "..CNumb("12.5", "n_12_5_rgb").." metros.",
			es = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Aguante", "Toughness_rgb_es").." al matar a un enemigo a "..CNumb("12.5", "n_12_5_rgb").." metros o menos.",
		},
		--[+ PIERCE +]-- ruof Прокол	20.04.2026
		-- Melee Stagger Strength (per tier)
		-- Kickback, Rumbler -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger_desc"] = { -- stagger: +25%, +colors
			en = "Special Attacks gain "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Stagger", "Stagger_rgb").." and ignore "..CKWord("Hit Mass", "Hit_mass_rgb").." Bonus from Armour.\n"
				..Dot_green.." Carapace armor can be "..CKWord("Cleaved", "Cleaved_rgb")..".",
			ru = "Специальные атаки дают "..CNumb("{stagger:%s}", "stgr_var_rgb").." к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." и игнорируют усиления "..CKWord("ударной массы", "udarn_massy_rgb_ru").." врага от брони.\n"
				..Dot_green.." Панцирная броня "..CKWord("простреливается", "prostrelivaetsa_rgb_ru")..".", -- Пробивание
			fr = "L'attaque spéciale gagne "..CNumb("{stagger:%s}", "stgr_var_rgb").." de "..CKWord("Vacillement", "Stagger_rgb_fr").." et ignore le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." de l'armure.",
			["zh-tw"] = "武器特殊攻擊可無視敵方護甲 "..CKWord("順劈目標", "Hit_mass_rgb_tw").."，\n並附加 "..CNumb("{stagger:%s}", "stgr_var_rgb").." 的 "..CKWord("踉蹌效果", "Stagger2_rgb_tw").." 。",
			["zh-cn"] = "特殊攻击 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，\n同时无视装甲赋予的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"),
			de = "Spezialangriffe erhalten "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Wucht", "Stagger_rgb_de").." und ignorieren den "..CKWord("Treffermasse", "Hit_mass_rgb_de").."-Bonus durch Rüstung.",
			it = "L'Attacco Speciale ottiene "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Barcollamento", "Stagger_rgb_it").." e ignora il bonus di "..CKWord("Massa Impatto", "Hit_mass_rgb_it").." dell'armatura.",
			ja = "特殊攻撃の"..CKWord("スタッガー", "Stagger_rgb_ja").."効果が "..CNumb("{stagger:%s}", "stgr_var_rgb").." 増加し、装甲による"..CKWord("ヒットマス", "Hit_mass_rgb_ja").."ボーナスを無視。",
			ko = "특수 공격의 "..CKWord("스태거", "Stagger_rgb_ko").." 효과가 "..CNumb("{stagger:%s}", "stgr_var_rgb").." 증가하고, 방어구의 "..CKWord("충돌 질량", "Hit_mass_rgb_ko").." 보너스를 무시합니다.",
			pl = "Ataki Specjalne zyskują "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Oszołomienia", "Stagger_rgb_pl").." i ignorują premię do "..CKWord("Masy Trafienia", "Hit_mass_rgb_pl").." z pancerza.",
			["pt-br"] = "Ataques Especiais ganham "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Cambaleio", "Stagger_rgb_pt_br").." e ignoram o bônus de "..CKWord("Massa de Impacto", "Hit_mass_rgb_pt_br").." da armadura.",
			es = "Los Ataques Especiales ganan "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Tambaleo", "Stagger_rgb_es").." e ignoran el bono de "..CKWord("Masa de Golpe", "Hit_mass_rgb_es").." de la armadura.",
		},
		--[+ PUNISHING FIRE +]-- ruof Карательный обстрел	20.04.2026
		-- Ranged Power (per tier)
		-- Kickback -- 6% | 9% | 12% | 15%
		["loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave_desc"] = { -- power_level: +15%, time: 3, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on your Ranged attack for "..CNumb("{time:%s}", "time_var_rgb").." seconds after "..CKWord("Cleaving", "Cleaving_rgb").." through several enemies with your weapon's Special attack. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." для ваших дальнобойных атак на "..CNumb("{time:%s}", "time_var_rgb").." секунды после того как специальная атака вашего оружия пробивает несколько врагов.\n"
				..CPhrs("Can_be_refr"),
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." sur vos attaques à distance pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes après avoir "..CKWord("Transpercé", "Cleaving_rgb_fr").." plusieurs ennemies avec l'attaque spéciale de votre arme."..CNote("Pwr_note"),
			["zh-tw"] = "特殊攻擊貫穿(順劈)多名敵人\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("遠程威力", "Strength_r_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			["zh-cn"] = "特殊攻击命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 远程"..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Fernkampf-"..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden, nachdem mehrere Gegner mit dem Spezialangriff durchschlagen wurden."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." a Distanza per "..CNumb("{time:%s}", "time_var_rgb").." secondi dopo aver "..CKWord("Fendente", "Cleaving_rgb_it").." diversi nemici con l'attacco speciale dell'arma."..CNote("Pwr_note"),
			ja = "武器特殊攻撃で複数の敵を"..CKWord("薙ぎ払う", "Cleaving_rgb_ja").."と、"..CNumb("{time:%s}", "time_var_rgb").."秒間、遠隔"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = "무기 특수 공격으로 여러 적을 "..CKWord("베어넘긴", "Cleaving_rgb_ko").." 후 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 원거리 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." na Dystans przez "..CNumb("{time:%s}", "time_var_rgb").." sek. po "..CKWord("Przebiciu", "Cleaving_rgb_pl").." wielu wrogów Atakiem Specjalnym Broni."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." à Distância por "..CNumb("{time:%s}", "time_var_rgb").." segundos após "..CKWord("Cortar", "Cleaving_rgb_pt_br").." vários inimigos com o Ataque Especial da arma."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." a Distancia durante "..CNumb("{time:%s}", "time_var_rgb").." segundos tras "..CKWord("Hender", "Cleaving_rgb_es").." a varios enemigos con el Ataque Especial del arma."..CNote("Pwr_note"),
		},
		--[+ INSPIRING BARRAGE +]-- ALT OGRYN ruof Вдохновляющий натиск	20.04.2026
		-- Max Toughness Percentage per stack (per tier)
		-- Kickback -- 1% | 2% | 3% | 4% (up to 20%)
		["loc_trait_bespoke_toughness_on_continuous_fire_alternative_desc"] = { -- toughness: +4%, ammo: 10%, stacks: 5, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." for every shot fired during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Вдохновляющий обстрел
			fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." pour chaque tir lors d'un tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "持續射擊時，每射一發恢復 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "连续射击期间，每次射击回复"..CKWord("韧性", "Toughness_rgb_zh_cn")..",\n每叠加 "..CNumb("1", "n_1_rgb").." 层，"..CKWord("韧性", "Toughness_rgb_zh_cn").."回复效果 "..CNumb("{toughness:%s}", "tghns_var_rgb").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").." für jeden Schuss bei Dauerfeuer. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Tempra", "Toughness_rgb_it").." per ogni colpo sparato durante il fuoco continuo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続射撃中、一発撃つごとに"..CKWord("タフネス", "Toughness_rgb_ja").."が "..CNumb("{toughness:%s}", "tghns_var_rgb").." 回復。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。",
			ko = "연속 사격 중 매 발사 시 "..CKWord("강인함", "Toughness_rgb_ko").."이 "..CNumb("{toughness:%s}", "tghns_var_rgb").." 회복됩니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩.",
			pl = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Wytrzymałości", "Toughness_rgb_pl").." za każdy strzał podczas ognia ciągłego. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br").." para cada disparo durante fogo contínuo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Aguante", "Toughness_rgb_es").." por cada disparo durante fuego continuo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ EXPANSIVE +]-- ruof Расширение	20.04.2026
		-- Melee Power (per tier)
		-- Kickback -- 30% | 34% | 38% | 42%
		["loc_trait_bespoke_weapon_special_power_bonus_after_one_shots_desc"] = { -- power_level: +42%, time: 3.5, s->seconds, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Hitting "..CNumb("3", "n_3_rgb")..CNumb("+", "n_plus_rgb").." Enemies with a Ranged Attack.\n"
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." ближнего боя на "..CNumb("{time:%s}", "time_var_rgb").." секунды при попадании по "..CNumb("3", "n_3_rgb").." и более врагам атакой дальнего боя.\n"
				..CPhrs("Can_be_refr"), -- Экспансивный
			fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." de mélée pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en touchant au moins "..CNumb("3", "n_3_rgb").." ennemies avec une attaque à distance."..CNote("Pwr_note"),
			["zh-tw"] = "遠程攻擊同時命中 "..CNumb("3", "n_3_rgb").." 名以上敵人\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("近戰威力", "Strength_m_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			["zh-cn"] = "命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 近战"..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"),
			de = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Nahkampf-"..CKWord("Stärke", "Strength_rgb_de").." für "..CNumb("{time:%s}", "time_var_rgb").." Sekunden, wenn mindestens "..CNumb("3", "n_3_rgb").." Gegner mit einem Fernkampfangriff getroffen werden."..CNote("Pwr_note"),
			it = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potenza", "Strength_rgb_it").." in Corpo a Corpo per "..CNumb("{time:%s}", "time_var_rgb").." sec. colpendo almeno "..CNumb("3", "n_3_rgb").." nemici con un attacco a distanza."..CNote("Pwr_note"),
			ja = "遠隔攻撃で "..CNumb("3", "n_3_rgb").." 体以上の敵に命中すると、"..CNumb("{time:%s}", "time_var_rgb").."秒間、近接"..CKWord("威力", "Strength_rgb_ja").."が "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 増加。"..CNote("Pwr_note"),
			ko = "원거리 공격으로 "..CNumb("3", "n_3_rgb").."명 이상의 적을 적중시키면 "..CNumb("{time:%s}", "time_var_rgb").."초 동안 근접 "..CKWord("위력", "Strength_rgb_ko").."이 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 증가합니다."..CNote("Pwr_note"),
			pl = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Siły", "Strength_rgb_pl").." w Walce Wręcz na "..CNumb("{time:%s}", "time_var_rgb").." sek. po trafieniu co najmniej "..CNumb("3", "n_3_rgb").." wrogów Atakiem Dystansowym."..CNote("Pwr_note"),
			["pt-br"] = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potência", "Strength_rgb_pt_br").." Corpo a Corpo por "..CNumb("{time:%s}", "time_var_rgb").." segundos ao atingir pelo menos "..CNumb("3", "n_3_rgb").." inimigos com um ataque à Distância."..CNote("Pwr_note"),
			es = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Potencia", "Strength_rgb_es").." Cuerpo a Cuerpo durante "..CNumb("{time:%s}", "time_var_rgb").." segundos al golpear al menos a "..CNumb("3", "n_3_rgb").." enemigos con un ataque a Distancia."..CNote("Pwr_note"),
		},
		--[+ SHRAPNEL +]-- ruof Шрапнель	20.04.2026
		-- Bleed Stacks (per tier)
		-- Rumbler -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_close_explosion_applies_bleed_desc"] = { -- stacks: 4, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks applied to enemies from close range explosions. "
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks.\n"..Dot_green.." Can apply through shields. "..CPhrs("Refr_dur_stappl"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." получают враги от взрывов на близком расстоянии. "
				..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов. "..Dot_green.." Накладывается через щиты. "..CPhrs("Refr_dur_stappl"),
			fr = CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." avec les explosions rapprochées.",
			["zh-tw"] = CNumb("12.5", "n_12_5_rgb").." 公尺內的爆炸會施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").."。",
			["zh-cn"] = "低吼者的榴弹爆炸中心范围 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CKWord("流血", "Bleed_rgb_zh_cn").."。",
			de = CNumb("{stacks:%s}", "stacks_var_rgb").." Stapel "..CKWord("Blutung", "Bleed_rgb_de").." durch Explosionen auf kurze Distanz.",
			it = CNumb("{stacks:%s}", "stacks_var_rgb").." accumuli di "..CKWord("Sanguinamento", "Bleed_rgb_it").." con esplosioni a corto raggio.",
			ja = "近距離爆発により、敵に "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタックの"..CKWord("出血", "Bleed_rgb_ja").."を付与。",
			ko = "근거리 폭발로 적에게 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩의 "..CKWord("출혈", "Bleed_rgb_ko").."을 부여합니다.",
			pl = CNumb("{stacks:%s}", "stacks_var_rgb").." ładunków "..CKWord("Krwawienia", "Bleed_rgb_pl").." przy eksplozjach z bliskiego zasięgu.",
			["pt-br"] = CNumb("{stacks:%s}", "stacks_var_rgb").." acúmulos de "..CKWord("Sangramento", "Bleed_rgb_pt_br").." com explosões de curto alcance.",
			es = CNumb("{stacks:%s}", "stacks_var_rgb").." acumulaciones de "..CKWord("Sangrado", "Bleed_rgb_es").." con explosiones a corta distancia.",
		},
		--[+ BLAST ZONE +]-- ruof Зона взрыва	20.04.2026
		-- Explosion Radius Increase per stack (per tier)
		-- Rumbler -- 3% | 4% | 5% | 6% (up to +30%)
		["loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire_desc"] = { -- radius: +6%, stacks: 5, +colors
			en = CNumb("{radius:%s}", "radius_var_rgb").." Explosion Radius for every shot fired during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{radius:%s}", "radius_var_rgb").." к радиусу взрыва за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется до "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.",
			fr = CNumb("{radius:%s}", "radius_var_rgb").." de rayon d'explosion pour chaque tir d'un tir continue. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "持續射擊時，\n每發可使爆炸半徑 "..CNumb("{radius:%s}", "radius_var_rgb").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。",
			["zh-cn"] = "连续射击期间，每次射击"..CNumb("{radius:%s}", "radius_var_rgb").."爆炸范围。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。",
			de = CNumb("{radius:%s}", "radius_var_rgb").." Explosionsradius für jeden Schuss bei Dauerfeuer. Stapelt "..CNumb("{stacks:%s}", "stacks_var_rgb").." Mal.",
			it = CNumb("{radius:%s}", "radius_var_rgb").." Raggio di Esplosione per ogni colpo sparato durante il fuoco continuo. Cumulabile "..CNumb("{stacks:%s}", "stacks_var_rgb").." volte.",
			ja = "連続射撃中、一発撃つごとに爆発半径が "..CNumb("{radius:%s}", "radius_var_rgb").." 増加。最大 "..CNumb("{stacks:%s}", "stacks_var_rgb").." スタック。",
			ko = "연속 사격 중 매 발사 시 폭발 반경이 "..CNumb("{radius:%s}", "radius_var_rgb").." 증가합니다. 최대 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 중첩.",
			pl = CNumb("{radius:%s}", "radius_var_rgb").." Promienia Wybuchu za każdy strzał podczas ognia ciągłego. Kumuluje się "..CNumb("{stacks:%s}", "stacks_var_rgb").." razy.",
			["pt-br"] = CNumb("{radius:%s}", "radius_var_rgb").." de Raio de Explosão para cada disparo durante fogo contínuo. Acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." vezes.",
			es = CNumb("{radius:%s}", "radius_var_rgb").." de Radio de Explosión por cada disparo durante fuego continuo. Se acumula "..CNumb("{stacks:%s}", "stacks_var_rgb").." veces.",
		},
		--[+ ADHESIVE CHARGE +]-- ruof Цепной заряд	20.04.2026
		-- Damage vs Ogryns and Monstrosities (per tier)
		-- Rumbler -- 6% | 9% | 12% | 15%
		["loc_trait_bespoke_grenades_stick_to_monsters_and_damage_desc"] = { -- dmg_vs_ogryn_monster: +15%, +colors
			en = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Ogryns and Monstrosities. Your Grenades Stick to Ogryns and Monstrosities.",
			ru = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." огринам и монстрам. Ваши гранаты прилипают к ним.", -- Липкий заряд
			fr = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les Ogryns et les Monstruosités. Vos grenades s'accrochent aux Ogryns et Monstrosities.",
			["zh-tw"] = "對歐格林與巨獸的 "..CKWord("傷害", "Damage_rgb_tw").." "..CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").."，\n且你的手榴彈會黏附在歐格林與怪物身上。",
			["zh-cn"] = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." 对欧格林和怪物"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n低吼者的榴弹会粘在欧格林和怪物身上。",
			de = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." gegen Ogryns und Monstrositäten. Eure Granaten bleiben an Ogryns und Monstrositäten kleben.",
			it = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." "..CKWord("Danno", "Damage_rgb_it").." contro Ogryn e Mostruosità. Le tue granate aderiscono a Ogryn e Mostruosità.",
			ja = "オグリンと怪物への"..CKWord("ダメージ", "Damage_rgb_ja").."が "..CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." 増加。グレネードがオグリンと怪物に粘着する。",
			ko = "오그린 및 괴수에게 "..CKWord("피해", "Damage_rgb_ko").." "..CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." . 수류탄이 오그린과 괴수에게 점착됩니다.",
			pl = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." "..CKWord("Obrażeń", "Damage_rgb_pl").." przeciwko Ogrynom i Monstrum. Twoje granaty przyklejają się do Ogrynów i Monstrów.",
			["pt-br"] = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." "..CKWord("Dano", "Damage_rgb_pt_br").." contra Ogryns e Monstruosidades. Suas granadas grudam em Ogryns e Monstruosidades.",
			es = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." "..CKWord("Daño", "Damage_rgb_es").." contra Ogretes y Monstruosidades. Tus granadas se adhieren a Ogretes y Monstruosidades.",
		},
		--[+ MARKSMAN'S REFLEX +]-- ruof Рефлекс стрелка	20.04.2026
		-- Reload Speed (per tier)
		-- Rumbler -- 15% | 20% | 25% | 30%
		["loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed_desc"] = { -- reload_speed: +30%, duration: 3, +colors
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds on Projectile "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". "
				..Dot_red.." Cannot be refreshed during active duration.",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки на "..CNumb("{duration:%s}", "dur_var_rgb").." секунды при попадании снаряда в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". "
				..Dot_red.." Не обновляется во время действия.",
			fr = CNumb("{reload_speed:%s}", "reload_var_rgb").." de vitesse de rechargement pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			["zh-tw"] = "當子彈命中 "..CKWord("弱點", "Weakspot_rgb_tw").." 時 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 換彈速度，\n持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。",
			["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度，持续"..CNumb("{duration:%s}", "dur_var_rgb").."秒。",
			de = CNumb("{reload_speed:%s}", "reload_var_rgb").." Nachladegeschwindigkeit für "..CNumb("{duration:%s}", "dur_var_rgb").." Sek. bei einem Projektil-"..CKWord("Schwachstellentreffer", "Weakspothit_rgb_de")..".",
			it = CNumb("{reload_speed:%s}", "reload_var_rgb").." Velocità di Ricarica per "..CNumb("{duration:%s}", "dur_var_rgb").." sec. con un "..CKWord("Colpo a Punto Debole", "Weakspothit_rgb_it").." da proiettile.",
			ja = "弾丸が"..CKWord("弱点ヒット", "Weakspothit_rgb_ja").."すると、"..CNumb("{duration:%s}", "dur_var_rgb").."秒間リロード速度が "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 増加。",
			ko = "탄환이 "..CKWord("약점 적중", "Weakspothit_rgb_ko").." 시 "..CNumb("{duration:%s}", "dur_var_rgb").."초 동안 재장전 속도가 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 증가합니다.",
			pl = CNumb("{reload_speed:%s}", "reload_var_rgb").." Prędkości Przeładowania na "..CNumb("{duration:%s}", "dur_var_rgb").." sek. po Trafieniu Pociskiem w "..CKWord("Słaby Punkt", "Weakspothit_rgb_pl")..".",
			["pt-br"] = CNumb("{reload_speed:%s}", "reload_var_rgb").." de Velocidade de Recarga por "..CNumb("{duration:%s}", "dur_var_rgb").." segundos ao Acertar um Projétil em "..CKWord("Ponto Fraco", "Weakspothit_rgb_pt_br")..".",
			es = CNumb("{reload_speed:%s}", "reload_var_rgb").." de Velocidad de Recarga durante "..CNumb("{duration:%s}", "dur_var_rgb").." segundos al Golpear con un Proyectil en "..CKWord("Punto Débil", "Weakspothit_rgb_es")..".",
		},
}

-- Automatic template creation - Автоматическое создание шаблонов
local localization_templates = {}
for loc_key, locales in pairs(weapon_localizations) do
	for locale, text in pairs(locales) do
		table.insert(localization_templates, create_template(
			loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

return localization_templates
