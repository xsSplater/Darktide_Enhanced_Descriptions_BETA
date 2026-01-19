---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- PALAVRAS-CHAVE
local CONFIG = {
	bleed_text_colour = {
		Bleed =			"Sangramento",
		Bleeding =		"Sangrando",
		Bleeds =		"Sangra",
	},
	brittleness_text_colour = {
		Brittleness =	"Fragilidade",
	},
	burn_text_colour = {
		Burn =			"Queimadura",
		Burning =		"Queimando",
		Heat =			"Calor",
		Overheat =		"Superaquecimento",
	},
	cleave_text_colour = {
		Cleave =		"Fender",
		Cleaved =		"Fendido",
		Cleaving =		"Fende",
	},
	coherency_text_colour = {
		Coherency =		"Coerência",
	},
	combat_ability_text_colour = {
		Ability_cd =	"Tempo de recarga de habilidade",
		Cd =			"Tempo de recarga",
		Cmbt_abil =		"Habilidade de combate",
		Cmbt_abil_cd =	"Tempo de recarga de habilidade de combate",
	},
	corruption_text_colour = {
		Corrupted =		"Corrompido",
		Corruptdmg =	"Dano de corrupção",
		Corruption =	"Corrupção",
	},
	crit_text_colour = {
		Crit =			"Crítico",
		Critical =		"Crítico",

		Crit_chance =	"Chance de crítico",
		Crt_chance =	"Chance de crítico",

		Crit_hit =		"Golpe crítico",
		Crit_hits =		"Golpes críticos",
		Crt_hit_chnc =	"Chance de golpe crítico",
		Crt_hit_col =	"Dano de golpe crítico",

		Crit_strike =	"Golpe crítico",
		Crit_strikes =	"Golpes críticos",
		Crt_chnc_r =	"Chance de golpe crítico",
		Crt_strk_dmg =	"Dano de golpe crítico",

		Crit_Attk =		"Ataque crítico",
		Crit_shots =	"Tiros críticos",

		Crit_dmg_r =	"Dano crítico",
		Crt_dmg_r =		"Dano crítico",

		Conc_Stimm =	"Stimm de concentração",
	},
	damage_text_colour = {
		Damage =		"Dano",
		Damagewrp =		"Dano Warp",

		Combat_Stimm =	"Stimm de combate",
	},
	electrocuted_text_colour = {
		Electrocute =	"Electrocutar",
		Electrocuted =	"Electrocutado",
		Electrocutes =	"Electrocuta",
		Electrcuting =	"Electrocutante",
		Electrocution =	"Electrocussão",
	},
	finesse_text_colour = {
		Finesse =		"Fineza",
		Finesse_dmg =	"Dano de fineza",
	},
	health_text_colour = {
		Health =		"Saúde",
		Wound =			"Ferimento",
		Wounds =		"Ferimentos",
	},
	hit_mass_text_colour = {
		Hit_mass =		"Massa de impacto",
	},
	impact_text_colour = {
		Impact =		"Impacto",
	},
	peril_text_colour = {
		Peril =			"Perigo",
		Perils =		"Perigos",
		PerilsozWarp =	"Perigos do Warp",
	},
	power_text_colour = {
		Power =			"Poder",
		Strength =		"Força",
	},
	rending_text_colour = {
		Rending =		"Penetração",

		Cartel_Stimm =	"Stimm especial do Cartel",
	},
	soulblaze_text_colour = {
		Soulblaze =		"Chama da Alma",
	},
	stagger_text_colour = {
		Stagger =		"Cambaleamento",
		Staggered =		"Cambaleante",
		Staggering =	"Cambaleia",
		Staggers =		"Cambaleiam",
		Stun =			"Atordoamento",
		Stunned =		"Atordoado",
		Stuns =			"Atordoa",
	},
	stamina_text_colour = {
		Stamina =		"Vigor",
		Stamina_c_r =	"Custo de vigor",
	},
	toughness_text_colour = {
		TDR =			"RDR",
		TGHN =			"RESIST",
		Tghns_dmg =		"Dano de resistência",
		Tghns_dmg_red =	"Redução de dano de resistência",
		Toughness =		"Resistência",
	},
	weakspot_text_colour = {
		Weak_spot =		"Ponto fraco",
		Weakspot = 		"Ponto fraco",
		Weakspots =		"Pontos fracos",

		Weakspothit =	"Acerto em ponto fraco",
		Weakspothits =	"Acertos em pontos fracos",

		Weakspot_dmg =	"Dano em ponto fraco",
	},

-- CLASSES
	-- Psyker
	class_psyker_text_colour = {
		cls_psy =		"Psíquico",
		cls_psys =		"Psíquicos",
		cls_psy2 =		"Psíquico",
	},
		precision_text_colour = {
			Precision =		"Precisão",

			Celerity_Stimm = "Stimm de celeridade",
		},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr =		"Ogryn",
		cls_ogr2 =		"Ogryn",
	},
		fnp_text_colour = {
			Feel_no_pain =	"Insensibilidade à dor",

			Desperado =		"Desperado",			-- Hive Scum
		},
		luckyb_text_colour = {
			Lucky_bullet =	"Bala sortuda",

			Tghnss_gold =	"Resistência",			-- Zealot
		},
		trample_text_colour = {
			Trample =		"Pisotear",

			Depend =		"Dependência",			-- Hive Scum
		},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea =		"Zelota",
		cls_zea2 =		"Zelota",
	},
		fury_text_colour = {
			Fury =			"Fúria",

			Rampage =		"Frenesi!",				-- Hive Scum
		},
		momentum_text_colour = {
			Momentum =		"Momento",

			Taunt =			"Provocação",			-- Ogryn
			Taunted =		"Provocado",			-- Ogryn
			Taunting =		"Provoca",				-- Ogryn

			Adren =			"Adrenalina",			-- Hive Scum
			AdrenFr =		"Frenesi de adrenalina",-- Hive Scum
		},
		stealth_text_colour = {
			Stealth =		"Furtividade",

			Psy_Mark =		"Marcado",				-- Psyker
			Psy_mark =		"marcado",				-- Psyker
		},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet =		"Veterano",
		cls_vet2 =		"Veterano",
	},
		focus_text_colour = {
			Forceful =		"Enérgico",
			Focus =			"Foco",

			Shout =			"Grito",				-- Hive Scum
		},
		focust_text_colour = {
			Focus_Target =	"Alvo focal",

			Markedenemy =	"Inimigo marcado",		-- Psyker

			VultsMark =		"Marca do Abutre",		-- Hive Scum
		},
		meleespec_text_colour = {
			Meleespec =		"Especialista em corpo a corpo",

			Meleejust =		"Justiça corpo a corpo",-- Arbites

			Exhausted =		"Exausto",				-- Hive Scum
		},
		rangedspec_text_colour = {
			Rangedspec =	"Especialista à distância",

			Rangedjust =	"Justiça à distância",	-- Arbites
		},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb =		"Árbitro",
		cls_arb2 =		"Árbitro",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm =		"Escória da Colmeia",
		cls_scm2 =		"Escória da Colmeia",
	},
		chemtox_text_colour = {
			Chem_Tox =		"Quimiotoxina",

			Med_Stimm =		"Stimm médico",
		},

