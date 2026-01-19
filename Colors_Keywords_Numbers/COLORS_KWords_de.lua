---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- SCHLÜSSELWÖRTER
local CONFIG = {
	bleed_text_colour = {
		Bleed =			"Blutung",
		Bleeding =		"Blutend",
		Bleeds =		"Blutet",
	},
	brittleness_text_colour = {
		Brittleness =	"Brüchigkeit",
	},
	burn_text_colour = {
		Burn =			"Verbrennung",
		Burning =		"Brennend",
		Heat =			"Hitze",
		Overheat =		"Überhitzung",
	},
	cleave_text_colour = {
		Cleave =		"Spalten",
		Cleaved =		"Gespalten",
		Cleaving =		"Spaltet",
	},
	coherency_text_colour = {
		Coherency =		"Kohärenz",
	},
	combat_ability_text_colour = {
		Ability_cd =	"Fähigkeitsabklingzeit",
		Cd =			"Abklingzeit",
		Cmbt_abil =		"Kampffähigkeit",
		Cmbt_abil_cd =	"Kampffähigkeitsabklingzeit",
	},
	corruption_text_colour = {
		Corrupted =		"Verderbt",
		Corruptdmg =	"Verderbnisschaden",
		Corruption =	"Verderbnis",
	},
	crit_text_colour = {
		Crit =			"Krit",
		Critical =		"Kritisch",

		Crit_chance =	"Kritische Trefferchance",
		Crt_chance =	"Kritische Trefferchance",

		Crit_hit =		"Kritischer Treffer",
		Crit_hits =		"Kritische Treffer",
		Crt_hit_chnc =	"Kritische Trefferchance",
		Crt_hit_col =	"Kritischer Trefferschaden",

		Crit_strike =	"Kritischer Treffer",
		Crit_strikes =	"Kritische Treffer",
		Crt_chnc_r =	"Kritische Trefferchance",
		Crt_strk_dmg =	"Kritischer Trefferschaden",

		Crit_Attk =		"Kritischer Angriff",
		Crit_shots =	"Kritische Schüsse",

		Crit_dmg_r =	"Kritischer Schaden",
		Crt_dmg_r =		"Kritischer Schaden",

		Conc_Stimm =	"Konzentrationsstimm",
	},
	damage_text_colour = {
		Damage =		"Schaden",
		Damagewrp =		"Warpschaden",

		Combat_Stimm =	"Kampfstimm",
	},
	electrocuted_text_colour = {
		Electrocute =	"Elektroschock",
		Electrocuted =	"Elektrisiert",
		Electrocutes =	"Elektrisiert",
		Electrcuting =	"Elektrisierend",
		Electrocution =	"Elektrokution",
	},
	finesse_text_colour = {
		Finesse =		"Finesse",
		Finesse_dmg =	"Finesseschaden",
	},
	health_text_colour = {
		Health =		"Gesundheit",
		Wound =			"Wunde",
		Wounds =		"Wunden",
	},
	hit_mass_text_colour = {
		Hit_mass =		"Schlagmasse",
	},
	impact_text_colour = {
		Impact =		"Wucht",
	},
	peril_text_colour = {
		Peril =			"Gefahr",
		Perils =		"Gefahren",
		PerilsozWarp =	"Gefahren des Warps",
	},
	power_text_colour = {
		Power =			"Kraft",
		Strength =		"Stärke",
	},
	rending_text_colour = {
		Rending =		"Durchschlag",

		Cartel_Stimm =	"Kartell-Spezial-Stimm",
	},
	soulblaze_text_colour = {
		Soulblaze =		"Seelenbrand",
	},
	stagger_text_colour = {
		Stagger =		"Taumeln",
		Staggered =		"Getaumelt",
		Staggering =	"Taumelt",
		Staggers =		"Taumeln",
		Stun =			"Betäubung",
		Stunned =		"Betäubt",
		Stuns =			"Betäubt",
	},
	stamina_text_colour = {
		Stamina =		"Ausdauer",
		Stamina_c_r =	"Ausdauerkosten",
	},
	toughness_text_colour = {
		TDR =			"TDSR",
		TGHN =			"WIDER",
		Tghns_dmg =		"Widerstandsschaden",
		Tghns_dmg_red =	"Widerstandsschadensreduktion",
		Toughness =		"Widerstand",
	},
	weakspot_text_colour = {
		Weak_spot =		"Schwachstelle",
		Weakspot = 		"Schwachstelle",
		Weakspots =		"Schwachstellen",

		Weakspothit =	"Schwachstellen-Treffer",
		Weakspothits =	"Schwachstellen-Treffer",

		Weakspot_dmg =	"Schwachstellen-Schaden",
	},

-- KLASSEN
	-- Psyker
	class_psyker_text_colour = {
		cls_psy =		"Psyker",
		cls_psys =		"Psykers",
		cls_psy2 =		"Psykers",
	},
		precision_text_colour = {
			Precision =		"Präzision",

			Celerity_Stimm = "Eil-Stimm",
		},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr =		"Ogryn",
		cls_ogr2 =		"Ogryns",
	},
		fnp_text_colour = {
			Feel_no_pain =	"Schmerzunempfindlichkeit",

			Desperado =		"Desperado",			-- Hive Scum
		},
		luckyb_text_colour = {
			Lucky_bullet =	"Glückskugel",

			Tghnss_gold =	"Widerstand",			-- Zealot
		},
		trample_text_colour = {
			Trample =		"Niedertrampeln",

			Depend =		"Abhängigkeit",			-- Hive Scum
		},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea =		"Eiferer",
		cls_zea2 =		"Eiferers",
	},
		fury_text_colour = {
			Fury =			"Wut",

			Rampage =		"Amoklauf!",			-- Hive Scum
		},
		momentum_text_colour = {
			Momentum =		"Schwung",

			Taunt =			"Provokation",			-- Ogryn
			Taunted =		"Provoziert",			-- Ogryn
			Taunting =		"Provoziert",			-- Ogryn

			Adren =			"Adrenalin",			-- Hive Scum
			AdrenFr =		"Adrenalinrausch",		-- Hive Scum
		},
		stealth_text_colour = {
			Stealth =		"Tarnung",

			Psy_Mark =		"Markiert",				-- Psyker
			Psy_mark =		"markiert",				-- Psyker
		},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet =		"Veteran",
		cls_vet2 =		"Veterans",
	},
		focus_text_colour = {
			Forceful =		"Kraftvoll",
			Focus =			"Fokus",

			Shout =			"Schrei",				-- Hive Scum
		},
		focust_text_colour = {
			Focus_Target =	"Fokusziel",

			Markedenemy =	"Markierter Feind",		-- Psyker

			VultsMark =		"Geiermarke",			-- Hive Scum
		},
		meleespec_text_colour = {
			Meleespec =		"Nahkampfspezialist",

			Meleejust =		"Nahkampfgerechtigkeit",-- Arbites

			Exhausted =		"Erschöpft",			-- Hive Scum
		},
		rangedspec_text_colour = {
			Rangedspec =	"Fernkampfspezialist",

			Rangedjust =	"Fernkampfgerechtigkeit",-- Arbites
		},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb =		"Arbitrator",
		cls_arb2 =		"Arbitrators",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm =		"Hive-Abschaum",
		cls_scm2 =		"Hive-Abschaums",
	},
		chemtox_text_colour = {
			Chem_Tox =		"Chem-Toxin",

			Med_Stimm =		"Med-Stimm",
		},

