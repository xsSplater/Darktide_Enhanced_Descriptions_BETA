---@diagnostic disable: undefined-global
-- Version 4.0

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

--[+ ++NUMBERS++ +]--
local var_col = Color[mod:get("variables_text_colour")](255, true)
local var_col = Color[mod:get("variables_text_colour")](255, true)
local iu_actit = InputUtils.apply_color_to_input_text

-- Unified configuration of all keyword groups
local CONFIG = {
	VARIABLES = {
		-- Blessings
		ammo_var = "{ammo:%s}",
		attack_spd_var = "{attack_speed:%s}",
		amount_var = "{amount}",
		amountp_var = "{amount:%s}",
		block_var = "{block_cost:%s}",
		blltam_var = "{bullet_amount:%s}",
		buildup_var = "{buildup_amount:%s}",
		chnc_var = "{chance:%s}",
		chrgtime_var = "{charge_time:%s}",
		cleave_var = "{cleave:%s}",
		dmgcls_var = "{close_damage:%s}",
		cd_var = "{cooldown:%s}",
		cd_dur_var = "{cooldown_duration:%s}",
		countd_var = "{count:%d}",
		counts_var = "{count:%s}",
		crit_var = "{crit_chance:%s}",
		critdmg_var = "{crit_damage:%s}",
		critwkspdmg_var = "{crit_weakspot_damage:%s}",
		critchmax_var = "{crit_chance_max:%s}",
		critchmin_var = "{crit_chance_min:%s}",
		dmg_var = "{damage:%s}",
		dmgnr_var = "{damage_near:%s}",
		dmgvsprsd_var = "{damage_vs_suppressed}",
		dmgvsstgr_var = "{vs_stagger:%s}",
		dmgvogrmon_var = "{dmg_vs_ogryn_monster:%s}",
		dist = "{distance}",
		dur_var = "{duration:%s}",
		explosion_rad_var = "{explosion_radius:%s}",
		fin_var = "{finesse:%s}",
		health_pc = "{health}%",
		heat_diss_var = "{heat_dissipation:%s}",
		heat_pc_var = "{heat_percentage:%s}",
		heat_red_var = "{heat_reduction:%s}",
		dmghvy_var = "{heavy_damage:%s}",
		hit_var = "{hit:%s}",
		hitmass_var = "{hit_mass:%s}",
		hit_mass_red_var = "{hit_mass_reduction:%s}",
		impact_var = "{impact:%s}",
		impmod_var = "{impact_modifier:%s}",
		interval_var = "{interval:%s}",
		maxstks_var = "{max_stacks:%s}",
		max_stk_cnt_var = "{max_stack_count:%s}",
		mel_weapsp_dmg_var = "{melee_weakspot_damage}",
		min_stk_cnt_var = "{min_stack_count:%s}",
		movspd_var = "{movement_speed:%s}",
		mult_hit_var = "{multiple_hit:%s}",
		num_enemies = "{num_enemies}",
		overheat_red_var = "{overheat_reduction:%s}",
		pwr_var = "{power:%s}",
		pwrlvl_var = "{power_level:%s}",
		procch_var = "{proc_chance:%s}",
		radius_var = "{radius:%s}",
		rangcrtdmg_var = "{ranged_crit_damage:%s}",
		range_var = "{range:%s}",
		rbc = "{reduced_block_cost:%s}",
		recoil_red_var = "{recoil_reduction:%s}",
		red_var = "{reduction:%s}",
		reload_var = "{reload_speed:%s}",
		rend_var = "{rend:%s}",
		rending_var = "{rending:%s}",
		rending_pc_var = "{rending_percentage:%s}",
		stacks_num_var = "{num_stacks:%s}",
		stacks_var = "{stacks:%s}",
		stam_var = "{stamina:%s}",
		stgr_var = "{stagger:%s}",
		spprsn_var = "{suppression:%s}",
		stgrrang_var = "{ranged_stagger:%s}",
		stgrrdct_var = "{stagger_reduction:%s}",
		target = "{target}",
		tghns_var = "{toughness:%s}",
		time = "{time}",
		time_var = "{time:%s}",
		time_wind = "{time_window}",
		value_var = "{value:%s}",
		warpchrg_var = "{warp_charge:%s}",
		wkspdmg_var = "{weakspot_damage:%s}",
		weapsprd_var = "{weapon_spread:%s}",

		-- Plus variables
		p_chrgspd_var = "+{charge_speed:%s}",
		p_xtrahits_var = "{extra_hits:%s}",
		p_stacks_var = "+{stacks:%s}",

		-- Curios
		abil_cd = "{ability_cooldown_modifier:%s}",
		blckcst = "{block_cost_multiplier:%s}",
		corr = "{corruption_taken_multiplier:%s}",
		corrgrm = "{permanent_damage_converter_resistance:%s}",
		credits = "{mission_reward_credit_modifier:%s}",
		dmg_red = "{damage_reduction:%s}",
		gears = "{mission_reward_gear_instead_of_weapon_modifier:%s}",
		maxhlth = "{max_health_modifier:%s}",
		maxstam = "{stamina_modifier:%s}",
		maxtghns = "{toughness_bonus:%s}",
		maxwnds = "{extra_max_amount_of_wounds:%s}",
		revive = "{revive_speed_modifier:%s}",
		stamreg = "{stamina_regeneration_modifier:%s}",
		tghn_reg_del = "{toughness_regen_delay_multiplier:%s}",
		xp = "{mission_reward_xp_modifier:%s}",
		bcm = "{sprinting_cost_multiplier:%s}",

		-- Symbols and units
		n_plus = "+",
		n_minus = "-",
		n_meter = "m",
		n_second = "s",
		pc = "%",
	},

	NUMBERS = {
		n_0 = "0",
		n_01 = "0.1",
		n_02 = "0.2",
		n_025 = "0.25",
		n_03 = "0.3",
		n_033 = "0.33",
		n_04 = "0.4",
		n_05 = "0.5",
		n_055 = "0.55",
		n_0875 = "0.875",
		n_075 = "0.75",
		n_1 = "1",
		n_1_13 = "1.13",
		n_1_5 = "1.5",
		n_1_7 = "1.7",
		n_2 = "2",
		n_2_1 = "2.1",
		n_2e = "2e",
		n_2_5 = "2.5",
		n_3 = "3",
		n_3e = "3e",
		n_3_5 = "3.5",
		n_3_75 = "3.75",
		n_4 = "4",
		n_4e = "4e",
		n_5 = "5",
		n_6 = "6",
		n_6_03 = "6.03",
		n_7 = "7",
		n_8 = "8",
		n_9 = "9",
		n_10 = "10",
		n_10_5 = "10.5",
		n_12 = "12",
		n_12_5 = "12.5",
		n_14 = "14",
		n_15 = "15",
		n__15 = "~15",
		n_16 = "16",
		n__17 = "~17",
		n__19 = "~19",
		n_20 = "20",
		n__22 = "~22",
		n__24 = "~24",
		n_25 = "25",
		n__28 = "~28",
		n_30 = "30",
		n_31 = "31",
		n_33 = "33",
		n__33 = "~33",
		n_37_5 = "37.5",
		n_40 = "40",
		n_45 = "45",
		n_50 = "50",
		n__50 = "~50",
		n_59_85 = "59.85",
		n_64 = "64",
		n_60 = "60",
		n_80 = "80",
		n_100 = "100",
		n__67 = "~67",
		n__83 = "~83",
		n_200 = "200",
		n_225 = "225",
		n_250 = "250",
		n_340 = "340",
		n_380 = "380",
		n_585 = "585",
		n_600 = "600",
		n_IIB = "IIB",
		n_VII = "VII",
		n_IX = "IX",
	},

	PERCENTAGES = {
		pc_1 = "1%",
		pc_2 = "2%",
		pc_2_5 = "2.5%",
		pc_3 = "3%",
		pc_4 = "4%",
		pc_5 = "5%",
		pc_6 = "6%",
		pc_8 = "8%",
		pc_8_5 = "8.5%",
		pc_10 = "10%",
		pc_11 = "11%",
		pc_12 = "12%",
		pc_15 = "15%",
		pc_20 = "20%",
		pc_25 = "25%",
		pc_32 = "32%",
		pc_33 = "33%",
		pc_40 = "40%",
		pc_41 = "41%",
		pc_48 = "48%",
		pc_50 = "50%",
		pc_66 = "66%",
		pc_75 = "75%",
		pc_80 = "80%",
		pc_91p = "91%",
		pc_97 = "97%",
		pc_100 = "100%",
		pc_p10 = "+10%",
		pc_p12 = "+12%",
		pc_p19 = "+19%",
	}
}

