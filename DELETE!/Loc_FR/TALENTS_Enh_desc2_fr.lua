---@diagnostic disable: undefined-global
local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

local ppp___ppp = "\n+++-------------------------------------------------+++"
local become_invis_drop_all_enemy_aggro_fr = "- Passez en furtivité en perdant toute aggro des ennemis : Les ennemis de mêlée réaggressent immédiatement une autre cible si possible, les ennemis à distance cessent de tirer, puis réaggressent si possible."
local can_be_refr_dur_active_dur_fr = "- Peut être rafraîchi pendant la durée d'activation."
local doesnt_interact_w_c_a_r_from_curio_fr = "- N'interagit pas avec la régénération d'aptitude de combat des Curiosités qui réduit uniquement le temps de recharge maximum d'une aptitude de combat."
local doesnt_stack_w_z_same_aura_ogr_fr = "- Ne se cumule pas avec la même aura d'un autre Ogryn."
local doesnt_stack_w_z_same_aura_vet_fr = "- Ne se cumule pas avec la même aura d'un autre Vétéran."
local procs_add_conc_stim_rem_cd_red_fr = "- Se déclenche en plus de la réduction du temps de recharge du stimulant de concentration de 3 secondes par seconde."
local stacks_add_w_oth_dmg_fr = "- S'additionne avec d'autres bonus de dégâts et se multiplie avec les bonus de Puissance des bénédictions d'armes."
local stacks_add_w_oth_rend_brit_fr = "- s'additionne avec d'autres bonus de déchirement et avec les débuffs de fragilité appliqués aux ennemis."
local stacks_mult_w_other_dmg_red_buffs_fr = "- se multiplie avec d'autres bonus de réduction de dégâts."
local this_also_incr_speed_load_com_shotg_fr = "- Cela augmente également la vitesse de chargement de l'action spéciale des fusils à pompe de combat."
local this_also_buffs_melee_sp_act_guns_fr = "- Cela améliore également les actions spéciales de mêlée des armes : Fusil Ripper, Gantelet lance-grenade (partie mêlée), Tonitruant, Double mitrailleuse et Recul."
local z_eff_of_this_tougn_rep_fr = "- L'efficacité de cette régénération de robustesse est affectée par certains débuffs du joueur comme le gaz toxique."

--[+ ++DESCRIPTIONS AMÉLIORÉES++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ ++VÉTÉRAN++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Grenade Frag +]--
	local ED_VET_Blitz_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- Temps de fusée : 1,7 secondes.",
		"- Rayon d'explosion : 10 mètres (max), 2 mètres (épicentre).",
		"- Dégâts d'explosion :",
		-- "-- Les ennemis dans l'épicentre subissent plus de dégâts, les ennemis entre l'épicentre et le rayon maximal subissent moins de dégâts selon la distance.",
		"-- Dégâts de base à l'épicentre : 500.",
		"-- Dégâts de base entre l'épicentre et le rayon maximal : 200.",
		-- "-- Modificateurs de dégâts d'armure moyens pour tous les types, très faibles contre Carapace.",
		-- "-- Les dégâts d'explosion sont augmentés par le déchirement/la fragilité, par la bénédiction \"SkullBroyeur\" (lorsque l'ennemi est étourdi), et par les bonus de dégâts de \"Bring it Down!\", \"Close Quarters Killzone\" (si l'ennemi est à moins de 30 mètres), \"Competitive Urge\", \"Covering Fire\" (si appliqué au Vétéran par un autre Vétéran), \"Ciblage!\" (si ciblé), \"Bricolage de grenade\", \"Longshot\" (si l'ennemi est à plus de 12,5 mètres), \"Redirect Fire!\", \"Skirmisher\", \"Superiority Complex\" (contre les Élites), \"Surprise Attack\", et l'aura \"Équipe de feu\".",
		"- Vacillement : Inflige un fort effet de Vacillement contre tous les ennemis, y compris les Monstruosités, sauf contre les Capitaines/Jumaux.",
		-- "- Munitions : réapprovisionne toutes les grenades par ramassage de grenade.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1 - Grenade Frag +]--
	local ED_VET_Blitz_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- Temps de fusée : 1,7 secondes.",
		"- Rayon d'explosion : 10 mètres (max), 2 mètres (épicentre).",
		"- Dégâts d'explosion :",
		-- "-- Les ennemis dans l'épicentre subissent plus de dégâts, les ennemis entre l'épicentre et le rayon maximal subissent moins de dégâts selon la distance.",
		"-- Dégâts de base à l'épicentre : 500.",
		"-- Dégâts de base entre l'épicentre et le rayon maximal : 200.",
		"-- Modificateurs de dégâts d'armure moyens pour tous les types, très faibles contre Carapace.",
		-- "-- Les dégâts d'explosion sont augmentés par le déchirement/la fragilité, par la bénédiction \"SkullBroyeur\" (lorsque l'ennemi est étourdi), et par les bonus de dégâts de \"Bring it Down!\", \"Close Quarters Killzone\" (si l'ennemi est à moins de 30 mètres), \"Competitive Urge\", \"Covering Fire\" (si appliqué au Vétéran par un autre Vétéran), \"Ciblage!\" (si ciblé), \"Bricolage de grenade\", \"Longshot\" (si l'ennemi est à plus de 12,5 mètres), \"Redirect Fire!\", \"Skirmisher\", \"Superiority Complex\" (contre les Élites), \"Surprise Attack\", et l'aura \"Équipe de feu\".",
		"- Vacillement : Inflige un fort effet de Vacillement contre tous les ennemis, y compris les Monstruosités, sauf contre les Capitaines/Jumaux.",
		"- Munitions : réapprovisionne toutes les grenades par ramassage de grenade.",
		"- Saignement : Applique 6 Cumuls de saignement à l'explosion.",
		"-- Les dégâts de saignement sont augmentés par les mêmes sources (sauf \"Bricolage de grenade\") qui augmentent également les dégâts de l'explosion de grenade (voir ci-dessus).",
		"-- De plus, les dégâts de saignement sont affectés par les Atouts des armes équipées et les bonus des bénédictions.",
		-- "- Additionally, bleed damage is affected par Atouts of currently equipped weapons and the following bonus from:",
		-- "- Blessings (Melee): if procced with Weapon before or during Bleed's active duration: \"Executor\", \"High Voltage\" (while Electrocuted), \"SkullBroyeur\" (while Vacillemented), and \"Massacre\".",
		-- "- Blessings (Ranged): if procced with Weapon before or during Bleed's active duration: \"Embrasement\", \"Crache-mort\", \"Dumdum\", \"Execution\" (while Vacillemented), \"Frénésie de feu\", \"À toute allure\", \"No Respite\" (while Vacillemented), \"Pinning Fire\", and \"Courir et tirer\" (while Sprinting).",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2 - Grenade Krak +]--
	local ED_VET_Blitz_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Rayon d'explosion : 1,5 mètres (épique), 5 mètres (max).",
		"- Dégâts d'explosion :",
		"-- Les ennemis dans l'épicentre subissent plus de dégâts, les ennemis entre l'épicentre et le rayon maximal subissent moins de dégâts selon la distance, les ennemis collés à la grenade subissent toujours les dégâts de l'épicentre.",
		"-- Dégâts de base à l'épicentre : 2400.",
		"-- Dégâts de base entre l'épicentre et le rayon maximal : 500.",
		"-- À l'épicentre, bons modificateurs de dégâts d'armure pour tous les types et modificateurs de dégâts d'armure très élevés contre Carapace, Armure légère, et Inébranlable.",
		"-- À l'extérieur de l'épicentre, modificateurs de dégâts d'armure décents pour tous les types.",
		-- "-- Les dégâts d'explosion sont augmentés par le déchirement/la fragilité, par la bénédiction \"SkullBroyeur\" (lorsque l'ennemi est étourdi), et par les bonus de dégâts de \"Bring it Down!\", \"Close Quarters Killzone\" (si l'ennemi est à moins de 30 mètres), \"Competitive Urge\", \"Covering Fire\" (si appliqué au Vétéran par un autre Vétéran), \"Ciblage!\" (si ciblé), \"Bricolage de grenade\", \"Longshot\" (si l'ennemi est à plus de 12,5 mètres), \"Redirect Fire!\", \"Skirmisher\", \"Superiority Complex\" (contre les Élites), \"Surprise Attack\", et l'aura \"Équipe de feu\".",
		"- Vacillement :",
		"-- Inflige un fort effet de Vacillement contre tous les ennemis, y compris les Monstruosités.",
		"-- Contre les Capitaines/Jumeaux uniquement sans bouclier du vide.",
		"- Munitions : réapprovisionne toutes les grenades par ramassage de grenade.",
		-- "- Quelle que soit la zone de frappe à laquelle le projectile colle, l'explosion ciblera toujours la zone du corps central avec les mêmes dégâts.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Grenade Fumigène +]--
	local ED_VET_Blitz_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- L'explosion initiale ne cause aucun dégât et un très léger Vacillement, rayon de 10m",
		"- Effet de nuage de fumée :",
		"-- Rayon : 5,5 mètres.",
		-- "-- Dure 15 secondes.",
		"-- Désactive les étiquettes des alliés dans l'interface ATH.",
		"-- Les joueurs dans le nuage de fumée sont considérés comme \"caché\", ce qui modifie la distance de ligne de vue requise pour la sélection de cibles par les ennemis.",
		"-- Si un joueur maintient l'aggro d'un ennemi en mêlée, la fumée n'affecte pas la perception de l'ennemi.",
		"-- Si un joueur maintient l'aggro d'un ennemi à distance, la fumée fait en sorte que l'ennemi à distance cesse de tirer et change de position (Faucheur est moins susceptible de se repositionner).",
		"-- Les tireurs et Faucheur qui sont dans la zone d'effet du nuage de fumée continuent de tirer à la dernière position connue d'un joueur.",
		"-- Les Cerbères ne peuvent pas verrouiller un joueur dans la zone du nuage de fumée et continueront de tourner autour du nuage (aucun effet sur les Mutants et Crache-Peste).",
		-- "- Munitions : réapprovisionne toutes les grenades par ramassage de grenade.",
	}, "\n"), enhdesc_col)