-- TALENTE
	talents_text_colour = {
-- Zealot
		Holy_relic =	"Heilige Reliquie",
		Stun_gren =		"Betäubungsgranate",
-- Arbites
		Arbites_gren =	"Arbites-Granate",
		BreakZLine =	"Die Linie durchbrechen",
-- Psyker
		Assail =		"Angriff",
		Brain_burst =	"Gehirnexplosion",
		Brain_rupture =	"Gehirnruptur",
		Enfeeble =		"Entkräftung",
		Scrier_gaze =	"Seherblick",
		Scriers_gaze =	"Seherblick",
		Smite =			"Zerschmettern",
-- Veteran
		Frag_gren =		"Sprenggranate",
		Fragm_gren =	"Sprenggranate",
		Rangd_stnc =	"Fernkampfhaltung",
		Duty_honor =	"Pflicht und Ehre",
-- Ogryn
		Att_Seeker =	"Aufmerksamkeitssucher",

-- BÜßUNGEN
		Base_tut_p =	"Grundausbildung",
		Curio_p =		"Kuriosität",
		Omnissia_p =	"Schrein des Omnissiah",
		Prologue_p =	"Prolog",
		Sir_melk_p =	"Sire Melks Requisitorium",

	-- Psyker
		assail =		"Angriff",
		bburst =		"Gehirnexplosion",
		bburst1 =		"Gehirnruptur",
		disrdest =		"Schicksalsstörung",
		empsionics =	"Verstärkte Psionik",
		kinetpres =		"Kinetische Präsenz",
		prescience =	"Vorausahnung",
		psy_wrath =		"Psykinetische Wut",
		psy_wrath2 =	"Entladungsschrei",
		scriersgaze =	"Seherblick",
		seerspres =		"Seherpräsenz",
		smite =			"Zerschmettern",
		telekshii =		"Telekinetischer Schild",
	-- Ogryn
		big_box =		"Große Kiste voller Schmerz",
		big_box2 =		"Bomben weg!",
		bigfriendro =	"Großer freundlicher Fels",
		bonebraura =	"Knochenbrecheraura",
		bull_rush =		"Sturmangriff",
		bull_rush4 =	"Unbezwingbar",
		burstlimo =		"Sprengsatzüberschreitung",
		cowculaura =	"Feiglingsjagd",
		feelnop =		"Schmerzunempfindlichkeit",
		fragbomb =		"Sprengbombe",
		heavyhitter =	"Schwerer Schlager",
		loyalprot =		"Loyaler Beschützer",
		pbbarrage =		"Nahkampf-Barrage",
		stayclose =		"Bleibt zusammen!",
	-- Veteran
		closenkill =	"Nahkampftöter",
		exec_stan =		"Henkershaltung",
		fcs_trg =		"Ziel fokussieren!",
		firetim =		"Kampfgruppe",
		frag_gr =		"Sprenggranate",
		infiltr =		"Infiltration",
		krak_gr =		"Krak-Granate",
		scavenger =		"Plünderer",
		snipcon =		"Scharfschützenfokus",
		smok_gr =		"Rauchgranate",
		survivalist =	"Überlebenskünstler",
		voiceoc =		"Befehlsstimme",
		volley_fire =	"Salvenfeuer",
		weapspec =		"Waffenspezialist",
	-- Zealot
		beaconop =		"Leuchtfeuer der Reinheit",
		benedict =		"Segen",
		blazingp =		"Lodernde Frömmigkeit",
		chast_wckd =	"Bestrafung der Frevler",
		chorusosf =		"Chor spiritueller Stärke",
		fanrage =		"Wut",
		fire_gren =		"Feuergranate",
		fury_faithful =	"Wut der Gläubigen",
		holy_revenant =	"Heiliger Wiedergänger",
		inexor =		"Unerbittliches Urteil",
		klinvery =		"Klingen des Glaubens",
		loner =			"Einzelgänger",
		martydom =		"Martyrium",
		shock_gren =	"Betäubungsgranate",
		shock_gren1 =	"Betäubungsgranate",
		shroudf =		"Schattenfeld",
		momentum =		"Schwung",
	},

