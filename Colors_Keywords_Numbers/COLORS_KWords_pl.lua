---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- SŁOWA KLUCZOWE
local CONFIG = {
	bleed_text_colour = {
		Bleed =			"Krwawienie",
		Bleeding =		"Krwawiący",
		Bleeds =		"Krwawi",
	},
	brittleness_text_colour = {
		Brittleness =	"Kruchość",
	},
	burn_text_colour = {
		Burn =			"Oparzenie",
		Burning =		"Płonący",
		Heat =			"Żar",
		Overheat =		"Przegrzanie",
	},
	cleave_text_colour = {
		Cleave =		"Rozłupywanie",
		Cleaved =		"Rozłupany",
		Cleaving =		"Rozłupuje",
	},
	coherency_text_colour = {
		Coherency =		"Spójność",
	},
	combat_ability_text_colour = {
		Ability_cd =	"Czas odnowienia umiejętności",
		Cd =			"Czas odnowienia",
		Cmbt_abil =		"Umiejętność bojowa",
		Cmbt_abil_cd =	"Czas odnowienia umiejętności bojowej",
	},
	corruption_text_colour = {
		Corrupted =		"Skażony",
		Corruptdmg =	"Obrażenia od skażenia",
		Corruption =	"Skażenie",
	},
	crit_text_colour = {
		Crit =			"Kryt",
		Critical =		"Krytyczny",

		Crit_chance =	"Szansa na krytyka",
		Crt_chance =	"Szansa na krytyka",

		Crit_hit =		"Krytyczne trafienie",
		Crit_hits =		"Krytyczne trafienia",
		Crt_hit_chnc =	"Szansa na krytyczne trafienie",
		Crt_hit_col =	"Obrażenia krytycznego trafienia",

		Crit_strike =	"Krytyczny atak",
		Crit_strikes =	"Krytyczne ataki",
		Crt_chnc_r =	"Szansa na krytyczny atak",
		Crt_strk_dmg =	"Obrażenia krytycznego ataku",

		Crit_Attk =		"Krytyczny atak",
		Crit_shots =	"Krytyczne strzały",

		Crit_dmg_r =	"Obrażenia krytyczne",
		Crt_dmg_r =		"Obrażenia krytyczne",

		Conc_Stimm =	"Stimm koncentracji",
	},
	damage_text_colour = {
		Damage =		"Obrażenia",
		Damagewrp =		"Obrażenia Warp",

		Combat_Stimm =	"Stimm bojowy",
	},
	electrocuted_text_colour = {
		Electrocute =	"Porażenie",
		Electrocuted =	"Porazony",
		Electrocutes =	"Poraża",
		Electrcuting =	"Porażający",
		Electrocution =	"Porażenie",
	},
	finesse_text_colour = {
		Finesse =		"Finezja",
		Finesse_dmg =	"Obrażenia od finezji",
	},
	health_text_colour = {
		Health =		"Zdrowie",
		Wound =			"Rana",
		Wounds =		"Rany",
	},
	hit_mass_text_colour = {
		Hit_mass =		"Masa uderzenia",
	},
	impact_text_colour = {
		Impact =		"Siła uderzenia",
	},
	peril_text_colour = {
		Peril =			"Zagrożenie",
		Perils =		"Zagrożenia",
		PerilsozWarp =	"Zagrożenia Warp",
	},
	power_text_colour = {
		Power =			"Moc",
		Strength =		"Siła",
	},
	rending_text_colour = {
		Rending =		"Rozrywanie",

		Cartel_Stimm =	"Stimm specjalny Kartelu",
	},
	soulblaze_text_colour = {
		Soulblaze =		"Pożar dusz",
	},
	stagger_text_colour = {
		Stagger =		"Oślepienie",
		Staggered =		"Oślepiony",
		Staggering =	"Oślepia",
		Staggers =		"Oślepiają",
		Stun =			"Ogłuszenie",
		Stunned =		"Ogłuszony",
		Stuns =			"Ogłusza",
	},
	stamina_text_colour = {
		Stamina =		"Wytrzymałość",
		Stamina_c_r =	"Koszt wytrzymałości",
	},
	toughness_text_colour = {
		TDR =			"TDR",
		TGHN =			"ODPOR",
		Tghns_dmg =		"Obrażenia od odporności",
		Tghns_dmg_red =	"Redukcja obrażeń od odporności",
		Toughness =		"Odporność",
	},
	weakspot_text_colour = {
		Weak_spot =		"Słaby punkt",
		Weakspot = 		"Słaby punkt",
		Weakspots =		"Słabe punkty",

		Weakspothit =	"Trafienie w słaby punkt",
		Weakspothits =	"Trafienia w słabe punkty",

		Weakspot_dmg =	"Obrażenia w słaby punkt",
	},

-- KLASY
	-- Psyker
	class_psyker_text_colour = {
		cls_psy =		"Psyker",
		cls_psys =		"Psykerzy",
		cls_psy2 =		"Psykera",
	},
		precision_text_colour = {
			Precision =		"Precyzja",

			Celerity_Stimm = "Stimm szybkości",
		},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr =		"Ogryn",
		cls_ogr2 =		"Ogryna",
	},
		fnp_text_colour = {
			Feel_no_pain =	"Nieczułość na ból",

			Desperado =		"Desperado",			-- Hive Scum
		},
		luckyb_text_colour = {
			Lucky_bullet =	"Szczęśliwy pocisk",

			Tghnss_gold =	"Odporność",			-- Zealot
		},
		trample_text_colour = {
			Trample =		"Deptanie",

			Depend =		"Zależność",			-- Hive Scum
		},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea =		"Zelota",
		cls_zea2 =		"Zeloty",
	},
		fury_text_colour = {
			Fury =			"Furia",

			Rampage =		"Szał!",				-- Hive Scum
		},
		momentum_text_colour = {
			Momentum =		"Rozpęd",

			Taunt =			"Prowokacja",			-- Ogryn
			Taunted =		"Prowokowany",			-- Ogryn
			Taunting =		"Prowokuje",			-- Ogryn

			Adren =			"Adrenalina",			-- Hive Scum
			AdrenFr =		"Szał adrenaliny",		-- Hive Scum
		},
		stealth_text_colour = {
			Stealth =		"Skradanie",

			Psy_Mark =		"Oznaczony",			-- Psyker
			Psy_mark =		"oznaczony",			-- Psyker
		},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet =		"Weteran",
		cls_vet2 =		"Weterana",
	},
		focus_text_colour = {
			Forceful =		"Siłowy",
			Focus =			"Skupienie",

			Shout =			"Krzyk",				-- Hive Scum
		},
		focust_text_colour = {
			Focus_Target =	"Cel skupienia",

			Markedenemy =	"Oznaczony wróg",		-- Psyker

			VultsMark =		"Znak Sępa",			-- Hive Scum
		},
		meleespec_text_colour = {
			Meleespec =		"Specjalista walki wręcz",

			Meleejust =		"Sprawiedliwość wręcz",	-- Arbites

			Exhausted =		"Wyczerpanie",			-- Hive Scum
		},
		rangedspec_text_colour = {
			Rangedspec =	"Specjalista dystansowy",

			Rangedjust =	"Sprawiedliwość dystansowa",-- Arbites
		},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb =		"Arbitrator",
		cls_arb2 =		"Arbitratora",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm =		"Szumowina Hive",
		cls_scm2 =		"Szumowiny Hive",
	},
		chemtox_text_colour = {
			Chem_Tox =		"Chemtoksyna",

			Med_Stimm =		"Stimm medyczny",
		},

