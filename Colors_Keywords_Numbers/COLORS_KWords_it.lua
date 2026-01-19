---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- PAROLE CHIAVE
local CONFIG = {
	bleed_text_colour = {
		Bleed =			"Sanguinamento",
		Bleeding =		"Sanguinante",
		Bleeds =		"Sanguina",
	},
	brittleness_text_colour = {
		Brittleness =	"Fragilità",
	},
	burn_text_colour = {
		Burn =			"Ustione",
		Burning =		"Bruciante",
		Heat =			"Calore",
		Overheat =		"Sovraccarico",
	},
	cleave_text_colour = {
		Cleave =		"Taglio",
		Cleaved =		"Tagliato",
		Cleaving =		"Taglia",
	},
	coherency_text_colour = {
		Coherency =		"Coerenza",
	},
	combat_ability_text_colour = {
		Ability_cd =	"Tempo di recupero abilità",
		Cd =			"Tempo di recupero",
		Cmbt_abil =		"Abilità di combattimento",
		Cmbt_abil_cd =	"Tempo di recupero abilità di combattimento",
	},
	corruption_text_colour = {
		Corrupted =		"Corrotto",
		Corruptdmg =	"Danno da corruzione",
		Corruption =	"Corruzione",
	},
	crit_text_colour = {
		Crit =			"Crit",
		Critical =		"Critico",

		Crit_chance =	"Probabilità critica",
		Crt_chance =	"Probabilità critica",

		Crit_hit =		"Colpo critico",
		Crit_hits =		"Colpi critici",
		Crt_hit_chnc =	"Probabilità colpo critico",
		Crt_hit_col =	"Danno colpo critico",

		Crit_strike =	"Colpo critico",
		Crit_strikes =	"Colpi critici",
		Crt_chnc_r =	"Probabilità colpo critico",
		Crt_strk_dmg =	"Danno colpo critico",

		Crit_Attk =		"Attacco critico",
		Crit_shots =	"Colpi critici",

		Crit_dmg_r =	"Danno critico",
		Crt_dmg_r =		"Danno critico",

		Conc_Stimm =	"Stimm di concentrazione",
	},
	damage_text_colour = {
		Damage =		"Danno",
		Damagewrp =		"Danno Warp",

		Combat_Stimm =	"Stimm da combattimento",
	},
	electrocuted_text_colour = {
		Electrocute =	"Folgorazione",
		Electrocuted =	"Folgorato",
		Electrocutes =	"Folgora",
		Electrcuting =	"Folgorante",
		Electrocution =	"Folgorazione",
	},
	finesse_text_colour = {
		Finesse =		"Finezza",
		Finesse_dmg =	"Danno da finezza",
	},
	health_text_colour = {
		Health =		"Salute",
		Wound =			"Ferita",
		Wounds =		"Ferite",
	},
	hit_mass_text_colour = {
		Hit_mass =		"Massa d'impatto",
	},
	impact_text_colour = {
		Impact =		"Impatto",
	},
	peril_text_colour = {
		Peril =			"Pericolo",
		Perils =		"Pericoli",
		PerilsozWarp =	"Pericoli del Warp",
	},
	power_text_colour = {
		Power =			"Potenza",
		Strength =		"Forza",
	},
	rending_text_colour = {
		Rending =		"Penetrazione",

		Cartel_Stimm =	"Stimm speciale del Cartello",
	},
	soulblaze_text_colour = {
		Soulblaze =		"Vampa d'anima",
	},
	stagger_text_colour = {
		Stagger =		"Barcollamento",
		Staggered =		"Barcollante",
		Staggering =	"Barcolla",
		Staggers =		"Barcollano",
		Stun =			"Stordimento",
		Stunned =		"Stordito",
		Stuns =			"Stordisce",
	},
	stamina_text_colour = {
		Stamina =		"Vigore",
		Stamina_c_r =	"Costo vigore",
	},
	toughness_text_colour = {
		TDR =			"RDR",
		TGHN =			"ROBUST",
		Tghns_dmg =		"Danno robustezza",
		Tghns_dmg_red =	"Riduzione danno robustezza",
		Toughness =		"Robustezza",
	},
	weakspot_text_colour = {
		Weak_spot =		"Punto debole",
		Weakspot = 		"Punto debole",
		Weakspots =		"Punti deboli",

		Weakspothit =	"Colpo a punto debole",
		Weakspothits =	"Colpi a punti deboli",

		Weakspot_dmg =	"Danno a punto debole",
	},

-- CLASSI
	-- Psyker
	class_psyker_text_colour = {
		cls_psy =		"Psichico",
		cls_psys =		"Psichici",
		cls_psy2 =		"Psichico",
	},
		precision_text_colour = {
			Precision =		"Precisione",

			Celerity_Stimm = "Stimm di celerità",
		},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr =		"Ogryn",
		cls_ogr2 =		"Ogryn",
	},
		fnp_text_colour = {
			Feel_no_pain =	"Non sentire dolore",

			Desperado =		"Desperado",			-- Hive Scum
		},
		luckyb_text_colour = {
			Lucky_bullet =	"Proiettile fortunato",

			Tghnss_gold =	"Robustezza",			-- Zealot
		},
		trample_text_colour = {
			Trample =		"Calpestio",

			Depend =		"Dipendenza",			-- Hive Scum
		},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea =		"Zelota",
		cls_zea2 =		"Zelota",
	},
		fury_text_colour = {
			Fury =			"Furore",

			Rampage =		"Furia!",				-- Hive Scum
		},
		momentum_text_colour = {
			Momentum =		"Slancio",

			Taunt =			"Provocazione",			-- Ogryn
			Taunted =		"Provocato",			-- Ogryn
			Taunting =		"Provoca",				-- Ogryn

			Adren =			"Adrenalina",			-- Hive Scum
			AdrenFr =		"Frenesia adrenalina",	-- Hive Scum
		},
		stealth_text_colour = {
			Stealth =		"Invisibilità",

			Psy_Mark =		"Segnato",				-- Psyker
			Psy_mark =		"segnato",				-- Psyker
		},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet =		"Veterano",
		cls_vet2 =		"Veterano",
	},
		focus_text_colour = {
			Forceful =		"Vigoroso",
			Focus =			"Concentrazione",

			Shout =			"Grido",				-- Hive Scum
		},
		focust_text_colour = {
			Focus_Target =	"Bersaglio focale",

			Markedenemy =	"Nemico segnato",		-- Psyker

			VultsMark =		"Segno dell'Avvoltoio",	-- Hive Scum
		},
		meleespec_text_colour = {
			Meleespec =		"Specialista corpo a corpo",

			Meleejust =		"Giustizia corpo a corpo",-- Arbites

			Exhausted =		"Esaurito",				-- Hive Scum
		},
		rangedspec_text_colour = {
			Rangedspec =	"Specialista a distanza",

			Rangedjust =	"Giustizia a distanza",	-- Arbites
		},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb =		"Arbitrato",
		cls_arb2 =		"Arbitrato",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm =		"Feccia dell'Hive",
		cls_scm2 =		"Feccia dell'Hive",
	},
		chemtox_text_colour = {
			Chem_Tox =		"Chem-tossina",

			Med_Stimm =		"Stimm medica",
		},

