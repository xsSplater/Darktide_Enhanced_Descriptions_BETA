---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- KEYWORDS
local CONFIG = {
	bleed_text_colour = {
		Bleed =			"Bleed",
		Bleeding =		"Bleeding",
		Bleeds =		"Bleeds",
	},
	brittleness_text_colour = {
		Brittleness =	"Brittleness",
	},
	burn_text_colour = {
		Burn =			"Burn",
		Burning =		"Burning",
		Heat =			"Heat",
		Overheat =		"Overheat",
	},
	cleave_text_colour = {
		Cleave =		"Cleave",
		Cleaved =		"Cleaved",
		Cleaving =		"Cleaving",
	},
	coherency_text_colour = {
		Coherency =		"Coherency",
	},
	combat_ability_text_colour = {
		Ability_cd =	"Ability Cooldown",
		Cd =			"Cooldown",
		Cmbt_abil =		"Combat Ability",
		Cmbt_abil_cd =	"Combat Ability Cooldown",
	},
	corruption_text_colour = {
		Corrupted =		"Corrupted",
		Corruptdmg =	"Corruption Damage",
		Corruption =	"Corruption",
	},
	crit_text_colour = {
		Crit =			"Crit",
		Critical =		"Critical",

		Crit_chance =	"Critical Chance",
		Crt_chance =	"Crit Chance",

		Crit_hit =		"Critical Hit",
		Crit_hits =		"Critical Hits",
		Crt_hit_chnc =	"Critical Hit Chance",
		Crt_hit_col =	"Critical Hit Damage",

		Crit_strike =	"Critical Strike",
		Crt_chnc_r =	"Critical Strike Chance",
		Crt_strk_dmg =	"Critical Strike Damage",

		Crit_Attk =		"Critical Attack",
		Crit_shots =	"Critical Shots",

		Crit_dmg_r =	"Critical Damage",
		Crt_dmg_r =		"Crit Damage",

	},
	damage_text_colour = {
		Damage =		"Damage",
		Damagewrp =		"Warp-Damage",
	},
	electrocuted_text_colour = {
		Electrocute =	"Electrocute",
		Electrocuted =	"Electrocuted",
		Electrocutes =	"Electrocutes",
		Electrcuting =	"Electrocuting",
		Electrocution =	"Electrocution",
	},
	finesse_text_colour = {
		Finesse =		"Finesse",
		Finesse_dmg =	"Finesse Damage",
	},
	health_text_colour = {
		Health =		"Health",
		Wound =			"Wound",
		Wounds =		"Wounds",
	},
	hit_mass_text_colour = {
		Hit_mass =		"Hit Mass",
	},
	impact_text_colour = {
		Impact =		"Impact",
	},
	peril_text_colour = {
		Peril =			"Peril",
		Perils =		"Perils",
		PerilsozWarp =	"Perils of the Warp",
	},
	power_text_colour = {
		Power =			"Power",
		Strength =		"Strength",
	},
	rending_text_colour = {
		Rending =		"Rending",
	},
	soulblaze_text_colour = {
		Soulblaze =		"Soulblaze",
	},
	stagger_text_colour = {
		Stagger =		"Stagger",
		Staggered =		"Staggered",
		Staggering =	"Staggering",
		Staggers =		"Staggers",
		Stun =			"Stun",
		Stunned =		"Stunned",
		Stuns =			"Stuns",
	},
	stamina_text_colour = {
		Stamina =		"Stamina",
		Stamina_c_r =	"Stamina Cost",
	},
	toughness_text_colour = {
		TDR =			"TDR",
		TGHN =			"TGHN",
		Tghns_dmg_red =	"Toughness Damage Reduction",
		Toughness =		"Toughness",
	},
	weakspot_text_colour = {
		Weak_spot =		"Weak Spot",
		Weakspot = 		"Weakspot",
		Weakspots =		"Weakspots",

		Weakspothit =	"Weakspot Hit",
		Weakspothits =	"Weakspot Hits",

		Weakspot_dmg =	"Weakspot Damage",
	},

-- CLASSES
	-- Psyker
	class_psyker_text_colour = {
		cls_psy =		"Psyker",
		cls_psys =		"Psykers",
		cls_psy2 =		"Psyker's",
	},
		precision_text_colour = {
			Precision =		"Precision",
		},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr =		"Ogryn",
		cls_ogr2 =		"Ogryn's",
	},
		fnp_text_colour = {
			Feel_no_pain =	"Feel No Pain",
			Desperado =		"Desperado",			-- Hive Scum
		},
		luckyb_text_colour = {
			Lucky_bullet =	"Lucky Bullet",

			Tghnss_gold =	"Toughness",			-- Zealot
		},
		trample_text_colour = {
			Trample =		"Trample",

			Depend =		"Dependency",			-- Hive Scum
		},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea =		"Zealot",
		cls_zea2 =		"Zealot's",
	},
		fury_text_colour = {
			Fury =			"Fury",

			Rampage =		"Rampage!",				-- Hive Scum
		},
		momentum_text_colour = {
			Momentum =		"Momentum",

			Taunt =			"Taunt",				-- Ogryn
			Taunted =		"Taunted",				-- Ogryn
			Taunting =		"Taunting",				-- Ogryn

			Adren =			"Adrenaline",			-- Hive Scum
			AdrenFr =		"Adrenaline Frenzy",	-- Hive Scum
		},
		stealth_text_colour = {
			Stealth =		"Stealth",

			Psy_Mark =		"Marked",				-- Psyker
			Psy_mark =		"marked",				-- Psyker
		},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet =		"Veteran",
		cls_vet2 =		"Veteran's",
	},
		focus_text_colour = {
			Forceful =		"Forceful",
			Focus =			"Focus",
		},
		focust_text_colour = {
			Focus_Target =	"Focus Target",

			Markedenemy =	"Marked Enemy",			-- Psyker

			VultsMark =		"Vulture's Mark",		-- Hive Scum
		},
		meleespec_text_colour = {
			Meleespec =		"Melee Specialist",

			Meleejust =		"Melee Justice",		-- Arbites
		},
		rangedspec_text_colour = {
			Rangedspec =	"Ranged Specialist",

			Rangedjust =	"Ranged Justice",		-- Arbites
		},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb =		"Arbitrator",
		cls_arb2 =		"Arbitrator's",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm =		"Hive Scum",
		cls_scm2 =		"Hive Scum's",
	},
		chemtox_text_colour = {
			Chem_Tox =		"Chem Toxin",
		},

