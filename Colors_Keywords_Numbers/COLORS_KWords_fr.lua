---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

local Utils = mod.get_utils()

-- KEYWORDS
local CONFIG = {
	bleed_text_colour = {
		Bleed = "Saignement",
		Bleeding = "Saignent",
		Bleeds = "Saigne",
	},
	brittleness_text_colour = {
		Brittleness = "Fragilité",
	},
	burn_text_colour = {
		Burn = "Brûlure",
		Burning = "Brûlant",
		Heat = "Chaleur",
		Overheat = "Surchauffe",
	},
	cleave_text_colour = {
		Cleave = "Transpercement",
		Cleaved = "Transpercé",
		Cleaving = "Transperce",
	},
	coherency_text_colour = {
		Coherency = "Syntonie",
	},
	combat_ability_text_colour = {
		Ability_cd = "Temps de recharge des capacités",
		Cd = "Temps de recharge",
		Cmbt_abil = "Capacité de combat",
		Cmbt_abil_cd = "Temps de recharge des capacités de combat",
	},
	corruption_text_colour = {
		Corrupted = "Corrompu",
		Corruptdmg = "Dégâts de corruption",
		Corruption = "Corruption",
	},
	crit_text_colour = {
		Crit = "Critique",
		Critical = "Critique",

		Crit_chance = "Chance de critique",
		Crt_chance = "Chance de critique",

		Crit_hit = "Coup critique",
		Crit_hits = "Coups critiques",
		Crt_hit_chnc = "Chance de coup critique",
		Crt_hit_col = "Dégâts de coup critique",

		Crit_strike = "Coup critique",
		Crt_chnc_r = "Chance de coup critique",
		Crt_strk_dmg = "Dégâts de coup critique",

		Crit_Attk = "Attaques critiques",
		Crit_shots = "Tirs critiques",

		Crit_dmg_r = "Dégâts critiques",
		Crt_dmg_r = "Dégâts critiques",
	},
	damage_text_colour = {
		Damage = "Dégâts",
		Damagewrp = "Dégâts Warp",
	},
	electrocuted_text_colour = {
		Electrocute = "Électrocuter",
		Electrocuted = "Électrocutés",
		Electrocutes = "Électrocute",
		Electrcuting = "Électrocution",
		Electrocution = "Électrocution",
	},
	finesse_text_colour = {
		Finesse = "Finesse",
		Finesse_dmg = "Dégâts de finesse",
	},
	health_text_colour = {
		Health = "Santé",
		Wound = "Blessure",
		Wounds = "Blessures",
	},
	hit_mass_text_colour = {
		Hit_mass = "Coup en masse",
	},
	impact_text_colour = {
		Impact = "Impact",
	},
	peril_text_colour = {
		Peril = "Péril",
		Perils = "Périls",
		PerilsozWarp = "Périls du Warp",
	},
	power_text_colour = {
		Power = "Puissance",
		Strength = "Force",
	},
	rending_text_colour = {
		Rending = "Déchirure",
	},
	soulblaze_text_colour = {
		Soulblaze = "Flamme de l'âme",
		Soulblaz = "FdA",
	},
	stagger_text_colour = {
		Stagger = "Vacillement",
		Staggered = "Vacillé",
		Staggering = "Vacille",
		Staggers = "Vacillent",
		Stun = "Étourdissement",
		Stunned = "Étourdi",
		Stuns = "Étourdit",
	},
	stamina_text_colour = {
		Stamina = "Endurance",
		Stamina_c_r = "Coût d'endurance",
	},
	toughness_text_colour = {
		TDR = "TDR",
		Tghns_dmg_red = "Réduction des dégâts de robustesse",
		Toughness = "Robustesse",
	},
	weakspot_text_colour = {
		Weak_spot = "Point faible",
		Weakspot = "Point faible",
		Weakspots = "Points faibles",

		Weakspothit = "Coup sur point faible",
		Weakspothits = "Coups sur points faibles",

		Weakspot_dmg = "Dégâts sur point faible",
	},

	-- CLASSES
	-- Psyker
	class_psyker_text_colour = {
		cls_psy = "Psyker",
		cls_psys = "Psykers",
		cls_psy2 = "Psyker",
	},
	precision_text_colour = {
		Precision = "Précision",
	},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr = "Ogryn",
		cls_ogr2 = "Ogryn",
	},
	fnp_text_colour = {
		Feel_no_pain = "Insensible à la douleur",
		Desperado = "Desperado", -- Hive Scum
	},
	luckyb_text_colour = {
		Lucky_bullet = "Balle chanceuse",
		Tghnss_gold = "Robustesse", -- Zealot
	},
	trample_text_colour = {
		Trample = "Piétinement",
		Depend = "Dépendance", -- Hive Scum
	},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea = "Fanatique",
		cls_zea2 = "Fanatique",
	},
	fury_text_colour = {
		Fury = "Fureur",
		Rampage = "Déchaînement", -- Hive Scum
	},
	momentum_text_colour = {
		Momentum = "Élan",
		Adren = "Adrénaline", -- Hive Scum
		AdrenFr = "Frénésie adrénaline", -- Hive Scum
	},
	stealth_text_colour = {
		Stealth = "Furtivité",
		Psy_Mark = "Marqué", -- Psyker
		Psy_mark = "marqué", -- Psyker
	},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet = "Vétéran",
		cls_vet2 = "Vétéran",
	},
	focus_text_colour = {
		Forceful = "Energique",
		Focus = "Focalisation",
	},
	focust_text_colour = {
		Focus_Target = "Cible prioritaire",
		Markedenemy = "Ennemi marqué", -- Psyker
		VultsMark = "Marque du Vautour", -- Hive Scum
	},
	meleespec_text_colour = {
		Meleespec = "Spécialiste en mêlée",
		Meleejust = "Justice en mêlée", -- Arbites
	},
	rangedspec_text_colour = {
		Rangedspec = "Spécialiste à distance",
		Rangedjust = "Justice à distance", -- Arbites
	},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb = "Arbitrator",
		cls_arb2 = "Arbitrator",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm = "Vermine de la Ruche",
		cls_scm2 = "Vermine de la Ruche",
	},
	chemtox_text_colour = {
		Chem_Tox = "Toxine chimique",
	},

	-- TALENTS
	talents_text_colour = {
		-- Zealot
		Holy_relic = "Relique sacrée",
		Stun_gren = "Grenade étourdissante",
		-- Arbites
		Arbites_gren = "Grenade Arbites",
		BreakZLine = "Briser la ligne",
		-- Psyker
		Assail = "Irruption",
		Brain_burst = "Explosion cérébrale",
		Brain_rupture = "Rupture cérébrale",
		Enfeeble = "Affaiblissement",
		Scrier_gaze = "Regard de divination",
		Scriers_gaze = "Regard de divination",
		Smite = "Éclatement",
		-- Veteran
		Frag_gren = "Grenade à fragmentation",
		Fragm_gren = "Grenade à fragmentation",
		Rangd_stnc = "Posture à distance",
		Duty_honor = "Devoir et honneur",
		-- Ogryn
		Att_Seeker = "Chercheur d'attention",
		-- PENANCES
		Base_tut_p = "Entraînement de base",
		Curio_p = "Curiosité",
		Omnissia_p = "Autel de l'Omnimessie",
		Prologue_p = "Prologue",
		Sir_melk_p = "Réquisitorium de Sire Melk",
		-- Psyker
		assail = "Irruption",
		bburst = "Explosion cérébrale",
		bburst1 = "Rupture cérébrale",
		disrdest = "Perturbation du destin",
		empsionics = "Psionique renforcé",
		kinetpres = "Présence cinétique",
		prescience = "Prémonition",
		psy_wrath = "Fureur de Psychokynésiste",
		psy_wrath2 = "Cri de Défoulement",
		scriersgaze = "Regard de divination",
		seerspres = "Présence Prophétique",
		smite = "Éclatement",
		telekshii = "Bouclier télékinétique",
		-- Ogryn
		big_box = "Grosse caisse à soufrance",
		big_box2 = "Larguez les Bombes !",
		bigfriendro = "Gros pierre utile",
		bonebraura = "Aura de brise-os",
		bull_rush = "Charge musclée",
		bull_rush4 = "Indomptable",
		burstlimo = "Munitions maximisées",
		cowculaura = "Abattage des lâches",
		feelnop = "Adieu la douleur",
		fragbomb = "Bombe à fragmentation",
		heavyhitter = "Frappe lourde",
		loyalprot = "Protecteur loyal",
		pbbarrage = "Barrage à bout portant",
		stayclose = "On reste groupé!",
		-- Veteran
		closenkill = "Élimination de proximité",
		exec_stan = "Posture de Bourreau",
		fcs_trg = "Ciblage",
		firetim = "Équipe de feu",
		frag_gr = "Grenade déchiqueteuse à fragmentation",
		infiltr = "Infiltration",
		krak_gr = "Grenade Krak",
		scavenger = "Pilleur",
		snipcon = "Concentration de tireur d'élite",
		smok_gr = "Grenade fumigène",
		survivalist = "Survivaliste",
		voiceoc = "Voix de l'Autorité",
		volley_fire = "Tir de volée",
		weapsec = "Spécialiste en armes",
		-- Zealot
		beaconop = "Guide de pureté",
		benedict = "Bénédiction",
		blazingp = "Piété embrazée",
		chast_wckd = "Châtier le mal",
		chorusosf = "Refrain de courage spirituelle",
		fanrage = "Fureur",
		fire_gren = "Grenade d'immolation",
		fury_faithful = "Fureur des fidèles",
		holy_revenant = "Revenant sacré",
		inexor = "Jugement inexorable",
		klinvery = "Lames de la foi",
		loner = "Ferveur ardente",
		martydom = "Martyre",
		shock_gren = "Grenade assourdissante",
		shock_gren1 = "Grenade d'étourdissement",
		shroudf = "Champ d'ombre",
		momentum = "Élan",
	},

	-- DIFFICULTY
	-- sedition_text_colour = {
		-- sedition = "Sédition",
	-- },
	uprising_text_colour = {
		uprising = "Révolte",
	},
	malice_text_colour = {
		malice = "Malveillance",
	},
	heresy_text_colour = {
		heresy = "Hérésie",
	},
	damnation_text_colour = {
		damnation = "Damnation",
	},
	auric_text_colour = {
		auric = "Aurique",
	},
}