-- TALENTOS
	talents_text_colour = {
-- Zealot
		Holy_relic =	"Relíquia sagrada",
		Stun_gren =		"Granada atordoante",
-- Arbites
		Arbites_gren =	"Granada Arbites",
		BreakZLine =	"Quebrar a linha",
-- Psyker
		Assail =		"Ataque",
		Brain_burst =	"Explosão cerebral",
		Brain_rupture =	"Ruptura cerebral",
		Enfeeble =		"Enfraquecimento",
		Scrier_gaze =	"Olhar do Vidente",
		Scriers_gaze =	"Olhar do Vidente",
		Smite =			"Esmagamento",
-- Veteran
		Frag_gren =		"Granada de fragmentação",
		Fragm_gren =	"Granada de fragmentação",
		Rangd_stnc =	"Postura à distância",
		Duty_honor =	"Dever e honra",
-- Ogryn
		Att_Seeker =	"Buscador de atenção",

-- PENITÊNCIAS
		Base_tut_p =	"Treinamento básico",
		Curio_p =		"Curiosidade",
		Omnissia_p =	"Santuário do Omnissiah",
		Prologue_p =	"Prólogo",
		Sir_melk_p =	"Requisitório de Sir Melk",

	-- Psyker
		assail =		"Ataque",
		bburst =		"Explosão cerebral",
		bburst1 =		"Ruptura cerebral",
		disrdest =		"Destino perturbado",
		empsionics =	"Psiônica fortalecida",
		kinetpres =		"Presença cinética",
		prescience =	"Presciência",
		psy_wrath =		"Ira psicoquinética",
		psy_wrath2 =	"Grito de ventilação",
		scriersgaze =	"Olhar do Vidente",
		seerspres =		"Presença do Vidente",
		smite =			"Esmagamento",
		telekshii =		"Escudo telecinético",
	-- Ogryn
		big_box =		"Grande caixa de dor",
		big_box2 =		"Bombas fora!",
		bigfriendro =	"Grande rocha amigável",
		bonebraura =	"Aura do Quebra-Ossos",
		bull_rush =		"Investida selvagem",
		bull_rush4 =	"Indomável",
		burstlimo =		"Anulação do limitador de rajada",
		cowculaura =	"Caça aos covardes",
		feelnop =		"Insensibilidade à dor",
		fragbomb =		"Bomba de fragmentação",
		heavyhitter =	"Golpeador pesado",
		loyalprot =		"Protetor leal",
		pbbarrage =		"Barragem à queima-roupa",
		stayclose =		"Fiquem juntos!",
	-- Veteran
		closenkill =	"Perto e mata",
		exec_stan =		"Postura do Carrasco",
		fcs_trg =		"Alvo focal!",
		firetim =		"Equipe de fogo",
		frag_gr =		"Granada de fragmentação",
		infiltr =		"Infiltração",
		krak_gr =		"Granada krak",
		scavenger =		"Carniceiro",
		snipcon =		"Foco do atirador",
		smok_gr =		"Granada de fumaça",
		survivalist =	"Sobrevivencialista",
		voiceoc =		"Voz do Comando",
		volley_fire =	"Fogo de salva",
		weapspec =		"Especialista em armas",
	-- Zealot
		beaconop =		"Farol da pureza",
		benedict =		"Bênção",
		blazingp =		"Piedade ardente",
		chast_wckd =	"Castigo dos ímpios",
		chorusosf =		"Coro da fortaleza espiritual",
		fanrage =		"Fúria",
		fire_gren =		"Granada incendiária",
		fury_faithful =	"Fúria dos fiéis",
		holy_revenant =	"Revenant sagrado",
		inexor =		"Julgamento inexorável",
		klinvery =		"Lâminas da fé",
		loner =			"Solitário",
		martydom =		"Martírio",
		shock_gren =	"Granada atordoante",
		shock_gren1 =	"Granada atordoante",
		shroudf =		"Campo de sombras",
		momentum =		"Momento",
	},