-- TALENTS
	talents_text_colour = {
-- Zealot
		Holy_relic =	"Holy relic",
		Stun_gren =		"Stun Grenade",
-- Arbites
		Arbites_gren =	"Arbites Grenade",
		BreakZLine =	"Break the Line",
-- Psyker
		Assail =		"Assail",
		Brain_burst =	"Brain Burst",
		Brain_rupture =	"Brain Rupture",
		Enfeeble =		"Enfeeble",
		Scrier_gaze =	"Scrier Gaze",
		Scriers_gaze =	"Scrier's Gaze",
		Smite =			"Smite",
-- Veteran
		Frag_gren =		"Frag Grenade",
		Fragm_gren =	"Fragmentation Grenade",
		Rangd_stnc =	"Ranged Stance",
		Duty_honor =	"Duty and Honour",
-- Ogryn
		Att_Seeker =		"Attention Seeker",

-- PENANCES
		Base_tut_p =	"Basic Training",
		Curio_p =		"Curio",
		Omnissia_p =	"Shrine of the Omnissiah",
		Prologue_p =	"Prologue",
		Sir_melk_p =	"Sire Melk's Requisitorium",

	-- Psyker
		assail =		"Assail",
		bburst =		"Brain Burst",
		bburst1 =		"Brain Rupture",
		disrdest =		"Disrupt Destiny",
		empsionics =	"Empowered Psionics",
		kinetpres =		"Kinetic Presence",
		prescience =	"Prescience",
		psy_wrath =		"Psykinetic's Wrath",
		psy_wrath2 =	"Venting Shriek",
		scriersgaze =	"Scrier's Gaze",
		seerspres =		"Seer's Presence",
		smite =			"Smite",
		telekshii =		"Telekine Shield",
	-- Ogryn
		big_box =		"Big Box of Hurt",
		big_box2 =		"Bombs Away!",
		bigfriendro =	"Big Friendly Rock",
		bonebraura =	"Bonebreaker's Aura",
		bull_rush =		"Bull Rush",
		bull_rush4 =	"Indomitable",
		burstlimo =		"Burst Limiter Override",
		cowculaura =	"Coward Culling",
		feelnop =		"Feel No Pain",
		fragbomb =		"Frag Bomb",
		heavyhitter =	"Heavy Hitter",
		loyalprot =		"Loyal Protector",
		pbbarrage =		"Point-Blank Barrage",
		stayclose =		"Stay Close!",
	-- Veteran
		closenkill =	"Close and Kill",
		exec_stan =		"Executioner's Stance",
		fcs_trg =		"Focus Target!",
		firetim =		"Fire Team",
		frag_gr =		"Frag Grenade",
		infiltr =		"Infiltrate",
		krak_gr =		"Krak Grenade",
		scavenger =		"Scavenger",
		snipcon =		"Marksman's Focus",
		smok_gr =		"Smoke Grenade",
		survivalist =	"Survivalist",
		voiceoc =		"Voice of Command",
		volley_fire =	"Volley Fire",
		weapspec =		"Weapons Specialist",
	-- Zealot
		beaconop =		"Beacon of Purity",
		benedict =		"Benediction",
		blazingp =		"Blazing Piety",
		chast_wckd =	"Chastise the Wicked",
		chorusosf =		"Chorus of Spiritual Fortitude",
		fanrage =		"Fury",
		fire_gren =		"Immolation Grenade",
		fury_faithful =	"Fury of the Faithful",
		holy_revenant =	"Holy Revenant",
		inexor =		"Inexorable Judgement",
		klinvery =		"Blades of Faith",
		loner =			"Loner",
		martydom =		"Martyrdom",
		shock_gren =	"Stunstorm Grenade",
		shock_gren1 =	"Stun Grenade",
		shroudf =		"Shroudfield",
		momentum =		"Momentum",
	},

