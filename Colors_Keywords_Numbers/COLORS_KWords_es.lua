---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- PALABRAS CLAVE
local CONFIG = {
	bleed_text_colour = {
		Bleed =			"Sangrado",
		Bleeding =		"Sangrando",
		Bleeds =		"Sangra",
	},
	brittleness_text_colour = {
		Brittleness =	"Fragilidad",
	},
	burn_text_colour = {
		Burn =			"Quemadura",
		Burning =		"Quemando",
		Heat =			"Calor",
		Overheat =		"Sobrecalentamiento",
	},
	cleave_text_colour = {
		Cleave =		"Corte",
		Cleaved =		"Cortado",
		Cleaving =		"Corta",
	},
	coherency_text_colour = {
		Coherency =		"Coherencia",
	},
	combat_ability_text_colour = {
		Ability_cd =	"Tiempo de recarga de habilidad",
		Cd =			"Tiempo de recarga",
		Cmbt_abil =		"Habilidad de combate",
		Cmbt_abil_cd =	"Tiempo de recarga de habilidad de combate",
	},
	corruption_text_colour = {
		Corrupted =		"Corrupto",
		Corruptdmg =	"Daño de corrupción",
		Corruption =	"Corrupción",
	},
	crit_text_colour = {
		Crit =			"Crítico",
		Critical =		"Crítico",

		Crit_chance =	"Probabilidad de crítico",
		Crt_chance =	"Probabilidad de crítico",

		Crit_hit =		"Golpe crítico",
		Crit_hits =		"Golpes críticos",
		Crt_hit_chnc =	"Probabilidad de golpe crítico",
		Crt_hit_col =	"Daño de golpe crítico",

		Crit_strike =	"Golpe crítico",
		Crit_strikes =	"Golpes críticos",
		Crt_chnc_r =	"Probabilidad de golpe crítico",
		Crt_strk_dmg =	"Daño de golpe crítico",

		Crit_Attk =		"Ataque crítico",
		Crit_shots =	"Disparos críticos",

		Crit_dmg_r =	"Daño crítico",
		Crt_dmg_r =		"Daño crítico",

		Conc_Stimm =	"Stimm de concentración",
	},
	damage_text_colour = {
		Damage =		"Daño",
		Damagewrp =		"Daño Warp",

		Combat_Stimm =	"Stimm de combate",
	},
	electrocuted_text_colour = {
		Electrocute =	"Electrocutar",
		Electrocuted =	"Electrocutado",
		Electrocutes =	"Electrocuta",
		Electrcuting =	"Electrocutante",
		Electrocution =	"Electrocución",
	},
	finesse_text_colour = {
		Finesse =		"Fineza",
		Finesse_dmg =	"Daño de fineza",
	},
	health_text_colour = {
		Health =		"Salud",
		Wound =			"Herida",
		Wounds =		"Heridas",
	},
	hit_mass_text_colour = {
		Hit_mass =		"Masa de impacto",
	},
	impact_text_colour = {
		Impact =		"Impacto",
	},
	peril_text_colour = {
		Peril =			"Peligro",
		Perils =		"Peligros",
		PerilsozWarp =	"Peligros del Warp",
	},
	power_text_colour = {
		Power =			"Poder",
		Strength =		"Fuerza",
	},
	rending_text_colour = {
		Rending =		"Penetración",

		Cartel_Stimm =	"Stimm especial del Cártel",
	},
	soulblaze_text_colour = {
		Soulblaze =		"Llama del alma",
	},
	stagger_text_colour = {
		Stagger =		"Tambaleo",
		Staggered =		"Tambaleante",
		Staggering =	"Tambalea",
		Staggers =		"Tambalean",
		Stun =			"Aturdimiento",
		Stunned =		"Aturdido",
		Stuns =			"Aturde",
	},
	stamina_text_colour = {
		Stamina =		"Aguante",
		Stamina_c_r =	"Coste de aguante",
	},
	toughness_text_colour = {
		TDR =			"RDD",
		TGHN =			"ROBUST",
		Tghns_dmg =		"Daño de robustez",
		Tghns_dmg_red =	"Reducción de daño de robustez",
		Toughness =		"Robustez",
	},
	weakspot_text_colour = {
		Weak_spot =		"Punto débil",
		Weakspot = 		"Punto débil",
		Weakspots =		"Puntos débiles",

		Weakspothit =	"Golpe en punto débil",
		Weakspothits =	"Golpes en puntos débiles",

		Weakspot_dmg =	"Daño en punto débil",
	},

-- CLASES
	-- Psyker
	class_psyker_text_colour = {
		cls_psy =		"Psíquico",
		cls_psys =		"Psíquicos",
		cls_psy2 =		"Psíquico",
	},
		precision_text_colour = {
			Precision =		"Precisión",

			Celerity_Stimm = "Stimm de celeridad",
		},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr =		"Ogryn",
		cls_ogr2 =		"Ogryn",
	},
		fnp_text_colour = {
			Feel_no_pain =	"Insensibilidad al dolor",

			Desperado =		"Desperado",			-- Hive Scum
		},
		luckyb_text_colour = {
			Lucky_bullet =	"Bala afortunada",

			Tghnss_gold =	"Robustez",				-- Zealot
		},
		trample_text_colour = {
			Trample =		"Pisotón",

			Depend =		"Dependencia",			-- Hive Scum
		},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea =		"Fanático",
		cls_zea2 =		"Fanático",
	},
		fury_text_colour = {
			Fury =			"Furia",

			Rampage =		"¡Frenesí!",			-- Hive Scum
		},
		momentum_text_colour = {
			Momentum =		"Impulso",

			Taunt =			"Provocación",			-- Ogryn
			Taunted =		"Provocado",			-- Ogryn
			Taunting =		"Provoca",				-- Ogryn

			Adren =			"Adrenalina",			-- Hive Scum
			AdrenFr =		"Frenesí adrenalínico",	-- Hive Scum
		},
		stealth_text_colour = {
			Stealth =		"Sigilo",

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
			Focus =			"Concentración",

			Shout =			"Grito",				-- Hive Scum
		},
		focust_text_colour = {
			Focus_Target =	"Objetivo focal",

			Markedenemy =	"Enemigo marcado",		-- Psyker

			VultsMark =		"Marca del Buitre",		-- Hive Scum
		},
		meleespec_text_colour = {
			Meleespec =		"Especialista en cuerpo a cuerpo",

			Meleejust =		"Justicia cuerpo a cuerpo",-- Arbites

			Exhausted =		"Agotado",				-- Hive Scum
		},
		rangedspec_text_colour = {
			Rangedspec =	"Especialista a distancia",

			Rangedjust =	"Justicia a distancia",	-- Arbites
		},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb =		"Árbitro",
		cls_arb2 =		"Árbitro",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm =		"Escoria de la Colmena",
		cls_scm2 =		"Escoria de la Colmena",
	},
		chemtox_text_colour = {
			Chem_Tox =		"Quimiotoxina",

			Med_Stimm =		"Stimm médico",
		},

