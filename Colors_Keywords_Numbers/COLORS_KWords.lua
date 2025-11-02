---@diagnostic disable: undefined-global
-- Version 4.0

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

-- LANGUAGE CODES:
-- English				en
-- Russian				ru			_ru
-- French				fr			_fr
-- Chinese Traditional	["zh-tw"]	_tw
-- Chinese Simplified	["zh-cn"]	_zh_cn
-- German				de			_de
-- Italian				it			_it
-- Japanese				ja			_ja
-- Korean				ko			_ko
-- Polish				pl			_pl
-- Portuguese			["pt-br"]	_rgb_pt_br
-- Spanish				es			_es

-- FOR TRANSLATORS
-- All these keywords need to be translated to be able to access them in the TALENTS.lua, WEAPONS_Blessings_Perks.lua, etc. files:
-- COLORS_KWords_YOURLANGUAGECODE.Ability_cd_rgb_YOURLANGUAGECODE
-- COLORS_KWords_YOURLANGUAGECODE.Cd_rgb_YOURLANGUAGECODE
-- COLORS_KWords_YOURLANGUAGECODE.Combat_ability_rgb_YOURLANGUAGECODE

local CONFIG = {
-- KEYWORDS
	bleed_text_colour = {
		Bleed = "Bleed",
		Bleeding = "Bleeding",
	},
	brittleness_text_colour = {
		Brittleness = "Brittleness",
	},
	burn_text_colour = {
		Burn = "Burn",
		Burning = "Burning",
		Heat = "Heat",
		Overheat = "Overheat",
	},
	cleave_text_colour = {
		Cleave = "Cleave",
		Cleaved = "Cleaved",
		Cleaving = "Cleaving",
	},
	coherency_text_colour = {
		Coherency = "Coherency",
	},
	combat_ability_text_colour = {
		Ability_cd = "Ability Cooldown",
		Cd = "Cooldown",
		Combat_ability = "Combat Ability",
		Combat_ability_cd = "Combat Ability Cooldown",
	},
	corruption_text_colour = {
		Corrupted = "Corrupted",
		Corruption = "Corruption",
		Corruptdmg = "Corruption Damage",
	},
	crit_text_colour = {
		Crit = "Crit",
		Critical = "Critical",
		Crt_chance = "Crit Chance",
		Crit_chance = "Critical Chance",
		Crit_hit = "Critical Hit",
		Crit_hit_chance = "Critical Hit Chance",
		Crit_hit_color = "Critical Hit Damage",
		Crit_hits = "Critical Hits",
		Crt_dmg_r = "Crit Damage",
		Crit_dmg_r = "Critical Damage",
		Crit_strike = "Critical Strike",
		Crit_chance_r = "Critical Strike Chance",
		Crit_strike_dmg = "Critical Strike Damage",
		Crit_Attk = "Critical Attack",
	},
	damage_text_colour = {
		Damage = "Damage",
		Damagewrp = "Warp-Damage",
	},
	electrocuted_text_colour = {
		Electrocute = "Electrocute",
		Electrocution = "Electrocution",
		Electrocuted = "Electrocuted",
		Electrocutes = "Electrocutes",
		Electrcuting = "Electrocuting",
	},
	finesse_text_colour = {
		Finesse = "Finesse",
		Finesse_dmg = "Finesse Damage",
	},
	health_text_colour = {
		Health = "Health",
		Wound = "Wound",
		Wounds = "Wounds",
	},
	hit_mass_text_colour = {
		Hit_mass = "Hit Mass",
	},
	impact_text_colour = {
		Impact = "Impact",
	},
	peril_text_colour = {
		Peril = "Peril",
		Perils = "Perils",
		PerilsozWarp = "Perils of the Warp",
	},
	power_text_colour = {
		Power = "Power",
		Strength = "Strength",
	},
	rending_text_colour = {
		Rending = "Rending",
	},
	soulblaze_text_colour = {
		Soulblaze = "Soulblaze",
	},
	stagger_text_colour = {
		Stagger = "Stagger",
		Staggering = "Staggering",
		Staggers = "Staggers",
		Stun = "Stun",
		Stuns = "Stuns",
		Stunned = "Stunned",
		Staggered = "Staggered",
	},
	stamina_text_colour = {
		Stamina = "Stamina",
		Stamina_c_r = "Stamina Cost",
	},
	toughness_text_colour = {
		Toughness = "Toughness",
		Toughness_dmg_red = "Toughness Damage Reduction",
		TDR = "TDR",
	},
	weakspot_text_colour = {
		Weak_spot = "Weak Spot",
		Weakspot = "Weakspot",
		Weakspots = "Weakspots",
		Weakspothit = "Weakspot Hit",
		Weakspothits = "Weakspot Hits",
		Weakspot_dmg = "Weakspot Damage",
	},

-- CLASSES
	-- Psyker
	class_psyker_text_colour = {
		cls_psy = "Psyker",
		cls_psys = "Psykers",
		cls_psy2 = "Psyker's",
	},
	precision_text_colour = {
		Precision = "Precision",
	},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr = "Ogryn",
		cls_ogr2 = "Ogryn's",
	},
	fnp_text_colour = {
		Feel_no_pain = "Feel No Pain",
	},
	luckyb_text_colour = {
		Lucky_bullet = "Lucky Bullet",
	},
	trample_text_colour = {
		Trample = "Trample",
	},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea = "Zealot",
		cls_zea2 = "Zealot's",
	},
	fury_text_colour = {
		Fury = "Fury",
	},
	momentum_text_colour = {
		Momentum = "Momentum",
	},
	stealth_text_colour = {
		Stealth = "Stealth",
		Psy_Mark = "Marked",
		Psy_mark = "marked",
	},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet = "Veteran",
		cls_vet2 = "Veteran's",
	},
	focus_text_colour = {
		Focus = "Focus",
		Forceful = "Forceful",
	},
	focust_text_colour = {
		Focus_Target = "Focus Target",
		Markedenemy = "Marked Enemy",
	},
	meleespec_text_colour = {
		Meleespec = "Melee Specialist",
		Meleejust = "Melee Justice",
	},
	rangedspec_text_colour = {
		Rangedspec = "Ranged Specialist",
		Rangedjust = "Ranged Justice",
	},
	-- Arbites
	class_arbites_text_colour = {
		cls_arb = "Arbitrator",
		cls_arb2 = "Arbitrator's",
	},