-- TALENTY
	talents_text_colour = {
-- Zealot
		Holy_relic =	"Święta relikwia",
		Stun_gren =		"Granat ogłuszający",
-- Arbites
		Arbites_gren =	"Granat Arbites",
		BreakZLine =	"Przerwij linię",
-- Psyker
		Assail =		"Atak",
		Brain_burst =	"Wybuch mózgu",
		Brain_rupture =	"Pęknięcie mózgu",
		Enfeeble =		"Osłabienie",
		Scrier_gaze =	"Wzrok Widzącego",
		Scriers_gaze =	"Wzrok Widzącego",
		Smite =			"Porażenie",
-- Veteran
		Frag_gren =		"Granat odłamkowy",
		Fragm_gren =	"Granat odłamkowy",
		Rangd_stnc =	"Postawa dystansowa",
		Duty_honor =	"Obowiązek i honor",
-- Ogryn
		Att_Seeker =	"Poszukiwacz uwagi",

-- PENITENCJE
		Base_tut_p =	"Podstawowe szkolenie",
		Curio_p =		"Kuriozum",
		Omnissia_p =	"Sanktuarium Omnissiah",
		Prologue_p =	"Prolog",
		Sir_melk_p =	"Requisitorium Sir Melka",

	-- Psyker
		assail =		"Atak",
		bburst =		"Wybuch mózgu",
		bburst1 =		"Pęknięcie mózgu",
		disrdest =		"Zakłócenie przeznaczenia",
		empsionics =	"Wzmocniona psionika",
		kinetpres =		"Obecność kinetyczna",
		prescience =	"Przewidywanie",
		psy_wrath =		"Gniew psychokinezy",
		psy_wrath2 =	"Krzyk wentylacji",
		scriersgaze =	"Wzrok Widzącego",
		seerspres =		"Obecność Widzącego",
		smite =			"Porażenie",
		telekshii =		"Tarcza telekinetyczna",
	-- Ogryn
		big_box =		"Wielkie pudełko bólu",
		big_box2 =		"Bomby w drogę!",
		bigfriendro =	"Wielki przyjazny głaz",
		bonebraura =	"Aura Łamacza Kości",
		bull_rush =		"Szarża byka",
		bull_rush4 =	"Nieugaszony",
		burstlimo =		"Nadpisanie ogranicznika serii",
		cowculaura =	"Tępienie tchórzy",
		feelnop =		"Nieczułość na ból",
		fragbomb =		"Bomba odłamkowa",
		heavyhitter =	"Ciosacz",
		loyalprot =		"Lojalny obrońca",
		pbbarrage =		"Ostrzał na wprost",
		stayclose =		"Trzymajcie się blisko!",
	-- Veteran
		closenkill =	"Zblij się i zabij",
		exec_stan =		"Postawa kata",
		fcs_trg =		"Skup się na celu!",
		firetim =		"Drużyna ogniowa",
		frag_gr =		"Granat odłamkowy",
		infiltr =		"Infiltracja",
		krak_gr =		"Granat krak",
		scavenger =		"Zbieracz",
		snipcon =		"Skupienie snajpera",
		smok_gr =		"Granat dymny",
		survivalist =	"Survivalista",
		voiceoc =		"Głos dowodzenia",
		volley_fire =	"Ogień salwowy",
		weapspec =		"Specjalista od broni",
	-- Zealot
		beaconop =		"Latarnia czystości",
		benedict =		"Błogosławieństwo",
		blazingp =		"Płonąca pobożność",
		chast_wckd =	"Ukaranie niegodziwców",
		chorusosf =		"Chór duchowej wytrzymałości",
		fanrage =		"Furia",
		fire_gren =		"Granat zapalający",
		fury_faithful =	"Furia wiernych",
		holy_revenant =	"Święty revenant",
		inexor =		"Nieubłagany wyrok",
		klinvery =		"Ostrza wiary",
		loner =			"Samotnik",
		martydom =		"Męczeństwo",
		shock_gren =	"Granat ogłuszająco-szturmowy",
		shock_gren1 =	"Granat ogłuszający",
		shroudf =		"Płaszcz cienia",
		momentum =		"Rozpęd",
	},