-- Optimized variable creation function with caching
local function create_colored_table(config_table, color)
	local result = {}
	for name, pattern in pairs(config_table) do
		result[name .. "_rgb"] = iu_actit(pattern, color)
	end
	return result
end

-- Create the final table
local COLORS = {}

-- We combine all categories
for category, config in pairs(CONFIG) do
	local colored_table = create_colored_table(config, var_col)
	for k, v in pairs(colored_table) do
		COLORS[k] = v
	end
end

-- Validation: check that ALL variables from CONFIG are created
local function validate_colors()
	local total_expected = 0
	local created_count = 0
	local missing_vars = {}
	
	-- Calculate how many variables there should be
	for category, config in pairs(CONFIG) do
		for name, _ in pairs(config) do
			total_expected = total_expected + 1
			if COLORS[name .. "_rgb"] then
				created_count = created_count + 1
			else
				table.insert(missing_vars, name .. "_rgb")
				mod:error("Missing color variable: " .. name .. "_rgb")
			end
		end
	end
	
	-- Logging the result
	if created_count == total_expected then
		mod:info("✅ All " .. total_expected .. " color variables created successfully")
	else
		mod:warning("⚠️ Created " .. created_count .. "/" .. total_expected .. " variables")
		mod:warning("Missing: " .. table.concat(missing_vars, ", "))
	end
end

-- Perform validation on load
validate_colors()

return COLORS