--[+ +AURA+ +]--
	--[+ Aura 0 - Scavenger +]--
	local ED_VET_Aura_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		doesnt_stack_w_z_same_aura_vet_fr..", plusieurs Vétérans répartissent leurs munitions régénérées séparément.",
		-- "- Par exemple, avec une arme ayant 180 balles de munitions maximales en réserve : Lors de la première activation, le Vétéran récupère 180x0.01=1.8 balles, ce qui est arrondi à 1 ; la quantité restante de 1.8-1=0.8 est reportée à l'activation suivante. Lors de la deuxième activation, le Vétéran récupère 180x0.01+0.8=2.6 balles, ce qui est arrondi à 2 ; la quantité restante de 2.6-2=0.6 est à nouveau reportée à la prochaine activation, et ainsi de suite. Cela signifie que, dans ce cas, le Vétéran obtient 1 balle lors de la première activation, 2 balles lors des quatre prochaines activations, et puis 1 balle à nouveau lors de la sixième activation, et ainsi de suite.",
	}, "\n"), enhdesc_col)

	--[+ Aura 1 - Survivalist +]--
	local ED_VET_Aura_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		doesnt_stack_w_z_same_aura_vet_fr..", plusieurs Vétérans répartissent leurs munitions régénérées séparément.",
		"- Par exemple, avec une arme ayant 180 balles de munitions maximales en réserve : Lors de la première activation, le Vétéran récupère 180x0.01=1.8 balles, ce qui est arrondi à 1 ; la quantité restante de 1.8-1=0.8 est reportée à l'activation suivante. Lors de la deuxième activation, le Vétéran récupère 180x0.01+0.8=2.6 balles, ce qui est arrondi à 2 ; la quantité restante de 2.6-2=0.6 est à nouveau reportée à la prochaine activation, et ainsi de suite. Cela signifie que, dans ce cas, le Vétéran obtient 1 balle lors de la première activation, 2 balles lors des quatre prochaines activations, et puis 1 balle à nouveau lors de la sixième activation, et ainsi de suite.",
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Équipe de feu +]--
	local ED_VET_Aura_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
		doesnt_stack_w_z_same_aura_vet_fr..".",
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Élimination à proximité +]--
	local ED_VET_Aura_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les améliorations de vitesse de déplacement provenant de \"Infiltration\", \"On n'abandonne personne\", le nœud de vitesse de déplacement, et les bénédictions d'armes comme \"Vrombissement\".",
		doesnt_stack_w_z_same_aura_vet_fr..".",
	}, "\n"), enhdesc_col)

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Volley Fire +]--
	local ED_VET_Ability_0_rgb_fr = iu_actit(table.concat({
		-- ppp___ppp,
		-- "- Augmente à la fois les dégâts à distance et les dégâts sur les points faibles à distance de 15%.",
		-- "- S'additionne avec les améliorations de dégâts liées.",
		-- "- Augmente la force de l'impact à distance de 50%.",
		-- "- Lors de l'activation, oblige un changement vers l'arme à distance avec une courte animation de maniement.",
		-- "- Octroie une multitude de bonus au Vétéran :",
		-- "-- Immunité aux étourdissements et ralentissements des attaques de mêlée et à distance, ainsi qu'Immunité à la suppression.",
		-- "-- Les actions d'attaque du Vétéran ne peuvent pas être interrompues dans le cadre des réactions aux coups.",
		-- "-- Dispersion d'arme réduite de 38%.",
		-- "-- Recul d'arme réduit de 24%, la variabilité des motifs de recul est remplacée par un motif fixe.",
		-- "-- Oscillation d'arme réduite de 60% et champ de vision légèrement zoomé.",
		-- "- Dure 5 secondes.",
		-- "- Tuer un ennemi marqué rafraîchit la durée d'activation de 5 secondes. Cela rafraîchit également la durée des marques sur les ennemis pour le Vétéran.",
		-- "- Se termine plus tôt si le Vétéran est mis à terre.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Posture de bourreau +]--
	local ED_VET_Ability_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Octroie au Vétéran :",
		"-- Immunité aux attaques , ainsi qu'une immunité à la suppression.",
		"-- Le Vétéran devient ininterrompables.",
		"-- Dispersion d'arme réduite de 38%.",
		"-- Recul d'arme réduit de 24%, la variation du recul est remplacée par une variation fixe.",
		"-- Oscillation d'arme réduite de 60% et champ de vision légèrement zoomé.",
		"- S'additionne avec les améliorations de dégâts liées.",
		"- Augmente la force de l'impact à distance de 100%.",
		-- "- Se termine plus tôt si le Vétéran est mis à terre.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Enhanced Target Priority +]--
	local ED_VET_Ability_1_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les contours visibles pour les alliés durent toujours 5 secondes.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Counter-Fire +]--
	-- local ED_VET_Ability_1_2_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Ability 1-3 - The Bigger they Are... +]--
	-- local ED_VET_Ability_1_3_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Ability 1-4 - Marksman +]--
	local ED_VET_Ability_1_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les bonus de Puissance provenant des bénédictions d'armes, et se multiplie avec les améliorations de dégâts.",
		"- Les \"Niveau de puissance\" augmentent la Puissance de base des attaques, ce qui profite aux dégâts, aux impacts et à l'impact de zone (lorsque applicable).",
		"- Pour \"Infiltration\", le bonus est actif immédiatement, seule la durée commence lorsque l'invisibilité prend fin.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Voie de l'autorité +]--
	local ED_VET_Ability_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Régénère la robustesse du Vétéran à 100% lors de l'activation.",
		"- Cri :",
		"-- Maintenir le bouton de l'aptitude affiche la portée du cri ; l'aperçu peut être annulé par un blocage.",
		"-- Rayon : 9 mètres.",
		"-- Étourdit tous les ennemis dans le rayon.",
		"-- La force de l'étourdissement diminue avec la distance.",
		"-- Ne s'applique pas aux ennemis déjà étourdis.",
		"-- Force toujours un lourd étourdissement contre les Broyeurs, Mutileurs, Mutants, Faucheurs, Monstrosités, et Capitaines/Jumaux (uniquement sans bouclier de vide) pendant 2.5 secondes.",
		"-- Ne s'applique pas aux ennemis déjà étourdis.",
		"-- Étourdit Rempart uniquement si le Vétéran n'est pas devant le bouclier.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Devoir et honneur +]--
	local ED_VET_Ability_2_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Pour le Vétéran, Voix de l'autorité ajoute 50 de robustesse bonus (jaune), en plus de régénérer la robustesse du Vétéran à 100% lors de l'activation.",
		"- Pour les alliés en cohésion avec le Vétéran, Voix de l'autorité ajoute 50 de robustesse lors de l'activation si leur robustesse est inférieure à 100%.",
		"- Si leur robustesse est égale ou supérieure à 100%, Voix de l'autorité ajoute 50 de robustesse bonus (jaune) aux alliés.",
		"- \"Charismatic\" augmente la portée effective de ce talent.",
		"- La robustesse bonus du Vétéran dure 15 secondes.",
		"- Peut s'additionner avec elle-même et avec la robustesse bonus de Fanatique \"Refrain de courage spirituel\".",
		"- Cela agit comme une 'deuxième' barre de robustesse et peut être régénéré par des éliminations en mêlée, des talents respectifs, et des bénédictions d'armes.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Only In Death Does Duty End +]--
	local ED_VET_Ability_2_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- L'effet de Résurrection ignore la géométrie de la carte.",
		"- Réduit le rayon de \"Voie de l'autorité\" de 9 à 6,03 mètres.",
		"- Les alliés qui ne se trouvent pas dans ce rayon ne seront pas réanimés, qu'ils soient en syntonie avec le Vétéran ou non.",
		"- Augmente également le temps de recharge maximum de \"Voie de l'autorité\" de 30 à 45 secondes.",
		"- Cette augmentation du temps de recharge maximum s'additionne aux réductions du temps de recharge maximum provenant de l'aura du Psyker \"Présence prophétique\", de la régénération des capacités de combat des Curiosités et des modificateurs de mission qui réduisent les temps de recharge des capacités de 20%.",
		"- Par exemple, un Vétéran avec ce talent jouant avec le modificateur Maelstrom (-0.2) et trois Curiosités de régénération de capacités de combat à 4% (-0.12) aura un temps de recharge maximum pour \"Voie de l'autorité\" de 30 + 30x(0.5-0.32) = 35.4 secondes.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - For the Emperor! +]--
	local ED_VET_Ability_2_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les alliés bénéficient du bonus tant qu'ils sont en syntonie lorsque le bonus est activé.",
		"- s'additionne avec le même talent d'un autre Vétéran et avec d'autres bonus de dégâts.",
		"- se multiplie avec les bonus de Puissance des bénédictions d'armes.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Infiltration +]--
	local ED_VET_Ability_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Invisibilité : "..become_invis_drop_all_enemy_aggro_fr,
		"-- Vous pouvez encore prendre des dégâts pendant l'invisibilité.",
		"-- L'invisibilité se brise si : vous frappez des ennemis avec une attaque au corps à corps, toute attaque à distance, lancez une grenade (en lancer rapide, visée ou soushand), effectuez une action de sauvetage/réanimation/relèvement/sortie du filet.",
		"-- L'invisibilité ne se brise pas si : vous lancez une grenade (en sousmain ; les grenades Krak brisent l'invisibilité si le projectile touche un ennemi) ; poussez les ennemis ; utilisez un Stim (sur vous ou sur vos alliés) ; des ticks de DoT actifs ; utilisez le dispositif Auspex ou jouez à un mini-jeu.",
		-- "-- Fenêtre de grâce pour l'invisibilité : les actions qui briseraient l'invisibilité ne la brisent pas si elles sont exécutées dans les 0.5 secondes suivant l'activation de l'invisibilité ; cela permet, si effectué correctement, une attaque au corps à corps ou à distance supplémentaire qui bénéficie déjà de tous les bonus applicables mais ne brise pas encore l'invisibilité.",
		-- "- Les créatures qui peuvent être supprimées : Groaner, Dreg Gunner, Dreg Stalker, Faucheur, Scab Gunner, Scab Shooter, Scab Stalker.",
		-- "- Le bonus de vitesse de mouvement dure aussi longtemps que l'invisibilité (8 secondes) et s'additionne avec les bonus de vitesse de mouvement de \"On n'abandonne personne\", l'aura \"Élimination à proximité\", le nœud de vitesse de mouvement, et les bénédictions d'armes comme \"Vrombissement\".",
		"{#color(255, 35, 5)}Ne vous cache pas des Daemonhosts !{#reset()}", 
	}, "\n"), enhdesc_col)

	--[+ Ability 3-1 - Low Profile +]--
	local ED_VET_Ability_3_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsque l'invisibilité se termine, accorde un multiplicateur de menace pendant 10 secondes.",
		"- Il existe plusieurs facteurs utilisés pour calculer le score qui détermine aux ennemis la sélection des cibles joueurs.",
		"- En résumé, ce talent accorde un multiplicateur qui manipule le calcul du score en faveur du joueur, rendant ainsi les ennemis moins susceptibles de le cibler.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-2 - Overwatch +]--
	local ED_VET_Ability_3_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Le temps de recharge de la deuxième charge commence uniquement après que le temps de recharge de la première charge soit terminé.",
		"- Augmente également le temps de recharge maximum de \"Infiltration\" de 45 à 59.85 secondes.",
		"- Cette augmentation du temps de recharge maximum S'additionne aux réductions du temps de recharge maximum provenant de l'aura du Psyker \"Présence prophétique\", de la régénération des capacités de combat des Curiosités, et des modificateurs de mission qui réduisent les temps de recharge des capacités de 20%.",
		"- Par exemple, un Vétéran avec ce talent jouant avec le mutateur Maelstrom (-0.2) et un Psyker avec l'aura de réduction de temps de recharge (-0.1) aura un temps de recharge maximum pour \"Infiltration\" de 45 + 45x(0.33-0.3) = 46.35 secondes.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Hunter's Resolve +]--
	local ED_VET_Ability_3_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- La durée de 10 secondes commence lorsque l'invisibilité se termine.",
		stacks_mult_w_other_dmg_red_buffs_fr,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-4 - Surprise Attack +]--
	local ED_VET_Ability_3_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- La durée de 5 secondes commence lorsque l'invisibilité se termine.",
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-5 - Close Quarters Killzone +]--
	local ED_VET_Ability_3_5_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Pour \"Infiltration\", le bonus est actif immédiatement, seule la durée commence lorsque l'invisibilité se termine.",
		"- Au-delà de 12,5 mètres, le bonus de dégâts diminue linéairement jusqu'à ce qu'il perde son effet à 30 mètres :",
		"_______________________________",
		"Distance(m) : 1-12,5 |  15 | 20 | 25 | 30",
		"Dégâts(%) :          15 | ~13 | ~9 | ~4 |  0",
		"_______________________________",
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Concentration de tireur d'élite +]--
	local ED_VET_Keystone_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Perd des cumuls en fonction du mouvement :",
		"-- Marcher enlève 1 cumule par seconde.",
		"-- Sprinter enlève 1 cumule toutes les 0.5 secondes.",
		"-- Prend également en compte la vitesse de mouvement respective lors du glissement.",
		"- Les cumuls de bonus de Finesse s'additionnent avec d'autres bonus de points faibles et de dégâts de Finesse, et se multiplient avec les bonus de Puissance des bénédictions d'armes.",
		"- Les cumuls de vitesse de rechargement s'additionnent avec les bonus de \"Tirs fugaces\", \"Rechargement tactique\", \"Adepte des volées\", le nœud de vitesse de rechargement, les Atouts d'armes, les bénédictions d'armes et le Stim de Célérité.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Chink in their Armour +]--
	local ED_VET_Keystone_1_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsque vous avez 10 cumuls de Focus ou plus, accorde 10% de Perforation à toutes les attaques, augmentant les dégâts contre les types d'armure Carapace, Armure légère, Maniaques, Implacable (y compris les dégâts des explosions et des DoTs).",
		"- N'affecte que les dégâts du Vétéran.",
		stacks_add_w_oth_rend_brit_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Tunnel Vision +]--
	local ED_VET_Keystone_1_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ce talent a deux effets :",
		"-- 1. Par cumule de focus, augmente la quantité de robustesse régénérée par les éliminations au corps à corps et les talents de 5% (jusqu'à +50% ou, si \"Assasin de longue portée\", jusqu'à +75%).",
		"--- Ne s'applique pas à la régénération de robustesse en syntonie.",
		"--- Par exemple, avec 10 cumuls, un vétéran avec 152 de robustesse maximale tuant un ennemi avec une attaque au corps à corps régénère 152x(0.05+0.05x0.5)=11.4 de robustesse (l'interface arrondit).",
		"--"..z_eff_of_this_tougn_rep_fr,
		"-- 2. Les éliminations sur les points faibles à distance régénèrent 10% de l'endurance maximale.",
		"--- Peut se déclencher plusieurs fois lors du transpercement.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Assasin de longue portée +]--
	-- local ED_VET_Keystone_1_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - Camouflage +]--
	-- local ED_VET_Keystone_1_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 2 - Ciblage! +]--
	local ED_VET_Keystone_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsqu'un ennemi est marqué, applique la quantité de cumuls de \"Ciblage\" actuellement détenues par le vétéran à l'ennemi (au moins 1 cumule), et réinitialise le nombre de cumuls du vétéran à 1.",
		"- Par cumule appliquée, augmente les dégâts subis par l'ennemi marqué de 4%.",
		"- Ce malus dure pendant la durée de la marque (25 secondes) et peut se cumuler jusqu'à 8 fois sur un même ennemi.",
		"- Les ennemis marqués avec ce talent sont surlignés en jaune.",
		"- La quantité actuelle de cumuls sur un ennemi ne peut être écrasée que si le nombre de nouveaux cumuls à appliquer est supérieur à celui des cumuls actuels.",
		"- Réécrire les cumuls rafraîchit la durée de 25 secondes.",
		"- Plusieurs vétérans peuvent écraser les marques des autres, sauf si l'ennemi a déjà 8 cumuls.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - Cible à terre! +]--
	local ED_VET_Keystone_2_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Jusqu'à 40% de la robustesse/Endurance maximale à 8 cumuls.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Redirect Fire! +]--
	local ED_VET_Keystone_2_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente les dégâts de 12% à 8 cumuls.",
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-3 - Focused Fire +]--
	-- local ED_VET_Keystone_2_3_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3 - Spécialiste en armes +]--
	local ED_VET_Keystone_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- Generally, whether a Stack is allocated to Ranged Specialist or Melee Specialist depends on which weapon is equipped when the enemy dies.",
		-- "-- Kills par DoTs allocate Cumuls accordingly.",
		-- "-- Kills par DoTs while having other items equipped (Grenade, Medpack, munitions crate, Books, etc) do not generate any Cumuls.",
		"- Les cumuls de Spécialiste à distance s'additionnent avec le bonus de vitesse de tir des Stimm de Célérité. Le bonus de chance de critique atteint un maximum de 3 cumuls, offrant une critique garantie à distance.",
		"- Les cumuls de Spécialiste au corps à corps s'additionnent avec les bonus liés à \"Entraînement de guerrier des tranchées\" et des Stimm de Célérité.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Always Prepared +]--
	local ED_VET_Keystone_3_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Par exemple, un vétéran avec 6 cumuls de Spécialiste à distance et une arme manquant de 36 balles dans son chargeur transfère 36x0.33x(6/10)=7.128 balles, arrondies à 8.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Invigorated +]--
	local ED_VET_Keystone_3_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'active séparément de la régénération d'endurance de \"Duck and Dive\", \"Reprise du combat!\" et \"Cible à terre!\".",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-3 - On Your Toes +]--
	local ED_VET_Keystone_3_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Chaque régénération a un délai interne de 3 secondes, suivi séparément.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-4 - Tirs fugaces +]--
	local ED_VET_Keystone_3_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les cumuls s'additionnent avec les bonus de \"Concentration de tireur d'élite\", \"Rechargement tactique\", \"Adepte des volées\", le nœud de vitesse de recharge, les Atouts d'arme, les bénédictions d'arme et des Stimm de Célérité.",
		this_also_incr_speed_load_com_shotg_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-5 - Conditioning +]--
	local ED_VET_Keystone_3_5_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les cumuls s'ajoutent se multiplie avec le bonus de réduction du coût d'endurance de des Stimm de Célérité :",
		"-- 1. Réduit la consommation d'endurance lors du sprint.",
		"--- se multiplie avec le bonus de réduction du coût de sprint de des Stimm de Célérité et le bonus d'efficacité du sprint sur les Curiosités, les armes à distance et de mêlée.",
		"-- 2. Réduit la consommation d'endurance lorsqu'un blocage d'attaque de mêlée est effectué.",
		"--- se multiplie avec le bonus de réduction du coût de blocage sur les Curiosités et les armes de mêlée.",
		"-- 3. Réduit la consommation d'endurance lors des poussées et aussi pendant la durée de \"Tir fatale\".",
	}, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Longshot +]--
	local ED_VET_Passive_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente les dégâts infligés aux ennemis au-delà de 12,5 mètres.",
		"- Le bonus de dégâts augmente de manière linéaire jusqu'à 20% à 30 mètres. À une distance inférieure à 12,5 mètres, le talent n'a aucun effet :",
		"_______________________________",
		"Distance(m):  1-12.5|   15|   20|   25|   30",
		"Dégâts(%):             0|   ~3|   ~9|  ~15|   20",
		"_______________________________",
		"- Cela augmente également les dégâts des explosions et des DoTs tant que le vétéran reste à plus de 12,5 mètres de l'ennemi.",
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Close Order Drill +]--
	local ED_VET_Passive_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- Reduces robustesse Damage taken par 11% per Ally in Coherency.",
		-- "- Cumuls linearly with itself (i.e. 2 Allies = 22%, 3 = 33% robustesse Damage Reduction).",
		stacks_mult_w_other_dmg_red_buffs_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 3 - One Motion +]--
	local ED_VET_Passive_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la vitesse de maniement de 25%.",
		"- Réduit le temps des actions de maniement lors du changement d'éléments (armes, grenades, stimms, packs de soins, caisses de munitions, livres, etc.).",
		"- Par exemple, lors du changement pour un Boltgun ou un Helbore Lasgun, il faut 1,5 seconde (clic gauche) ou 1,25 seconde (tir alternatif) avant que l'action de tir/chargement ne puisse commencer. Ces temps sont réduits par ce talent à 1,2 seconde et 1 seconde respectivement. Pour d'autres armes, ce talent ne réduit pas significativement le temps de maniement.",
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Exhilarating Takedown +]--
	local ED_VET_Passive_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Tuer des ennemis avec des tirs sur points faibles à distance a deux effets :",
		"-- 1. Régénère 15% de la robustesse maximale.",
		"--- Peut se déclencher plusieurs fois par tir lors de transpercement.",
		"--"..z_eff_of_this_tougn_rep_fr,
		"-- 2. Octroie des cumuls (jusqu'à 3).",
		"--- Les cumuls durent 8 secondes et peuvent être rafraîchies pendant leur durée d'activation.",
		"--- Par cumul, réduit les dégâts subis de 10%.",
		"--- Les cumuls se multiplient avec eux-mêmes, jusqu'à 27,1% de réduction des dégâts au cumul maximum (1-0.9³=0.271), et avec d'autres bonus de réduction des dégâts.",
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Adepte des volées +]--
		local ED_VET_Passive_5_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Le bonus est maintenu jusqu'à ce qu'il soit consommé lors du rechargement.", 
		"- S'additionne avec les bonus de vitesse de rechargement de \"Tirs fugaces\", \"Concentration de tireur d'élite\", \"Rechargement tactique\", le nœud de vitesse de rechargement, les Atouts d'armes, les bénédictions d'arme et le Stim Célérité.",
		this_also_incr_speed_load_com_shotg_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 6 - Charismatic +]--
	local ED_VET_Passive_6_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"Augmente le rayon de syntonie de base du Vétéran de 8 mètres à 12 mètres.",
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Confirmed Kill +]--
	local ED_VET_Passive_7_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Tuer une Élite ou un Spécial a deux effets :",
		"-- 1. Restaure immédiatement 10% de la Robustesse maximale par élimination.",
		"--- Peut se déclencher plusieurs fois lors d'un Transpercement.",
		"-- 2. De plus, par élimination, restaure 2% de la Robustesse maximale par seconde pendant 10 secondes..",
		"--- Cet effet de régénération au fil du temps peut se déclencher plusieurs fois lors d'un Transpercement et s'accumule sans limite (l'interface utilisateur par défaut n'affiche qu'un nombre limité d'icônes de bonus).",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Rechargement tactique +]--
	local ED_VET_Passive_8_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la vitesse de rechargement de 25% si le nombre de munitions actuel dans le chargeur est supérieur à 0 lors du rechargement.",
		"- S'additionne avec les bonus de vitesse de rechargement de \"Tirs fugaces\", \"Concentration de tireur d'élite\", \"Adepte des volées\", le nœud de vitesse de rechargement, les Atouts d'arme, les bénédictions d'arme et le Stim Célérité.",
		this_also_incr_speed_load_com_shotg_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - Out for Blood +]--
	local ED_VET_Passive_9_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Se déclenche sur les éliminations au corps à corps et à distance ainsi que sur les éliminations par explosions.",
		"- Se déclenche en plus des Bénédictions d'arme comme \"Barrage inspirant\", \"Précision rassurante\", \"Chasse à la gloire\".",
		"- Lorsque le Talent se déclenche sur une élimination au corps à corps, il restaure 5% de Robustesse maximale en plus des 5% de Robustesse maximale de base du Vétéran gagnés lors d'une élimination au corps à corps.",
		"- Par exemple, en tuant 3 ennemis avec une attaque au corps à corps avec 184 de Robustesse maximale, le Vétéran régénérerait 184x(0.15+0.15)=55.2 Robustesse (arrondi à 56 par l'interface utilisateur).",
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Reprise du combat! +]--
	local ED_VET_Passive_10_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Permet au Vétéran de traverser les zones de feu sans entrave.",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - Catch a Breath +]--
	local ED_VET_Passive_11_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep_fr,
		"- La vérification de proximité ignore la géométrie de la carte.",
		"- N'interagit pas avec la Robustesse de syntonie.",
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Bricolage de grenade +]--
	local ED_VET_Passive_12_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Grenade à fragmentation :",
		"-- N'affecte pas les Saignements appliqués par l'explosion.",
		"- Augmente les rayons de son épicentre et de sa portée maximale à 2,5 mètres et 12,5 mètres respectivement.",
		"- Grenade à fumée :",
		"-- Augmente la durée du nuage de 15 à 30 secondes.",
		"- Les bonus de dégâts de grenade s'accumulent additivement avec les bonus de dégâts de des talents donnant des dégâts.",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Covering Fire +]--
	local ED_VET_Passive_13_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- L'augmentation des dégâts peut être rafraîchie pendant la durée d'activation.",
		stacks_add_w_oth_dmg_fr,
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 14 - Serrated Blade +]--
	local ED_VET_Passive_14_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Jusqu'à 16 cumuls de Saignement maximum sur une cible.",
		"- Ne peut pas appliquer de Saignement à travers les boucliers.",
		"- Saignement :",
		"-- Identique aux autres sources de Saignement.",
		"-- Dure 1,5 seconde.",
		"-- Ticks toutes les 0,5 secondes.",
		"-- Rafraîchit la durée à l'application du cumul.",
		"-- Modificateurs de dégâts d'armure moyens dans l'ensemble, faible modificateur de dégâts d'armure contre Carapace.",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 15 - Agile Engagement +]--
	local ED_VET_Passive_15_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- La durée d'activation du bonus commence lors de l'élimination correspondante.",
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Kill Zone +]--
	local ED_VET_Passive_16_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
		"- La vérification de proximité ignore la géométrie de la carte.",
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - Opening Salvo +]--
	local ED_VET_Passive_17_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"Par exemple, avec une arme ayant une capacité de chargeur de 43 munitions, le bonus de chance critique est accordé pour les 9 premières munitions (c'est-à-dire tant que le pourcentage de munitions actuelles dans le chargeur est supérieur ou égal à 0,8 ; 35/43=0,81 mais 34/43=0.79).",
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Field Improvisation +]--
	local ED_VET_Passive_18_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ce Talent améliore toutes les caisses de munitions et les trousses de soins déployées par n'importe quel joueur tant que le Vétéran est en vie.",
		"- Notez que l'effet de soin est toujours activement 'en lutte' contre les 40 dégâts de Corruption de base par livre. Mais comme ce morceau ne peut être supprimé, cela peut rapidement épuiser la réserve limitée de 500 points de vie d'une trousse de soins.",
		"- Dans une moindre mesure, cela s'applique également aux joueurs qui sont mis à terre dans un rayon de 3 mètres de la trousse de soins : Malgré la réduction de 70% de la consommation de la réserve de santé lors de la guérison d'un joueur mis à terre (la quantité de santé restaurée à un joueur mis à terre est également réduite de 90%), la trousse de soins peut toujours s'épuiser assez rapidement. ",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Twinned Blast +]--
	local ED_VET_Passive_19_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- N'interagit pas avec le modificateur de difficulté \"Blitz Augmenté\".",
		"- Le temps de fuse de la grenade jumelée est augmenté de 0,3 seconde.",
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - Demolition Stockcumule +]--
	local ED_VET_Passive_20_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- N'interagit pas avec le modificateur de difficulté \"Blitz Augmenté\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - Grenadier +]--
	local ED_VET_Passive_21_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec le modificateur de difficulté \"Blitz Augmenté\" qui ajoute 2 grenades supplémentaires à la capacité maximale de grenades du Vétéran.",
	}, "\n"), enhdesc_col)

	--[+ Passive 22 - On n'abandonne personne +]--
	local ED_VET_Passive_22_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "This Talent does three things:",
		"- Accorde toujours au Vétéran une vitesse d'interaction augmentée de 20% lorsqu'il réanime des Alliés Mis à terre, lorsqu'il les hisse depuis des corniches et les libère des filets.",
		"- Le bonus de vitesse de réanimation s'additionne avec la Vitesse de Réanimation (Allié) des Curiosités.",
		"- Ce Talent n'augmente pas la vitesse d'interaction lors du sauvetage des Alliés après leur réapparition.",
		-- "- Additionally, if an Ally is Knocked down or Incapacitated, grants Veteran Immunity to Stuns from both Melee and Ranged attacks and increases Movement Speed par 20% as long as Veteran is looking towards the Ally (view check ignores map geometry).",
		-- "-- The Movement Speed bonus Cumuls additively with related bonus from \"Infiltration\", aura \"Élimination à proximité\", the small Movement Speed node, and Weapon Blessings like \"Vrombissement\".",
		"- \"Incapacité\" inclut : Capturé (par Trappeuse), immobilisés (par Cerbères), Attrapé (par Hôte Démoniaque, Rejetons du Chaos, Mutants), mangé par Bête de Nurgle, suspendu dans le vide, et en attente de sauvetage après réapparition.",
		stacks_mult_w_other_dmg_red_buffs_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Precision Strikes +]--
	local ED_VET_Passive_23_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Determined +]--
	-- local ED_VET_Passive_24_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)
	
		--[+ Passive 25 - Tir fatale +]--
	local ED_VET_Passive_25_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ces bonus s'additionnent avec les bonus respectifs de \"Posture de bourreau\".",
		"- La réduction de la dispersion se cumule également avec le bonus associé de la bénédiction d'arme \"Courir et tirer\".",
		"- La réduction du recul se cumule également avec le bonus associé de la bénédiction d'arme \"Poudre résiduelle\".",
		"- Lorsque l'endurance atteint 0, le talent perd son effet et applique un balancement immédiat.",
		"- Par exemple, un vétéran avec 7 d'endurance maximale visant pendant 5 secondes et tirant deux fois pendant ce temps aura 7-(5x0.75+2x0.25)=2.75 d'endurance restante après que les 5 secondes se soient écoulées ; ou 39% selon l'interface ATH du joueur. Les bonus de réduction du coût de l'endurance de \"Conditioning\" et de des Stimm de Célérité réduisent cet effet de drain.",
		"{#color(255, 35, 5)}- Notez que ce talent n'a aucun effet sur le Plasma Gun.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 26 - Born Leader +]--
	local ED_VET_Passive_26_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Cet effet est toujours actif, même si le vétéran est à 100% de robustesse, et prend en compte toute la robustesse réapprovisionnée par les talents, les bénédictions d'arme et la régénération de syntonie.",
		"- Ne se cumule pas avec le même talent d'un autre vétéran, chaque vétéran répartissant ses montants séparément.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Keep Their Heads Down! +]--
	local ED_VET_Passive_27_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- s'additionne avec le bonus associé de \"Désir de compétition\", le nœud de suppression et la bénédiction d'arme \"Poudre résiduelle\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - Reciprocity +]--
	local ED_VET_Passive_28_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Esquiver avec succès les attaques ennemies au corps à corps ou à distance (sauf les Les tireurs, Faucheur, Sniper) et les attaques d'immobilisation (Bond des Cerbères, filet de Trappeuse, emprise du Mutant) accorde des cumuls (jusqu'à 5).",
		"- Les cumuls durent 8 secondes et peuvent être rafraîchies pendant la durée d'activation.",
		-- "- Per stack, grants 5% additional crit chance to Melee and Ranged attacks.",
		"- \"Esquive réussies\" signifie esquiver une attaque ennemie qui est verrouillée sur le joueur avec une esquive ou une action de glissade synchrone.",
		"- Les bénédictions d'arme \"Fantôme\", \"Délit de fuite\" et \"Mise à nu\" peuvent déclencher ce talent (uniquement contre les attaques à distance).",
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Duck and Dive +]--
	local ED_VET_Passive_29_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Possède un temps de rechargement non affiché de 3 secondes.",
		"- Se déclenche lors des esquives régulières, des esquives en glissade et des esquives pendant un sprint.",
		"- Notez que ce talent nécessite que le personnage ait plus de 0 d'endurance.",
		"- Les bénédictions d'arme \"Fantôme\", \"Délit de fuite\" et \"Mise à nu\" peuvent également déclencher ce talent.",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Fully Loaded +]--
	local ED_VET_Passive_30_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la réserve de munitions maximale du vétéran de 25%.",
		"- Arrondi vers le bas.",
	}, "\n"), enhdesc_col)

	--[+ Passive 31 - Tactical Awareness +]--
	local ED_VET_Passive_31_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		procs_add_conc_stim_rem_cd_red_fr,
		doesnt_interact_w_c_a_r_from_curio_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 32 - Desperado +]--
	local ED_VET_Passive_32_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'applique également aux actions spéciales de mêlée des armes à distance.",
		"- Les chances de critique s'additionnent avec les autres bonus de chances de critique.",
		"- Le bonus de finesse s'additionne avec les autres bonus de points faibles et de dégâts de finesse, et se multiplie avec les bonus de Puissance des bénédictions d'arme.",
	}, "\n"), enhdesc_col)

	--[+ Passive 33 - Shock Trooper +]--
	local ED_VET_Passive_33_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Pour les Fusils Laser Helbore, Fusil Laser d'Infanterie, Pistolet Laser, et Fusil laser de Reconnaissance, permet à chaque action de tir critique de ne pas consommer de munitions.",
		"- Les armes avec des séquences critiques garanties (Fusil laser de Reconnaissance) ne consomment pas de munitions pour l'un des tirs critiques.",
	}, "\n"), enhdesc_col)

	--[+ Passive 34 - Superiority Complex +]--
	local ED_VET_Passive_34_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 35 - Iron Will +]--
	local ED_VET_Passive_35_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_mult_w_other_dmg_red_buffs_fr,
		"- Si le vétéran a une robustesse bonus (jaune) de \"Devoir et honneur\" ou de \"Refrain de courage spirituel\" du Fanatique, le talent considère le nouveau maximum temporaire pour son seuil de 75%.",
		"- Par exemple, avec 198 de robustesse maximale, le talent sera actif tant que le vétéran est au-dessus de 198x0.75=148.5 de robustesse ; cependant, avec 50 de robustesse bonus, le nouveau seuil temporaire est (198+50)x0.75=186 de robustesse. Ce seuil temporaire dure jusqu'à la fin de la durée de la robustesse bonus.",
	}, "\n"), enhdesc_col)

	--[+ Passive 36 - Demolition Team +]--
	local ED_VET_Passive_36_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Se déclenche si le vétéran est ou non en syntonie avec les alliés.",
	}, "\n"), enhdesc_col)

	--[+ Passive 37 - Exploit Weakness +]--
	local ED_VET_Passive_37_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les coups critiques avec des attaques au corps à corps appliquent un malus de fragilité aux ennemis augmentant les dégâts contre les types d'armure Carapace, Armure légère, Maniaques, Implacables (y compris les dégâts des explosions et DoTs).",
		"- Peut également être appliqué par des coups critiques avec des actions spéciales de mêlée d'armes à distance.",
		"- s'additionne avec les bonus de déchirement qui n'augmentent que les dégâts d'un personnage.",
		"- Ce malus de fragilité est unique : rending_malus_medium. Il se cumule 2 fois et applique un multiplicateur de déchirement de 10% par cumule.",
		"- Ce malus étant unique signifie qu'il s'agit, par rapport au plafond de fragilité sur un ennemi, d'un malus séparé qui s'additionne avec le malus de fragilité classique de \"Assaut\" et des bénédictions d'arme \"Fléau de l'armure\", \"Can Opener\", \"Rending Shockwave\", \"Impacte éclatant\", \"Supercharge\", et \"Thunderous\".",
		"- Il s'additionne avec l'autre malus unique de déchirement brûlure de la bénédiction d'arme \"Flammes pénétrantes\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 38 - Assaut +]--
	local ED_VET_Passive_38_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les coups répétés au corps à corps et à distance contre la même cible appliquent un malus de fragilité aux ennemis augmentant les dégâts contre les types d'armure Carapace, Armure légère, Maniaques, Implacables (y compris les dégâts des explosions et DoTs).",
		"- Se déclenche au deuxième coup contre un ennemi.",
		"- s'additionne avec le malus de fragilité unique de \"Exploit Weakness\", avec d'autres Malus de fragilité et avec des bonus de déchirement qui n'augmentent que les dégâts d'un personnage.",
	}, "\n"), enhdesc_col)

	--[+ Passive 39 - Entraînement de guerrier des tranchées +]--
	local ED_VET_Passive_39_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- s'additionne avec les bonus associés de \"Spécialiste en armes\" et de des Stimm de Célérité.",
	}, "\n"), enhdesc_col)

	--[+ Passive 40 - Skirmisher +]--
	local ED_VET_Passive_40_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Chaque seconde passée à sprinter accorde des cumuls (jusqu'à 5).",
		"- Les cumuls peuvent être rafraîchis pendant la durée d'activation.",
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 41 - Competitive Urge +]--
	local ED_VET_Passive_41_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur_fr,
		"- Le bonus de dégâts et le bonus de déstabilisation s'additionnent avec d'autres bonus associés et se multiplie avec les bonus de Puissance des bénédictions d'arme.",
		"- Le bonus de suppression s'additionne avec \"Gardez la tête baissée !\", le nœud de suppression et la bénédiction d'arme \"Poudre résiduelle\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 42 - Rending Strikes +]--
	local ED_VET_Passive_42_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Accorde 10% de déchirement à toutes les attaques augmentant les dégâts contre les types d'armure Carapace, Armure légère, Maniaques, Implacables (y compris les dégâts des explosions et DoTs).",
		"- N'affecte que les dégâts du vétéran.",
		stacks_add_w_oth_rend_brit_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 43 - Bring it Down! +]--
	local ED_VET_Passive_43_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente tous les dégâts contre les ennemis de type Ogryn (Rempart, Broyeur, Faucheur) et contre les ennemis de type Monstruosité (Bête de Nurgle, Chaos Spawn, Daemonhost, Plague Ogryn).",
		stacks_add_w_oth_dmg_fr,
		"- N'augmente pas les dégâts contre les Capitaines/Jumeaux qui n'ont pas la balise Monstre.",
	}, "\n"), enhdesc_col)