-- TALENTOS
	talents_text_colour = {
-- Zealot
		Holy_relic =	"Reliquia sagrada",
		Stun_gren =		"Granada aturdidora",
-- Arbites
		Arbites_gren =	"Granada Arbites",
		BreakZLine =	"Romper la línea",
-- Psyker
		Assail =		"Asalto",
		Brain_burst =	"Explosión cerebral",
		Brain_rupture =	"Ruptura cerebral",
		Enfeeble =		"Debilitamiento",
		Scrier_gaze =	"Mirada del Vidente",
		Scriers_gaze =	"Mirada del Vidente",
		Smite =			"Aplastamiento",
-- Veteran
		Frag_gren =		"Granada de fragmentación",
		Fragm_gren =	"Granada de fragmentación",
		Rangd_stnc =	"Postura a distancia",
		Duty_honor =	"Deber y honor",
-- Ogryn
		Att_Seeker =	"Buscador de atención",

-- PENITENCIAS
		Base_tut_p =	"Entrenamiento básico",
		Curio_p =		"Curio",
		Omnissia_p =	"Santuario del Omnissiah",
		Prologue_p =	"Prólogo",
		Sir_melk_p =	"Requisitorio de Sir Melk",

	-- Psyker
		assail =		"Asalto",
		bburst =		"Explosión cerebral",
		bburst1 =		"Ruptura cerebral",
		disrdest =		"Destino interrumpido",
		empsionics =	"Psiónica potenciada",
		kinetpres =		"Presencia cinética",
		prescience =	"Presciencia",
		psy_wrath =		"Ira psicoquinética",
		psy_wrath2 =	"Grito de ventilación",
		scriersgaze =	"Mirada del Vidente",
		seerspres =		"Presencia del Vidente",
		smite =			"Aplastamiento",
		telekshii =		"Escudo telequinético",
	-- Ogryn
		big_box =		"Gran caja de dolor",
		big_box2 =		"¡Bombas fuera!",
		bigfriendro =	"Gran roca amigable",
		bonebraura =	"Aura del Rompehuesos",
		bull_rush =		"Embestida salvaje",
		bull_rush4 =	"Indomable",
		burstlimo =		"Anulación del limitador de ráfaga",
		cowculaura =	"Caza de cobardes",
		feelnop =		"Insensibilidad al dolor",
		fragbomb =		"Bomba de fragmentación",
		heavyhitter =	"Golpeador pesado",
		loyalprot =		"Protector leal",
		pbbarrage =		"Descarga a quemarropa",
		stayclose =		"¡Manténganse juntos!",
	-- Veteran
		closenkill =	"Cerca y mata",
		exec_stan =		"Postura del Verdugo",
		fcs_trg =		"¡Objetivo focal!",
		firetim =		"Equipo de fuego",
		frag_gr =		"Granada de fragmentación",
		infiltr =		"Infiltración",
		krak_gr =		"Granada krak",
		scavenger =		"Carroñero",
		snipcon =		"Concentración del francotirador",
		smok_gr =		"Granada de humo",
		survivalist =	"Superviviente",
		voiceoc =		"Voz de Mando",
		volley_fire =	"Fuego de descarga",
		weapspec =		"Especialista en armas",
	-- Zealot
		beaconop =		"Faro de pureza",
		benedict =		"Bendición",
		blazingp =		"Piedad ardiente",
		chast_wckd =	"Castigo de los impíos",
		chorusosf =		"Coro de fortaleza espiritual",
		fanrage =		"Furia",
		fire_gren =		"Granada incendiaria",
		fury_faithful =	"Furia de los fieles",
		holy_revenant =	"Revenant sagrado",
		inexor =		"Juicio inexorable",
		klinvery =		"Hojas de la fe",
		loner =			"Solitario",
		martydom =		"Martirio",
		shock_gren =	"Granada aturdidora",
		shock_gren1 =	"Granada aturdidora",
		shroudf =		"Campo de sombras",
		momentum =		"Impulso",
	},