-- TRUDNOŚĆ
	-- sedition_text_colour = {
		-- sedition =		"Bunt",
	-- },
	uprising_text_colour = {
		uprising =		"Powstanie",
	},
	malice_text_colour = {
		malice =		"Złośliwość",
	},
	heresy_text_colour = {
		heresy =		"Herezja",
	},
	damnation_text_colour = {
		damnation =		"Potępienie",
	},
	auric_text_colour = {
		auric =			"Auryczny",
	},

-- STATYSTYKI ŚMIECIOWE
	dump_stat_text_colour = {
		Mobility =		"Mobilność",
		Melee_dmg =		"Obrażenia wręcz",
		Warp_resist =	"Odporność na Warp",
	},
	dump_stat2_text_colour = {
		Ammo =			"Amunicja",
		Defences =		"Obrona",
		Heat_mngt =		"Zarządzanie ciepłem",
	},
	dump_stat3_text_colour = {
		DamageDS =		"Obrażenia",
	},
}

-- Główna funkcja tworząca kolorowe słowa kluczowe
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
				result[key .. "_rgb_pl"] = colored_text
			else
				result[key .. "_rgb_pl"] = text
			end
		end
	end

	return result
end

--[+ +CZĘSTO POWTARZANE FRAZY+ +]-- CPhrs("")
local function create_phrs_pl(colors_pl)
	-- Lokalne stałe dla tego pliku
	local Dot_green =	"{#color(35, 255, 5)}•{#reset()}"
	local Dot_red =		"{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_pl[key] or fallback
	end

	return {
	Can_appl_thr_shlds =		Dot_green.." Może być aplikowane przez tarcze.",
	Can_be_refr =				Dot_green.." Może być odświeżane podczas aktywnego czasu trwania. ",
	Can_be_refr_drop_1 =		Dot_green.." Stosy mogą być odświeżane podczas aktywnego czasu trwania i są usuwane pojedynczo.",
	Can_gen_mult =				Dot_green.." Może generować wiele stosów na jedno machnięcie.\n",
	Can_proc_mult =				Dot_green.." Może wyzwalać się wiele razy na machnięcie podczas "..CKWord("rozłupywania", "Cleaving_rgb_pl")..".\n",
	Can_proc_mult_str =			Dot_green.." Może wyzwalać się wiele razy podczas "..CKWord("rozłupywania", "Cleaving_rgb_pl")..".\n",
	Refr_dur_stappl =			Dot_green.." Odświeża czas trwania przy aplikacji stosu. ",
-- Psyker
	Doesnt_Stack_Psy_Aura =		Dot_red.." Nie kumuluje się z tą samą aurą innego "..CKWord("Psykera", "cls_psy_rgb_pl")..".",
	Doesnt_Stack_Psy_eff =		Dot_red.." Nie kumuluje się z tym samym debuffem innego "..CKWord("Psykera", "cls_psy_rgb_pl")..".",
-- Veteran
	Doesnt_Stack_Vet_Aura =		Dot_red.." Nie kumuluje się z tą samą aurą innego "..CKWord("Weterana", "cls_vet_rgb_pl")..".",
-- Zealot
	Doesnt_Stack_Zea_Aura =		Dot_red.." Nie kumuluje się z tą samą aurą innego "..CKWord("Zeloty", "cls_zea_rgb_pl")..".",
	Doesnt_Stack_Zea_abil =		Dot_red.." Nie kumuluje się z tym samym talentem innego "..CKWord("Zeloty", "cls_zea_rgb_pl")..".",
-- Ogryn
	Doesnt_Stack_Ogr_Aura =		Dot_red.." Nie kumuluje się z tą samą aurą innego "..CKWord("Ogryna", "cls_ogr_rgb_pl")..".",
	Doesnt_Stack_Ogr_abil =		Dot_red.." Nie kumuluje się z tym samym talentem innego "..CKWord("Ogryna", "cls_ogr_rgb_pl")..".",
-- Hive Scum
	Doesnt_Stack_Scm_Aura =		Dot_red.." Nie kumuluje się z tą samą aurą innego "..CKWord("Szumowiny Hive", "cls_scm_rgb_pl")..".",
	Doesnt_Stack_Scm_eff =		Dot_red.." Nie kumuluje się z tym samym debuffem innego "..CKWord("Szumowiny Hive", "cls_scm_rgb_pl")..".",

	Cant_appl_thr_shlds =		Dot_red.." Nie może być aplikowane przez tarcze.",
	Cant_be_refr =				Dot_red.." Nie może być odświeżane podczas aktywnego czasu trwania. ",
	Cant_Crit =					Dot_red.." Nie może zadawać "..CKWord("krytyków", "Crit_rgb_pl")..".\n",
	Carap_cant_clv =			Dot_red.." Pancerz karapaksowy nie może być domyślnie "..CKWord("rozłupywany", "Cleaved_rgb_pl")..".",
	Carap_cant_cleave =			Dot_red.." Pancerz karapaksowy nie może być domyślnie "..CKWord("rozłupywany", "Cleaved_rgb_pl")..".",
	Dont_intw_coher_toughn =	Dot_red.." Nie oddziałuje z regeneracją "..CKWord("odporności", "Toughness_rgb_pl").." przez "..CKWord("spójność", "Coherency_rgb_pl")..".",
	}