-- DIFFICULTY
	-- sedition_text_colour = {
		-- sedition =		"Sedition",
	-- },
	uprising_text_colour = {
		uprising =		"Uprising",
	},
	malice_text_colour = {
		malice =		"Malice",
	},
	heresy_text_colour = {
		heresy =		"Heresy",
	},
	damnation_text_colour = {
		damnation =		"Damnation",
	},
	auric_text_colour = {
		auric =			"Auric",
	},
}

-- Основная функция для создания цветных ключевых слов
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
				result[key .. "_rgb"] = colored_text
			else
				result[key .. "_rgb"] = text
			end
		end
	end

	return result
end

--[+ +FREQUENTLY REPEATED PHRASES+ +]-- CPhrs("")
local function create_phrs_en(colors_en)
	-- Local constants for this file
	local Dot_green =	"{#color(35, 255, 5)}•{#reset()}"
	local Dot_red =		"{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_en[key] or fallback
	end

	return {
	Can_appl_thr_shlds =		Dot_green.." Can be applied through shields.",
	Can_be_refr =				Dot_green.." Can be refreshed during active duration. ",
	Can_be_refr_drop_1 =		Dot_green.." Stacks can be refreshed during active duration, and are dropped one by one.",
	Can_gen_mult =				Dot_green.." Can generate multiple Stacks per Swing.\n",
	Can_proc_mult =				Dot_green.." Can proc multiple times per swing when "..CKWord("Cleaving", "Cleaving_rgb")..".\n",
	Can_proc_mult_str =			Dot_green.." Can proc multiple times per swing when "..CKWord("Cleaving", "Cleaving_rgb")..".\n",
	Refr_dur_stappl =			Dot_green.." Refreshes duration on Stack application. ",
-- Psyker
	Doesnt_Stack_Psy_Aura =		Dot_red.." Does not Stack with the same Aura from another "..CKWord("Psyker", "cls_psy_rgb")..".",
	Doesnt_Stack_Psy_eff =		Dot_red.." Does not Stack with the same debuff from another "..CKWord("Psyker", "cls_psy_rgb")..".",
-- Veteran
	Doesnt_Stack_Vet_Aura =		Dot_red.." Does not Stack with the same Aura from another "..CKWord("Veteran", "cls_vet_rgb")..".",
-- Zealot
	Doesnt_Stack_Zea_Aura =		Dot_red.." Does not Stack with the same Aura from another "..CKWord("Zealot", "cls_zea_rgb")..".",
	Doesnt_Stack_Zea_abil =		Dot_red.." Does not Stack with the same talent from another "..CKWord("Zealot", "cls_zea_rgb")..".",
-- Ogryn
	Doesnt_Stack_Ogr_Aura =		Dot_red.." Does not Stack with the same Aura from another "..CKWord("Ogryn", "cls_ogr_rgb")..".",
	Doesnt_Stack_Ogr_abil =		Dot_red.." Does not Stack with the same talent from another "..CKWord("Ogryn", "cls_ogr_rgb")..".",

	Cant_appl_thr_shlds =		Dot_red.." Can't apply through shields.",
	Cant_be_refr =				Dot_red.." Cannot be refreshed during active duration. ",
	Cant_Crit =					Dot_red.." Cannot "..CKWord("Crit", "Crit_rgb")..".\n",
	Carap_cant_clv =			Dot_red.." Carapace armor cannot be "..CKWord("Cleaved", "Cleaved_rgb").." by default.",
	Carap_cant_cleave =			Dot_red.." Carapace armor cannot be "..CKWord("Cleaved", "Cleaved_rgb").." by default.",
	Dont_intw_coher_toughn =	Dot_red.." Does not interact with "..CKWord("Coherency", "Coherency_rgb").." "..CKWord("Toughness", "Toughness_rgb").." Regeneration.",
	}