--[+ ++OGRYN++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Big Box of Hurt +]--
	local ED_OGR_Blitz_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Dégâts d'impact: 1850 de base.", --!!!"- Base impact damage: 1850.",
		"-- Pénétration d'armure légèrement augmentée contre Implacable et très faible contre Carapace.",
		"-- Permet les éléminations instantanées pour : Mitrailleurs, Shotgunners, Dreg Rager, Mauler, Mutants, Cerbères, Poxburster, Corruptor.",
		-- "-- Les dégâts d'impact directs sont augmentés par Déchirure/Fragilité, par la bénédiction \"Brise-crâne\" (lorsqu'étourdi), et par les bonus de dégâts de \"Poids lourd\" (contre les Ogryns), \"L'heure de la vengeance\", \"Arme rechargée et prête\", \"On les ramollit\", \"Distraction utile\" et les petits noeuds de dégâts à distance",
		-- "- Étourdissement:",
		-- "-- Inflige un étourdissement élevé à tous les ennemis, sauf aux Montruosités et aux Capitaines/Jumeaux.",
		-- "- récupère toutes les boîtes par récupération de grenade.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1 - Big Friendly Rock +]--!!!
	local ED_OGR_Blitz_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Dégâts d'impact: 1200",--!!!"- Base impact damage: 1200.",
		"- Ne peut pas tuer en un coup : Maulers, Ogryns et Montruosités.",
		"- Les dégâts d'impact directs sont augmentés par Déchirure/Fragilité, par la bénédiction \"Brise-crâne\" (lorsqu'étourdi), et par les bonus de dégâts de \"Poids lourd\" (contre les Ogryns), \"L'heure de la vengeance\", \"Arme rechargée et prête\", \"On les ramollit\" (si appliqué par un autre Ogryn), \"Distraction utile\" et les petits noeuds de dégâts à distance.",
		"- Nécessite des coups de point faible pour étourdir les Montruosités et les Capitaines/Jumeaux (uniquement sans bouclier).",
		"- Ne transperce pas mais peut rebondir légèrement et infliger des dégâts/tuer un deuxième ennemi le plus proche.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2 - Frag Bomb +]--
	local ED_OGR_Blitz_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Temps de mise à feu : 2 secondes.",
		"- Rayon d'explosion :",
		"-- 2 mètres (épicentre), 16 mètres (maximum).",
		"- Dégâts de l'explosion :",
		"-- Dégâts de base : 1500 (épicentre), 1250 (hors épicentre).",
		"-- Tue instantanément tous les ennemis avec une explosion sauf : Maulers, Crushers, Bulwarks et Montruosités.",
		"-- Modificateurs de dégâts d'armure très élevés dans l'ensemble, en particulier contre Armure Légère, Maniaque, Implacable.",
		"-- Les dégâts d'explosion sont augmentés par Déchirure/Fragilité, par la bénédiction \"Brise-crâne\" (lorsqu'étourdi), et par les bonus de dégâts de \"Poids lourd\" (contre les Ogryns), \"L'heure de la vengeance\", \"On les ramollit\" et \"Distraction utile\".",
		"- Inflige un étourdissement élevé à tous les ennemis, y compris les Montruosités, les Capitaines/Jumeaux (uniquement sans boucliers Void).",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Bombs Away! +]--
	local ED_OGR_Blitz_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Dégâts d'impact : 1850 de base. Pénétration d'armure légèrement augmentée contre Implacable et très faible contre Carapace. Permet les éléminations instantanées pour : Mitrailleurs, Shotgunners, Dreg Rager, Mauler, Mutants, Cerbères, Poxburster, Corruptor. Les dégâts d'impact directs sont augmentés par Déchirure/Fragilité, par la bénédiction \"Brise-crâne\" (lorsqu'étourdi), et par les bonus de dégâts de \"Poids lourd\" (contre les Ogryns), \"L'heure de la vengeance\", \"Arme rechargée et prête\", \"On les ramollit\", \"Distraction utile\" et les petits noeuds de dégâts à distance",
		-- "- Étourdissement : Inflige un étourdissement élevé à tous les ennemis, sauf aux Montruosités et aux Capitaines/Jumeaux.",
		-- "- récupère toutes les boîtes par récupération de grenade.",
		"- Grenades à fragmentation : Les explosions de grenades ont un rayon d'épicentre de 2 mètres, un rayon maximal de 8 mètres. Peut étourdir tous les ennemis à l'intérieur du rayon de l'épicentre, y compris les Montruosités et les Capitaines/Jumeaux (uniquement sans boucliers Void).",
	}, "\n"), enhdesc_col)

	--[+ Aura 0 - Intimidating Presence +]--
	local ED_OGR_Aura_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		this_also_buffs_melee_sp_act_guns_fr,
		-- "- S'additionne avec les autres bonus de dégâts associés et de manière multiplicative avec les bonus de niveau de puissance des bénédictions d'armes.",
		doesnt_stack_w_z_same_aura_ogr_fr,
	}, "\n"), enhdesc_col)

	--[+ Aura 1 - Bonebreaker's Aura +]--
	local ED_OGR_Aura_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		this_also_buffs_melee_sp_act_guns_fr,
		stacks_add_w_oth_dmg_fr,
		doesnt_stack_w_z_same_aura_ogr_fr,
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - On reste groupé! +]--
	local ED_OGR_Aura_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la quantité de base de Robustesse de Syntonie régénérée par l'Ogryn lorsqu'il est en Syntonie :",
		"_______________________________",
		"Alliés: | CTR:              | Après 5 secondes:",
		"        1  | 3.75 -> 4.69  | 23.44(HUD:~24)",
		"        2 | 5.63 -> 7.03  | 35.16(HUD:~36)",
		"        3 | 7.50 -> 9.38  | 46.88(HUD:~47)",
		"_______________________________",
		"- S'additionne avec \"Pilier\", la clé de voute \"Adieu la douleur\" (y compris \"Le plus dur !\"), la vitesse de régénération de Robustesse des Curiosités et le petit noeud de Talent de vétéran \"Présence inspirante\".",
		doesnt_stack_w_z_same_aura_ogr_fr,
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Coward Culling +]--
	local ED_OGR_Aura_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Pour l'Ogryn, S'additionne avec la Bénédiction d'arme \"Barrage incessant\" et les autres bonus de dégâts associés, et de manière multiplicative avec les bonus de niveau de puissance des Bénédictions d'armes.",
		doesnt_stack_w_z_same_aura_ogr_fr,
		"- Ennemis pouvant être Supprimés : Grogneur, Les tireurs squameux, Faucheur, Les tireurs Saleté.",
	}, "\n"), enhdesc_col)

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Charge musclée +]--
	local ED_OGR_Ability_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Portée : 12 mètres.",
		-- "- S'arrête aux ennemis avec des types d'armure de base Carapace/Implacable, aux Montruosités et au boucliers Void des Capitaines/Jumeaux.",
		"- N'inflige aucun dégât à l'impact.",
		"- Peut être annulée en reculant.",
		-- "- À la fin de la charge, augmente également la vitesse d'animation d'attaque des armes de mêlée et la vitesse de déplacement de 25% pendant 5 secondes.",
		-- "-- S'additionne avec les autres bonus associés.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Indomptable +]-- 
	local ED_OGR_Ability_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Portée : 24 mètres.",
		"- S'arrête uniquement aux Montruosités.",
		"-- Ne peut pas être activée en sautant ou en tombant.",
		"-- Peut être annulée en reculant.",
		"-- Peut légèrement changer de direction pendant la charge.",
		"-- Pendant la charge, repousse les ennemis, y compris les Montruosités (sauf impact direct).",
		"-- À la fin de la charge, Étourdit tous les ennemis dans un rayon de 2,5 mètres.",
		"-- À la fin de la charge, augmente également la vitesse d'animation d'attaque des armes de mêlée et la vitesse de déplacement de 25% pendant 5 secondes.",
		"--- S'additionne avec les autres bonus associés.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Stomping Boots +]--
	local ED_OGR_Ability_1_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Trample +]--
	local ED_OGR_Ability_1_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
		"- À la fin de la charge, l'effet Étourdissement de la Charge génère également des cumuls séparément pour chaque ennemi touché par celui-ci.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-3 - Pulverise +]--
	local ED_OGR_Ability_1_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Peut appliquer Saignement à travers le bouclier Rempart et le boucliers Void des Capitaines/Jumeaux.",
		"- Les Saignements se cumulent de manière additive avec d'autres sources de Saignement.",
		-- "-- Dure 1,5 seconde.",
		-- "-- Se déclenche toutes les 0,5 secondes.",
		"-- Dure 1,5 seconde. Se déclenche toutes les 0,5 secondes.",
		"-- Rafraîchit la durée à l'application des cumuls.",
		"-- Modificateurs de dégâts d'armure supérieurs à la moyenne dans l'ensemble, faible Pénétration d'armure contre Carapace.",
		"- Les dégâts de Saignement sont augmentés par Déchirure/Fragilité, par les Avantages des Armes actuellement équipées, et par les bonus suivants :",
		"-- Talents : \"Poids lourd\" (contre les Ogryns), \"L'heure de la vengeance\", \"On les ramollit\" et \"Distraction utile\" (si appliqué par un autre Ogryn).",
		"-- Bénédictions (si déclenchées avec une Arme avant ou pendant la durée active du Saignement) :",
		"--- Mêlée : \"Brise-crâne\" (lorsqu'étourdi), \"Massacre\" et \"Attendrisseur\" (les tiques de Saignement ne consomment pas de cumuls).",
		"--- À distance : \"Embrasement\", \"Crache-mort\", \"Offensive explosive\", \"Frénésie de feu\" et \"À toute allure\".",
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Protecteur Loyal +]--
	local ED_OGR_Ability_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Rayon : 8 mètres.",
		"- Maintenir le bouton d'aptitude affiche la portée de la provocation. L'aperçu peut être annulé par la touche de blocage.",
		"- Lors de l'activation, force au moins un Étourdissement léger sur tous les ennemis dans un rayon de 8 mètres pendant 1 seconde.",
		"- Les ennemis provoqués sont visuellement mis en évidence.",
		"- Les Montruosités et les Hôtes Démoniaques enragés ignorent la provocation. Les Capitaine/Jumeaux peuvent être provoqués.",
		"- Force les ennemis à distance provoqués au combat au corps à corps (sauf les Mitrailleurs et les Faucheurs).",
		"- La durée de la provocation n'est pas remplacée par la durée de \"Attirer l'attention\".",
		"- Lorsque l'Ogryn est à terre, l'effet de provocation est supprimé de tous les ennemis Incapacitants (Cerbères, Mutant, Trappeuse) qui ont été provoqués par l'Ogryn auparavant.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Distraction utile +]--
	local ED_OGR_Ability_2_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- se cumule de manière multiplicative avec les malus de dégâts subis de \"On les ramollit\" et les actions spéciales de la Pioche (10%), avec les bonus de dégâts et avec les bonus de niveau de puissance des Bénédictions d'armes.",
		"- Ne se cumule pas avec le même Talent d'un autre Ogryn.",
		"- Les ennemis provoqués par le biais de \"Attirer l'attention\" n'obtiennent pas ce malus.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Go Again +]--
	local ED_OGR_Ability_2_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Réduit le temps de rechargement restant de Protecteur Loyal de 1,125 seconde par action d'Étourdissement.",
		"- Se déclenche sur les Poussées réussies, les coups de mêlée Étourdissants et les actions spéciales de mêlée Étourdissantes du fusil Ripper, du Gantelet Lance-Grenades (partie Mêlée), du Tonitruant, des Double-Mitrailleuse et du Recul.",
		"- Se déclenche une fois par action d'Étourdissement, quel que soit le nombre d'ennemis Étourdis.",
		procs_add_conc_stim_rem_cd_red_fr,
		doesnt_interact_w_c_a_r_from_curio_fr,
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - Big Lungs +]--
	local ED_OGR_Ability_2_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente le rayon de base de la provocation de 8 à 12 mètres.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Barrage à bout portant +]--
	local ED_OGR_Ability_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Le Rechargement forcé déclenche toujours \"Arme rechargée et prête\".",
		-- "- La vitesse d'animation d'attaque des armes à distance S'additionne avec \"Just Getting Started\" et le stimulant de célérité.",
		"- La vitesse d'animation de rechargement s'additionne avec les bonus de vitesse de rechargement de \"Stimulateur\" et le petit noeud de vitesse de rechargement.",
		"- La réduction de la pénalité de vitesse de déplacement se cumule de manière multiplicative avec le buff associé de la Bénédiction d'arme \"Avancée rugissante\", et se cumule de manière multiplicative avec les bonus de vitesse de déplacement de \"Foncez\", \"Élan inarrêtable\" et l'aura de vétéran \"Élimination à proximité\".",
		-- "-- Au-delà de 12,5 mètres, le bonus de dégâts diminue linéairement jusqu'à ce qu'il perde son effet à 30 mètres :",
		"-- Le bonus de dégâts diminue linéairement :",
		"______________________________",
		"Distance(m):  1-12.5|  15|  20|  25|  30",
		"Dégâts(%):           15| ~13|  ~9|  ~5|    0",
		"______________________________",
		"-"..stacks_add_w_oth_dmg_fr,
		-- "- Cela affecte également les dégâts d'explosion et les DoT comme le saignement (de la bénédiction d'arme Flechette) tant que l'arme à distance est équipée tant que l'Ogryn reste à moins de 30 m de l'ennemi.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-1 - Bullet Bravado +]--
	local ED_OGR_Ability_3_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Si une action de tir implique plusieurs tirs (par exemple, clics gauche du fusil Ripper), chaque tir effectué pendant cette action déclenchera le récupèrement.",
		"- Le rechargement forcé lors de l'activation de \"Barrage à bout portant\" déclenche toujours ce récupèrement.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-2 - Hail of Fire +]--
	local ED_OGR_Ability_3_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Accorde 30% de Déchirure lorsque l'arme à distance est équipée, augmentant les dégâts contre les types d'armure Carapace, Armure Légère, Maniaque, Implacable.",
		"- N'affecte que les propres dégâts de l'Ogryn.",
		"- Cela affecte également les dégâts d'explosion et les DoT comme le Saignement (de la Bénédiction d'arme \"Flechette\") lorsque l'arme à distance est équipée, ainsi que les dégâts des explosions.",
		"- S'additionne avec les autres bonus Déchirure, y compris les malus Fragilité appliqués aux ennemis.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Light 'em Up +]--
	local ED_OGR_Ability_3_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les attaques à distance (y compris les impacts directs des projectiles Rock ou Grenade) appliquent 2 cumuls de Brûlure par coup aux ennemis, jusqu'à 31 cumuls Max de Brûlure sur une cible.",
		"- Peut appliquer des brûlures à travers les boucliers.",
		-- "- Brûlure : Identique aux autres sources de Brûlure. Dure 4 secondes. Se déclenche toutes les 0,5 secondes. Rafraîchit la durée à l'application des cumuls. Modificateurs de dégâts d'armure élevés dans l'ensemble, très faible Pénétration d'armure contre Carapace.",
		"- Les dégâts de Brûlure sont augmentés par Déchirure/Fragilité, par les Avantages des Armes actuellement équipées, et par les bonus suivants :",
		"-- Talents : \"Poids lourd\" (contre les Ogryns), \"L'heure de la vengeance\", \"On les ramollit\" et \"Distraction utile\" (si appliqué par un autre Ogryn).",
		"-- Bénédictions (si déclenchées avec une Arme avant ou pendant la durée active de la Brûlure) :",
		"--- Mêlée : \"Brise-crâne\" (lorsqu'étourdi), \"Massacre\" et \"Attendrisseur\" (les tiques de Brûlure ne consomment pas de cumuls).",
		"--- À distance : \"Embrasement\", \"Offensive explosive\", \"Crache-mort\", \"Frénésie de feu\" et \"À toute allure\".",
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Heavy Hitter +]--
	local ED_OGR_Keystone_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Génère toujours 1 cumul par attaque, quel que soit le nombre d'ennemis touchés.",
		"- Les cumuls durent 7,5 secondes et peuvent être rafraîchis pendant la durée active.",
		stacks_add_w_oth_dmg_fr,
		"- Se déclenche également sur les actions spéciales de mêlée du fusil Ripper, du Gantelet Lance-Grenades (partie Mêlée), du Tonitruant, des Double-Mitrailleuse et du Recul.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Just Getting Started +]--
	local ED_OGR_Keystone_1_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les bonus associés de \"Indomptable\"/\"Charge musclée\", \"Barrage à bout portant\" et le stimulant de célérité.",
		"- N'a actuellement pas d'icône HUD.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Unstoppable +]--
	local ED_OGR_Keystone_1_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Par exemple, avec 160 de Robustesse maximale et \"Écrasez-les !\" équipé, l'Ogryn récupère 160x(0,1+0,2)=48 Robustesse en tuant un seul ennemi.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Brutish Élan +]--
	local ED_OGR_Keystone_1_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les attaques légères ne peuvent pas générer de cumuls (cela nécessite des attaques de mêlée lourdes), elles ne peuvent que maintenir le nombre de cumuls actuel.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Adieu la douleur +]--
	local ED_OGR_Keystone_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne régénère pas de cumuls lorsqu'il est à terre ou Abattu.",
		"- Augmente la quantité de base de Robustesse de Syntonie régénérée par l'Ogryn lorsqu'il est en Syntonie jusqu'à 25% :",
		"_______________________________",
		"Alliés: | CTR:             | Après 5 secondes:",
		"        1  | 3.75 -> 4.69 | 23.44(HUD:~24)",
		"        2 | 5.63 -> 7.03  | 35.16(HUD:~36)",
		"        3 | 7.50 -> 9.38  | 46.88(HUD:~47)",
		"_______________________________",
		"- S'additionne avec l'Aura \"On reste groupé !\" de l'Ogryn, \"Pilier\", le noeud de clé de voute \"Le plus dur !\", la vitesse de régénération de Robustesse des Curiosités et les petits noeuds de Talent de vétéran \"Présence inspirante\".",
		"- Réduit également les dégâts de Robustesse subis.",
		"- Le buff se cumule de manière multiplicative avec lui-même, jusqu'à ~22,4% de réduction des dégâts de Robustesse au maximum de cumuls (1-0,975¹⁰=0,2236), et avec d'autres bonus de réduction des dégâts.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - Emportement douloureux +]--
	local ED_OGR_Keystone_2_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsque l'Ogryn est à terre (par exemple, Bondé ou Réticulé, etc.), la perte du dernier cumul de \"Adieu la douleur\" déclenche l'explosion de recul et le récupèrement de Robustesse.",
		"- Cela permet également à l'Ogryn de se libérer des Cerbères.",
		"- Lorsque l'Ogryn est Abattu, le nombre de cumuls actuel est défini sur 0, ce qui déclenche également l'explosion Étourdissante, mais ne déclenche pas le récupèrement de Robustesse.",
		"- L'explosion a un rayon de 2,5 mètres et Étourdit tous les ennemis sauf les Mutants, les Montruosités et les Capitaines/Jumeaux.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Strongest! +]--
	local ED_OGR_Keystone_2_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ajoute toujours 1 cumul par action de poussée, quel que soit le nombre d'ennemis poussés.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-3 - Le plus dur! +]--
	local ED_OGR_Keystone_2_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Double la quantité de Robustesse de Syntonie régénérée par Adieu la douleur lorsqu'il est en Syntonie, de 2,5% à 5% par cumul.",
		"- S'additionne avec l'Aura \"On reste groupé !\" de l'Ogryn, \"Pilier\", la vitesse de régénération de Robustesse des Curiosités et le petit noeud de Talent de vétéran \"Présence inspirante\".",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3 - Burst Limiter Override +]--
	local ED_OGR_Keystone_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Pour les fusil Rippers, l'action de tir à clic gauche implique plusieurs tirs par action.",
		"- Aucun des tirs ne consomme de munitions lors du déclenchement.",
		"- Pour les autres armes, le Talent se déclenche par tir unique.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Maximum Firepower +]--
	local ED_OGR_Keystone_3_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- En plus du taux de rechargement de base de l'Aptitude de l'Ogryn de 1 seconde par seconde, réduit le temps de rechargement restant de 2 secondes par seconde pendant 2 secondes lorsque Burst Limiter Override se déclenche. Cela entraîne une réduction totale du temps de rechargement de 6 secondes par déclenchement (2 secondes du taux de base + 2x2 secondes du Talent).",
		"-"..can_be_refr_dur_active_dur_fr,
		"- Se déclenche en plus de l'effet de réduction du temps de rechargement de Concentration Stimm de 3 secondes par seconde.",
		doesnt_interact_w_c_a_r_from_curio_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Good Shootin' +]--
	local ED_OGR_Keystone_3_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Si une action de tir implique plusieurs tirs (clics gauche des fusil Rippers et des Double-Mitrailleuse) et si l'un de ces tirs est Critique, alors tous les tirs suivants de cette action seront convertis en tirs Critiques.",
		"- Pour le tir alternatif des Double-Mitrailleuse (full auto), tout tir Critique accordé par ce Talent déclenche la séquence Critique garantie de 6 tirs.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-3 - More Burst Limiter Overrides! +]--
	-- local ED_OGR_Keystone_3_3_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Furious +]--
	local ED_OGR_Passive_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les cumuls durent jusqu'à la prochaine attaque de mêlée et sont consommés même si l'attaque de mêlée ne touche rien.",
		"- Par cumul, augmente les dégâts de mêlée de 2,5%.",
		stacks_add_w_oth_dmg_fr,
		"- Les actions spéciales de mêlée des fusil Rippers, du Gantelet Lance-Grenades (partie Mêlée), du Tonitruant, des Double-Mitrailleuse et du Recul peuvent également déclencher ce Talent.",
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Arme rechargée et prête +]--
	local ED_OGR_Passive_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
		"- Le Rechargement forcé de \"Barrage à bout portant\" déclenche ce Talent (même si le chargeur de l'arme est plein).",
	}, "\n"), enhdesc_col)

	--[+ Passive 3 - The Best Defence +]--
	local ED_OGR_Passive_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Se déclenche également sur les actions spéciales de mêlée des fusil Rippers, du Gantelet Lance-Grenades (partie Mêlée), du Tonitruant, des Double-Mitrailleuse et du Recul.",
		"- Si l'un des ennemis touchés meurt, la quantité de Robustesse réapprovisionnée par le Talent est ajoutée à la base de 5% de Robustesse maximale de l'Ogryn obtenue par élimination au corps à corps.",
		"- Par exemple, avec 140 de Robustesse maximale et si deux des ennemis attaqués meurent, l'Ogryn récupèrerait 140x(0,2+0,05+0,05)=42 Robustesse.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