end

--[+ +UWAGI+ +]-- CNote("")
local function create_nts_pl(colors_pl)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_pl[key] or fallback
	end

	return {
		Brtl_note =				Dot_green.." "..CKWord("Kruchość", "Brittleness_rgb_pl").." zwiększa "..CKWord("obrażenia", "Damage_rgb_pl").." zespołu zadawane wrogowi.",
		Fns_note =				Dot_green.." "..CKWord("Finezja", "Finesse_rgb_pl").." zwiększa "..CKWord("obrażenia w słaby punkt", "Weakspot_dmg_rgb_pl").." i "..CKWord("obrażenia krytyczne", "Crit_dmg_r_rgb_pl")..".",
		Impact_note =			Dot_green.." "..CKWord("Siła uderzenia", "Impact_rgb_pl").." zwiększa skuteczność "..CKWord("oślepienia", "Stagger_rgb_pl").." na wrogach.",
		Pwr_note =				Dot_green.." "..CKWord("Siła", "Strength_rgb_pl").." zwiększa "..CKWord("obrażenia", "Damage_rgb_pl")..", "..CKWord("oślepienie", "Stagger_rgb_pl").." i "..CKWord("rozłupywanie", "Cleave_rgb_pl")..".",
		Rend_note =				Dot_green.." "..CKWord("Rozrywanie", "Rending_rgb_pl").." zwiększa twoje własne "..CKWord("obrażenia", "Damage_rgb_pl").."."
	}
end

-- Tworzenie kolorów
local colored_keywords = create_colored_keywords()

-- ZWRÓĆ WSZYSTKO
return {
	keywords = colored_keywords,				-- KOLOROWE SŁOWA KLUCZOWE
	phrs = create_phrs_pl(colored_keywords),	-- CZĘSTO POWTARZANE FRAZY
	nts = create_nts_pl(colored_keywords)		-- UWAGI
}