end

--[+ +NOTES+ +]-- CNote("")
local function create_nts_en(colors_en)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_en[key] or fallback
	end

	return {
		Brtl_note =				Dot_green.." "..CKWord("Brittleness", "Brittleness_rgb").." increases the team's "..CKWord("Damage", "Damage_rgb").." to the enemy.",
		Fns_note =				Dot_green.." "..CKWord("Finesse", "Finesse_rgb").." increases "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." and "..CKWord("Crit Damage", "Crit_dmg_r_rgb")..".",
		Impact_note =			Dot_green.." "..CKWord("Impact", "Impact_rgb").." increases the effectiveness of "..CKWord("Stagger", "Stagger_rgb").." on enemies.",
		Pwr_note =				Dot_green.." "..CKWord("Strength", "Strength_rgb").." increases "..CKWord("Damage", "Damage_rgb")..", "..CKWord("Stagger", "Stagger_rgb").." and "..CKWord("Cleave", "Cleave_rgb")..".",
		Rend_note =				Dot_green.." "..CKWord("Rending", "Rending_rgb").." increases your own "..CKWord("Damage", "Damage_rgb").."."
	}
end

-- Creating colors
local colored_keywords = create_colored_keywords()

-- RETURN ALL
return {
	keywords = colored_keywords,				-- COLORED KEYWORDS
	phrs = create_phrs_en(colored_keywords),	-- FREQUENTLY REPEATED PHRASES
	nts = create_nts_en(colored_keywords)		-- NOTES
}