-- TALENTI
	talents_text_colour = {
-- Zealot
		Holy_relic =	"Reliquia sacra",
		Stun_gren =		"Granata stordente",
-- Arbites
		Arbites_gren =	"Granata Arbitres",
		BreakZLine =	"Rompere la linea",
-- Psyker
		Assail =		"Assalto",
		Brain_burst =	"Esplosione cerebrale",
		Brain_rupture =	"Rottura cerebrale",
		Enfeeble =		"Indebolimento",
		Scrier_gaze =	"Sguardo del Veggente",
		Scriers_gaze =	"Sguardo del Veggente",
		Smite =			"Flagello",
-- Veteran
		Frag_gren =		"Granata frammentazione",
		Fragm_gren =	"Granata frammentazione",
		Rangd_stnc =	"Posizione a distanza",
		Duty_honor =	"Dovere e onore",
-- Ogryn
		Att_Seeker =	"Cercatore di attenzione",

-- PENITENZE
		Base_tut_p =	"Addestramento base",
		Curio_p =		"Cimelio",
		Omnissia_p =	"Santuario dell'Omnissiah",
		Prologue_p =	"Prologo",
		Sir_melk_p =	"Requisitorio di Sire Melk",

	-- Psyker
		assail =		"Assalto",
		bburst =		"Esplosione cerebrale",
		bburst1 =		"Rottura cerebrale",
		disrdest =		"Destino disturbato",
		empsionics =	"Psionica potenziata",
		kinetpres =		"Presenza cinetica",
		prescience =	"Prescienza",
		psy_wrath =		"Ira psichica",
		psy_wrath2 =	"Grido di sfogo",
		scriersgaze =	"Sguardo del Veggente",
		seerspres =		"Presenza del Veggente",
		smite =			"Flagello",
		telekshii =		"Scudo telecinetico",
	-- Ogryn
		big_box =		"Grande scatola del dolore",
		big_box2 =		"Bombe via!",
		bigfriendro =	"Grande roccia amica",
		bonebraura =	"Aura dello Spezzaossa",
		bull_rush =		"Carica selvaggia",
		bull_rush4 =	"Indomito",
		burstlimo =		"Superamento limite raffica",
		cowculaura =	"Caccia ai vigliacchi",
		feelnop =		"Non sentire dolore",
		fragbomb =		"Bomba frammentazione",
		heavyhitter =	"Colpitore pesante",
		loyalprot =		"Protettore leale",
		pbbarrage =		"Raggruppamento a bruciapelo",
		stayclose =		"State vicini!",
	-- Veteran
		closenkill =	"Vicino e uccidi",
		exec_stan =		"Posizione del Boia",
		fcs_trg =		"Bersaglio focale!",
		firetim =		"Squadra di fuoco",
		frag_gr =		"Granata frammentazione",
		infiltr =		"Infiltrazione",
		krak_gr =		"Granata Krak",
		scavenger =		"Spazzino",
		snipcon =		"Concentrazione del tiratore",
		smok_gr =		"Granata fumogena",
		survivalist =	"Survivalista",
		voiceoc =		"Voce del comando",
		volley_fire =	"Fuoco di sbarramento",
		weapspec =		"Specialista armi",
	-- Zealot
		beaconop =		"Faro di purezza",
		benedict =		"Benedizione",
		blazingp =		"Pietà fiammeggiante",
		chast_wckd =	"Castigo degli empi",
		chorusosf =		"Coro della forza spirituale",
		fanrage =		"Furore",
		fire_gren =		"Granata incendiaria",
		fury_faithful =	"Furore dei fedeli",
		holy_revenant =	"Santo Revenant",
		inexor =		"Giudizio inesorabile",
		klinvery =		"Lame della fede",
		loner =			"Solitario",
		martydom =		"Martirio",
		shock_gren =	"Granata stordente",
		shock_gren1 =	"Granata stordente",
		shroudf =		"Campo d'ombra",
		momentum =		"Slancio",
	},