-- SCHWIERIGKEIT
	-- sedition_text_colour = {
		-- sedition =		"Aufruhr",
	-- },
	uprising_text_colour = {
		uprising =		"Aufstand",
	},
	malice_text_colour = {
		malice =		"Boshaftigkeit",
	},
	heresy_text_colour = {
		heresy =		"Häresie",
	},
	damnation_text_colour = {
		damnation =		"Verdammnis",
	},
	auric_text_colour = {
		auric =			"Aurisch",
	},

-- MÜLLSTATS
	dump_stat_text_colour = {
		Mobility =		"Mobilität",
		Melee_dmg =		"Nahkampfschaden",
		Warp_resist =	"Warp-Widerstand",
	},
	dump_stat2_text_colour = {
		Ammo =			"Munition",
		Defences =		"Verteidigung",
		Heat_mngt =		"Hitzemanagement",
	},
	dump_stat3_text_colour = {
		DamageDS =		"Schaden",
	},
}

-- Hauptfunktion zum Erstellen farbiger Schlüsselwörter
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
				result[key .. "_rgb_de"] = colored_text
			else
				result[key .. "_rgb_de"] = text
			end
		end
	end

	return result
end

--[+ +HÄUFIG WIEDERHOLTE SÄTZE+ +]-- CPhrs("")
local function create_phrs_de(colors_de)
	-- Lokale Konstanten für diese Datei
	local Dot_green =	"{#color(35, 255, 5)}•{#reset()}"
	local Dot_red =		"{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_de[key] or fallback
	end

	return {
	Can_appl_thr_shlds =		Dot_green.." Kann durch Schilde angewendet werden.",
	Can_be_refr =				Dot_green.." Kann während der aktiven Dauer aufgefrischt werden. ",
	Can_be_refr_drop_1 =		Dot_green.." Stapel können während der aktiven Dauer aufgefrischt werden und werden einzeln entfernt.",
	Can_gen_mult =				Dot_green.." Kann mehrere Stapel pro Schlag erzeugen.\n",
	Can_proc_mult =				Dot_green.." Kann mehrmals pro Schlag auslösen, wenn "..CKWord("gespalten", "Cleaving_rgb_de").." wird.\n",
	Can_proc_mult_str =			Dot_green.." Kann mehrmals auslösen, wenn "..CKWord("gespalten", "Cleaving_rgb_de").." wird.\n",
	Refr_dur_stappl =			Dot_green.." Frischt die Dauer bei Stapelanwendung auf. ",
-- Psyker
	Doesnt_Stack_Psy_Aura =		Dot_red.." Stapelt nicht mit derselben Aura eines anderen "..CKWord("Psykers", "cls_psy_rgb_de")..".",
	Doesnt_Stack_Psy_eff =		Dot_red.." Stapelt nicht mit demselben Debuff eines anderen "..CKWord("Psykers", "cls_psy_rgb_de")..".",
-- Veteran
	Doesnt_Stack_Vet_Aura =		Dot_red.." Stapelt nicht mit derselben Aura eines anderen "..CKWord("Veterans", "cls_vet_rgb_de")..".",
-- Zealot
	Doesnt_Stack_Zea_Aura =		Dot_red.." Stapelt nicht mit derselben Aura eines anderen "..CKWord("Eiferers", "cls_zea_rgb_de")..".",
	Doesnt_Stack_Zea_abil =		Dot_red.." Stapelt nicht mit demselben Talent eines anderen "..CKWord("Eiferers", "cls_zea_rgb_de")..".",
-- Ogryn
	Doesnt_Stack_Ogr_Aura =		Dot_red.." Stapelt nicht mit derselben Aura eines anderen "..CKWord("Ogryns", "cls_ogr_rgb_de")..".",
	Doesnt_Stack_Ogr_abil =		Dot_red.." Stapelt nicht mit demselben Talent eines anderen "..CKWord("Ogryns", "cls_ogr_rgb_de")..".",
-- Hive Scum
	Doesnt_Stack_Scm_Aura =		Dot_red.." Stapelt nicht mit derselben Aura eines anderen "..CKWord("Hive-Abschaums", "cls_scm_rgb_de")..".",
	Doesnt_Stack_Scm_eff =		Dot_red.." Stapelt nicht mit demselben Debuff eines anderen "..CKWord("Hive-Abschaums", "cls_scm_rgb_de")..".",

	Cant_appl_thr_shlds =		Dot_red.." Kann nicht durch Schilde angewendet werden.",
	Cant_be_refr =				Dot_red.." Kann während der aktiven Dauer nicht aufgefrischt werden. ",
	Cant_Crit =					Dot_red.." Kann nicht "..CKWord("kritisch", "Crit_rgb_de").." treffen.\n",
	Carap_cant_clv =			Dot_red.." Carapax-Rüstung kann standardmäßig nicht "..CKWord("gespalten", "Cleaved_rgb_de").." werden.",
	Carap_cant_cleave =			Dot_red.." Carapax-Rüstung kann standardmäßig nicht "..CKWord("gespalten", "Cleaved_rgb_de").." werden.",
	Dont_intw_coher_toughn =	Dot_red.." Interagiert nicht mit "..CKWord("Kohärenz", "Coherency_rgb_de").." "..CKWord("Widerstands", "Toughness_rgb_de").."-Regeneration.",
	}