-- TALENTS
	talents_text_colour = { -- yellow
		Arbites_gren = "Arbites Grenade",
		Assail = "Assail",
		Brain_burst = "Brain Burst",
		Brain_rupture = "Brain Rupture",
		BreakZLine = "Break the Line",
		Enfeeble = "Enfeeble",
		Frag_gren = "Frag Grenade",
		Fragm_gren = "Fragmentation Grenade",
		Scriers_gaze = "Scrier's Gaze",
		Smite = "Smite",
		Stun_gren = "Stun Grenade",

	-- Penances
		Prologue_p = "Prologue",
		Curio_p = "Curio",
		Base_tut_p = "Basic Training",
		Sir_melk_p = "Sire Melk's Requisitorium",
		Omnissia_p = "Shrine of the Omnissiah",
	},

-- PENANCES
	talents_penances_text_colour = { -- green
	-- Psyker
		bburst = "Brain Burst",
		-- bburst0 = "Brain Burst",
		bburst1 = "Brain Rupture",
		-- bburst2 = "Brain Rupture",
		smite = "Smite",
		disrdest = "Disrupt Destiny",
		psy_wrath = "Psykinetic's Wrath",
		psy_wrath2 = "Venting Shriek",
		telekshii = "Telekine Shield",
		empsionics = "Empowered Psionics",
		assail = "Assail",
		scriersgaze = "Scrier's Gaze",
		kinetpres = "Kinetic Presence",
		prescience = "Prescience",
		seerspres = "Seer's Presence",
	-- Ogryn
		bull_rush = "Bull Rush",
		-- bull_rush2 = "Bull Rush",
		-- bull_rush3 = "Bull Rush",
		bull_rush4 = "Indomitable",
		big_box = "Big Box of Hurt",
		big_box2 = "Bombs Away!",
		burstlimo = "Burst Limiter Override",
		stayclose = "Stay Close!",
		loyalprot = "Loyal Protector",
		feelnop = "Feel No Pain",
		bonebraura = "Bonebreaker's Aura",
		cowculaura = "Coward Culling",
		heavyhitter = "Heavy Hitter",
		bigfriendro = "Big Friendly Rock",
		fragbomb = "Frag Bomb",
		pbbarrage = "Point-Blank Barrage",
	-- Veteran
		volley_fire = "Volley Fire",
		snipcon = "Marksman's Focus",
		exec_stan = "Executioner's Stance",
		krak_gr = "Krak Grenade",
		frag_gr = "Frag Grenade",
		smok_gr = "Smoke Grenade",
		fcs_trg = "Focus Target!",
		scavenger = "Scavenger",
		voiceoc = "Voice of Command",
		firetim = "Fire Team",
		infiltr = "Infiltrate",
		closenkill = "Close and Kill",
		weapspec = "Weapons Specialist",
		survivalist = "Survivalist",
	-- Zealot
		-- shock_gren0 = "Stunstorm Grenade",
		shock_gren = "Stunstorm Grenade",
		fire_gren = "Immolation Grenade",
		shock_gren1 = "Stun Grenade",
		-- shock_gren2 = "Stun Grenade",
		chast_wckd = "Chastise the Wicked",
		-- chast_wckd2 = "Chastise the Wicked",
		fury_faithful = "Fury of the Faithful",
		martydom = "Martyrdom",
		holy_revenant = "Holy Revenant",
		chorusosf = "Chorus of Spiritual Fortitude",
		beaconop = "Beacon of Purity",
		klinvery = "Blades of Faith",
		shroudf = "Shroudfield",
		benedict = "Benediction",
		loner = "Loner",
		fanrage = "Fury",
		momentum = "Momentum",
		inexor = "Inexorable Judgement",
		blazingp = "Blazing Piety",
	},

