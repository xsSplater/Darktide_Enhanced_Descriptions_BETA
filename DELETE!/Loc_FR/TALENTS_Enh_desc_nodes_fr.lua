---@diagnostic disable: undefined-global
-- NODES

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

local ppp___ppp = "+++-------------------------------------------------+++"
local stacks_add_w_health_buff_cur_fr = "- S'additionne avec les autres modificateurs de vie des curiosité."
local stacks_add_w_sm_mel_dmg_nodes_fr = "- S'additionne avec les autres boost de dégats de mélées et autres boost de dommage."
local stacks_mult_power_lvl_weap_bless_fr = "- Se multiplie avec les boosts de puissance des bénédictions."
local also_appl_2_health_wl_downed_fr = "- S'applique aussi a la vie des joueurs à terre."
local stacks_add_w_sm_tghnss_nodes_fr = "- S'additionne avec les autres point de robustesse."
local cur_max_tghnss_mult_by_tghnss_pc_fr = "- La robustesse maximal est multipliée par le pourcentage de robustesse donné par les curiosités."


--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ +NODES+ +]--
	--[+ Critical Chance Boost +]--
	local ED_CritChncBst_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Fonctionne pour toutes les attaques qui penvent crits.",
		"- S'additionne avec les autres sources de chance de crits.",
	}, "\n"), enhdesc_col)	-- Psyker, Veteran

	--[+ Health Boost Low +]--
	local ED_HeathBst_L_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed_fr,
		stacks_add_w_health_buff_cur_fr,
		"-- OGRYN: Par exemple, une curiosité +21% de santé avec un atout +5% santé avec ce point de 5% santé node augmente la vie maximale de l'Ogryn de 300 à 300x(0.21+0.05+0.05)=93 pour un montant de 393 point de vie.",
		"-- VETERAN: Par exemple, une curiosité +21% de santé avec un atout +5% santé avec ce point de 5% santé node augmente la vie maximale du Vétéran de 150 à 150x(0.21+0.05+0.05)=46.5 pour un montant de 196.5 point de vie. ( l'ATH arrondie la valeur au supérieur: 197).",
	}, "\n"), enhdesc_col) -- Veteran,

	--[+ Health Boost Medium +]--
	local ED_HeathBst_M_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed_fr,
		stacks_add_w_health_buff_cur_fr,
		"-- PSYKER: Par exemple, une curiosité +21% de santé avec un atout +5% santé avec ce point de 10% santé node augmente la vie maximale du Psyker de 150 à 150x(0.21+0.05+0.1)=54 pour un montant de 204 point de vie.",
		"-- OGRYN: Par exemple, une curiosité +21% de santé avec un atout +5% santé avec ce point de 10% santé node augmente la vie maximale de l'Ogryn de 300 à 300x(0.21+0.05+0.1)=108 pour un montant de 408 point de vie.",
		"-- ZEALOT: Par exemple, une curiosité +21% de santé avec un atout +5% santé avec ce point de 10% santé node augmente la vie maximale du Zealot de 200 à 200x(0.21+0.05+0.1)=72 pour un montant de 272 point de vie.",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Zealot

	--[+ Heavy Melee Damage Boost Low + Medium +]--
	local ED_HMeleeDmgBst_LM_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes_fr,
		stacks_mult_power_lvl_weap_bless_fr,
		"- Cela s'applique aussi aux actions spécials de mélées du Fusil Ripper, Gantelet lance-grenades, Toniturant, Double mitrailleuse, Recul.",
	}, "\n"), enhdesc_col) -- Ogryn

	--[+ Inspiring Presence +]--
	local ED_InspiringP_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- S'additionne avec l'Aura de l'Ogryn \"On reste groupé !\" et la Vitesse de régénération de robustesse des curiosités.",
		"- Augmente le montant de base de la Vitesse de régénération de robustesse en syntonie (VRRS) par Alliés par Seconde:",
		"_______________________________",
		"Alliés: | VRRS:           | Après 5 secondes:",
		"        0 | 0.00 -> 0.00 | 0.00",
		"        1  | 3.75 -> 4.13   | 20.63 (ATH: 21)",
		"        2 | 5.63 -> 6.19   | 30.94 (ATH: 31)",
		"        3 | 7.50 -> 8.25  | 41.25 (ATH: 42)",
		"_______________________________",
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Melee Damage Boost Low + Medium +]--
	local ED_MeleeDmgBst_L_M_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes_fr,
		stacks_mult_power_lvl_weap_bless_fr,
		"- S'applique aux actions spécials de mélées des armes de distance.",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Movement Speed Boost +]--
	local ED_MoveSpdBst_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- PSYKER: S'additionne avec les bonus en relation avec : \"Pertubation du destin\", \"Trempe\", \"Vitesse de warp\" Et les bénédictions comme \"Vrombissement\".",
		"- FANATIQUE: S'additionne avec les autres noeuds de vitesse de déplacement et avec les bonus en relation avec : \"Champ d'ombre\", \"Prompt à la colère\", Et les bénédictions comme \"Vrombissement\".",
		"-- Se multiplie avec les bonus de vitesse de courses de \"Certitude expéditive\".",
		"- VETERAN: S'additionne avec les bonus en relation avec : \"Infiltration\", \"On n'abandonne personne\", L'aura \"Élimination à proximité\", Et les bénédictions comme \"Vrombissement\".",
	}, "\n"), enhdesc_col) -- Psyker, Veteran, Zealot

	--[+ Peril Resistance +]--
	local ED_PerilRes_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Se multiplie avec les autres noeuds et les bonus de réduction de la génération du péril de : \"Par la fissure de l'os\", \"Éruption apaisante\", \"Détermination empirique\", \"Tranquillité intérieure\", \"Écho cinétique\", \"Ancrage dans la réalité\", et le Stimulant de combat.",
	}, "\n"), enhdesc_col) -- Psyker

	--[+ Ranged Damage Boost +]--
	local ED_RangDmgBst_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- S'additionne avec les autres noeuds de dégats à distance et autre bonus de dégats.",
		stacks_mult_power_lvl_weap_bless_fr,
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran

	--[+ Reload Boost +]--
	local ED_ReloadBst_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- OGRYN: S'additionne avec les autres bonus de vitesse de rechargment de \"Stimulateur\", \"Stimulateur\", Bénédictions et Atouts des Armes, et le Stimulant de célérité.",
		"- VETERAN: S'additionne avec les autres bonus de vitesse de rechargment de \"Tirs fugaces\", \"Concentration du tireur d'élite\", \"Rechargement tactique\", \"Adepte des volées\", Bénédictions et Atouts des Armes, et le Stimulant de célérité.",
		"-- Augmente aussi la vitesse de chargement de la munition spécial des fusils à pompe de combat.",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran
	
	--[+ Rending Boost +]--
	local ED_RendingBst_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- S'applique à toute attaque ayant un bonus contre les types d'armure: Carapace, légère, Maniaque, Implacable (Inclue les dégats d'explosions et DoTs comme le saigement ou la brulure infligé par l'Orgyn).",
		"- S'applique seulement au dégats de l'Ogryn.",
		"- S'additionne aux autres bonus de déchirure et avec les malus de fragilité appliqués aux ennemis.",
	}, "\n"), enhdesc_col) -- Ogryn

	--[+ Stamina Boost +]--
	local ED_StaminaBst_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- S'additionne avec la valeur d'Endurance des curiosités, atouts et des statistique d'endurance des armes.",
		"- Chaque segment de la barre d'Endurance sur l'ATH du joueur représente 1 d'Endurance.",
	}, "\n"), enhdesc_col) -- Veteran, Zealot

	--[+ Suppression Boost +]--
	local ED_SuppressionBst_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- OGRYN: S'additionne avec les bonus de suppression de la bénédiction \"Barrage terrifiant\".",
		"- ZEALOT: S'additionne avec les bonus de suppression de la bénédiction \"Poudre résiduelle\".",
		"- VETERAN: S'additionne avec les bonus de suppression de \"Désir de compétition\", \"Gardez la tête baissée !\", et de la bénédiction \"Poudre résiduelle\".",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Stamina Regeneration Boost +]--
	local ED_StamRegenBst_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Réduit le délai de régénération de base de l'Endurance de 1 à 0.75 secondes.",
		"- Ce temps est le délai avant que l'endurance ne ce régénère après avoir utiliser de l'endurance.",
		"- S'additionne avec les autres noeuds de réduction du délai de régénération de l'endurance.",
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Toughness Boost Low +]--
	local ED_TghnsBst_L_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes_fr,
		cur_max_tghnss_mult_by_tghnss_pc_fr,
		"-- PSYKER: Par exemple, à 105 Robustesse maximal (robustesse de base du Psyker : 60 avec trois noeud +15 de robustesse) avec une curiosité +17% robustesse et un atout +5% robustesse, La robuste maximal du Psyker de 105 est augmenter par 105x(0.17+0.05)=23.1 pour un total de 128.1 Robustesse (l'ATH arrondie au supérieur: 129).",
		"-- FANATIQUE: Par exemple, à 85 Robustesse maximal (robustesse de base du fanatique : 70 avec un noeud +15 de robustesse) avec une curiosité +17% robustesse et un atout +5% robustesse, La robuste maximal du Fanatique de 85 est augmanter par 85x(0.17+0.05)=18.7 pour un total de 103.7 Robustesse (l'ATH arrondie au supérieur: 104).",
		"- La Robustesse maximum d'un personnage est la valeur de base utilisée dans le calcul de régénération de Robustesse de la plus part des Talents et Bénédictions.",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran, Zealot

	--[+ Toughness Boost Medium +]--
	local ED_TghnsBst_M_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes_fr,
		cur_max_tghnss_mult_by_tghnss_pc_fr,
		"-- OGRYN: Par exemple, à 75 Robustesse maximal (robustesse de base de l'Ogryn : 50 avec un noeud +25 de robustesse) avec une curiosité +17% robustesse et un atout +5% robustesse, La robuste maximal de l'Ogryn de 75 est augmenter par 75x(0.17+0.05)=15.75 pour un total de 90.75 Robustesse (l'ATH arrondie au supérieur: 91).",
		"-- VETERAN: Par exemple, à 150 Robustesse maximal (robustesse de base du Vétéran : 100 avec deux noeud +25 de robustesse) avec une curiosité +17% robustesse et un atout +5% robustesse, La robuste maximal du Vétéran de 150 est augmenter par 150x(0.15+0.04)=33 pour un total de 183 Robustesse.",
		"- La Robustesse maximum d'un personnage est la valeur de base utilisée dans le calcul de régénération de Robustesse de la plus part des Talents et Bénédictions.",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran

	--[+ Toughness Damage Reduction Low + Medium +]--
	local ED_TghnsDmgRed_LM_rgb_fr = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- S'additionne avec les autres noeuds de réduction de dégat de robustesse.",
		"- Leur somme se multiplie avec les autres bonus de réduction de dégat de robustesse.",
		"-- FANATIQUE: S'additionne avec \"Je ne tomberai pas\".",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran, Zealot