--[+ Passive 4 - Poids lourd +]--
	local ED_OGR_Passive_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente tous les dégâts contre Rempart, Crusher, Plague Ogryn et Faucheur.",
		stacks_add_w_oth_dmg_fr,
		"- Réduit également les dégâts de Robustesse et de Santé subis de Rempart, Crusher, Plague Ogryn et Faucheur.",
		stacks_mult_w_other_dmg_red_buffs_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Steady Grip +]--
	local ED_OGR_Passive_5_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- N'interagit pas avec la régénération de Robustesse de Syntonie.",
		z_eff_of_this_tougn_rep_fr,
		"- \"mis en joue\" fait référence à un mot-clé d'action dans les profils d'armes à distance.",
		"- L'utilisation du tir alternatif d'une arme, comme le zoom ou le tir en zoomant, active le buff.",
	}, "\n"), enhdesc_col)

	--[+ Passive 6 - Écrasez-les! +]--
	local ED_OGR_Passive_6_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Récupère la Robustesse lorsqu'il touche EXACTEMENT UN ennemi avec une attaque de mêlée puissante.",
		"- Se déclenche également sur les actions spéciales de mêlée des fusil Rippers, du Gantelet Lance-Grenades (partie Mêlée), du Tonitruant, des Double-Mitrailleuse et du Recul.",
		"- Si l'ennemi touché meurt, la quantité de Robustesse réapprovisionnée par le Talent est ajoutée à la base de 5% de Robustesse maximale de l'Ogryn obtenue par élimination au corps à corps.",
		"- Par exemple, avec 90 de Robustesse maximale et si l'ennemi attaqué meurt, l'Ogryn récupèrerait 90x(0,2+0,05)=22,5 Robustesse.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Pilier +]--
	local ED_OGR_Passive_7_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la quantité de base de Robustesse de Syntonie régénérée (CTR) par l'Ogryn lorsqu'il est en Syntonie de 50% :",
		"_______________________________",
		"Alliés: | CTR:              | Après 5 secondes:",
		"         1 | 3.75 -> 5.63  | 28.13(HUD:~29)",
		"         2 | 5.63 -> 8.44 | 42.19(HUD:~43)",
		"         3 | 7.50 -> 11.25 | 56.25(HUD:~57)",
		"_______________________________",
		"- S'additionne avec l'Aura \"On reste groupé !\" de l'Ogryn, la clé de voute \"Adieu la douleur\" (y compris \"Le plus dur !\"), la vitesse de régénération de Robustesse des Curiosités et le petit noeud de Talent de vétéran \"Présence inspirante\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Collision +]--
	local ED_OGR_Passive_8_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec \"Tout écraser !\" et les autres bonus d'Étourdissement associés des Bénédictions d'armes, et de manière multiplicative avec les bonus de niveau de puissance des Bénédictions d'armes.",
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - On les ramollit +]--
	local ED_OGR_Passive_9_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur_fr,
		"- Peut également être appliqué avec les actions spéciales de mêlée des fusil Rippers, du Gantelet Lance-Grenades (partie Mêlée), du Tonitruant, des Double-Mitrailleuse et du Recul.",
		"- Ne se cumule pas avec le même Talent d'un autre Ogryn.",
		"- Le malus S'additionne avec le malus de dégâts subis associé des actions spéciales de la Pioche (+10%) et de manière multiplicative avec \"Distraction utile\".",
		"- Pendant le calcul, se cumule de manière multiplicative avec les bonus de dégâts et les bonus de niveau de puissance des Bénédictions d'armes.",
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Tout écraser! +]--
	local ED_OGR_Passive_10_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les autres bonus de dégâts associés et les bonus d'Étourdissement (de \"Collision\" et des Bénédictions d'armes), et de manière multiplicative avec les bonus de niveau de puissance des Bénédictions d'armes.",
		"- Complètement chargée\" signifie que vous devez maintenir le bouton enfoncé jusqu'à ce que l'attaque lourde soit exécutée automatiquement.",
		"- S'applique uniquement aux attaques lourdes des armes de mêlée (et aux attaques lourdes du Gantelet Lance-Grenades).",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - Batter +]--
	local ED_OGR_Passive_11_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne peut pas appliquer de Saignement à travers les boucliers.",
		"- Se déclenche également sur les actions spéciales de mêlée des fusil Rippers, du Gantelet Lance-Grenades (partie Mêlée), du Tonitruant, des Double-Mitrailleuse et du Recul.",
		"- Saignement : Identique aux autres sources de Saignement. Dure 1,5 seconde. Se déclenche toutes les 0,5 secondes. Rafraîchit la durée à l'application des cumuls. Modificateurs de dégâts d'armure supérieurs à la moyenne dans l'ensemble, faible Pénétration d'armure contre Carapace.",
		"- Les dégâts de Saignement sont augmentés par Déchirure/Fragilité, par les Avantages des Armes actuellement équipées, et par les bonus suivants :",
		"-- Talents : \"Poids lourd\" (contre les Ogryns), \"L'heure de la vengeance\", \"On les ramollit\" et \"Distraction utile\" (si appliqué par un autre Ogryn).",
		"-- Bénédictions (si déclenchées avec une Arme avant ou pendant la durée active de la Brûlure) :",
		"--- Mêlée : \"Brise-crâne\" (lorsqu'étourdi), \"Massacre\" et \"Attendrisseur\" (les tiques de Saignement ne consomment pas de cumuls).",
		"--- À distance : \"Embrasement\", \"Offensive explosive\", \"Crache-mort\", \"Frénésie de feu\" et \"À toute allure\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Stimulateur +]--
	local ED_OGR_Passive_12_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les bonus associés de \"Barrage à bout portant\", le petit noeud de vitesse de rechargement, les Avantages d'arme et le stimulant de célérité.",
		"- Peut se déclencher sur les attaques de mêlée et à distance, les Poussées, les Explosions et les Capacités Étourdissantes (\"Protecteur Loyal\", \"Emportement douloureux\").",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Ammo Stash +]--
	-- local ED_OGR_Passive_13_rgb_fr = iu_actit(table.concat({ },"\n"), enhdesc_col)

	--[+ Passive 14 - Hard Knocks +]--
	local ED_OGR_Passive_14_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Buff également les actions spéciales de mêlée des fusil Rippers, du Gantelet Lance-Grenades (partie Mêlée), du Tonitruant, des Double-Mitrailleuse et du Recul.",
		stacks_add_w_oth_dmg_fr,
		"- Génère des cumuls lorsqu'il applique avec succès des instances d'Étourdissement aux ennemis par les attaques de mêlée et à distance de l'Ogryn, les Poussées, les Explosions et les Capacités Étourdissantes.",
		"- La quantité de cumuls générée varie selon l'ennemi :",
		"_______________________________",
		"Сumuls: |Ennemis :",
		"1            |Groaner, Poxwalker, Bruisers,",
		"              |Stalkers, Scab Shooter, Sniper.",
		"2            |Mitrailleurs, Bombers, Flamers,",
		"              |Poxburster, Shotgunners,",
		"              |Trappeuse, Jumeaux.",
		"3            |Mauler, Ragers, Pox Hound,",
		"              |Pox Hound (mutator).",
		"5            |Rempart, Crusher, Faucheur,",
		"              |Mutant, Mutant (mutator)",
		"8            |Daemonhost, Capitaines",
		"10           |Plague Ogryn, Chaos Spawn,",
		"               |Beast of Nurgle.",
		"_______________________________",
	}, "\n"), enhdesc_col)

	--[+ Passive 15 - Too Stubborn to Die +]--
	local ED_OGR_Passive_15_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsque la Santé est inférieure à 33% de la Santé maximale, double la quantité de toute Robustesse réapprovisionnée par élimination au corps à corps, les Talents et certaines Bénédictions d'armes (seulement \"Élan\").",
		"- Ne s'applique pas à la régénération de Robustesse de Syntonie.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Delight in Destruction +]--
	local ED_OGR_Passive_16_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Réduit les dégâts de Robustesse et de Santé subis.",
		"- Prend en compte les cumuls de Saignement appliqués aux ennemis dans un rayon de 8 mètres.",
		"- Vérifie les ennemis saignants toutes les secondes.",
		stacks_mult_w_other_dmg_red_bonus_fr,
	}, "\n"), enhdesc_col)

