---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

-- Конфигурация (без кэширования)
local CONFIG = {
	VARIABLES = {
-- BLESSINGS
		ammo_var =				"{ammo:%s}",
		amount_var =			"{amount}",
		amountp_var =			"{amount:%s}",
		attack_spd_var =		"{attack_speed:%s}",
		blltam_var =			"{bullet_amount:%s}",
		block_var =				"{block_cost:%s}",
		buildup_var =			"{buildup_amount:%s}",
		chnc_var =				"{chance:%s}",
		chrgtime_var =			"{charge_time:%s}",
		cleave_var =			"{cleave:%s}",
		cd_dur_var =			"{cooldown_duration:%s}",
		cd_var =				"{cooldown:%s}",
		countd_var =			"{count:%d}",
		counts_var =			"{count:%s}",
		crit_var =				"{crit_chance:%s}",
		critdmg_var =			"{crit_damage:%s}",
		critchmax_var =			"{crit_chance_max:%s}",
		critchmin_var =			"{crit_chance_min:%s}",
		critwkspdmg_var =		"{crit_weakspot_damage:%s}",
		dist =					"{distance}",
		dmg_var =				"{damage:%s}",
		dmgcls_var =			"{close_damage:%s}",
		dmghvy_var =			"{heavy_damage:%s}",
		dmgnr_var =				"{damage_near:%s}",
		dmgvogrmon_var =		"{dmg_vs_ogryn_monster:%s}",
		dmgvsprsd_var =			"{damage_vs_suppressed}",
		dmgvsstgr_var =			"{vs_stagger:%s}",
		dur_var =				"{duration:%s}",
		explosion_rad_var =		"{explosion_radius:%s}",
		extrahits_var =			"{extra_hits:%s}",
		fin_var =				"{finesse:%s}",
		health_pc =				"{health}%",
		heat_diss_var =			"{heat_dissipation:%s}",
		heat_pc_var =			"{heat_percentage:%s}",
		heat_red_var =			"{heat_reduction:%s}",
		hit_var =				"{hit:%s}",
		hitmass_var =			"{hit_mass:%s}",
		hit_mass_red_var =		"{hit_mass_reduction:%s}",
		impact_var =			"{impact:%s}",
		impmod_var =			"{impact_modifier:%s}",
		interval_var =			"{interval:%s}",
		max_stk_cnt_var =		"{max_stack_count:%s}",
		maxstks_var =			"{max_stacks:%s}",
		mel_weapsp_dmg_var =	"{melee_weakspot_damage}",
		min_stk_cnt_var =		"{min_stack_count:%s}",
		movspd_var =			"{movement_speed:%s}",
		mult_hit_var =			"{multiple_hit:%s}",
		num_enemies =			"{num_enemies}",
		overheat_red_var =		"{overheat_reduction:%s}",
		procch_var =			"{proc_chance:%s}",
		pwr_var =				"{power:%s}",
		pwrlvl_var =			"{power_level:%s}",
		radius_var =			"{radius:%s}",
		rangcrtdmg_var =		"{ranged_crit_damage:%s}",
		range_var =				"{range:%s}",
		rbc =					"{reduced_block_cost:%s}",
		recoil_red_var =		"{recoil_reduction:%s}",
		red_var =				"{reduction:%s}",
		reload_var =			"{reload_speed:%s}",
		rend_var =				"{rend:%s}",
		rending_pc_var =		"{rending_percentage:%s}",
		rending_var =			"{rending:%s}",
		spprsn_var =			"{suppression:%s}",
		stacks_num_var =		"{num_stacks:%s}",
		stacks_var =			"{stacks:%s}",
		stam_var =				"{stamina:%s}",
		stgr_var =				"{stagger:%s}",
		stgrrang_var =			"{ranged_stagger:%s}",
		stgrrdct_var =			"{stagger_reduction:%s}",
		target =				"{target}",
		tghns_var =				"{toughness:%s}",
		time =					"{time}",
		time_var =				"{time:%s}",
		time_wind =				"{time_window}",
		value_var =				"{value:%s}",
		warpchrg_var =			"{warp_charge:%s}",
		wkspdmg_var =			"{weakspot_damage:%s}",
		weapsprd_var =			"{weapon_spread:%s}",
	-- +variables
		p_chrgspd_var =			"+{charge_speed:%s}",
		p_stacks_var =			"+{stacks:%s}",

-- CURIOS
		abil_cd =				"{ability_cooldown_modifier:%s}",
		bcm =					"{sprinting_cost_multiplier:%s}",
		blckcst =				"{block_cost_multiplier:%s}",
		corr =					"{corruption_taken_multiplier:%s}",
		corrgrm =				"{permanent_damage_converter_resistance:%s}",
		credits =				"{mission_reward_credit_modifier:%s}",
		dmg_red =				"{damage_reduction:%s}",
		gears =					"{mission_reward_gear_instead_of_weapon_modifier:%s}",
		maxhlth =				"{max_health_modifier:%s}",
		maxstam =				"{stamina_modifier:%s}",
		maxtghns =				"{toughness_bonus:%s}",
		maxwnds =				"{extra_max_amount_of_wounds:%s}",
		revive =				"{revive_speed_modifier:%s}",
		stamreg =				"{stamina_regeneration_modifier:%s}",
		tghn_reg_del =			"{toughness_regen_delay_multiplier:%s}",
		xp =					"{mission_reward_xp_modifier:%s}",

	-- Symbols
		n_plus =	"+",
		n_minus =	"-",
		n_meter =	"m",
		n_metr =	"м",
		n_second =	"s",
		n__s =		"'s",
		pc =		"%",

	},

	NUMBERS = {
		n_0 =		"0",
		n_01 =		"0.1",
		n_02 =		"0.2",
		n_025 =		"0.25",
		n_03 =		"0.3",
		n_033 =		"0.33",
		n_04 =		"0.4",
		n_05 =		"0.5",
		n_055 =		"0.55",
		n_0875 =	"0.875",
		n_075 =		"0.75",

		n_1 =		"1",
		n_1_13 =	"1.13",
		n_1_5 =		"1.5",
		n_1_7 =		"1.7",

		n_2 =		"2",
		n_2e =		"2e",
		n_2_1 =		"2.1",
		n_2_5 =		"2.5",

		n_3 =		"3",
		n_3e =		"3e",
		n_3_25 =	"3.25",
		n_3_5 =		"3.5",
		n_3_75 =	"3.75",

		n_4 =		"4",
		n_4_5 =		"4.5",
		n__4 =		"~4",
		n_4e =		"4e",

		n_5 =		"5",
		n_5_5 =		"5.5",
		n_5_8 =		"5.8",

		n_6 =		"6",
		n_6_5 =		"6.5",
		n_6_03 =	"6.03",

		n_7 =		"7",
		n_7_3 =		"7.3",
		n_7_5 =		"7.5",

		n_8 =		"8",
		n_8_8 =		"8.8",

		n_9 =		"9",
		n_9_5 =		"9.5",
		n__9 =		"~9",

		n_10 =		"10",
		n_10_3 =	"10.3",
		n_11 =		"11",
		n_10_5 =	"10.5",
		n_12 =		"12",
		n__12 =		"~12",
		n_12_5 =	"12.5",
		n_13 =		"13",
		n__13 =		"~13",
		n_14 =		"14",
		n_15 =		"15",
		n__15 =		"~15",
		n_16 =		"16",
		n__16 =		"~16",
		n__17 =		"~17",
		n__19 =		"~19",

		n_20 =		"20",
		n__20 =		"~20",
		n_21 =		"21",
		n__22 =		"~22",
		n_24 =		"24",
		n__24 =		"~24",
		n_25 =		"25",
		n__25 =		"~25",
		n__28 =		"~28",

		n_30 =		"30",
		n_31 =		"31",
		n_33 =		"33",
		n__33 =		"~33",
		n_37_5 =	"37.5",

		n_40 =		"40",
		n_45 =		"45",

		n_50 =		"50",
		n__50 =		"~50",
		n_59_85 =	"59.85",

		n_60 =		"60",
		n__60 =		"~60",
		n_64 =		"64",
		n__67 =		"~67",

		n_80 =		"80",
		n__83 =		"~83",

		n_100 =		"100",

		n_200 =		"200",
		n_225 =		"225",
		n_250 =		"250",

		n_340 =		"340",
		n_380 =		"380",

		n_500 =		"500",
		n_585 =		"585",

		n_600 =		"600",

		n_1200 =	"1200",
		n_1500 =	"1500",
		n_1850 =	"1850",

		n_2400 =	"2400",

	-- Roman numerals
		n_IIB =		"IIB",
		n_VII =		"VII",
		n_IX =		"IX",
	},

	PERCENTAGES = {
		pc_1 =		"1%",

		pc_2 =		"2%",
		pc_2_5 =	"2.5%",

		pc_3 =		"3%",
		pc_3_75 =	"3.75%",

		pc_4 =		"4%",
		pc_5 =		"5%",
		pc_6 =		"6%",

		pc_7_5 =	"7.5%",

		pc_8 =		"8%",
		pc_8_5 =	"8.5%",

		pc_10 =		"10%",
		pc_11 =		"11%",
		pc_12 =		"12%",
		pc_15 =		"15%",
		pc_19 =		"19%",

		pc_20 =		"20%",
		pc_24 =		"24%",
		pc_25 =		"25%",

		pc_30 =		"30%",
		pc_32 =		"32%",
		pc_33 =		"33%",
		pc_38 =		"38%",

		pc_40 =		"40%",
		pc_41 =		"41%",
		pc_48 =		"48%",

		pc_50 =		"50%",

		pc_60 =		"60%",
		pc_66 =		"66%",

		pc_75 =		"75%",

		pc_80 =		"80%",

		pc_91p =	"91%",
		pc_97 =		"97%",

		pc_100 =	"100%",

		pc_p10 =	"+10%",
		pc_p12 =	"+12%",
		pc_p19 =	"+19%",
	}
}

-- Основная функция
local function create_colored_numbers()
	local result = {}
	local color_name = mod:get("variables_text_colour") or "white"
	local color = Color[color_name]

	if not color then
		color = Color.white(255, true)
	else
		color = color(255, true)
	end

	local InputUtils = require("scripts/managers/input/input_utils")
	local flat_config = {}
	for _, config_table in pairs(CONFIG) do
		for name, text in pairs(config_table) do
			flat_config[name] = text
		end
	end

	for name, text in pairs(flat_config) do
		if InputUtils and InputUtils.apply_color_to_input_text then
			result[name .. "_rgb"] = InputUtils.apply_color_to_input_text(text, color)
		else
			result[name .. "_rgb"] = text
		end
	end

	return result
end

-- Возвращаем таблицу
return create_colored_numbers()