-- DIFICULDADE
	-- sedition_text_colour = {
		-- sedition =		"Sedição",
	-- },
	uprising_text_colour = {
		uprising =		"Revolta",
	},
	malice_text_colour = {
		malice =		"Maldade",
	},
	heresy_text_colour = {
		heresy =		"Heresia",
	},
	damnation_text_colour = {
		damnation =		"Danção",
	},
	auric_text_colour = {
		auric =			"Áurico",
	},

-- ESTATÍSTICAS DESCARTÁVEIS
	dump_stat_text_colour = {
		Mobility =		"Mobilidade",
		Melee_dmg =		"Dano corpo a corpo",
		Warp_resist =	"Resistência ao Warp",
	},
	dump_stat2_text_colour = {
		Ammo =			"Munição",
		Defences =		"Defesas",
		Heat_mngt =		"Gerenciamento de calor",
	},
	dump_stat3_text_colour = {
		DamageDS =		"Dano",
	},
}

-- Função principal para criar palavras-chave coloridas
local function create_colored_keywords()
	local result = {}

	for category, keywords in pairs(CONFIG) do
		local color_name = mod:get(category) or "white"
		local color = Color[color_name]

		if not color then
			color = Color.white(255, true)
		else
			color = color(255, true)
		end

		for key, text in pairs(keywords) do
			if InputUtils and InputUtils.apply_color_to_input_text then
				local colored_text = InputUtils.apply_color_to_input_text(text, color)
				result[key .. "_rgb_pt_br"] = colored_text
			else
				result[key .. "_rgb_pt_br"] = text
			end
		end
	end

	return result
end

