---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

local CONFIG = {
	--[+++MAIN+++]--
	combat_ability_text_colour = {
		Ability_cd = "Réduction du temps de recharge des capacités",
		Cd = "Temps de recharge",
		Combat_ability = "Capacité de combat",
		Combat_ability_cd = "Temps de recharge des capacités de combat",
	},

	health_text_colour = {
		Health = "Santé",
		Wound = "Blessure",
		Wounds = "Blessures",
	},

	peril_text_colour = {
		Peril = "Péril",
		Perils = "Péril",
	},

	stamina_text_colour = {
		Stamina = "Endurance",
		-- Stamina_c_r = "Stamina Cost",
	},

	toughness_text_colour = {
		Toughness = "Robustesse",
		Toughness_dmg_red = "Réduction des dégats de robustesse",
	},

	--[+++BUFFS+++]--
	cleave_text_colour = {
		Cleave = "Transpercement",
		Cleaving = "Transpercé",
	},

	crit_text_colour = {
		Crt_chance = "Taux de coup critique",
		Crit_chance = "Taux de coup critique",
		Crit_hit = "Coup critique",
		Crit_hit_chance = "Taux de coup critique",
		Crit_hits = "Coups critiques",
		Crit = "Critique",
		Crit0 = "Critique",
		Crit_dmg_r = "Dégâts de coup critique",
		Crit_chance_r = "Taux de coup critique",
		Crit_strike = "Dégâts de coup critique",
		Crit_hit_color = "Dégâts de coup critique",
	},

	damage_text_colour = {
		Damage = "Dégâts",
		Damagewrp = "Dégâts Warp",
	},

	finesse_text_colour = {
		Finesse = "Finesse",
		Finesse_dmg = "Dégâts de finesse",
	},

	hit_mass_text_colour = {
		Hit_mass = "Coups en masse",
	},

	impact_text_colour = {
		Impact = "Impact",
	},

	power_text_colour = {
		Power = "Puissance",
		Strength = "Puissance",
	},

	rending_text_colour = {
		Rending = "Déchirure",
	},

	weakspot_text_colour = {
		Weakspot = "Point faible",
		Weakspothit = "Coup sur point faible",
		Weakspothits = "Points faibles",
		Weakspot_dmg = "Dégât sur point faible",
	},

	--[+++DEBUFFS+++]--
	bleed_text_colour = {
		Bleed = "Saignement",
		Bleeding = "Saignent",
	},

	brittleness_text_colour = {
		Brittleness = "Fragilité",
	},

	burn_text_colour = {
		Burn = "Brûlure",
		Burning = "Brûlant",
		Heat = "Chaleur",
	},

	corruption_text_colour = {
		Corruption = "Corruption",
		Corruptdmg = "Dégât de corruption",
	},

	electrocuted_text_colour = {
		Electrocute = "Électrocuter",
		Electrocution = "Assourdissante",
		Electrocuted = "Électrocutés",
		Electrocutes = "Électrocutent",
		Electrcuting = "Étourdit",
	},

	soulblaze_text_colour = {
		Soulblaze = "Embrasement d'âme",
	},

	stagger_text_colour = {
		Stagger = "Vacillement",
		Staggering = "vaciller",
		Staggers = "vacillent",
		Stun = "étourdir",
		Stuns = "étourdissements",
		Stunned = "étourdis",
		Staggered = "vacille",
		Stun_s = "étourdissent",
	},

	--[+++PSYKER+++]--
	precision_text_colour = {
		Precision = "Précision",
	},

	--[+++OGRYN+++]--
	fnp_text_colour = {
		Feel_no_pain = "Insensible la douleur",
	},

	luckyb_text_colour = {
		Lucky_bullet = "balles chanceuses",
	},

	trample_text_colour = {
		Trample = "Piétinement",
	},

	--[+++ZEALOT+++]--
	fury_text_colour = {
		Fury = "Fureur",
	},

	momentum_text_colour = {
		Momentum = "Jugement inexorable",
	},

	stealth_text_colour = {
		Stealth = "furtivité",
	},

	--[+++VETERAN+++]--
	focus_text_colour = {
		Focus = "Focalisation",
	},

	focust_text_colour = {
		Focus_Target = "Ciblage",
	},

	meleespec_text_colour = {
		Meleespec = "Spécialiste en mêlée",
	},

	rangedspec_text_colour = {
		Rangedspec = "Spécialiste à distance",
	},

	--[+++MISC+++]--
	note_text_colour = {
		Fns_note = " La Finesse augmente les dégats au point faible et les dégats critiques.",
		Pwr_note = " La Puissance augmente les dégats, le vacillement et le transpercement.",
		Rend_note = " La Déchirure augmente vos dégats.",
		Brtl_note = " La Fragilité réduit la valeur défensive de l'armure des ennemis.",
		Trauma_note = "",
		Fire_n_trap_note = "",
	},

	talents_text_colour = {
		Scriers_gaze = "Regard de divination",
		Stun_gren = "Grenade étourdissante",
		Frag_gren = "Grenade Frag",
		Fragmentation_gren = "Grenade à fragmentation",
	},
}

-- Universal function for creating colored variables with French suffix
local function create_colored_keywords_fr(config)
	local result = {}

	for color_setting, keywords in pairs(config) do
		local color = Color[mod:get(color_setting)](255, true)

		for name, text in pairs(keywords) do
			result[name .. "_rgb_fr"] = iu_actit(text, color)
		end
	end

	return result
end

-- Validation: check that ALL variables have been created
local function validate_all_fr()
	local colors = create_colored_keywords_fr(CONFIG)
	local total_expected = 0
	local created_count = 0
	local missing_vars = {}

	for color_setting, items in pairs(CONFIG) do
		for name, _ in pairs(items) do
			total_expected = total_expected + 1
			local var_name = name .. "_rgb_fr"
			if colors[var_name] then
				created_count = created_count + 1
			else
				table.insert(missing_vars, var_name)
				mod:error("Missing French variable: " .. var_name)
			end
		end
	end

	if created_count == total_expected then
		mod:info("✅ All " .. total_expected .. " French keyword variables created successfully")
	else
		mod:warning("⚠️ Created " .. created_count .. "/" .. total_expected .. " French keyword variables")
		for _, missing_var in ipairs(missing_vars) do
			mod:warning("Missing: " .. missing_var)
		end
	end

	return colors
end

-- Create and validate all French variables
return validate_all_fr()