-- Основная функция для создания цветных ключевых слов
local function create_colored_keywords()
	local result = {}
	for category, keywords in pairs(CONFIG) do
		local argb = Utils.get_argb_from_setting(category, "white")
		for key, text in pairs(keywords) do
			result[key .. "_rgb_fr"] = Utils.wrap_in_color(text, argb)
		end
	end
	return result
end

-- FREQUENTLY REPEATED PHRASES
local function create_phrs_fr(colors_fr)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"
	local Dot_red = "{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_fr[key] or fallback
	end

	return {
		Can_appl_thr_shlds = Dot_green .. " Peut être appliqué à travers les boucliers.",
		Can_be_refr = Dot_green .. " Peut être actualisé pendant la durée active.",
		Can_be_refr_drop_1 = Dot_green .. " Les cumuls peuvent être actualisés pendant la durée active et sont supprimés un par un.",
		Can_proc_mult = Dot_green .. " Peut se déclencher plusieurs fois par coup lors du " .. CKWord("Transpercement", "Cleaving_rgb_fr") .. ".\n",
		Can_proc_mult_str = Dot_green .. " Peut se déclencher plusieurs fois par coup lors du " .. CKWord("Transpercement", "Cleaving_rgb_fr") .. ".\n",
		Refr_dur_stappl = Dot_green .. " Actualise la durée lors de l'application du cumul.",
		-- Psyker
		Doesnt_Stack_Psy_Aura = Dot_red .. " Ne se cumul pas avec la même Aura d'un autre " .. CKWord("Psyker", "cls_psy_rgb_fr") .. ".",
		Doesnt_Stack_Psy_eff = Dot_red .. " Ne se cumul pas avec le même debuff d'un autre " .. CKWord("Psyker", "cls_psy_rgb_fr") .. ".",
		-- Veteran
		Doesnt_Stack_Vet_Aura = Dot_red .. " Ne se cumul pas avec la même Aura d'un autre " .. CKWord("Vétéran", "cls_vet_rgb_fr") .. ".",
		-- Zealot
		Doesnt_Stack_Zea_Aura = Dot_red .. " Ne se cumul pas avec la même Aura d'un autre " .. CKWord("Fanatique", "cls_zea_rgb_fr") .. ".",
		Doesnt_Stack_Zea_abil = Dot_red .. " Ne se cumul pas avec le même talent d'un autre " .. CKWord("Fanatique", "cls_zea_rgb_fr") .. ".",
		-- Ogryn
		Doesnt_Stack_Ogr_Aura = Dot_red .. " Ne se cumul pas avec la même Aura d'un autre " .. CKWord("Ogryn", "cls_ogr_rgb_fr") .. ".",

		Cant_appl_thr_shlds = Dot_red .. " Ne peut pas être appliqué à travers les boucliers.",
		Cant_Crit = Dot_red .. " Ne peut pas faire de " .. CKWord("Coup Critique", "Crit_rgb_fr") .. ".\n",
		Carap_cant_clv = Dot_red .. " L'armure carapace ne peut pas être " .. CKWord("transpercée", "Cleaved_rgb_fr") .. " par défaut.",
		Carap_cant_cleave = Dot_red .. " L'armure carapace ne peut pas être " .. CKWord("transpercée", "Cleaved_rgb_fr") .. " par défaut.",
		Dont_intw_coher_toughn = Dot_red .. " N'interagit pas avec la régénération de " .. CKWord("Robustesse", "Toughness_rgb_fr") .. " en " .. CKWord("Syntonie", "Coherency_rgb_fr") .. " .",
	}
