---@diagnostic disable: undefined-global
local mod = get_mod("Enhanced_descriptions")

--[+ Loading colors of Keywords and Numbers +]--
COLORS_Numbers = mod:io_dofile("Enhanced_descriptions/COLORS_Numbers")
-- All numbers are taken from this file by adding to the value "COLORS_Numbers."
-- For example, in the game the Damage value is taken from the variable {damage:%s}, which in the file "COLORS_Numbers.lua" is replaced by dmg_var_rgb and to add the highlighted number to the text, we write the damage number to the text as "..COLORS_Numbers.dmg_var_rgb.."

COLORS_KWords = mod:io_dofile("Enhanced_descriptions/Loc_EN/COLORS_KWords")
-- All Keywords are taken from this file by adding to the value "COLORS_KWords.".
-- For example, in the file "COLORS_KWords.lua" the word Damage is replaced by Damage_rgb and to add the highlighted word to the text we write it as "..COLORS_KWords.Damage_rgb.".

	--[+ Translations +]-- Add a line with a file of Keywords translated into your language.
COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/COLORS_KWords_fr") -- French
COLORS_KWords_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/COLORS_KWords_ru") -- Russian

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

--[+ Define localization templates +]--
local localization_templates = {
-- Duplicate the line and translate. For example:
--		create_template("weap_bb0_ext_en", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies" end),
--		create_template("weap_bb0_ext_YOURLANGUAGE", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне." end), <- Don't forget the comma at the end!

--[+ +CURIOS - РЕЛИКВИИ+ +]--
	--[+ Blessings - Благословения +]--
		--[+ +Health +]--
	create_template("curio_bless0_ext_en", {"loc_inate_gadget_health_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." Maximum "..COLORS_KWords.Health_rgb end),
	--[+ French +]--
	create_template("curio_bless0_ext_fr", {"loc_inate_gadget_health_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." de "..COLORS_KWords_fr.Health_rgb_fr.." Maximum" end),
	--[+ Russian +]--
	create_template("curio_bless0_ext_en", {"loc_inate_gadget_health_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." к максимальному "..COLORS_KWords_ru.Health_rgb_ru end),

		--[+ +Wound +]--
	create_template("curio_bless1_ext_en", {"loc_inate_gadget_health_segment_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxwnds_rgb.." "..COLORS_KWords.Wound_rgb end),
	--[+ French +]--
	create_template("curio_bless1_ext_fr", {"loc_inate_gadget_health_segment_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxwnds_rgb.."  "..COLORS_KWords_fr.Wound_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_bless1_ext_en", {"loc_inate_gadget_health_segment_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxwnds_rgb.." сегмент полоски "..COLORS_KWords_ru.Wound_rgb_ru end),

		--[+ +Stamina +]--
	create_template("curio_bless2_ext_en", {"loc_inate_gadget_stamina_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxstam_rgb.." Maximum "..COLORS_KWords.Stamina_rgb end),
	--[+ French +]--
	create_template("curio_bless2_ext_fr", {"loc_inate_gadget_stamina_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxstam_rgb.." d'"..COLORS_KWords_fr.Stamina_rgb_fr.." Maximum" end),
	--[+ Russian +]--
	create_template("curio_bless2_ext_en", {"loc_inate_gadget_stamina_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxstam_rgb.." к максимальной "..COLORS_KWords_ru.Stamina_rgb_ru end),

		--[+ +Toughness +]--
	create_template("curio_bless3_ext_en", {"loc_inate_gadget_toughness_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords.Toughness_rgb end),
	--[+ French +]--
	create_template("curio_bless3_ext_fr", {"loc_inate_gadget_toughness_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_bless3_ext_en", {"loc_inate_gadget_toughness_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." к максимальной "..COLORS_KWords_ru.Toughness_rgb_ru end),

	--[+ Traits - Характеристики +]--
		--[+ +Combat Ability Regeneration +]--
	create_template("curio_traits0_ext_en", {"loc_gadget_cooldown_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.abil_cd_rgb.." "..COLORS_KWords.Combat_ability_rgb.." Regeneration" end),
	--[+ French +]--
	create_template("curio_traits0_ext_fr", {"loc_gadget_cooldown_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.abil_cd_rgb.." de régénération du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_traits0_ext_en", {"loc_gadget_cooldown_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.abil_cd_rgb.." к восстановлению "..COLORS_KWords_ru.Combat_ability_rgb_ru end),

		--[+ +Corruption Resistance +]--
	create_template("curio_traits1_ext_en", {"loc_gadget_corruption_resistance_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.corr_rgb.." "..COLORS_KWords.Corruption_rgb.." Resistance" end),
	--[+ French +]--
	create_template("curio_traits1_ext_fr", {"loc_gadget_corruption_resistance_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.corr_rgb.." de résistance à la "..COLORS_KWords_fr.Corruption_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_traits1_ext_en", {"loc_gadget_corruption_resistance_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.corr_rgb.." к сопротивлению "..COLORS_KWords_ru.Corruption_rgb_ru end),

		--[+ +Corruption Resistance from Grimoires +]--
	create_template("curio_traits2_ext_en", {"loc_gadget_grim_corruption_resistance_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.corrgrm_rgb.." "..COLORS_KWords.Corruption_rgb.." Resistance from Grimoires" end),
	--[+ French +]--
	create_template("curio_traits2_ext_fr", {"loc_gadget_grim_corruption_resistance_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.corrgrm_rgb.." de résistance à la "..COLORS_KWords_fr.Corruption_rgb_fr.." (Grimoires)" end),
	--[+ Russian +]--
	create_template("curio_traits2_ext_en", {"loc_gadget_grim_corruption_resistance_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.corrgrm_rgb.." к сопротивлению "..COLORS_KWords_ru.Corruption_rgb_ru.." от гримуаров" end),

		--[+ +Health +]--
	create_template("curio_traits3_ext_en", {"loc_trait_gadget_health_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." Maximum "..COLORS_KWords.Health_rgb end),
	--[+ French +]--
	create_template("curio_traits3_ext_fr", {"loc_trait_gadget_health_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." de "..COLORS_KWords_fr.Health_rgb_fr.." maximum" end),
	--[+ Russian +]--
	create_template("curio_traits3_ext_en", {"loc_trait_gadget_health_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." к максимальному "..COLORS_KWords_ru.Health_rgb_ru end),

		--[+ +Block Cost Reduction +]--
	create_template("curio_traits4_ext_en", {"loc_gadget_block_cost_reduction_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.blckcst_rgb.." Block Cost Reduction" end),
	--[+ French +]--
	create_template("curio_traits4_ext_fr", {"loc_gadget_block_cost_reduction_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.blckcst_rgb.." d'éfficacité de blocage" end),
	--[+ Russian +]--
	create_template("curio_traits4_ext_en", {"loc_gadget_block_cost_reduction_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.blckcst_rgb.." к снижение стоимости блока" end),


-- DUPLICATE!!! THERE IS THE SAME IN WEAPON BLESSINGS! (WEAPONS_Blessings_Perks.lua)
		--[+ -Stamina Cost for Sprinting +]-- 
	-- create_template("curio_traits5_ext_en", {"loc_gadget_sprint_cost_reduction_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.bcm_rgb.." "..COLORS_KWords.Stamina_rgb.." Cost for Sprinting" end),
	--[+ French +]--
	-- create_template("curio_traits5_ext_fr", {"loc_gadget_sprint_cost_reduction_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.bcm_rgb.." de coût d'"..COLORS_KWords_fr.Stamina_rgb_fr.." de la course" end),
	--[+ Russian +]--
	-- create_template("curio_traits5_ext_en", {"loc_gadget_sprint_cost_reduction_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.bcm_rgb.." к затратам "..COLORS_KWords_ru.Stamina_rgb_ru.." на бег" end),


		--[+ +Ally Revive Speed +]--
	create_template("curio_traits6_ext_en", {"loc_gadget_revive_speed_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.revive_rgb.." Ally Revive Speed" end),
	--[+ French +]--
	create_template("curio_traits6_ext_fr", {"loc_gadget_revive_speed_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.revive_rgb.." de vitesse de réanimation des alliés" end),
	--[+ Russian +]--
	create_template("curio_traits6_ext_en", {"loc_gadget_revive_speed_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.revive_rgb.." к скорости возрождения союзника" end),

		--[+ +Stamina Regeneration +]--
	create_template("curio_traits7_ext_en", {"loc_gadget_stamina_regeneration_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.stamreg_rgb.." "..COLORS_KWords.Stamina_rgb.." Regeneration" end),
	--[+ French +]--
	create_template("curio_traits7_ext_fr", {"loc_gadget_stamina_regeneration_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.stamreg_rgb.." de régénération d'"..COLORS_KWords_fr.Stamina_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_traits7_ext_en", {"loc_gadget_stamina_regeneration_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.stamreg_rgb.." к восстановлению "..COLORS_KWords_ru.Stamina_rgb_ru end),

		--[+ +Toughness +]--
	create_template("curio_traits8_ext_en", {"loc_trait_gadget_toughness_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords.Toughness_rgb end),
	--[+ French +]--
	create_template("curio_traits8_ext_fr", {"loc_trait_gadget_toughness_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.."" end),
	--[+ Russian +]--
	create_template("curio_traits8_ext_en", {"loc_trait_gadget_toughness_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru end),

		--[+ +Toughness Regeneration Speed +]--
	create_template("curio_traits9_ext_en", {"loc_gadget_toughness_regen_delay_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.tghn_reg_del_rgb.." "..COLORS_KWords.Toughness_rgb.." Regeneration Speed" end),
	--[+ French +]--
	create_template("curio_traits9_ext_fr", {"loc_gadget_toughness_regen_delay_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.tghn_reg_del_rgb.." de vitesse de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." de syntonie" end),
	--[+ Russian +]--
	create_template("curio_traits9_ext_en", {"loc_gadget_toughness_regen_delay_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.tghn_reg_del_rgb.." к скорости восстановления "..COLORS_KWords_ru.Toughness_rgb_ru end),

		--[+ +Experience +]--
	create_template("curio_traits10_ext_en", {"loc_trait_gadget_mission_xp_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.xp_rgb.." Experience" end),
	--[+ French +]--
	create_template("curio_traits10_ext_fr", {"loc_trait_gadget_mission_xp_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.xp_rgb.." d'expérience" end),
	--[+ Russian +]--
	create_template("curio_traits10_ext_en", {"loc_trait_gadget_mission_xp_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.xp_rgb.." к опыту" end),

		--[+ +Ordo +]--
	create_template("curio_traits11_ext_en", {"loc_trait_gadget_mission_credits_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.credits_rgb.." Ordo Dockets" end),
	--[+ French +]--
	create_template("curio_traits11_ext_fr", {"loc_trait_gadget_mission_credits_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.credits_rgb.." bordereaux de l'Ordo (récompenses de mission)" end),
	--[+ Russian +]--
	create_template("curio_traits11_ext_en", {"loc_trait_gadget_mission_credits_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.credits_rgb.." купонов ордо" end),

		--[+ +Curio as Mission Reward instead of Weapon +]--
	create_template("curio_traits12_ext_en", {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.gears_rgb.." chance of Curio as Mission Reward instead of Weapon" end),
	--[+ French +]--
	create_template("curio_traits12_ext_fr", {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.gears_rgb.." de chance d'obtenir une curiosité comme récompense à la place d'une arme" end),
	--[+ Russian +]--
	create_template("curio_traits12_ext_en", {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.gears_rgb.." шанс получить редкость вместо оружия в награду" end),

		--[+ +Damage Resistance vs Flamers +]--
	create_template("curio_traits13_ext_en", {"loc_trait_gadget_dr_vs_flamer_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Flamers" end),
	--[+ French +]--
	create_template("curio_traits13_ext_fr", {"loc_trait_gadget_dr_vs_flamer_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Incendiaires, Incendiaires toxiques) " end),
	--[+ Russian +]--
	create_template("curio_traits13_ext_en", {"loc_trait_gadget_dr_vs_flamer_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Огнемётчиков" end),

		--[+ +Damage Resistance vs Bombers +]--
	create_template("curio_traits14_ext_en", {"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Bombers" end),
	--[+ French +]--
	create_template("curio_traits14_ext_fr", {"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Bombardiers)" end),
	--[+ Russian +]--
	create_template("curio_traits14_ext_en", {"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Гренадёров" end),

		--[+ +Damage Resistance vs Gunners +]--
	create_template("curio_traits15_ext_en", {"loc_trait_gadget_dr_vs_gunners_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Gunners" end),
	--[+ French +]--
	create_template("curio_traits15_ext_fr", {"loc_trait_gadget_dr_vs_gunners_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Mitrailleurs)" end),
	--[+ Russian +]--
	create_template("curio_traits15_ext_en", {"loc_trait_gadget_dr_vs_gunners_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Пулемётчиков" end),

		--[+ +Damage Resistance vs Pox Hounds +]--
	create_template("curio_traits16_ext_en", {"loc_trait_gadget_dr_vs_hounds_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Pox Hounds" end),
	--[+ French +]--
	create_template("curio_traits16_ext_fr", {"loc_trait_gadget_dr_vs_hounds_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Cerdères vérolés)" end),
	--[+ Russian +]--
	create_template("curio_traits16_ext_en", {"loc_trait_gadget_dr_vs_hounds_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Чумных гончих" end),

		--[+ +Damage Resistance vs Mutants +]--
	create_template("curio_traits17_ext_en", {"loc_trait_gadget_dr_vs_mutants_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Mutants" end),
	--[+ French +]--
	create_template("curio_traits17_ext_fr", {"loc_trait_gadget_dr_vs_mutants_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Mutants)" end),
	--[+ Russian +]--
	create_template("curio_traits17_ext_en", {"loc_trait_gadget_dr_vs_mutants_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Мутантов" end),

		--[+ +Damage Resistance vs Snipers +]--
	create_template("curio_traits18_ext_en", {"loc_trait_gadget_dr_vs_snipers_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Snipers" end),
	--[+ French +]--
	create_template("curio_traits18_ext_fr", {"loc_trait_gadget_dr_vs_snipers_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Snipers)" end),
	--[+ Russian +]--
	create_template("curio_traits18_ext_en", {"loc_trait_gadget_dr_vs_snipers_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Снайперов" end),

		--[+ +Damage Resistance vs Poxbursters +]-- Cut out???
	-- create_template("curio_traits19_ext_en", {"loc_trait_gadget_dr_vs_bursters_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Poxbursters" end),
	--[+ French +]--
	-- create_template("curio_traits19_ext_fr", {"loc_trait_gadget_dr_vs_bursters_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Poxbursters)" end),
	--[+ Russian +]--
	-- create_template("curio_traits19_ext_en", {"loc_trait_gadget_dr_vs_bursters_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Чумных взрывников" end), -- Вырезано!
}



			-- ============ DO NOT DO ANYTHING BELOW! ============ --

--[+ Reload localization templates when the mod is enabled or disabled +]--
function mod.on_enabled()
	if WTL then
		WTL.reload_templates()
	end
end

function mod.on_disabled()
	if WTL then
		WTL.reload_templates()
	end
end

--[+ Return the localization templates +]--
return localization_templates
