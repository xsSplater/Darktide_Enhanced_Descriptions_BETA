---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

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
		Coherency = "Cohérence",
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

		Crit_Attk = "Attaque critique",
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
		Hit_mass = "Masse de frappe",
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
		Soulblaze = "Embrasement d'âme",
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
		cls_psy = "Psykène",
		cls_psys = "Psykènes",
		cls_psy2 = "Psykène",
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
		cls_zea = "Zélote",
		cls_zea2 = "Zélote",
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
		cls_scm = "Racailles de la Ruche",
		cls_scm2 = "Racailles de la Ruche",
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
		Assail = "Attaque",
		Brain_burst = "Explosion cérébrale",
		Brain_rupture = "Rupture cérébrale",
		Enfeeble = "Affaiblissement",
		Scrier_gaze = "Regard de divination",
		Scriers_gaze = "Regard de divination",
		Smite = "Châtiment",
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
		Omnissia_p = "Autel de l'Omnissiah",
		Prologue_p = "Prologue",
		Sir_melk_p = "Réquisitorium de Sire Melk",
		-- Psyker
		assail = "Attaque",
		bburst = "Explosion cérébrale",
		bburst1 = "Rupture cérébrale",
		disrdest = "Destin perturbé",
		empsionics = "Psionique renforcé",
		kinetpres = "Présence cinétique",
		prescience = "Préscience",
		psy_wrath = "Colère psykynétique",
		psy_wrath2 = "Cri de ventilation",
		scriersgaze = "Regard de divination",
		seerspres = "Présence du voyant",
		smite = "Châtiment",
		telekshii = "Bouclier télékinétique",
		-- Ogryn
		big_box = "Grosse boîte de douleur",
		big_box2 = "Bombes larguées!",
		bigfriendro = "Gros caillou amical",
		bonebraura = "Aura du briseur d'os",
		bull_rush = "Charge de taureau",
		bull_rush4 = "Indomptable",
		burstlimo = "Annulation du limiteur",
		cowculaura = "Aura d'abattage des lâches",
		feelnop = "Insensible à la douleur",
		fragbomb = "Bombe à fragmentation",
		heavyhitter = "Frappeur lourd",
		loyalprot = "Protecteur loyal",
		pbbarrage = "Barrage à bout portant",
		stayclose = "Restez proche!",
		-- Veteran
		closenkill = "Proche et mortel",
		exec_stan = "Posture de l'exécuteur",
		fcs_trg = "Cible prioritaire!",
		firetim = "Équipe de feu",
		frag_gr = "Grenade à fragmentation",
		infiltr = "Infiltration",
		krak_gr = "Grenade Krak",
		scavenger = "Éboueur",
		snipcon = "Concentration du tireur",
		smok_gr = "Grenade fumigène",
		survivalist = "Survivaliste",
		voiceoc = "Voix de commandement",
		volley_fire = "Tir de salve",
		weapsec = "Spécialiste en armes",
		-- Zealot
		beaconop = "Phare de pureté",
		benedict = "Bénédiction",
		blazingp = "Piété flamboyante",
		chast_wckd = "Châtiment des méchants",
		chorusosf = "Chœur de la force spirituelle",
		fanrage = "Fureur",
		fire_gren = "Grenade d'immolation",
		fury_faithful = "Fureur des fidèles",
		holy_revenant = "Revenant sacré",
		inexor = "Jugement inexorable",
		klinvery = "Lames de foi",
		loner = "Solitaire",
		martydom = "Martyre",
		shock_gren = "Grenade tempête étourdissante",
		shock_gren1 = "Grenade étourdissante",
		shroudf = "Champ d'occultation",
		momentum = "Élan",
	},

	-- DIFFICULTY
	-- sedition_text_colour = {
		-- sedition = "Sédition",
	-- },
	uprising_text_colour = {
		uprising = "Insurrection",
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
				result[key .. "_rgb_fr"] = colored_text
			else
				result[key .. "_rgb_fr"] = text
			end
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
		Can_be_refr_drop_1 = Dot_green .. " Les piles peuvent être actualisées pendant la durée active et sont supprimées une par une.",
		Can_proc_mult = Dot_green .. " Peut se déclencher plusieurs fois par coup lors du " .. CKWord("Transpercement", "Cleaving_rgb_fr") .. ".\n",
		Can_proc_mult_str = Dot_green .. " Peut se déclencher plusieurs fois par coup lors du " .. CKWord("Transpercement", "Cleaving_rgb_fr") .. ".\n",
		Refr_dur_stappl = Dot_green .. " Actualise la durée lors de l'application de la pile.",
		-- Psyker
		Doesnt_Stack_Psy_Aura = Dot_red .. " Ne s'empile pas avec la même Aura d'un autre " .. CKWord("Psykène", "cls_psy_rgb_fr") .. ".",
		Doesnt_Stack_Psy_eff = Dot_red .. " Ne s'empile pas avec le même debuff d'un autre " .. CKWord("Psykène", "cls_psy_rgb_fr") .. ".",
		-- Veteran
		Doesnt_Stack_Vet_Aura = Dot_red .. " Ne s'empile pas avec la même Aura d'un autre " .. CKWord("Vétéran", "cls_vet_rgb_fr") .. ".",
		-- Zealot
		Doesnt_Stack_Zea_Aura = Dot_red .. " Ne s'empile pas avec la même Aura d'un autre " .. CKWord("Zélote", "cls_zea_rgb_fr") .. ".",
		Doesnt_Stack_Zea_abil = Dot_red .. " Ne s'empile pas avec le même talent d'un autre " .. CKWord("Zélote", "cls_zea_rgb_fr") .. ".",
		-- Ogryn
		Doesnt_Stack_Ogr_Aura = Dot_red .. " Ne s'empile pas avec la même Aura d'un autre " .. CKWord("Ogryn", "cls_ogr_rgb_fr") .. ".",

		Cant_appl_thr_shlds = Dot_red .. " Ne peut pas être appliqué à travers les boucliers.",
		Cant_Crit = Dot_red .. " Ne peut pas faire de " .. CKWord("Critique", "Crit_rgb_fr") .. ".\n",
		Carap_cant_clv = Dot_red .. " L'armure de carapace ne peut pas être " .. CKWord("transpercée", "Cleaved_rgb_fr") .. " par défaut.",
		Carap_cant_cleave = Dot_red .. " L'armure de carapace ne peut pas être " .. CKWord("transpercée", "Cleaved_rgb_fr") .. " par défaut.",
		Dont_intw_coher_toughn = Dot_red .. " N'interagit pas avec la " .. CKWord("Cohérence", "Coherency_rgb_fr") .. " " .. CKWord("Robustesse", "Toughness_rgb_fr") .. ".",
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