--[+ +FRASES FREQUENTEMENTE REPETIDAS+ +]-- CPhrs("")
local function create_phrs_pt_br(colors_pt_br)
	-- Constantes locais para este arquivo
	local Dot_green =	"{#color(35, 255, 5)}•{#reset()}"
	local Dot_red =		"{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_pt_br[key] or fallback
	end

	return {
	Can_appl_thr_shlds =			Dot_green.." Pode ser aplicado através de escudos.",
	Can_be_refr =					Dot_green.." Pode ser atualizado durante a duração ativa.",
	Can_be_refr_drop_1 =			Dot_green.." As pilhas podem ser atualizadas durante a duração ativa e são removidas uma a uma.",
	Can_gen_mult =					Dot_green.." Pode gerar múltiplas pilhas por golpe.\n",
	Can_proc_mult =					Dot_green.." Pode ativar múltiplas vezes por golpe ao "..CKWord("Fender", "Cleaving_rgb_pt_br")..".\n",
	Can_proc_mult_str =				Dot_green.." Pode ativar múltiplas vezes ao "..CKWord("Fender", "Cleaving_rgb_pt_br")..".\n",
	Refr_dur_stappl =				Dot_green.." Atualiza a duração na aplicação da pilha.",
-- Psyker
	Doesnt_Stack_Psy_Aura =			Dot_red.." Não acumula com a mesma aura de outro "..CKWord("Psíquico", "cls_psy_rgb_pt_br")..".",
	Doesnt_Stack_Psy_eff =			Dot_red.." Não acumula com o mesmo debuff de outro "..CKWord("Psíquico", "cls_psy_rgb_pt_br")..".",
-- Veteran
	Doesnt_Stack_Vet_Aura =			Dot_red.." Não acumula com a mesma aura de outro "..CKWord("Veterano", "cls_vet_rgb_pt_br")..".",
-- Zealot
	Doesnt_Stack_Zea_Aura =			Dot_red.." Não acumula com a mesma aura de outro "..CKWord("Zelota", "cls_zea_rgb_pt_br")..".",
	Doesnt_Stack_Zea_abil =			Dot_red.." Não acumula com o mesmo talento de outro "..CKWord("Zelota", "cls_zea_rgb_pt_br")..".",
-- Ogryn
	Doesnt_Stack_Ogr_Aura =			Dot_red.." Não acumula com a mesma aura de outro "..CKWord("Ogryn", "cls_ogr_rgb_pt_br")..".",
	Doesnt_Stack_Ogr_abil =			Dot_red.." Não acumula com o mesmo talento de outro "..CKWord("Ogryn", "cls_ogr_rgb_pt_br")..".",
-- Hive Scum
	Doesnt_Stack_Scm_Aura =			Dot_red.." Não acumula com a mesma aura de outro "..CKWord("Escória da Colmeia", "cls_scm_rgb_pt_br")..".",
	Doesnt_Stack_Scm_eff =			Dot_red.." Não acumula com o mesmo debuff de outro "..CKWord("Escória da Colmeia", "cls_scm_rgb_pt_br")..".",

	Cant_appl_thr_shlds =			Dot_red.." Não pode ser aplicado através de escudos.",
	Cant_be_refr =					Dot_red.." Não pode ser atualizado durante a duração ativa.",
	Cant_Crit =						Dot_red.." Não pode causar "..CKWord("críticos", "Crit_rgb_pt_br")..".\n",
	Carap_cant_clv =				Dot_red.." Armadura carapaça não pode ser "..CKWord("fendida", "Cleaved_rgb_pt_br").." por padrão.",
	Carap_cant_cleave =				Dot_red.." Armadura carapaça não pode ser "..CKWord("fendida", "Cleaved_rgb_pt_br").." por padrão.",
	Dont_intw_coher_toughn =		Dot_red.." Não interage com a regeneração de "..CKWord("Resistência", "Toughness_rgb_pt_br").." por "..CKWord("Coerência", "Coherency_rgb_pt_br")..".",
	}
end

--[+ +NOTAS+ +]-- CNote("")
local function create_nts_pt_br(colors_pt_br)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_pt_br[key] or fallback
	end

	return {
		Brtl_note =				Dot_green.." "..CKWord("Fragilidade", "Brittleness_rgb_pt_br").." aumenta o "..CKWord("Dano", "Damage_rgb_pt_br").." da equipe ao inimigo.",
		Fns_note =				Dot_green.." "..CKWord("Fineza", "Finesse_rgb_pt_br").." aumenta o "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br").." e o "..CKWord("Dano crítico", "Crit_dmg_r_rgb_pt_br")..".",
		Impact_note =			Dot_green.." "..CKWord("Impacto", "Impact_rgb_pt_br").." aumenta a eficácia do "..CKWord("Cambaleamento", "Stagger_rgb_pt_br").." nos inimigos.",
		Pwr_note =				Dot_green.." "..CKWord("Força", "Strength_rgb_pt_br").." aumenta o "..CKWord("Dano", "Damage_rgb_pt_br")..", o "..CKWord("Cambaleamento", "Stagger_rgb_pt_br").." e o "..CKWord("Fender", "Cleave_rgb_pt_br")..".",
		Rend_note =				Dot_green.." "..CKWord("Penetração", "Rending_rgb_pt_br").." aumenta seu próprio "..CKWord("Dano", "Damage_rgb_pt_br").."."
	}
end

-- Criando cores
local colored_keywords = create_colored_keywords()

-- RETORNAR TUDO
return {
	keywords = colored_keywords,					-- PALAVRAS-CHAVE COLORIDAS
	phrs = create_phrs_pt_br(colored_keywords),		-- FRASES FREQUENTEMENTE REPETIDAS
	nts = create_nts_pt_br(colored_keywords)		-- NOTAS
}