-- DIFFICOLTÀ
	-- sedition_text_colour = {
		-- sedition =		"Sedizione",
	-- },
	uprising_text_colour = {
		uprising =		"Rivolta",
	},
	malice_text_colour = {
		malice =		"Malizia",
	},
	heresy_text_colour = {
		heresy =		"Eresia",
	},
	damnation_text_colour = {
		damnation =		"Dannazione",
	},
	auric_text_colour = {
		auric =			"Aurico",
	},

-- STATS SCARTO
	dump_stat_text_colour = {
		Mobility =		"Mobilità",
		Melee_dmg =		"Danno corpo a corpo",
		Warp_resist =	"Resistenza Warp",
	},
	dump_stat2_text_colour = {
		Ammo =			"Munizioni",
		Defences =		"Difese",
		Heat_mngt =		"Gestione calore",
	},
	dump_stat3_text_colour = {
		DamageDS =		"Danno",
	},
}

-- Funzione principale per creare parole chiave colorate
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
				result[key .. "_rgb_it"] = colored_text
			else
				result[key .. "_rgb_it"] = text
			end
		end
	end

	return result
end

--[+ +FRASI FREQUENTEMENTE RIPETUTE+ +]-- CPhrs("")
local function create_phrs_it(colors_it)
	-- Costanti locali per questo file
	local Dot_green =	"{#color(35, 255, 5)}•{#reset()}"
	local Dot_red =		"{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_it[key] or fallback
	end

	return {
	Can_appl_thr_shlds =		Dot_green.." Può essere applicato attraverso gli scudi.",
	Can_be_refr =				Dot_green.." Può essere rinfrescato durante la durata attiva. ",
	Can_be_refr_drop_1 =		Dot_green.." Le accumulazioni possono essere rinfrescate durante la durata attiva e vengono rimosse una ad una.",
	Can_gen_mult =				Dot_green.." Può generare multiple accumulazioni per colpo.\n",
	Can_proc_mult =				Dot_green.." Può attivarsi multiple volte per colpo quando "..CKWord("Taglia", "Cleaving_rgb_it")..".\n",
	Can_proc_mult_str =			Dot_green.." Può attivarsi multiple volte quando "..CKWord("Taglia", "Cleaving_rgb_it")..".\n",
	Refr_dur_stappl =			Dot_green.." Rinfresca la durata all'applicazione dell'accumulo. ",
-- Psyker
	Doesnt_Stack_Psy_Aura =		Dot_red.." Non si accumula con la stessa aura di un altro "..CKWord("Psichico", "cls_psy_rgb_it")..".",
	Doesnt_Stack_Psy_eff =		Dot_red.." Non si accumula con lo stesso debuff di un altro "..CKWord("Psichico", "cls_psy_rgb_it")..".",
-- Veteran
	Doesnt_Stack_Vet_Aura =		Dot_red.." Non si accumula con la stessa aura di un altro "..CKWord("Veterano", "cls_vet_rgb_it")..".",
-- Zealot
	Doesnt_Stack_Zea_Aura =		Dot_red.." Non si accumula con la stessa aura di un altro "..CKWord("Zelota", "cls_zea_rgb_it")..".",
	Doesnt_Stack_Zea_abil =		Dot_red.." Non si accumula con lo stesso talento di un altro "..CKWord("Zelota", "cls_zea_rgb_it")..".",
-- Ogryn
	Doesnt_Stack_Ogr_Aura =		Dot_red.." Non si accumula con la stessa aura di un altro "..CKWord("Ogryn", "cls_ogr_rgb_it")..".",
	Doesnt_Stack_Ogr_abil =		Dot_red.." Non si accumula con lo stesso talento di un altro "..CKWord("Ogryn", "cls_ogr_rgb_it")..".",
-- Hive Scum
	Doesnt_Stack_Scm_Aura =		Dot_red.." Non si accumula con la stessa aura di un altro "..CKWord("Feccia dell'Hive", "cls_scm_rgb_it")..".",
	Doesnt_Stack_Scm_eff =		Dot_red.." Non si accumula con lo stesso debuff di un altro "..CKWord("Feccia dell'Hive", "cls_scm_rgb_it")..".",

	Cant_appl_thr_shlds =		Dot_red.." Non può essere applicato attraverso gli scudi.",
	Cant_be_refr =				Dot_red.." Non può essere rinfrescato durante la durata attiva. ",
	Cant_Crit =					Dot_red.." Non può infliggere "..CKWord("critici", "Crit_rgb_it")..".\n",
	Carap_cant_clv =			Dot_red.." L'armatura carapace non può essere "..CKWord("tagliata", "Cleaved_rgb_it").." di default.",
	Carap_cant_cleave =			Dot_red.." L'armatura carapace non può essere "..CKWord("tagliata", "Cleaved_rgb_it").." di default.",
	Dont_intw_coher_toughn =	Dot_red.." Non interagisce con la rigenerazione della "..CKWord("Robustezza", "Toughness_rgb_it").." da "..CKWord("Coerenza", "Coherency_rgb_it")..".",
	}
