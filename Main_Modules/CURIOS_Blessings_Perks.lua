---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

-- ИСПОЛЬЗУЕМ КЭШИРОВАННЫЕ УТИЛИТЫ
local Utils = mod.get_utils()

-- ИМПОРТ ВСЕХ НУЖНЫХ ФУНКЦИЙ И КОНСТАНТ
local create_template = Utils.create_template
local loc_text = Utils.loc_text
local CKWord = Utils.CKWord
local CNumb = Utils.CNumb
local CPhrs = Utils.CPhrs
local CNote = Utils.CNote
local Dot_nc = Utils.DOT_NC or "•"
local Dot_red = Utils.DOT_RED or "•"
local Dot_green = Utils.DOT_GREEN or "•"

-- Основные данные локализации
local curios_localizations = {
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

--[+ ++CURIOS - РЕЛИКВИИ - 珍品++ +]--
	--[+ +BLESSINGS - БЛАГОСЛОВЕНИЯ - 祝福+ +]--
		--[+ Health +]--
		["loc_inate_gadget_health_desc"] = { -- max_health_modifier: +21%
			en = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Maximum "..CKWord("Health", "Health_rgb"),
			ru = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." к максимальному "..CKWord("здоровью", "zdoroviu_rgb_ru"),
			fr = CKWord("{max_health_modifier:%s}", "maxhlth_rgb").." de "..CKWord("Santé", "Health_rgb_fr").." Maximum",
			["zh-tw"] = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." "..CKWord("最大生命", "Health_m_rgb_tw"),
			["zh-cn"] = CKWord("{max_health_modifier:%s}", "maxhlth_rgb").." 最大"..CKWord("生命值", "Health_rgb_zh_cn"),
			de = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Maximale "..CKWord("Gesundheit", "Health_rgb_de"),
			it = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." "..CKWord("Salute", "Health_rgb_it").." Massima",
			ja = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." 最大"..CKWord("体力", "Health_rgb_ja"),
			ko = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." 최대 "..CKWord("체력", "Health_rgb_ko"),
			pl = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Maksymalne "..CKWord("Zdrowie", "Health_rgb_pl"),
			["pt-br"] = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Máximo de "..CKWord("Saúde", "Health_rgb_pt_br"),
			es = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Máximo de "..CKWord("Salud", "Health_rgb_es"),
		},
		--[+ Wound +]--
		["loc_inate_gadget_health_segment_desc"] = { -- extra_max_amount_of_wounds: +1
			en = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("Wound", "Wound_rgb"),
			ru = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." сегмент полоски "..CKWord("здоровья", "zdorovia_rgb_ru"),
			fr = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").."  "..CKWord("Blessure", "Wound_rgb_fr"),
			["zh-tw"] = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("傷痕", "Wound_rgb_tw"),
			["zh-cn"] = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("伤口", "Wound_rgb_zh_cn"),
			de = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("Wunde", "Wound_rgb_de"),
			it = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("Ferita", "Wound_rgb_it"),
			ja = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("負傷", "Wound_rgb_ja"),
			ko = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("상처", "Wound_rgb_ko"),
			pl = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("Rana", "Wound_rgb_pl"),
			["pt-br"] = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("Ferimento", "Wound_rgb_pt_br"),
			es = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("Herida", "Wound_rgb_es"),
		},
		--[+ Stamina +]--
		["loc_inate_gadget_stamina_desc"] = { -- stamina_modifier: +3
			en = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." Maximum "..CKWord("Stamina", "Stamina_rgb"),
			ru = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." к максимальной "..CKWord("выносливости", "vynoslivosti_rgb_ru"),
			fr = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." d'"..CKWord("Endurance", "Stamina_rgb_fr").." Maximum",
			["zh-tw"] = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." "..CKWord("最大耐力", "Stamina_m_rgb_tw"),
			["zh-cn"] = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." 最大"..CKWord("体力", "Stamina_rgb_zh_cn"),
			de = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." Maximale "..CKWord("Ausdauer", "Stamina_rgb_de"),
			it = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." "..CKWord("Vigore", "Stamina_rgb_it").." Massimo",
			ja = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." 最大"..CKWord("スタミナ", "Stamina_rgb_ja"),
			ko = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." 최대 "..CKWord("스태미나", "Stamina_rgb_ko"),
			pl = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." Maksymalna "..CKWord("Wytrzymałość", "Stamina_rgb_pl"),
			["pt-br"] = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." Máximo de "..CKWord("Vigor", "Stamina_rgb_pt_br"),
			es = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." Máximo de "..CKWord("Aguante", "Stamina_rgb_es"),
		},
		--[+ Toughness +]--
		["loc_inate_gadget_toughness_desc"] = { -- toughness_bonus: +17%
			en = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." Maximum "..CKWord("Toughness", "Toughness_rgb"),
			ru = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." к максимальной "..CKWord("стойкости", "stoikosti_rgb_ru"),
			fr = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr"),
			["zh-tw"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("最大韌性", "Toughness_m_rgb_tw"),
			["zh-cn"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." 最大"..CKWord("韧性", "Toughness_rgb_zh_cn"),
			de = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." Maximale "..CKWord("Zähigkeit", "Toughness_rgb_de"),
			it = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("Tenacia", "Toughness_rgb_it").." Massima",
			ja = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." 最大"..CKWord("耐久力", "Toughness_rgb_ja"),
			ko = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." 최대 "..CKWord("강인함", "Toughness_rgb_ko"),
			pl = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." Maksymalna "..CKWord("Odporność", "Toughness_rgb_pl"),
			["pt-br"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." Máximo de "..CKWord("Resistência", "Toughness_rgb_pt_br"),
			es = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." Máximo de "..CKWord("Dureza", "Toughness_rgb_es"),
		},

	--[+ TRAITS - ХАРАКТЕРИСТИКИ - 附加屬性 +]--
		--[+ Combat Ability Regeneration +]--
		["loc_gadget_cooldown_desc"] = { -- ability_cooldown_modifier: +4%
			en = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." "..CKWord("Combat Ability", "Cmbt_abil_rgb").." Regeneration",
			ru = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." к восстановлению "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru"),
			fr = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." de régénération du "..CKWord("Temps de recharge des capacités de combat", "Combat_ability_cd_rgb_fr"),
			["zh-tw"] = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." "..CKWord("戰鬥技能冷卻", "Cmbt_abil_cd_rgb_tw"),
			["zh-cn"] = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." "..CKWord("作战技能", "Combat_ability_rgb_zh_cn").."回复",
			de = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." "..CKWord("Kampffähigkeit", "Cmbt_abil_rgb_de").."-Regeneration",
			it = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." Rigenerazione "..CKWord("Abilità di Combattimento", "Cmbt_abil_rgb_it"),
			ja = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." "..CKWord("戦闘スキル", "Cmbt_abil_rgb_ja").." 回復速度",
			ko = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." "..CKWord("전투 능력", "Cmbt_abil_rgb_ko").." 재생성",
			pl = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." Regeneracja "..CKWord("Umiejętności Bojowej", "Cmbt_abil_rgb_pl"),
			["pt-br"] = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." Regeneração de "..CKWord("Habilidade de Combate", "Cmbt_abil_rgb_pt_br"),
			es = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." Regeneración de "..CKWord("Habilidad de Combate", "Cmbt_abil_rgb_es"),
		},
		--[+ Corruption Resistance +]--
		["loc_gadget_corruption_resistance_desc"] = { -- corruption_taken_multiplier: +15%
			en = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." "..CKWord("Corruption", "Corruption_rgb").." Resistance",
			ru = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." к сопротивлению "..CKWord("порче", "porche_rgb_ru"),
			fr = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." de résistance à la "..CKWord("Corruption", "Corruption_rgb_fr"),
			["zh-tw"] = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." "..CKWord("腐敗", "Corruption_rgb_tw").." 抗性",
			["zh-cn"] = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." "..CKWord("腐化", "Corruption_rgb_zh_cn").."抗性",
			de = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." "..CKWord("Verderbnis", "Corruption_rgb_de").."-Widerstand",
			it = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." Resistenza alla "..CKWord("Corruzione", "Corruption_rgb_it"),
			ja = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." "..CKWord("腐敗", "Corruption_rgb_ja").." 耐性",
			ko = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." "..CKWord("타락", "Corruption_rgb_ko").." 저항",
			pl = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." Odporność na "..CKWord("Skazę", "Corruption_rgb_pl"),
			["pt-br"] = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." Resistência à "..CKWord("Corrupção", "Corruption_rgb_pt_br"),
			es = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." Resistencia a la "..CKWord("Corrupción", "Corruption_rgb_es"),
		},
		--[+ Corruption Resistance from Grimoires +]--
		["loc_gadget_grim_corruption_resistance_desc"] = { -- permanent_damage_converter_resistance: +20%
			en = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." "..CKWord("Corruption", "Corruption_rgb").." Resistance from Grimoires",
			ru = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." к сопротивлению "..CKWord("порче", "porche_rgb_ru").." от гримуаров",
			fr = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." de résistance à la "..CKWord("Corruption", "Corruption_rgb_fr").." (Grimoires)",
			["zh-tw"] = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." "..CKWord("腐敗抗性", "Corruption_res_rgb_tw").."(法術書)",
			["zh-cn"] = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." "..CKWord("腐化", "Corruption_rgb_zh_cn").."抗性 (魔法书)",
			de = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." "..CKWord("Verderbnis", "Corruption_rgb_de").."-Widerstand (Grimoire)",
			it = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." Resistenza alla "..CKWord("Corruzione", "Corruption_rgb_it").." dai Grimori",
			ja = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." "..CKWord("腐敗耐性", "Corruption_res_rgb_ja").."（魔道書）",
			ko = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." "..CKWord("타락", "Corruption_rgb_ko").." 저항 (마도서)",
			pl = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." Odporność na "..CKWord("Skazę", "Corruption_rgb_pl").." z Grimoires",
			["pt-br"] = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." Resistência à "..CKWord("Corrupção", "Corruption_rgb_pt_br").." dos Grimórios",
			es = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." Resistencia a la "..CKWord("Corrupción", "Corruption_rgb_es").." de los Grimorios",
		},
		--[+ Health +]--
		["loc_trait_gadget_health_increase_desc"] = { -- max_health_modifier: +5%
			en = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Maximum "..CKWord("Health", "Health_rgb"),
			ru = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." к максимальному "..CKWord("здоровью", "zdoroviu_rgb_ru"),
			fr = CKWord("{max_health_modifier:%s}", "maxhlth_rgb").." de "..CKWord("Santé", "Health_rgb_fr").." maximum",
			["zh-tw"] = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." "..CKWord("最大生命", "Health_m_rgb_tw"),
			["zh-cn"] = CKWord("{max_health_modifier:%s}", "maxhlth_rgb").." 最大"..CKWord("生命值", "Health_rgb_zh_cn"),
			de = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Maximale "..CKWord("Gesundheit", "Health_rgb_de"),
			it = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." "..CKWord("Salute", "Health_rgb_it").." Massima",
			ja = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." 最大"..CKWord("体力", "Health_rgb_ja"),
			ko = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." 최대 "..CKWord("체력", "Health_rgb_ko"),
			pl = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Maksymalne "..CKWord("Zdrowie", "Health_rgb_pl"),
			["pt-br"] = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Máximo de "..CKWord("Saúde", "Health_rgb_pt_br"),
			es = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Máximo de "..CKWord("Salud", "Health_rgb_es"),
		},
		--[+ Block Cost Reduction +]--
		["loc_gadget_block_cost_reduction_desc"] = { -- block_cost_multiplier: +12%
			en = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." Block Cost Reduction",
			ru = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." к снижению стоимости блока",
			fr = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." d'éfficacité de blocage",
			["zh-tw"] = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." 格擋消耗",
			["zh-cn"] = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." 格挡效益",
			de = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." Blockkosten-Reduktion",
			it = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." Riduzione Costo Blocco",
			ja = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." ブロック消費軽減",
			ko = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." 블록 비용 감소",
			pl = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." Redukcja Kosztu Blokady",
			["pt-br"] = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." Redução de Custo de Bloqueio",
			es = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." Reducción de Costo de Bloqueo",
		},
		--[+ Ally Revive Speed +]--
		["loc_gadget_revive_speed_desc"] = { -- revive_speed_modifier: +12%
			en = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." Ally Revive Speed",
			ru = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." к скорости возрождения союзников",
			fr = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." de vitesse de réanimation des alliés",
			["zh-tw"] = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." 復活速度 (盟友)",
			["zh-cn"] = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." 复活速度 (盟友)",
			de = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." Verbündeten-Wiederbelebungsgeschwindigkeit",
			it = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." Velocità di Rianimazione Alleati",
			ja = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." 蘇生速度 (味方)",
			ko = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." 아군 부활 속도",
			pl = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." Szybkość Ożywiania Sojuszników",
			["pt-br"] = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." Velocidade de Reviver Aliados",
			es = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." Velocidad de Revivir Aliados",
		},
		--[+ Stamina Regeneration +]--
		["loc_gadget_stamina_regeneration_desc"] = { -- stamina_regeneration_modifier: +12%
			en = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." "..CKWord("Stamina", "Stamina_rgb").." Regeneration",
			ru = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." к восстановлению "..CKWord("выносливости", "vynoslivosti_rgb_ru"),
			fr = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." de régénération d'"..CKWord("Endurance", "Stamina_rgb_fr"),
			["zh-tw"] = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." "..CKWord("耐力", "Stamina_rgb_tw").." 恢復",
			["zh-cn"] = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." "..CKWord("体力", "Stamina_rgb_zh_cn").."复",
			de = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." "..CKWord("Ausdauer", "Stamina_rgb_de").."-Regeneration",
			it = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." Rigenerazione "..CKWord("Vigore", "Stamina_rgb_it"),
			ja = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." "..CKWord("スタミナ", "Stamina_rgb_ja").." 回復",
			ko = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." "..CKWord("스태미나", "Stamina_rgb_ko").." 재생성",
			pl = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." Regeneracja "..CKWord("Wytrzymałości", "Stamina_rgb_pl"),
			["pt-br"] = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." Regeneração de "..CKWord("Vigor", "Stamina_rgb_pt_br"),
			es = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." Regeneración de "..CKWord("Aguante", "Stamina_rgb_es"),
		},
		--[+ Toughness +]--
		["loc_trait_gadget_toughness_increase_desc"] = { -- toughness_bonus: +5%
			en = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("Toughness", "Toughness_rgb"),
			ru = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." к "..CKWord("стойкости", "stoikosti_rgb_ru"),
			fr = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr"),
			["zh-tw"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("最大韌性", "Toughness_m_rgb_tw"),
			["zh-cn"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." 最大"..CKWord("韧性", "Toughness_rgb_zh_cn"),
			de = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de"),
			it = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("Tenacia", "Toughness_rgb_it"),
			ja = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("耐久力", "Toughness_rgb_ja"),
			ko = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("강인함", "Toughness_rgb_ko"),
			pl = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("Odporność", "Toughness_rgb_pl"),
			["pt-br"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("Resistência", "Toughness_rgb_pt_br"),
			es = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("Dureza", "Toughness_rgb_es"),
		},
		--[+ Toughness Regeneration Speed +]--
		["loc_gadget_toughness_regen_delay_desc"] = { -- toughness_regen_delay_multiplier: +30%
			en = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." "..CKWord("Toughness", "Toughness_rgb").." Regeneration Speed",
			ru = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." к скорости восстановления "..CKWord("стойкости", "stoikosti_rgb_ru"),
			fr = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." de vitesse de régénération de "..CKWord("Robustesse", "Toughness_rgb_fr").." de syntonie",
			["zh-tw"] = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." "..CKWord("韌性恢復速度", "Toughness_rs_rgb_tw"),
			["zh-cn"] = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."回复速度",
			de = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." "..CKWord("Zähigkeit", "Toughness_rgb_de").."-Regenerationsgeschwindigkeit",
			it = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." Velocità di Rigenerazione "..CKWord("Tenacia", "Toughness_rgb_it"),
			ja = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." "..CKWord("耐久力", "Toughness_rgb_ja").." 回復速度",
			ko = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." "..CKWord("강인함", "Toughness_rgb_ko").." 재생성 속도",
			pl = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." Szybkość Regeneracji "..CKWord("Odporności", "Toughness_rgb_pl"),
			["pt-br"] = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." Velocidade de Regeneração de "..CKWord("Resistência", "Toughness_rgb_pt_br"),
			es = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." Velocidad de Regeneración de "..CKWord("Dureza", "Toughness_rgb_es"),
		},
		--[+ Experience +]--
		["loc_trait_gadget_mission_xp_increase_desc"] = { -- mission_reward_xp_modifier: +10%
			en = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." Experience",
			ru = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." к опыту",
			fr = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." d'expérience",
			["zh-tw"] = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." 經驗",
			["zh-cn"] = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." 经验",
			de = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." Erfahrung",
			it = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." Esperienza",
			ja = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." 経験値",
			ko = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." 경험치",
			pl = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." Doświadczenie",
			["pt-br"] = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." Experiência",
			es = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." Experiencia",
		},
		--[+ Ordo +]--
		["loc_trait_gadget_mission_credits_increase_desc"] = { -- mission_reward_credit_modifier: +10%
			en = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." Ordo Dockets",
			ru = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." купонов ордо",
			fr = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." bordereaux de l'Ordo (récompenses de mission)",
			["zh-tw"] = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." 教團標籤 (錢)",
			["zh-cn"] = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." 审判庭双子币 （任务奖励）",
			de = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." Ordo-Marken",
			it = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." Cedole dell'Ordo",
			ja = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." オルド書類 (報酬)",
			ko = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." 오르도 문서",
			pl = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." Mandaty Ordo",
			["pt-br"] = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." Notas da Ordo",
			es = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." Documentos de la Ordo",
		},
		--[+ Curio as Mission Reward instead of Weapon +]--
		["loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"] = { -- mission_reward_gear_instead_of_weapon_modifier: +20%
			en = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." chance of Curio as Mission Reward instead of Weapon",
			ru = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." шанс получить редкость вместо оружия в награду",
			fr = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." de chance d'obtenir une curiosité comme récompense à la place d'une arme",
			["zh-tw"] = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." 任務獎勵珍品機率(非武器)",
			["zh-cn"] = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." 以珍品作为任务奖励 （而非武器） 的几率",
			de = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." Chance auf Kuriosität als Missionsbelohnung statt Waffe",
			it = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." probabilità di Curiosità come Ricompensa Missione invece di Arma",
			ja = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." 武器ではなく珍品が任務報酬となる確率",
			ko = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." 무기 대신 진품이 임무 보상으로 나올 확률",
			pl = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." szansa na Kuriozum jako Nagroda Misji zamiast Broni",
			["pt-br"] = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." chance de Curiosidade como Recompensa de Missão em vez de Arma",
			es = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." probabilidad de Curiosidad como Recompensa de Misión en lugar de Arma",
		},
		--[+ Damage Resistance vs Flamers +]--
		["loc_trait_gadget_dr_vs_flamer_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Flamers",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от огнемётчиков",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Incendiaires, Incendiaires toxiques) ",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (毒焰噴射者)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（火焰兵）",
			de = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Schaden", "Damage_rgb_de").."-Resistenz gegen Flammenwerfer",
			it = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistenza ai "..CKWord("Danni", "Damage_rgb_it").." contro Lanciafiamme",
			ja = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("ダメージ耐性", "Damage_res_rgb_ja").." (火炎放射兵)",
			ko = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("피해", "Damage_rgb_ko").." 저항 (화염방사병)",
			pl = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Odporność na "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciwko Miotaczom Ognia",
			["pt-br"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistência a "..CKWord("Dano", "Damage_rgb_pt_br").." contra Lança-chamas",
			es = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistencia al "..CKWord("Daño", "Damage_rgb_es").." contra Lanzallamas",
		},
		--[+ Damage Resistance vs Bombers +]--
		["loc_trait_gadget_dr_vs_grenadiers_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Bombers",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от гренадёров",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Bombardiers)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (轟炸者)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（轰炸者）",
			de = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Schaden", "Damage_rgb_de").."-Resistenz gegen Bomber",
			it = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistenza ai "..CKWord("Danni", "Damage_rgb_it").." contro Bombaroli",
			ja = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("ダメージ耐性", "Damage_res_rgb_ja").." (爆撃兵)",
			ko = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("피해", "Damage_rgb_ko").." 저항 (폭격수)",
			pl = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Odporność na "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciwko Bombardierom",
			["pt-br"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistência a "..CKWord("Dano", "Damage_rgb_pt_br").." contra Bombardeiros",
			es = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistencia al "..CKWord("Daño", "Damage_rgb_es").." contra Bombarderos",
		},
		--[+ Damage Resistance vs Gunners +]--
		["loc_trait_gadget_dr_vs_gunners_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Gunners",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от пулемётчиков",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Mitrailleurs)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (砲手)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（炮手）",
			de = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Schaden", "Damage_rgb_de").."-Resistenz gegen Schützen",
			it = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistenza ai "..CKWord("Danni", "Damage_rgb_it").." contro Mitraglieri",
			ja = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("ダメージ耐性", "Damage_res_rgb_ja").." (銃手)",
			ko = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("피해", "Damage_rgb_ko").." 저항 (사수)",
			pl = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Odporność na "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciwko Strzelcom",
			["pt-br"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistência a "..CKWord("Dano", "Damage_rgb_pt_br").." contra Atiradores",
			es = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistencia al "..CKWord("Daño", "Damage_rgb_es").." contra Fusileros",
		},
		--[+ Damage Resistance vs Pox Hounds +]--
		["loc_trait_gadget_dr_vs_hounds_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Pox Hounds",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от чумных гончих",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Cerdères vérolés)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (瘟疫獵犬)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（瘟疫猎犬）",
			de = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Schaden", "Damage_rgb_de").."-Resistenz gegen Pesthunde",
			it = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistenza ai "..CKWord("Danni", "Damage_rgb_it").." contro Segugi del Vaiolo",
			ja = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("ダメージ耐性", "Damage_res_rgb_ja").." (ポックスハウンド)",
			ko = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("피해", "Damage_rgb_ko").." 저항 (역병 사냥개)",
			pl = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Odporność na "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciwko Szczurom Zarazy",
			["pt-br"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistência a "..CKWord("Dano", "Damage_rgb_pt_br").." contra Cães da Peste",
			es = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistencia al "..CKWord("Daño", "Damage_rgb_es").." contra Sabuesos de la Peste",
		},
		--[+ Damage Resistance vs Mutants +]--
		["loc_trait_gadget_dr_vs_mutants_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Mutants",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от мутантов",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Mutants)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (變種人)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（变种人）",
			de = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Schaden", "Damage_rgb_de").."-Resistenz gegen Mutanten",
			it = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistenza ai "..CKWord("Danni", "Damage_rgb_it").." contro Mutanti",
			ja = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("ダメージ耐性", "Damage_res_rgb_ja").." (ミュータント)",
			ko = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("피해", "Damage_rgb_ko").." 저항 (돌연변이)",
			pl = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Odporność na "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciwko Mutantom",
			["pt-br"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistência a "..CKWord("Dano", "Damage_rgb_pt_br").." contra Mutantes",
			es = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistencia al "..CKWord("Daño", "Damage_rgb_es").." contra Mutantes",
		},
		--[+ Damage Resistance vs Snipers +]--
		["loc_trait_gadget_dr_vs_snipers_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Snipers",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от снайперов",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Snipers)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (狙擊手)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（狙击手）",
			de = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Schaden", "Damage_rgb_de").."-Resistenz gegen Scharfschützen",
			it = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistenza ai "..CKWord("Danni", "Damage_rgb_it").." contro Cecchini",
			ja = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("ダメージ耐性", "Damage_res_rgb_ja").." (狙撃兵)",
			ko = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("피해", "Damage_rgb_ko").." 저항 (저격수)",
			pl = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Odporność na "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciwko Snajperom",
			["pt-br"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistência a "..CKWord("Dano", "Damage_rgb_pt_br").." contra Atiradores de Elite",
			es = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." Resistencia al "..CKWord("Daño", "Damage_rgb_es").." contra Francotiradores",
		},

-- DUPLICATE!!! THERE IS THE SAME IN WEAPONS_Blessings_Perks.lua
		--[+ Stamina Cost for Sprinting +]--
		-- ["loc_gadget_sprint_cost_reduction_desc"] = { 
			-- en = CKWord("{sprinting_cost_multiplier:%s}", "bcm_rgb").." "..CKWord("Stamina", "Stamina_rgb").." Cost for Sprinting",
			-- ru = CKWord("{sprinting_cost_multiplier:%s}", "bcm_rgb").." к затратам "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на бег",
			-- fr = CKWord("{sprinting_cost_multiplier:%s}", "bcm_rgb").." de coût d'"..CKWord("体力", "Stamina_rgb_fr").." de la course",
		-- },
}

-- Автоматическое создание шаблонов
local localization_templates = {}
for loc_key, locales in pairs(curios_localizations) do
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