-- DIFICULTAD
	-- sedition_text_colour = {
		-- sedition =		"Sedición",
	-- },
	uprising_text_colour = {
		uprising =		"Levantamiento",
	},
	malice_text_colour = {
		malice =		"Maldad",
	},
	heresy_text_colour = {
		heresy =		"Herejía",
	},
	damnation_text_colour = {
		damnation =		"Condenación",
	},
	auric_text_colour = {
		auric =			"Áurico",
	},

-- ESTADÍSTICAS DESCARTABLES
	dump_stat_text_colour = {
		Mobility =		"Movilidad",
		Melee_dmg =		"Daño cuerpo a cuerpo",
		Warp_resist =	"Resistencia al Warp",
	},
	dump_stat2_text_colour = {
		Ammo =			"Municiones",
		Defences =		"Defensas",
		Heat_mngt =		"Gestión de calor",
	},
	dump_stat3_text_colour = {
		DamageDS =		"Daño",
	},
}

-- Función principal para crear palabras clave coloreadas
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
				result[key .. "_rgb_es"] = colored_text
			else
				result[key .. "_rgb_es"] = text
			end
		end
	end

	return result
end

--[+ +FRASES FRECUENTEMENTE REPETIDAS+ +]-- CPhrs("")
local function create_phrs_es(colors_es)
	-- Constantes locales para este archivo
	local Dot_green =	"{#color(35, 255, 5)}•{#reset()}"
	local Dot_red =		"{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_es[key] or fallback
	end

	return {
	Can_appl_thr_shlds =		Dot_green.." Se puede aplicar a través de escudos.",
	Can_be_refr =				Dot_green.." Se puede refrescar durante la duración activa.",
	Can_be_refr_drop_1 =		Dot_green.." Las acumulaciones se pueden refrescar durante la duración activa y se eliminan una a una.",
	Can_gen_mult =				Dot_green.." Puede generar múltiples acumulaciones por golpe.\n",
	Can_proc_mult =				Dot_green.." Puede activarse múltiples veces por golpe al "..CKWord("Cortar", "Cleaving_rgb_es")..".\n",
	Can_proc_mult_str =			Dot_green.." Puede activarse múltiples veces al "..CKWord("Cortar", "Cleaving_rgb_es")..".\n",
	Refr_dur_stappl =			Dot_green.." Refresca la duración al aplicar acumulación.",
-- Psyker
	Doesnt_Stack_Psy_Aura =		Dot_red.." No se acumula con la misma aura de otro "..CKWord("Psíquico", "cls_psy_rgb_es")..".",
	Doesnt_Stack_Psy_eff =		Dot_red.." No se acumula con el mismo debuff de otro "..CKWord("Psíquico", "cls_psy_rgb_es")..".",
-- Veteran
	Doesnt_Stack_Vet_Aura =		Dot_red.." No se acumula con la misma aura de otro "..CKWord("Veterano", "cls_vet_rgb_es")..".",
-- Zealot
	Doesnt_Stack_Zea_Aura =		Dot_red.." No se acumula con la misma aura de otro "..CKWord("Fanático", "cls_zea_rgb_es")..".",
	Doesnt_Stack_Zea_abil =		Dot_red.." No se acumula con el mismo talento de otro "..CKWord("Fanático", "cls_zea_rgb_es")..".",
-- Ogryn
	Doesnt_Stack_Ogr_Aura =		Dot_red.." No se acumula con la misma aura de otro "..CKWord("Ogryn", "cls_ogr_rgb_es")..".",
	Doesnt_Stack_Ogr_abil =		Dot_red.." No se acumula con el mismo talento de otro "..CKWord("Ogryn", "cls_ogr_rgb_es")..".",
-- Hive Scum
	Doesnt_Stack_Scm_Aura =		Dot_red.." No se acumula con la misma aura de otro "..CKWord("Escoria de la Colmena", "cls_scm_rgb_es")..".",
	Doesnt_Stack_Scm_eff =		Dot_red.." No se acumula con el mismo debuff de otro "..CKWord("Escoria de la Colmena", "cls_scm_rgb_es")..".",

	Cant_appl_thr_shlds =		Dot_red.." No se puede aplicar a través de escudos.",
	Cant_be_refr =				Dot_red.." No se puede refrescar durante la duración activa.",
	Cant_Crit =					Dot_red.." No puede causar "..CKWord("críticos", "Crit_rgb_es")..".\n",
	Carap_cant_clv =			Dot_red.." La armadura caparazón no se puede "..CKWord("cortar", "Cleaved_rgb_es").." por defecto.",
	Carap_cant_cleave =			Dot_red.." La armadura caparazón no se puede "..CKWord("cortar", "Cleaved_rgb_es").." por defecto.",
	Dont_intw_coher_toughn =	Dot_red.." No interactúa con la regeneración de "..CKWord("Robustez", "Toughness_rgb_es").." por "..CKWord("Coherencia", "Coherency_rgb_es")..".",
	}