end

--[+ +NOTIZEN+ +]-- CNote("")
local function create_nts_de(colors_de)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_de[key] or fallback
	end

	return {
		Brtl_note =				Dot_green.." "..CKWord("Brüchigkeit", "Brittleness_rgb_de").." erhöht den "..CKWord("Schaden", "Damage_rgb_de").." des Teams am Gegner.",
		Fns_note =				Dot_green.." "..CKWord("Finesse", "Finesse_rgb_de").." erhöht "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de").." und "..CKWord("Kritischer Schaden", "Crit_dmg_r_rgb_de")..".",
		Impact_note =			Dot_green.." "..CKWord("Wucht", "Impact_rgb_de").." erhöht die Wirksamkeit von "..CKWord("Taumeln", "Stagger_rgb_de").." bei Gegnern.",
		Pwr_note =				Dot_green.." "..CKWord("Stärke", "Strength_rgb_de").." erhöht "..CKWord("Schaden", "Damage_rgb_de")..", "..CKWord("Taumeln", "Stagger_rgb_de").." und "..CKWord("Spalten", "Cleave_rgb_de")..".",
		Rend_note =				Dot_green.." "..CKWord("Durchschlag", "Rending_rgb_de").." erhöht deinen eigenen "..CKWord("Schaden", "Damage_rgb_de").."."
	}
end

-- Farben erstellen
local colored_keywords = create_colored_keywords()

-- ALLES ZURÜCKGEBEN
return {
	keywords = colored_keywords,				-- FARBIGE SCHLÜSSELWÖRTER
	phrs = create_phrs_de(colored_keywords),	-- HÄUFIG WIEDERHOLTE SÄTZE
	nts = create_nts_de(colored_keywords)		-- NOTIZEN
}