return {
	ED_TghnsDmgRed_LM_rgb_fr = ED_TghnsDmgRed_LM_rgb_fr,
	ED_TghnsBst_M_rgb_fr = ED_TghnsBst_M_rgb_fr,
	ED_TghnsBst_L_rgb_fr = ED_TghnsBst_L_rgb_fr,
	ED_SuppressionBst_rgb_fr = ED_SuppressionBst_rgb_fr,
	ED_StamRegenBst_rgb_fr = ED_StamRegenBst_rgb_fr,
	ED_StaminaBst_rgb_fr = ED_StaminaBst_rgb_fr,
	ED_RendingBst_rgb_fr = ED_RendingBst_rgb_fr,
	ED_ReloadBst_rgb_fr = ED_ReloadBst_rgb_fr,
	ED_RangDmgBst_rgb_fr = ED_RangDmgBst_rgb_fr,
	ED_PerilRes_rgb_fr = ED_PerilRes_rgb_fr,
	ED_MoveSpdBst_rgb_fr = ED_MoveSpdBst_rgb_fr,
	ED_MeleeDmgBst_L_M_rgb_fr = ED_MeleeDmgBst_L_M_rgb_fr,
	ED_InspiringP_rgb_fr = ED_InspiringP_rgb_fr,
	ED_HMeleeDmgBst_LM_rgb_fr = ED_HMeleeDmgBst_LM_rgb_fr,
	ED_HeathBst_M_rgb_fr = ED_HeathBst_M_rgb_fr,
	ED_HeathBst_L_rgb_fr = ED_HeathBst_L_rgb_fr,
	ED_CritChncBst_rgb_fr = ED_CritChncBst_rgb_fr,

}