--[+ Passive 17 - Attirer l'attention +]--
	local ED_OGR_Passive_17_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Pousser les ennemis, bloquer les attaques de mêlée ennemies ou bloquer les attaques à distance ennemies (bouclier uniquement) force les ennemis à attaquer l'Ogryn.",
		"- Provoquer les ennemis à distance les force au combat au corps à corps (sauf les Mitrailleurs et les Faucheurs) Affecte les Capitaines/Jumeaux, n'affecte pas les Montruosités..",
		"- Les ennemis provoqués sont visuellement mis en évidence.",
		"- La Provocation dure 8 secondes.",
		"- Ne peut pas être rafraîchie pendant la durée active.",
		"- \"Protecteur loyal\" écrase la durée de provocation de ce Talent en appliquant sa propre durée de 15 secondes.",
		"- Lorsque l'Ogryn est à terre, l'effet de provocation est supprimé de tous les ennemis Incapacitants (Cerbères, Mutant, Trappeuse) qui ont été provoqués par l'Ogryn auparavant.",
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Foncez +]--
	local ED_OGR_Passive_18_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les bonus de vitesse de déplacement de \"Indomptable\"/\"Charge musclée\" et \"Élan inarrêtable\", et de manière multiplicative avec la réduction de la pénalité de vitesse de la mise en joue lors de \"Barrage à bout portant\".",
		"- Accorde également l'Immunité aux Étourdissements des attaques de mêlée et à distance, et l'Immunité à la Suppression.",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Towering Presence +]--
	local ED_OGR_Passive_19_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente le rayon de base de Syntonie de l'Ogryn de 8 à 12 mètres.",
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - Élan inarrêtable +]--
	local ED_OGR_Passive_20_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur_fr,
		"- S'additionne avec les bonus de vitesse de déplacement de \"Indomptable\"/\"Charge musclée\" et \"Foncez\", et de manière multiplicative avec les réductions de pénalité de vitesse de déplacement de \"Barrage à bout portant\" et de la Bénédiction d'arme \"Avancée rugissante\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - No Stopping Me! +]--
	local ED_OGR_Passive_21_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les attaques de mêlée de l'Ogryn ne peuvent-être interrompues pendant la phase de préparation.",
		"- \"Windup\" fait référence à un type d'action spécifique dans les profils d'armes, c'est essentiellement l'animation de \"Charge ou Préparation\" avant l'exécution d'un véritable coup.",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 22 - Dominate +]--
	local ED_OGR_Passive_22_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- À l'élimination d'un Élite, accorde 10% de Déchirure à toutes les attaques pendant 10 secondes, augmentant les dégâts contre les types d'armure Carapace, Armure Légère, Maniaque, Implacable (y compris les dégâts des Explosions et des DoT comme le Saignement et la Brûlure appliqués par l'Ogryn).",
		can_be_refr_dur_active_dur_fr,
		"- N'affecte que les propres dégâts de l'Ogryn.",
		stacks_add_w_oth_rend_brit_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - L'heure de la vengeance +]--
	local ED_OGR_Passive_23_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente tous les dégâts lorsqu'il subit un coup de mêlée ou bloque un coup de mêlée.",
		stacks_add_w_oth_dmg_fr,
		can_be_refr_dur_active_dur_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Bruiser +]--
	local ED_OGR_Passive_24_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Se déclenche sur toute élimination d'Élite par l'Ogryn et élimination d'Élite par les Alliés qui sont en Syntonie avec l'Ogryn.",
		"- C'est 1,2 seconde pour \"Indomptable\"/\"Charge musclée\", 1,8 seconde pour \"Protecteur loyal\" et 3,2 secondes pour \"Barrage à bout portant\".",
		procs_add_conc_stim_rem_cd_red_fr,
		doesnt_interact_w_c_a_r_from_curio_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 25 - Big Boom +]--
	local ED_OGR_Passive_25_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec la Bénédiction d'arme \"Zone d'explosion\".",
		"- Cela augmente les rayons de l'épicentre interne et du maximum externe des explosions.",
		"- Notez que ce Talent augmente également le rayon des explosions créées par les attaques de mêlée (par exemple, les attaques activées par Masse énergétique). Dans ce cas, S'additionne avec la Bénédiction d'arme \"Vague d'énergie\".",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 26 - Massacre +]--
	local ED_OGR_Passive_26_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Génère des cumuls lorsque des ennemis meurent des attaques de mêlée et à distance de l'Ogryn, des Explosions et des DoT, et lorsqu'ils sont poussés par-dessus les bords dans les zones de élimination de la carte par l'Ogryn.",
		"- Les cumuls durent 10 secondes et peuvent être rafraîchis pendant la durée active.",
		"- Par cumul, accorde 1% de chances de Coup Critique supplémentaires à toutes les attaques pouvant infliger un Coup Critique.",
		"- Les cumuls se cumulent de manière additive avec les autres sources de chances de Coup Critique.",
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Implacable +]--
	local ED_OGR_Passive_27_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Réduit les dégâts de Robustesse et de Santé subis pendant la préparation des attaques de mêlée.",
		stacks_mult_w_other_dmg_red_buffs_fr,
		"- \"Préparation\" fait référence à un type d'action spécifique dans les profils d'armes, c'est essentiellement l'animation de \"Charge ou Préparation\" avant l'exécution d'un véritable coup.",
		"- Techniquement, le Talent se déclenche effectivement à chaque fois qu'une attaque d'arme est en phase de préparation, y compris les attaques légères. Mais les fenêtres de préparation peuvent être très courtes (surtout pour les attaques légères), donc le Talent fonctionne plus efficacement pendant les fenêtres de préparation plus longues des attaques de mêlée lourdes.",
		"- N'a actuellement pas d'icône HUD.",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - No Pushover +]--
	local ED_OGR_Passive_28_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Permet à la Poussée d'Étourdir tous les ennemis sauf les Mutants, les Montruosités et les Jumeaux (Capitaines uniquement sans boucliers Void).",
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Won't Give In +]--
	local ED_OGR_Passive_29_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Réduit les dégâts de Robustesse et de Santé subis de 20% par Allié Abattu ou Incapacité dans un rayon de 20 mètres.",
		"- Se cumule de manière linéaire avec lui-même : 1 Allié Incapacité = 20% de réduction des dégâts, 2 Alliés = 40%, 3 Alliés = 60%",
		stacks_mult_w_other_dmg_red_buffs_fr,
		"- \"Incapacité\" inclut : Capturé (par Trappeuse), Immobilisé (par Cerbères), Saisi (par Daemonhost, Chaos Spawn, Mutants), Mangé par Beast of Nurgle, Suspendu à un rebord et en attente de sauvetage après réapparition.",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Mobile Emplacement +]--
	local ED_OGR_Passive_30_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Réduit les dégâts de Robustesse et de Santé subis de 20% lorsqu'il est en joue.",
		stacks_mult_w_other_dmg_red_buffs_fr,
		"- \"Mis en joue\" fait référence à un mot-clé d'action dans les profils d'armes à distance.",
		"- L'utilisation du tir alternatif d'une arme à distance, comme le zoom ou le tir en zoomant, active le bonus.",
	}, "\n"), enhdesc_col)

	-- local  = iu_actit(table.concat({
		-- "\n+++-------------------------------------------------+++",
		-- "",
	-- }, "\n"), enhdesc_col)