end

-- NOTES
local function create_nts_fr(colors_fr)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_fr[key] or fallback
	end

	return {
		Brtl_note = Dot_green .. " " .. CKWord("Fragilité", "Brittleness_rgb_fr") .. " augmente les " .. CKWord("Dégâts", "Damage_rgb_fr") .. " de l'équipe sur l'ennemi.",
		Fns_note = Dot_green .. " " .. CKWord("Finesse", "Finesse_rgb_fr") .. " augmente les " .. CKWord("Dégâts sur point faible", "Weakspot_dmg_rgb_fr") .. " et les " .. CKWord("Dégâts critiques", "Crit_dmg_r_rgb_fr") .. ".",
		Impact_note = Dot_green .. " " .. CKWord("Impact", "Impact_rgb_fr") .. " augmente l'efficacité du " .. CKWord("Vacillement", "Stagger_rgb_fr") .. " sur les ennemis.",
		Pwr_note = Dot_green .. " " .. CKWord("Force", "Strength_rgb_fr") .. " augmente les " .. CKWord("Dégâts", "Damage_rgb_fr") .. ", le " .. CKWord("Vacillement", "Stagger_rgb_fr") .. " et le " .. CKWord("Transpercement", "Cleave_rgb_fr") .. ".",
		Rend_note = Dot_green .. " " .. CKWord("Déchirure", "Rending_rgb_fr") .. " augmente vos propres " .. CKWord("Dégâts", "Damage_rgb_fr") .. ".",
	}
end

-- Creating colors
local colored_keywords = create_colored_keywords()

-- RETURN ALL
return {
	keywords = colored_keywords,			-- COLORED KEYWORDS
	phrs = create_phrs_fr(colored_keywords),-- FREQUENTLY REPEATED PHRASES
	nts = create_nts_fr(colored_keywords)	 -- NOTES
}