end

--[+ +NOTAS+ +]-- CNote("")
local function create_nts_es(colors_es)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_es[key] or fallback
	end

	return {
		Brtl_note =				Dot_green.." "..CKWord("Fragilidad", "Brittleness_rgb_es").." aumenta el "..CKWord("Daño", "Damage_rgb_es").." del equipo al enemigo.",
		Fns_note =				Dot_green.." "..CKWord("Fineza", "Finesse_rgb_es").." aumenta el "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es").." y el "..CKWord("Daño crítico", "Crit_dmg_r_rgb_es")..".",
		Impact_note =			Dot_green.." "..CKWord("Impacto", "Impact_rgb_es").." aumenta la efectividad del "..CKWord("Tambaleo", "Stagger_rgb_es").." en enemigos.",
		Pwr_note =				Dot_green.." "..CKWord("Fuerza", "Strength_rgb_es").." aumenta el "..CKWord("Daño", "Damage_rgb_es")..", el "..CKWord("Tambaleo", "Stagger_rgb_es").." y el "..CKWord("Corte", "Cleave_rgb_es")..".",
		Rend_note =				Dot_green.." "..CKWord("Penetración", "Rending_rgb_es").." aumenta tu propio "..CKWord("Daño", "Damage_rgb_es").."."
	}
end

-- Creando colores
local colored_keywords = create_colored_keywords()

-- DEVOLVER TODO
return {
	keywords = colored_keywords,				-- PALABRAS CLAVE COLORES
	phrs = create_phrs_es(colored_keywords),	-- FRASES FRECUENTEMENTE REPETIDAS
	nts = create_nts_es(colored_keywords)		-- NOTAS
}