return {
	ED_VET_Blitz_0_rgb_fr = ED_VET_Blitz_0_rgb_fr,
	ED_VET_Blitz_1_rgb_fr = ED_VET_Blitz_1_rgb_fr,
	ED_VET_Blitz_1_1_rgb_fr = ED_VET_Blitz_1_1_rgb_fr,
	ED_VET_Blitz_1_2_rgb_fr = ED_VET_Blitz_1_2_rgb_fr,
	ED_VET_Blitz_2_rgb_fr = ED_VET_Blitz_2_rgb_fr,
	ED_VET_Blitz_2_1_rgb_fr = ED_VET_Blitz_2_1_rgb_fr,
	ED_VET_Blitz_2_2_rgb_fr = ED_VET_Blitz_2_2_rgb_fr,
	ED_VET_Blitz_2_3_rgb_fr = ED_VET_Blitz_2_3_rgb_fr,
	ED_VET_Blitz_3_rgb_fr = ED_VET_Blitz_3_rgb_fr,
	ED_VET_Blitz_3_1_rgb_fr = ED_VET_Blitz_3_1_rgb_fr,
	ED_VET_Blitz_3_2_rgb_fr = ED_VET_Blitz_3_2_rgb_fr,

	ED_VET_Aura_0_rgb_fr = ED_VET_Aura_0_rgb_fr,
	ED_VET_Aura_1_rgb_fr = ED_VET_Aura_1_rgb_fr,
	ED_VET_Aura_2_rgb_fr = ED_VET_Aura_2_rgb_fr,
	ED_VET_Aura_3_rgb_fr = ED_VET_Aura_3_rgb_fr,

	ED_VET_Ability_0_rgb_fr = ED_VET_Ability_0_rgb_fr,
	ED_VET_Ability_1_rgb_fr = ED_VET_Ability_1_rgb_fr,
	ED_VET_Ability_1_1_rgb_fr = ED_VET_Ability_1_1_rgb_fr,
	ED_VET_Ability_1_2_rgb_fr = ED_VET_Ability_1_2_rgb_fr,
	ED_VET_Ability_1_3_rgb_fr = ED_VET_Ability_1_3_rgb_fr,
	ED_VET_Ability_1_4_rgb_fr = ED_VET_Ability_1_4_rgb_fr,
	ED_VET_Ability_2_rgb_fr = ED_VET_Ability_2_rgb_fr,
	ED_VET_Ability_2_1_rgb_fr = ED_VET_Ability_2_1_rgb_fr,
	ED_VET_Ability_2_2_rgb_fr = ED_VET_Ability_2_2_rgb_fr,
	ED_VET_Ability_2_3_rgb_fr = ED_VET_Ability_2_3_rgb_fr,
	ED_VET_Ability_3_rgb_fr = ED_VET_Ability_3_rgb_fr,
	ED_VET_Ability_3_1_rgb_fr = ED_VET_Ability_3_1_rgb_fr,
	ED_VET_Ability_3_2_rgb_fr = ED_VET_Ability_3_2_rgb_fr,
	ED_VET_Ability_3_3_rgb_fr = ED_VET_Ability_3_3_rgb_fr,
	ED_VET_Ability_3_4_rgb_fr = ED_VET_Ability_3_4_rgb_fr,
	ED_VET_Ability_3_5_rgb_fr = ED_VET_Ability_3_5_rgb_fr,

	ED_VET_Keystone_1_rgb_fr = ED_VET_Keystone_1_rgb_fr,
	ED_VET_Keystone_1_1_rgb_fr = ED_VET_Keystone_1_1_rgb_fr,
	ED_VET_Keystone_1_2_rgb_fr = ED_VET_Keystone_1_2_rgb_fr,
	ED_VET_Keystone_1_3_rgb_fr = ED_VET_Keystone_1_3_rgb_fr,
	ED_VET_Keystone_1_4_rgb_fr = ED_VET_Keystone_1_4_rgb_fr,
	ED_VET_Keystone_2_rgb_fr = ED_VET_Keystone_2_rgb_fr,
	ED_VET_Keystone_2_1_rgb_fr = ED_VET_Keystone_2_1_rgb_fr,
	ED_VET_Keystone_2_2_rgb_fr = ED_VET_Keystone_2_2_rgb_fr,
	ED_VET_Keystone_2_3_rgb_fr = ED_VET_Keystone_2_3_rgb_fr,
	ED_VET_Keystone_3_rgb_fr = ED_VET_Keystone_3_rgb_fr,
	ED_VET_Keystone_3_1_rgb_fr = ED_VET_Keystone_3_1_rgb_fr,
	ED_VET_Keystone_3_2_rgb_fr = ED_VET_Keystone_3_2_rgb_fr,
	ED_VET_Keystone_3_3_rgb_fr = ED_VET_Keystone_3_3_rgb_fr,
	ED_VET_Keystone_3_4_rgb_fr = ED_VET_Keystone_3_4_rgb_fr,
	ED_VET_Keystone_3_5_rgb_fr = ED_VET_Keystone_3_5_rgb_fr,

	ED_VET_Passive_0_rgb_fr = ED_VET_Passive_0_rgb_fr,
	ED_VET_Passive_1_rgb_fr = ED_VET_Passive_1_rgb_fr,
	ED_VET_Passive_2_rgb_fr = ED_VET_Passive_2_rgb_fr,
	ED_VET_Passive_3_rgb_fr = ED_VET_Passive_3_rgb_fr,
	ED_VET_Passive_4_rgb_fr = ED_VET_Passive_4_rgb_fr,
	ED_VET_Passive_5_rgb_fr = ED_VET_Passive_5_rgb_fr,
	ED_VET_Passive_6_rgb_fr = ED_VET_Passive_6_rgb_fr,
	ED_VET_Passive_7_rgb_fr = ED_VET_Passive_7_rgb_fr,
	ED_VET_Passive_8_rgb_fr = ED_VET_Passive_8_rgb_fr,
	ED_VET_Passive_9_rgb_fr = ED_VET_Passive_9_rgb_fr,
	ED_VET_Passive_10_rgb_fr = ED_VET_Passive_10_rgb_fr,
	ED_VET_Passive_11_rgb_fr = ED_VET_Passive_11_rgb_fr,
	ED_VET_Passive_12_rgb_fr = ED_VET_Passive_12_rgb_fr,
	ED_VET_Passive_13_rgb_fr = ED_VET_Passive_13_rgb_fr,
	ED_VET_Passive_14_rgb_fr = ED_VET_Passive_14_rgb_fr,
	ED_VET_Passive_15_rgb_fr = ED_VET_Passive_15_rgb_fr,
	ED_VET_Passive_16_rgb_fr = ED_VET_Passive_16_rgb_fr,
	ED_VET_Passive_17_rgb_fr = ED_VET_Passive_17_rgb_fr,
	ED_VET_Passive_18_rgb_fr = ED_VET_Passive_18_rgb_fr,
	ED_VET_Passive_19_rgb_fr = ED_VET_Passive_19_rgb_fr,
	ED_VET_Passive_20_rgb_fr = ED_VET_Passive_20_rgb_fr,
	ED_VET_Passive_21_rgb_fr = ED_VET_Passive_21_rgb_fr,
	ED_VET_Passive_22_rgb_fr = ED_VET_Passive_22_rgb_fr,
	ED_VET_Passive_23_rgb_fr = ED_VET_Passive_23_rgb_fr,
	ED_VET_Passive_24_rgb_fr = ED_VET_Passive_24_rgb_fr,
	ED_VET_Passive_25_rgb_fr = ED_VET_Passive_25_rgb_fr,
	ED_VET_Passive_26_rgb_fr = ED_VET_Passive_26_rgb_fr,
	ED_VET_Passive_27_rgb_fr = ED_VET_Passive_27_rgb_fr,
	ED_VET_Passive_28_rgb_fr = ED_VET_Passive_28_rgb_fr,
	ED_VET_Passive_29_rgb_fr = ED_VET_Passive_29_rgb_fr,
	ED_VET_Passive_30_rgb_fr = ED_VET_Passive_30_rgb_fr,
	ED_VET_Passive_31_rgb_fr = ED_VET_Passive_31_rgb_fr,
	ED_VET_Passive_32_rgb_fr = ED_VET_Passive_32_rgb_fr,
	ED_VET_Passive_33_rgb_fr = ED_VET_Passive_33_rgb_fr,
	ED_VET_Passive_34_rgb_fr = ED_VET_Passive_34_rgb_fr,
	ED_VET_Passive_35_rgb_fr = ED_VET_Passive_35_rgb_fr,
	ED_VET_Passive_36_rgb_fr = ED_VET_Passive_36_rgb_fr,
	ED_VET_Passive_37_rgb_fr = ED_VET_Passive_37_rgb_fr,
	ED_VET_Passive_38_rgb_fr = ED_VET_Passive_38_rgb_fr,
	ED_VET_Passive_39_rgb_fr = ED_VET_Passive_39_rgb_fr,
	ED_VET_Passive_40_rgb_fr = ED_VET_Passive_40_rgb_fr,
	ED_VET_Passive_41_rgb_fr = ED_VET_Passive_41_rgb_fr,
	ED_VET_Passive_42_rgb_fr = ED_VET_Passive_42_rgb_fr,
	ED_VET_Passive_43_rgb_fr = ED_VET_Passive_43_rgb_fr,

	ED_OGR_Blitz_0_rgb_fr = ED_OGR_Blitz_0_rgb_fr,
	ED_OGR_Blitz_1_rgb_fr = ED_OGR_Blitz_1_rgb_fr,
	ED_OGR_Blitz_2_rgb_fr = ED_OGR_Blitz_2_rgb_fr,
	ED_OGR_Blitz_3_rgb_fr = ED_OGR_Blitz_3_rgb_fr,

	ED_OGR_Aura_0_rgb_fr = ED_OGR_Aura_0_rgb_fr,
	ED_OGR_Aura_1_rgb_fr = ED_OGR_Aura_1_rgb_fr,
	ED_OGR_Aura_2_rgb_fr = ED_OGR_Aura_2_rgb_fr,
	ED_OGR_Aura_3_rgb_fr = ED_OGR_Aura_3_rgb_fr,

	ED_OGR_Ability_0_rgb_fr = ED_OGR_Ability_0_rgb_fr,
	ED_OGR_Ability_1_rgb_fr = ED_OGR_Ability_1_rgb_fr,
	ED_OGR_Ability_1_1_rgb_fr = ED_OGR_Ability_1_1_rgb_fr,
	ED_OGR_Ability_1_2_rgb_fr = ED_OGR_Ability_1_2_rgb_fr,
	ED_OGR_Ability_1_3_rgb_fr = ED_OGR_Ability_1_3_rgb_fr,
	ED_OGR_Ability_2_rgb_fr = ED_OGR_Ability_2_rgb_fr,
	ED_OGR_Ability_2_1_rgb_fr = ED_OGR_Ability_2_1_rgb_fr,
	ED_OGR_Ability_2_2_rgb_fr = ED_OGR_Ability_2_2_rgb_fr,
	ED_OGR_Ability_2_3_rgb_fr = ED_OGR_Ability_2_3_rgb_fr,
	ED_OGR_Ability_3_rgb_fr = ED_OGR_Ability_3_rgb_fr,
	ED_OGR_Ability_3_1_rgb_fr = ED_OGR_Ability_3_1_rgb_fr,
	ED_OGR_Ability_3_2_rgb_fr = ED_OGR_Ability_3_2_rgb_fr,
	ED_OGR_Ability_3_3_rgb_fr = ED_OGR_Ability_3_3_rgb_fr,
	ED_OGR_Ability_3_4_rgb_fr = ED_OGR_Ability_3_4_rgb_fr,

	ED_OGR_Keystone_1_rgb_fr = ED_OGR_Keystone_1_rgb_fr,
	ED_OGR_Keystone_1_1_rgb_fr = ED_OGR_Keystone_1_1_rgb_fr,
	ED_OGR_Keystone_1_2_rgb_fr = ED_OGR_Keystone_1_2_rgb_fr,
	ED_OGR_Keystone_1_3_rgb_fr = ED_OGR_Keystone_1_3_rgb_fr,
	ED_OGR_Keystone_2_rgb_fr = ED_OGR_Keystone_2_rgb_fr,
	ED_OGR_Keystone_2_1_rgb_fr = ED_OGR_Keystone_2_1_rgb_fr,
	ED_OGR_Keystone_2_2_rgb_fr = ED_OGR_Keystone_2_2_rgb_fr,
	ED_OGR_Keystone_2_3_rgb_fr = ED_OGR_Keystone_2_3_rgb_fr,
	ED_OGR_Keystone_3_rgb_fr = ED_OGR_Keystone_3_rgb_fr,
	ED_OGR_Keystone_3_1_rgb_fr = ED_OGR_Keystone_3_1_rgb_fr,
	ED_OGR_Keystone_3_2_rgb_fr = ED_OGR_Keystone_3_2_rgb_fr,
	ED_OGR_Keystone_3_3_rgb_fr = ED_OGR_Keystone_3_3_rgb_fr,

	ED_OGR_Passive_0_rgb_fr = ED_OGR_Passive_0_rgb_fr,
	ED_OGR_Passive_1_rgb_fr = ED_OGR_Passive_1_rgb_fr,
	ED_OGR_Passive_2_rgb_fr = ED_OGR_Passive_2_rgb_fr,
	ED_OGR_Passive_3_rgb_fr = ED_OGR_Passive_3_rgb_fr,
	ED_OGR_Passive_4_rgb_fr = ED_OGR_Passive_4_rgb_fr,
	ED_OGR_Passive_5_rgb_fr = ED_OGR_Passive_5_rgb_fr,
	ED_OGR_Passive_6_rgb_fr = ED_OGR_Passive_6_rgb_fr,
	ED_OGR_Passive_7_rgb_fr = ED_OGR_Passive_7_rgb_fr,
	ED_OGR_Passive_8_rgb_fr = ED_OGR_Passive_8_rgb_fr,
	ED_OGR_Passive_9_rgb_fr = ED_OGR_Passive_9_rgb_fr,
	ED_OGR_Passive_10_rgb_fr = ED_OGR_Passive_10_rgb_fr,
	ED_OGR_Passive_11_rgb_fr = ED_OGR_Passive_11_rgb_fr,
	ED_OGR_Passive_12_rgb_fr = ED_OGR_Passive_12_rgb_fr,
	ED_OGR_Passive_13_rgb_fr = ED_OGR_Passive_13_rgb_fr,
	ED_OGR_Passive_14_rgb_fr = ED_OGR_Passive_14_rgb_fr,
	ED_OGR_Passive_15_rgb_fr = ED_OGR_Passive_15_rgb_fr,
	ED_OGR_Passive_16_rgb_fr = ED_OGR_Passive_16_rgb_fr,
	ED_OGR_Passive_17_rgb_fr = ED_OGR_Passive_17_rgb_fr,
	ED_OGR_Passive_18_rgb_fr = ED_OGR_Passive_18_rgb_fr,
	ED_OGR_Passive_19_rgb_fr = ED_OGR_Passive_19_rgb_fr,
	ED_OGR_Passive_20_rgb_fr = ED_OGR_Passive_20_rgb_fr,
	ED_OGR_Passive_21_rgb_fr = ED_OGR_Passive_21_rgb_fr,
	ED_OGR_Passive_22_rgb_fr = ED_OGR_Passive_22_rgb_fr,
	ED_OGR_Passive_23_rgb_fr = ED_OGR_Passive_23_rgb_fr,
	ED_OGR_Passive_24_rgb_fr = ED_OGR_Passive_24_rgb_fr,
	ED_OGR_Passive_25_rgb_fr = ED_OGR_Passive_25_rgb_fr,
	ED_OGR_Passive_26_rgb_fr = ED_OGR_Passive_26_rgb_fr,
	ED_OGR_Passive_27_rgb_fr = ED_OGR_Passive_27_rgb_fr,
	ED_OGR_Passive_28_rgb_fr = ED_OGR_Passive_28_rgb_fr,
	ED_OGR_Passive_29_rgb_fr = ED_OGR_Passive_29_rgb_fr,
	ED_OGR_Passive_30_rgb_fr = ED_OGR_Passive_30_rgb_fr,

}