-- DIFFICULTY
	sedition_text_colour = {
		sedition = "Sedition",
	},
	uprising_text_colour = {
		uprising = "Uprising",
	},
	malice_text_colour = {
		malice = "Malice",
	},
	heresy_text_colour = {
		heresy = "Heresy",
	},
	damnation_text_colour = {
		damnation = "Damnation",
	},
	auric_text_colour = {
		auric = "Auric",
	},
}


-- Universal function for creating colored variables
local function create_colored_keywords(config)
	local result = {}
	
	for color_setting, keywords in pairs(config) do
		local color = Color[mod:get(color_setting)](255, true)
		
		for name, text in pairs(keywords) do
-- FOR TRANSLATORS -- For other languages _rgb_YOURLANGUAGECODE
			result[name .. "_rgb"] = iu_actit(text, color)
		end
	end
	
	return result
end

-- LANGUAGE CODES:
-- English				en			_rgb
-- Russian				ru			_rgb_ru
-- French				fr			_rgb_fr
-- Chinese Traditional	["zh-tw"]	_rgb_tw
-- Chinese Simplified	["zh-cn"]	_rgb_zh_cn
-- German				de			_rgb_de
-- Italian				it			_rgb_it
-- Japanese				ja			_rgb_ja
-- Korean				ko			_rgb_ko
-- Polish				pl			_rgb_pl
-- Portuguese			["pt-br"]	_rgb_pt_br
-- Spanish				es			_rgb_es

-- Validation: check that ALL variables have been created
local function validate_all()
	local colors = create_colored_keywords(CONFIG)
	local total_expected = 0
	local created_count = 0
	local missing_vars = {}
	
	for color_setting, items in pairs(CONFIG) do
		for name, _ in pairs(items) do
			total_expected = total_expected + 1
-- FOR TRANSLATORS -- For other languages _rgb_YOURLANGUAGECODE
			local var_name = name .. "_rgb"
			if colors[var_name] then
				created_count = created_count + 1
			else
				table.insert(missing_vars, var_name)
				mod:error("Missing variable: " .. var_name)
			end
		end
	end
	
	if created_count == total_expected then
		mod:info("✅ All " .. total_expected .. " keyword variables created successfully")
	else
		mod:warning("⚠️ Created " .. created_count .. "/" .. total_expected .. " keyword variables")
	end
	
	return colors
end

-- Create and validate all variables
return validate_all()