end

--[+ +NOTE+ +]-- CNote("")
local function create_nts_it(colors_it)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_it[key] or fallback
	end

	return {
		Brtl_note =				Dot_green.." "..CKWord("Fragilità", "Brittleness_rgb_it").." aumenta i "..CKWord("danni", "Damage_rgb_it").." della squadra al nemico.",
		Fns_note =				Dot_green.." "..CKWord("Finezza", "Finesse_rgb_it").." aumenta i "..CKWord("danni a punto debole", "Weakspot_dmg_rgb_it").." e i "..CKWord("danni critici", "Crit_dmg_r_rgb_it")..".",
		Impact_note =			Dot_green.." "..CKWord("Impatto", "Impact_rgb_it").." aumenta l'efficacia del "..CKWord("Barcollamento", "Stagger_rgb_it").." sui nemici.",
		Pwr_note =				Dot_green.." "..CKWord("Forza", "Strength_rgb_it").." aumenta i "..CKWord("danni", "Damage_rgb_it")..", il "..CKWord("Barcollamento", "Stagger_rgb_it").." e il "..CKWord("Taglio", "Cleave_rgb_it")..".",
		Rend_note =				Dot_green.." "..CKWord("Penetrazione", "Rending_rgb_it").." aumenta i tuoi "..CKWord("danni", "Damage_rgb_it").."."
	}
end

-- Creazione colori
local colored_keywords = create_colored_keywords()

-- RESTITUISCI TUTTO
return {
	keywords = colored_keywords,				-- PAROLE CHIAVE COLORATE
	phrs = create_phrs_it(colored_keywords),	-- FRASI FREQUENTEMENTE RIPETUTE
	nts = create_nts_it(colored_keywords)		-- NOTE
}
