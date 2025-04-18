---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

local ppp___ppp = "\n+++-------------------------------------------------+++"
local become_invis_drop_all_enemy_aggro_fr = "- Devenir invisible enlève toute l'aggro enemie : Les ennemis de mêlée réagissent immédiatement en sélectionannt une autre cible si possible, les ennemis de tir arrêtent de tirer, puis réagissent si possible."
local can_be_refr_dur_active_dur_fr = "- Peut être rafraîchi pendant la durée active."
local doesnt_stack_aura_psy_fr = "- Ne se cumule pas avec la même Aura d'un autre Psyker."
local doesnt_interact_w_c_a_r_from_curio_fr = "- N'interagit pas avec la Régénération de Capacité de Combat des Curiosités qui ne réduit que le temps de recharge maximum d'une Capacité de Combat."
local dmg_is_incr_by_fr = "- Les dégâts sont augmentés par la déchirure et la fragilité, \"Brise-crâne\" (pendant l'étourdissement) et les buffs de \"Psychisme augmenté\", \"Autorisation empyréenne\", \"Choc empyrique\", \"Perturbation du destin\", \"Élan maléfique\", \"Synchronisation parfaite\", \"Regard de divination\" (y compris \"Précognition\"), \"Chevaucheur de warp\", aura \"Présence cinétique\" (contre les Elites), et un petit noeud de Dégâts à Distance."
local procs_on_succss_dodging_fr = "- S'active lors d'une esquive réussie des attaques ennemies de mêlée ou à distance (sauf les tireurs, faucheurs, tireurs d'élite), et des attaques désactivateurs (saut du Pox Hound, filet du Trapper, saisie du Mutant)."
local red_both_tghns_n_health_dmg_fr = "- Réduit à la fois les Dégâts de Robustesse et de Santé subis."
local stacks_add_w_oth_dmg_fr = "- S'additionne avec d'autres bonus de dégâts, et se multiplie avec les buffs de de Puissance des Bénédictions d'arme."
local stacks_mult_w_other_dmg_red_buffs_fr = "- Se multiplie avec d'autres buffs de réduction de dégâts."
local succss_dodge_means_fr = "- \"Esquive réussie\" signifie esquiver une attaque ennemie verrouillée sur le joueur avec une action d'esquive ou de glissade."
local warp_attc_refers_to_fr = "- \"Attaque Warp\" fait référence à une liste d'attaques dont les types de dégâts sont désignés comme \"types de dégâts Warp\": attaques activées des épées de force, attaques principales des bâtons de force, attaques secondaires des bâtons de force, électrocution (\"Éclatement\", attaque secondaire du bâton électrokinétique, action spéciale de la massue choc), \"Embrasement d'âme\", \"Rupture cérébrale\"/\"Explosion cérébrale\", \"Irruption\", et \"Rupture de warp\"."
local z_eff_of_this_tougn_rep_fr = "- L'efficacité de cette régénrération de Robustesse est affectée par certains débuffs du joueur comme le gaz toxique."
local z_ghost_hitnrun_n_stripp_fr = "- Les Bénédictions d'arme \"Fantôme\", \"Délit de fuite\" et \"Mise à nu\" peuvent déclencher ce talent (uniquement contre les attaques à distance)."

--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ ++PSYKER++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Explosion cérébrale +]--
	local ED_PSY_Blitz_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne peut pas infliger de Coup Critique.",
		"- Dégâts de base : 900.",
		"- Touche toujours un Point faible.",
		-- "- Dégâts plus élevés contre Maniaques et Implacables.",
		"{#color(255, 35, 5)}- Vous pourriez exploser ! Ne l'utilisez pas si le niveau de Péril est de 97% ou plus !{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1 - Rupture cérébrale +]--
	local ED_PSY_Blitz_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne peut pas infliger de coup critique.",
		"- Dégâts de base : 1350.",
		"- Atteint toujours un point faible.",
		-- "- Dégâts plus élevés contre les Maniaques et les Implacables.",
		"- L'attaque principale applique un léger étourdissement à 50 % de charge. Ne peut pas étourdir : Bombardiers, Mutileur, Mutants, Ogryns, Poxbursters, Ragers, Squameux Shotgunners ou Monstrosités.",
		-- "- À l'impact, étourdit tous les ennemis sauf les Mutants, les Monstrosities et les ennemis avec un bouclier de vide actif.",
		dmg_is_incr_by_fr,
		"{#color(255, 35, 5)}- Vous pourriez exploser ! Ne pas utiliser si le niveau de péril est de 97 % ou plus !{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1-1 - Écho cinétique +]--
	local ED_PSY_Blitz_1_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Réduit le temps de charge de Rupture Cérébrale pour les attaques principales et secondaires.",
		"- La réduction du temps de charge s'additionne avec le buff \"Psychisme augmenté\" et Stimulant de Célérité.",
		"- Se multiplie avec les bonus associés de \"Par la fissure de l'os\", \"Éruption apaisante\", \"Détermination empirique\", \"Tranquilité intérieure\", \"Ancrage dans la réalité\", les petits noeuds de Résistance au Péril, Stimulant de Combat et le mutateur \"Blitz augmenté\".",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1-2 - Kinetic Flayer +]--
	local ED_PSY_Blitz_1_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les attaques \"Rupture cérébrale\" déclenchées par le Talent bénéficient du bonus de dégâts \"Psychisme augmenté\" sans consommer de cumuls.",
		"{#color(255, 35, 5)}- Il y a actuellement un bug : Lorsque le Péril est supérieur à 97%, le Talent se déclenche et un temps de recharge de 15 secondes commence, mais l'ennemi ne reçoit AUCUN dégât du tout.{#reset()}",
	}, "\n"), enhdesc_col)
	
	   --[+ Blitz 2 - Éclatement +]--
	local ED_PSY_Blitz_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne peut pas infliger de coup critique.",
		"- Portée maximale : 15 mètres.",
		"- Ne cible que la zone du torse.",
		-- "- Ne peut pas étourdir les Monstruosités et les ennemis avec bouclier de vide actif.",
		-- "- Pénétration d'armure moyenne pour toutes les armures, Pénétration d'armure faible contre les carapaces.",
		dmg_is_incr_by_fr,
		"{#color(255, 35, 35)}- Vous pouvez seulement exploser si vous portez votre niveau de péril exactement à 100 % avec une attaque chargée et utilisez en même temps une attaque normale !{#reset()}",
		-- "{#color(255, 35, 35)}- Si vous le jouez comme un imbécile, attendez vous à vous faire insulter par votre équipe.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2-1 - Orage Électrique +]--
	local ED_PSY_Blitz_2_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'applique à la fois aux actions primaires et secondaires d'Eclatement.",
		"- Augmente le rayon maximum dans lequel \"Éclatement\" peut s'enchaîner à une autre cible de 5 à 6 mètres.",
		"- Cela augmente également la portée de ciblage de 1 mètre, jusqu'à 16 mètres.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2-2 - Dégénérescence +]--!!!
	local ED_PSY_Blitz_2_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Se multiplie/s avec d'autres malus de dégâts subis comme \"Choc empyrique\" ou \"Distraction utile\" et \"On les ramollit\" d'Ogryn, ou \"Ciblage\" du vétéran, avec les bonus de dégâts, et avec les bonus de Puissance des Bénédictions d'arme.",
		"- Ne se cumule pas avec le même malus appliqué par un autre Psyker.",
		"- Toute source qui peut appliquer un effet d'électrocution aux ennemis mais qui n'est pas Éclatement ou Éclatement Chargée ne déclenchera pas Dégénérescence.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2-3 - Éclatement Chargée +]--
	local ED_PSY_Blitz_2_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- 8 dégâts de base par tic.",
		"- La fenêtre de dégâts dure jusqu'à 2 secondes.",
		"- L'état électrocuté dure jusqu'à 2 secondes après le dernier tic de dégâts.",
	}, "\n"), enhdesc_col)
	
	--[+ Blitz 3 - Irruption +]--
	local ED_PSY_Blitz_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Peut infliger un Coup Critique. Peut atteindre jusqu'à 2 ennemis.",
		"- Coûte 1 munition et la recharge toutes les 3 secondes.",
		-- "- Dégâts très faibles contre Carapace et faibles contre Implacapbles.",
		"- Affecté par les bonus de réduction du coût de Péril des Talents respectifs et de Stimulant de Combat.",
		dmg_is_incr_by_fr,
		"{#color(255, 35, 5)}- Vous pourriez exploser ! Ne l'utilisez pas si le niveau de Péril est de 100 % !{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3-1 - Éclats éthérés +]--
	local ED_PSY_Blitz_3_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Si \"Psychisme augmenté\" est actif, cela est doublé, jusqu'à 6 cibles.",
		"- L'armure Carapace ne peut pas être transpercée..",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3-2 - Quick Shards +]--
	local ED_PSY_Blitz_3_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Réduit le temps de recharge des projectiles de 3 à 2,1 secondes par projectile.",
		"- N'interagit pas avec le mutateur \"Blitz augmenté\".",
	}, "\n"), enhdesc_col)

--[+ +AURA+ +]--
	--[+ Aura 0 - The Quickening +]--
	local ED_PSY_Aura_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec la Régénération des Capacités de Combat des Curiosités et les mutateurs de mission qui réduisent les temps de recharge des Capacités de 20%.",
		-- "- Cela réduit le Temps de Rechargement Max de \"Cri de défoulement\"/\"Fureur du psykokinésiste\" à 27,75 secondes, de \"Regard de divination\" à 23,125 secondes et de \"Bouclier télékinétique\" à 37 secondes.",
		doesnt_stack_aura_psy_fr,
	}, "\n"), enhdesc_col)
	
	--[+ Aura 1 - Présence cinétique +]--
	local ED_PSY_Aura_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
		doesnt_stack_aura_psy_fr,
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Présence prophétique +]--
	local ED_PSY_Aura_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec la Régénération des Capacités de Combat des Curios et les mutateurs de mission qui réduisent les temps de recharge des Capacités de 20%.",
		"- Cela réduit les temps de recharge de \"Cri de défoulement\"/\"Fureur du psykokinésiste\" à 27 secondes, de \"Regard de divination\" à 22,5 secondes et de \"Bouclier télékinétique\" à 36 secondes.",
		doesnt_stack_aura_psy_fr,
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Prescience +]--
	local ED_PSY_Aura_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'applique à toutes les attaques pouvant infliger un Coup Critique.",
		"- S'additionne avec les autres sources de Chances de Coup Critique.",
		doesnt_stack_aura_psy_fr,
	}, "\n"), enhdesc_col)

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Fureur du psykokinésiste +]--
	local ED_PSY_Ability_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Peut être utilisée pour empêcher l'auto-explosion du Psyker.",
		"- L'onde Warp traverse les objets et se propage jusqu'à 30 mètres. Vous pouvez donc faire tomber le Cerbère d'un Allié à travers le mur.",
		"- Étourdit les ennemis dans un rayon de 5 mètres devant le Psyker.",
	}, "\n"), enhdesc_col)
	
	--[+ Ability 1 - Cri de défoulement +]--
	local ED_PSY_Ability_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Cible toujours la zone du torse.",
		"- Peut être utilisée pendant une l'animation d'explosion, empêchant ainsi l'auto-explosion du Psyker.",
		"- L'onde Warp traverse les objets et se propage jusqu'à 30 mètres.",
		"- Étourdit les ennemis dans un rayon de 5 mètres devant le Psyker.",
		"- La force d'Étourdissement évolue avec le Péril, atteignant sa force maximale à 100 % de Péril. Peut infliger jusqu'à des Étourdissements légers contre les Broyeurs. Ne peut pas étourdir les Mutants, les Montruiosités et les ennemis avec un bouclier Void actif.",
		"- La force d'Étourdissement diminue avec la distance, perdant presque toute son efficacité à 30 mètres.",
		"- La force d'Étourdissement est également affectée par certaines Bénédictions d'armes : \"Exécuteur\", \"Massacre\", \"Supériorité\", \"Puissance instable\", etc. S'applique uniquement lorsque l'arme correspondante est équipée lors du cri.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Éruption apaisante +]--
	local ED_PSY_Ability_1_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Se multiplie avec les buffs de réduction du coût de Péril associés de \"Par la fissure de l'os\", \"Détermination empirique\", \"Tranquilité intérieure\", \"Écho cinétique\", les petits noeuds de Résistance au Péril et Stimulant de Combat.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Rupture de warp +]--
	local ED_PSY_Ability_1_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- A la même Pénétration d'armure contre tous les types d'armure, perd des dégâts avec la distance.",
		"- Perd des dégâts avec la distance.",
		"- Les dégâts de base infligés augmentent avec le Péril :",
		"_______________________________",
		"Péril:        0%|   25%|   50%|   75%|   100%",
		"Dégâts:  100|     125|    150|    175|    200",
		"_______________________________",
		"- Les dégâts sont affectés par les bonus de dégâts :",
		"-- des Talents : \"Perturbation du destin\", \"Autorisation empyréenne\", \"Choc empyrique\" (lorsqu'affaibli), \"Élan maléfique\", \"Présence cinétique\" (vs Elites), \"Synchronisation parfaite\" et \"Chevaucheur de warp\".",
		"-- des Bénédictions des Armes :",
		"--- Mêlée, si déclenchée avec une arme avant l'activation de Rupture de warp : \"Exécuteur\", \"Haute tension\" (vs Électrocutés), \"Brise-crâne\" (vs Étourdis), \"Massacre\", \"Supériorité\" et \"Puissance instable\".",
		"--- À distance, si déclenchée avec une arme avant l'activation de Rupture de warp : \"Embrasement\", \"Barrage incessant\", \"Crache-mort\", \"Dum-dum\", \"Execution\" (vs Étourdis), \"Frénésie de feu\", \"À toute allure\", \"Sans répit\" (vs Étourdis), \"Feu d'entrave\", \"Poudre résiduelle\" et \"Courir et tirer\" (lorsqu'en Sprint).",
	}, "\n"), enhdesc_col)
	
	--[+ Ability 1-3 - Warp Creeping Flames +]--
	local ED_PSY_Ability_1_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- La quantité de cumuls d'Embrasement d'âme appliqués aux ennemis évolue avec le Péril :",
		"_______________________________",
		"Cumuls: 1|       2|       3|       4|       5|       6",
		"Péril:   0%|~17%|~34%|~50%|~67%|~84%",
		"_______________________________",
		-- "- Dure 8 secondes. Se déclenche toutes les 0,75 secondes.",
		-- "- Rafraîchit la durée à l'application des cumuls.",
		"- Dure 8 secondes. Se déclenche toutes les 0,75 secondes. Rafraîchit la durée à l'application des cumuls.",
		"- S'additionne avec les autres sources d'Embrasement d'âme.",
		"- Les dégâts d'Embrasement d'âme sont augmentés par déchirure et Fragilité, par les bénédictions des Armes actuellement équipées, et par les bonus des Talents : \"Perturbation du destin\", \"Autorisation empyréenne\", \"Élan maléfique\", \"Présence cinétique\", \"Synchronisation parfaite\" et \"Chevaucheur de warp\".",
		"--- Mêlée : \"Exécuteur\", \"Haute tension\" (vs Électrocutés), \"Brise-crâne\" (vs Étourdis), \"Massacre\", \"Supériorité\", \"Uncanny Strike\" et \"Puissance instable\".",
		"--- À distance : \"Embrasement\", \"Crache-mort\", \"Dum-dum\", \"Execution\" (vs Étourdis), \"Frénésie de feu\", \"Sans répit\" (vs Étourdis), \"Feu d'entrave\" et \"Courir et tirer\" (lorsqu'en Sprint).",
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Bouclier télékinétique +]--
	local ED_PSY_Ability_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Santé du Bouclier : 20.",
		"- Dimensions : 6 mètres de large, 3,5 mètres de haut.",
		"- Portée de placement maximale : 10 mètres.",
		"- Temps de placement total : 0,6 seconde.",
		"- Vous pouvez maintenir le bouton de l'Aptitude pour prévisualiser l'emplacement et vous pouvez l'annuler en bloquant.",
		"- Bloque : les attaques à distance à trajectoire rectiligne, les projectiles (grenades des Bombardiers), les filets (Trappers) et les impacts directs des lance-flammes (Incendiaires)",
		"- Les zones d'impact au sol et les nuages de gaz toxique se propagent à travers le bouclier.",
		"- Ne bloque pas l'explosion de Crache-Peste.",
		"- Fonctionnement de la santé du bouclier :",
		"-- Chaque attaque à distance entrante est considérée comme infligeant 1 dégât. Après avoir subi des dégâts, le bouclier ne subit plus aucun dégât pendant les 0,33 secondes suivantes.",
	}, "\n"), enhdesc_col)
	
	--[+ Ability 2-1 - Bolstered Shield +]--
	local ED_PSY_Ability_2_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Le temps de recharge de la deuxième charge ne commence qu'une fois que la première charge a terminé son temps de recharge.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Enervating Threshold +]--
	local ED_PSY_Ability_2_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- N'inflige aucun dégât.",
		"- Applique un Étourdissement toutes les 0,55 secondes.",
		"- L'effet d'Électrocution dure 3 secondes.",
		"- Peut Étourdir tous les ennemis sauf les Monstrosités.",
		"- Applique toujours l'effet aux Spéciaux lorsqu'ils entrent en contact avec le bouclier.",
		"- Le bouclier subit 8 dégâts par impact direct au corps des Spéciaux, disparaissant après 3 Spéciaux « bloqués ». Respecte la fenêtre de temps de recharge des dégâts de 0,33 seconde, ce qui signifie que toute quantité d'impacts directs au corps des Spéciaux qui se produisent dans un délai de 0,33 seconde les uns des autres ne compte que comme 1 impact subi.",
		"{#color(255, 35, 5)}- Il existe actuellement un bug : les Spéciaux qui touchent le bouclier ne lui infligent que 1 dégât au lieu de 8.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - Telekine Dome +]--
	local ED_PSY_Ability_2_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- La sphère a un rayon de 6 mètres.",
		"- Protège des attaques ennemies à tous les degrés.",
		"- A les mêmes propriétés que le bouclier plat.",
		"- Subit également des dégâts à distance de la même manière.",
		"",
		"{#color(255, 35, 5)}- Il existe actuellement un bug : les Mutants qui sont esquivés avec succès à l'intérieur du dôme sont toujours Étourdis.{#reset()}",
	}, "\n"), enhdesc_col)
	
	--[+ Ability 2-4 - Sanctuary +]--
	local ED_PSY_Ability_2_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Cet effet de régénération peut se cumuler si plusieurs sphères se chevauchent.",
		z_eff_of_this_tougn_rep_fr,
		stacks_mult_w_other_dmg_red_buffs_fr,
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Regard de divination +]--
	local ED_PSY_Ability_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Pendant la phase de surcharge de l'Aptitude, le temps de recharge est mis en pause. Cependant, son temps de recharge restant peut toujours être réduit activement en déclenchant \"Aura du psychokinésiste\" ou en utilisant un Stimulant Concentration.",
		-- "- Son temps de rechargement maximal peut être réduit par \"Présence prophétique\", \"Siphon de Warp\", la Régénération des Capacités de Combat des Curiosités et par les mutateurs de mission qui réduisent les temps de recharge des Capacités de 20%.",
		"- Son temps de rechargement maximal peut être réduit par \"Présence prophétique\", \"Siphon de Warp\", la Régénération des Capacités de Combat des Curiosités et par les mutateurs de mission.",
		"- Après la fin de la surcharge, accorde une période de grâce de 1,5 seconde pendant laquelle les actions générant du Péril peuvent être exécutées sans déclencher l'auto-explosion du Psyker.",
	}, "\n"), enhdesc_col)

	-- [+ Ability 3-1 - Endurance +]--
	local ED_PSY_Ability_3_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne persiste pas après la phase de surcharge.",
		stacks_mult_w_other_dmg_red_buffs_fr,
	}, "\n"), enhdesc_col)

	-- [+ Ability 3-2 - Précognition +]--
	local ED_PSY_Ability_3_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les autres bonus de dégâts de Point faible et Finesse.",
		"- Peut se déclencher plusieurs fois par attaque qui transperce plusieurs cibles.",
		"- Ces bonus de dégâts cumulatifs sont actifs immédiatement pendant la phase de surcharge.",
	}, "\n"), enhdesc_col)
	
	--[+ Ability 3-3 - Vitesse de warp +]--
	local ED_PSY_Ability_3_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne persiste pas après la phase de surcharge.",
		"- S'additionne avec les bonus de vitesse de déplacement de \"Perturbation du destin\", \"Trempe\", le petit noeud de vitesse de déplacement et les Bénédictions d'armes comme \"Vrombissement\".",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-4 - Ancrage dans la réalité +]--
	local ED_PSY_Ability_3_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne persiste pas après la phase de surcharge.",
		"- Se multiplie avec les buffs de réduction du coût de Péril de \"Par la fissure de l'os\", \"Détermination empirique\", \"Écho cinétique\", les petits noeuds de Résistance au Péril et Stimulant de Combat.",
		"- Peut se cumuler avec \"Tranquilité intérieure\" uniquement si le Psyker récupère des charges Warp pendant la surcharge.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-5 - Warp Unbound +]--
	local ED_PSY_Ability_3_5_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Après la fin de la surcharge, permet au Psyker d'exécuter des actions générant du Péril à 100% de Péril pendant 10 secondes sans déclencher l'auto-explosion.",
		"- Notez que lorsque cette durée de 10 secondes se termine, la période de grâce de base de Regard de Divination s'applique toujours, offrant 1,5 seconde supplémentaire du même effet.",
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Siphon de Warp +]--
	local ED_PSY_Keystone_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur_fr,
		"- Interagit avec la Régénération des Capacités de Combat des Curiosités et les autres Réductions du Temps de Rechargement Maximal de \"Présence prophétique\" ou les mutateurs de mission qui réduisent les temps de recharge des Capacités de 20%.",
		"- Par exemple, lorsqu'un Psyker avec l'aura \"Présence prophétique\" (-0,1), 4 charges Warp et 12% de Régénération des Capacités de Combat des Curiosités (-0,12) utilise \"Bouclier télékinétique\", son Temps de Rechargement Maximal de 40 secondes est d'abord réduit par la statistique de la Curiosités et l'aura à 40+40x(-0,1-0,12)=31,2 secondes. Ce Temps de Rechargement Max est ensuite pris en compte par Siphon du Warp et réduit davantage par la réduction basée sur les charges Warp à 31,2-31,2x(0,075x4)=21,84 secondes (arrondis HUD : 22 secondes).",
		-- "- N'interagit pas avec l'effet de réduction du temps de recharge restant de Concentration Stimm qui augmente le taux de rechargement de base des Capacités de 1 seconde par seconde du personnage de 3 secondes supplémentaires par seconde.",
	}, "\n"), enhdesc_col)
	
	--[+ Keystone 1-1 - Tranquilité intérieure +]--
	local ED_PSY_Keystone_1_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- se cumule de manière linéaire avec lui-même (1 charge Warp = 6% de réduction du coût de Péril, 2 = 12%, 3 = 18%, etc.) et de manière multiplicative avec les autres buffs de réduction du coût de Péril de \"Par la fissure de l'os\", \"Détermination empirique\", \"Écho cinétique\", les petits noeuds de Résistance au Péril et Stimulant de Combat.",
		"- Étant donné que toutes les charges Warp sont utilisées lors de l'utilisation d'une Capacité de Combat, le Talent ne peut pas se cumuler immédiatement avec \"Éruption apaisante\" et \"Ancrage dans la réalité\" (sauf si le Psyker récupère des charges Warp pendant leur durée active).",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Essence Harvest +]--
	local ED_PSY_Keystone_1_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- N'augmente pas la quantité de Robustesse régénérée.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Autorisation empyréenne +]--
	local ED_PSY_Keystone_1_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - In Fire Reborn +]--
	local ED_PSY_Keystone_1_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Vous gagnez une charge Warp lorsqu'un ennemi actuellement affecté par Embrasement d'âme est tué soit par Embrasement d'âme, soit par le Psyker, soit par un allié.",
		"- Cet effet n'a pas de limite de portée et bénéficie à tous les Psykers équipés de ce talent.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-5 - Psychic Vampire +]--
	local ED_PSY_Keystone_1_5_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Si plusieurs Psykers sont en Syntonie les uns avec les autres, ils obtiennent tous une charge Warp lorsque le Talent se déclenche pour l'un d'entre eux.",
	}, "\n"), enhdesc_col)
	
	--[+ Keystone 1-6 - Warp Battery +]--
	local ED_PSY_Keystone_1_6_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente le nombre maximal de charges Warp que le Psyker peut détenir de 4 à 6.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Psychisme augmenté - Empowered Rupture cérébrale +]--
	local ED_PSY_Keystone_2_0_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- Consomme des Empilements lorsque l'attaque touche un ennemi.",
		"- S'additionne avec les autres bonus de dégâts applicables.",
		"- S'additionne avec \"Écho cinétique\" et se multiplie/s'additionne avec les deux réductions du temps de charge du Stimulant de Célérité.",
		"_______________________________",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Psychisme augmenté - Empowered Éclatement +]--
	local ED_PSY_Keystone_2_0_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- Consomme des Empilements lors du relâchement.",
		"- S'additionne avec les autres bonus de dégâts applicables.",
		"- Se multiplie avec le bonus de Stimulant de Célérité.",
		"_______________________________",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Psychisme augmenté - Empowered Irruption +]--
	local ED_PSY_Keystone_2_0_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- Consomme des Empilements par projectile lancé.",
		"- Permet de lancer à 100% de Péril.",
		"- Double le nombre de cibles.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - Bio-Lodestone +]--
	-- local ED_PSY_Keystone_2_1_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)
	
--[+ Keystone 2-2 - Psychic Leeching +]--
	local ED_PSY_Keystone_2_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Se déclenche lorsque \"Rupture cérébrale\" touche, lorsque \"Éclatement\" commence à être lancé ou après une charge, et lorsque \"Irruption\" invoque un projectile.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-3 - Overpowering Souls +]--
	-- local ED_PSY_Keystone_2_3_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 2-4 - Charged Up +]--
	-- local ED_PSY_Keystone_2_4_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3 - Perturbation du destin +]--
	local ED_PSY_Keystone_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Infliger des dégâts aux ennemis marqués rafraîchit la durée du Talent.",
		"- Cibles valides : Brutes Dreg/Squameux, Traqueurs Dreg/Squameux, Tireurs Squameux, Furax, Plombeurs, Mitrailleurs et Mutileur.",
		"- S'additionne avec les bonus de vitesse de déplacement de \"Trempe\", \"Vitesse de warp\", le noeud de vitesse de déplacement et les Bénédictions d'armes comme \"Accélérer\".",
		"- Les bonus de Précision s'additionne avec d'autres bonus de dégâts associés.",
		"- Peut être rafraîchi pendant la durée active en tuant ou en étourdissant avec succès l'ennemi marqué ou par les dégâts de d'Embrasement d'âme, Brûlure et Saignement sur la cible marquée.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Perfectionism +]--
	-- local ED_PSY_Keystone_3_1_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Providence subtilisée +]--
	local ED_PSY_Keystone_3_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne à \"Par la fissure de l'os\" et  \"Quiétude par le massacre\". Cet effet peu se déclencher en même temps que \"Méditation de guerre\" atténuant 15% de péril au total.",
	}, "\n"), enhdesc_col)

--[+ Keystone 3-3 - Lingering Influence +]--
	-- local ED_PSY_Keystone_3_3_rgb_fr = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3-4 - Cruel Fortune +]--
	local ED_PSY_Keystone_3_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Se déclenche sur les attaques de mêlée, à distance, \"Rupture cérébrale\" ou \"Irruption\".",
	}, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Soulstealer +]--
	local ED_PSY_Passive_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Si l'attaque Warp est une attaque de mêlée, la quantité de 7,5 % du Talent est ajoutée aux 5 % de la Robustesse maximale gagnée lors d'un kill en mêlée.",
		"-- Par exemple, un Psyker avec 96 Robustesse maximale tuant deux ennemis avec une attaque d'épée Force activée récupère 96x(0,1+0,15)=24 Robustesse.",
		z_eff_of_this_tougn_rep_fr,
		warp_attc_refers_to_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Trempe +]--
	local ED_PSY_Passive_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne se déclenche qu'une seule fois par attaque critique, quel que soit le nombre d'ennemis touchés.",
		z_eff_of_this_tougn_rep_fr,
		"- Génère toujours 1 cumul par attaque critique, quel que soit le nombre d'ennemis touchés.",
		"-- Les cumuls durent 4 secondes et peuvent être renouvelés pendant cette durée.",
		"-- S'additionne avec les bonus de vitesse de déplacement de \"Perturbation du destin\", \"Vitesse de warp\", le petit noeud de vitesse de déplacement et les Bénédictions d'armes comme \"Vrombissement\".",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 3 - Quietude +]--
	local ED_PSY_Passive_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Restaure 0,5 % de Robustesse maximale par 1 % de Péril apaisé.",
		"- Se déclenche sur dissipation active ou passive.",
		"- Par exemple, un Psyker avec 109 Robustesse maximale apaisant de 59 % de Péril réel à 0 % de Péril, restaure 59x(109x0,005)=32,15 Robustesse (l'interface utilisateur arrondit à 33).",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Warp Expenditure +]--
	local ED_PSY_Passive_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Restaure 0,25 % de Robustesse maximale par 1 % de Péril généré.",
		"- Les bonus de Réduction du Coût en Péril de \"Éruption apaisante\", \"Tranquilité intérieure\", \"Écho cinétique\", \"Ancrage dans la réalité\" et les noeuds de Résistance au Péril réduisent l'efficacité de ce Talent !",
		"- Par exemple, un Psyker avec 90 Robustesse maximale qui génère 44 % de Péril, restaure 44x(90x0,0025)=9,9 Robustesse. Cependant, le même Psyker générant 44 % de Péril avec 15 % de Réduction du Coût en Péril de 3 petits noeuds de Résistance au Péril, ne restaure que 44x(90x0,0025x0,95^3)=8,488 Robustesse à la place.",
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Perilous Combustion +]--
	local ED_PSY_Passive_5_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les cumuls sont appliqués à une distance maximale de 4 mètres de l'ennemi tué.",
		"- Ne se déclenche pas sur les Élites ou les Spéciaux tués par les dégâts de Embrasement d'âme du Psyker.",
		"- Se déclenche sur les éliminiations par Brûlure ou Saignement.",
		"- Embrasement d'âme :",
		"-- Dure 8s.",
		"-- Identique aux autres sources d'Embrasement d'âme.",
		"-- Se déclenche toutes les 0,75 secondes.",
		"-- Rafraîchit la durée lors de l'application du cumul.",
		"-- Pénétration d'armure très élevés dans l'ensemble, Pénétration d'armure très faible contre Carapace.",
		"{#color(255, 35, 5)}- Les cumuls s'appliquent aux Hôtes Démoniaques !{#reset()}",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 6 - Synchronisation parfaite +]--
	local ED_PSY_Passive_6_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Toucher des ennemis avec une attaque de mêlée, à distance ou d'Irruption critique accorde des cumuls.",
		"- Génère plusieurs cumuls par attaque lors d'un transpercement.",
		"- Les Cumuls peuvent être rafraîchis pendant la durée d'activité.",
		stacks_add_w_oth_dmg_fr,
		warp_attc_refers_to_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Méditation de guerre +]--
	local ED_PSY_Passive_7_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Supprime 10 % de Péril de la quantité de Péril actuelle.",
		"- A 10 % de chances de se déclencher lorsque des ennemis meurent des attaques de mêlée et à distance du Psyker, des capacités Infligeant des dégâts, des DoT et lorsqu'ils sont poussés par-dessus les rebords dans les zones de mort de la carte par le Psyker.",
		"- Se déclenche en plus de \"Par la fissure de l'os\" et \"Quiétude par le massacre\".",
		"- Si le Talent se déclenche sur la même élimination en même temps que \"Providence subtilisée\" cela atténue 15 % de Péril total.",
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Wildfire +]--
	local ED_PSY_Passive_8_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Chaque fois qu'un Ennemi affecté par au moins 2 cumul d'embrasement d'âme meurt, il se propage aux cibles valides dans un rayon de 5 mètres.",
		"- Les cibles ne reçoivent pas de cumul d'embrasement d'âme causés par le Talent si elles ont déjà 4 Cumuls ou plus sur elles.",
		"- Les cibles valides peuvent recevoir des cumul d'embrasement d'âme jusqu'à un maximum de 4 causés par le Talent.",
		"- Le nombre de cumul d'embrasement d'âme qui se propagent dépend du nombre de cumul d'embrasement d'âme sur l'ennemi mourant :",
		"_______________________________",
		"Cumuls:         1|        2|       3|       4|      >4",
		"Se propage: 0|        2|       3|       4|       4",
		"_______________________________",
		"- Le nombre maximum de cibles valides à propager est de 4 :",
		"-- si 4 Cumuls et 4 cibles - chaque cible reçoit 1 Cumul ;",
		"-- si 4 Cumuls et 3 cibles - 1 cible reçoit 2 Cumuls tandis que les 2 autres cibles reçoivent 1 Cumul chacune, etc.",
		"Les Hôtes Démoniaques ne sont pas des cibles valides !",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 9 - Aura du psychokinésiste +]--
	local ED_PSY_Passive_9_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"-  1,5 seconde pour \"Cri de défoulement\"/\"Fureur du psykokinésiste\", 1,25 seconde pour \"Regard de divination\" et 2 secondes pour \"Bouclier télékinétique\".",
		"- Ne se cumule pas avec le même Talent d'un autre Psyker (chaque Psyker déclenche son propre Talent en propageant la réduction du temps de recharge indépendament des autres).",
		doesnt_interact_w_c_a_r_from_curio_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Mind in Motion +]--
	local ED_PSY_Passive_10_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- N'interagit pas avec les bonus de vitesse de déplacement.",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - Élan maléfique +]--
	local ED_PSY_Passive_11_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
		"- La durée de 8 secondes de chaque bonus commence sur les éliminations respectives et peut être rafraîchie pendant la durée d'activation.",
		warp_attc_refers_to_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Channeled Force +]--
	local ED_PSY_Passive_12_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente les Dégâts des attaques primaires du bâton après avoir exécuté une attaque secondaire chargée (au moins 95 % chargée) avec n'importe quel Bâton de Force.",
		can_be_refr_dur_active_dur_fr,
		"- S'additionne avec d'autres bonus de dégâts.",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 13 - Perilous Irruption +]--
	local ED_PSY_Passive_13_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Cela réduit le temps d'amination lors du changement d'objet (armes, Blitz, stimms, caisse médicale, caisses de munitions, livres, etc.) :",
		"_______________________________",
		"Péril:     0|  20|  40|  50|  60|  80|  100",
		"VE(%):   0|   10|  20|  25|  30|  40|   50",
		"_______________________________",
		"(*VE = vitesse d'Équipement)",
		"{#color(255, 35, 5)}- Objectivement parlant, l'arsenal d'armes actuel du Psyker ne comprend pas une seule arme pour laquelle ce Talent offrirait une réduction significative du temps d'animation. Les Autoguns et les Lasguns ont les temps d'équipement 'les plus longs' avec 0,65 seconde pour passer à ces armes et commencer à tirer de la hanche. Le Talent, à 100 % de Péril, réduirait ces temps à 0,43 seconde. Pour toutes les autres armes, les réductions de temps sont encore moins significatives.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 14 - Lightning Speed +]--
	local ED_PSY_Passive_14_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec le bonus de vitesse d'attaque du Stimulant de célérité.",
	}, "\n"), enhdesc_col)

	--[+ Passive 15 - Souldrinker +]--
	local ED_PSY_Passive_15_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les chances de Coup Critique ne peuvent pas être renouvelées pendant la durée d'activation.",
		"- La Robustesse maximale est rétablie à élimination d'ennemi.",
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Choc empyrique +]--
	local ED_PSY_Passive_16_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Applique un affaiblissement aux ennemis qui augmente les dégâts qu'ils subissent des attaques Warp.",
		can_be_refr_dur_active_dur_fr,
		"- Peut être appliqué à travers les boucliers.",
		"- L'affaiblissement se mulitiplie avec lui-même, jusqu'à 33,8 % (1,06⁵=1,338), avec d'autres affaiblissements de Dégâts subis sur les ennemis de \"Dégénérescence\", \"On les ramollit\" de l'Ogryn, \"Distraction utile\", \"Ciblage\" du Vétéran, se mutiplie avec les bonus de dégâts et avec les bonuis de de Puissance des Bénédictions d'armes.",
		warp_attc_refers_to_fr,
		"",
		"{#color(255, 35, 5)}- Il y a actuellement un bug : les clics gauches du Bâton de Force Infernale n'appliquent pas l'affaiblissement.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - Par la fissure de l'os +]--
	local ED_PSY_Passive_17_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Supprimer le Péril peut se déclencher plusieurs fois par coup lors d'un transpercement. Se déclenche en plus de \"Méditation de guerre\" et \"Providence subtilisée\".",
		"- Réduire le Péril se cumule se multiplie aux bonus de Réduction du Coût en Péril de \"Éruption apaisante\", \"Détermination empirique\", \"Tranquilité intérieure\", \"Écho cinétique\", \"Ancrage dans la réalité\", les petits noeuds de Résistance au Péril et Stimulant de concentration.",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 18 - Warp Splitting +]--
	local ED_PSY_Passive_18_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Évolue proportionnellement au Péril.",
		"- Augmente la masse maximale des attaques (Mêlée, à distance, \"Irruption\") jusqu'à 100 %, permettant ainsi aux attaques de frapper plusieurs ennemis.",
		"- S'additionne avec \"Éclats éthérés\" et \"Psychisme augmenté\", et avec les bonus associés des Bénédictions d'armes \"Frappe dévastatrice\", \"Balayage sauvage\" et \"Colère\".",
		"- Se multiple avec les bonus de Puissance des Bénédictions d'armes.",
		"- Notez que l'armure Carapace ne peut pas être transpercée par défaut.",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Unlucky for Some +]--
	local ED_PSY_Passive_19_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsque le Psyker tombe, restaure de la Robustesse aux Alliés en Syntonie.",
		"- Ne se déclenche pas lorsque l'Allié ou le Psyker meurt.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - One with the Warp +]--
	local ED_PSY_Passive_20_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_mult_w_other_dmg_red_buffs_fr,
		"- Accorde toujours un minimum de 10 % de Réduction des Dégâts de Robustesse quel que soit le montant de Péril actuel :",
		"_______________________________",
		"Péril:       0|  20|  40|  50|  60|  80|  100",
		"RDR(%): 10|  14|   19|   21|  23|  28|    33",
		"_______________________________",
		"(*RDR = Réduction des Dégâts de Robustesse)",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - Empathic Evasion +]--
	local ED_PSY_Passive_21_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Toucher des ennemis avec une attaque critique de mêlée, à distance ou \"Irruption\" met le Psyker dans un \"État d'esquive\" contre les attaques à distance pendant 1 seconde.",
		can_be_refr_dur_active_dur_fr,
		"- Cet effet est mécaniquement identique à celui fourni par les Bénédictions d'armes \"Fantôme\", \"Délit de fuite\", et \"Mise à nu\".",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 22 - Anticipation +]--
	local ED_PSY_Passive_22_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la durée d'esquive du Psyker de 0,2 seconde à 0,3 seconde.",
		"- Le \"Dodge linger time\" fait référence à la fenêtre de temps pendant laquelle un personnage est toujours considéré comme étant en \"État d'esquive\" contre une attaque de mêlée après qu'une Esquive se soit techniquement terminée. Cela rend la fenêtre d'Esquive plus indulgente en ce qui concerne le timing du joueur.",
		"- Ajoute également une Esquive effective.",
		"- La quantité totale d'Esquives effectives qu'un personnage peut effectuer varie en fonction du nombre d'Esquive de l'arme ou de l'objet actuellement équipé.",
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Solidity +]--
	local ED_PSY_Passive_23_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'applique uniquement à l'atténuation de péril actif, l'atténuation de péril passif n'est pas affecté.",
		"- se multiple pendant le calcul avec le bonus d'atténuation de Stimulant de Célérité.",
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Puppet Master +]--
	local ED_PSY_Passive_24_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente le rayon de Syntonie de base de 8 à 12 mètres.",
	}, "\n"), enhdesc_col)

	--[+ Passive 25 - Chevaucheur de warp +]--
	local ED_PSY_Passive_25_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg_fr,
		"_______________________________",
		"Péril:       0|  20|  40|  50|  60|  80|  100",
		"Dmg(%): 0|     4|    8|   10|   12|   16|   20",
		"_______________________________",
		"(*Dmg = Augmentation des Dégâts)",
	}, "\n"), enhdesc_col)

	--[+ Passive 26 - Crystalline Will +]--
	local ED_PSY_Passive_26_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Au lieu d'abattre le Psyker lors de l'auto-explosion, convertit une Blessure en Corruption.",
		"- Convertit toujours un Segment, que le Segment en question soit déjà partiellement Corrompu ou non.",
		"- Réduit également le temps total de l'auto-explosion de 3 à 1,13 seconde.",
		"- L'auto-explosion du Psyker :",
		"-- Rayon maximal : 10 mètres.",
		"-- Étourdit tous les ennemis sauf le Broyeur, les Mutants, les Monstruosités, les Jumeaux (Capitaines uniquement sans bouclier du vide).",
		"-- Inflige 600 dégâts de base à tous les ennemis.",
		"-- Les dégâts de l'explosion diminuent du centre au rayon maximal et peuvent être augmentés par les bonus de dégâts de \"Perturbation du destin\", \"Autorisation empyréenne\", \"Élan maléfique\" (bonus de dégâts régulier), \"Regard de divination\" et \"Chevaucheur de warp\".",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 27 - Kinetic Deflection +]--
	local ED_PSY_Passive_27_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- L'efficacité de la conversion Coût en Stamina/Péril est augmentée par les bonus de Réduction du Coût en Péril de \"Éruption apaisante\", \"Par la fissure de l'os\", \"Détermination empirique\", \"Tranquilité intérieure\", \"Ancrage dans la réalité\" et les petits noeuds de Résistance au Péril.",
		"- Augmentée également par les bonus de Réduction du Coût de Blocage de l'Efficacité de Blocage des Curiosité, des avantages d'arme de Mêlée et de la Bénédiction d'arme \"Deflector\" (également contre les attaques à distance), et par le bonus de Réduction du Coût en endurance de Stimulant Célérité.",
		"- Toutes les sources de Réduction du Coût en Péril, de Réduction du Coût de Blocage et de Réduction du Coût en Endurance se multiplie entre elles.",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - Quiétude par le massacre +]--
	local ED_PSY_Passive_28_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les coups critiques avec des attaques à distance suppriment 4 % de Péril de la quantité de Péril actuelle.",
		"- Se déclenche sur les boucliers.",
		"- Ne se déclenche qu'une seule fois par tir, quel que soit le nombre d'ennemis touchés.",
		"- Se déclenche en plus de \"Méditation de guerre\" et \"Providence subtilisée\".",
		warp_attc_refers_to_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Détermination empirique +]--
	local ED_PSY_Passive_29_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Réduit la quantité de Péril générée de 40 %.",
		"- Se multiplie avec les bonus de Réduction du Coût en Péril de \"Éruption apaisante\", \"Par la fissure de l'os\", \"Tranquilité intérieure\", \"Écho cinétique\", \"Ancrage dans la réalité\", les petits noeuds de Résistance au Péril et Stimulant de Concentration.",
		"- Réduit également la quantité de toute Robustesse rétablie des kills en Mêlée et des Talents de 30 %.",
		"- N'affecte pas la régénération de Robustesse de la Régénération de Robustesse en Syntonie et des Bénédictions d'armes \"Chasse à la gloire\", \"Barrage inspirant\" et \"Précision rassurante\".",
		"- Cet affaiblissement du Rétablissement se multiplie avec d'autres affaiblissements du joueur comme le gaz toxique.",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Penetration of the Soul +]--
	local ED_PSY_Passive_30_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsqu'il est à 75 % de Péril ou plus, accorde 10 % de Déchirure aux attaques Warp, augmentant les Dégâts contre les armures Carapaces, Légères, Maniaques, Implacables.",
		"- N'affecte que les propres Dégâts du Psyker.",
		"- S'additionne avec d'autres bonus de Déchirure et avec les affaiblissements de Fragilité appliqués aux ennemis.",
		warp_attc_refers_to_fr,
		"{#color(255, 35, 5)}Il y a actuellement un bug : Le multiplicateur de Déchirure ne s'applique pas correctement lors du calcul des Dégâts.\nCE TALENT NE FAIT RIEN !!!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 31 - True Aim +]--
	local ED_PSY_Passive_31_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Génère 1 Cumul de Point faible par Point faible touché avec des attaques de Mêlée, à distance, \"Irruption\" et \"Rupture cérébrale\"/\"Explosion cérébrale\".",
		"- Les attaques qui transperce (par exemple, les tirs chargés du Bâton de Vide sur une horde) peuvent accumuler jusqu'à 5 Cumuls de Point faible à la fois mais ne consomment pas immédiatement le Critique garanti.",
		"- Les Cumuls de Point faible durent jusqu'à leur consommation.",
		"- \"Rupture cérébrale\"/\"Explosion cérébrale\" et \"Éclatement\" ne consomment pas le Critique garanti.",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 32 - Surety of Arms +]--
	-- 
	local ED_PSY_Passive_32_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		-- "- Augmente la vitesse d'animation de Rechargement de 25 %.",
		"- S'additionne avec les bonus de vitesse de Rechargement des Bénédictions d'armes.",
		"- Lors du Rechargement, génère jusqu'à 25 % de Péril en fonction du pourcentage de munitions rechargées dans le chargeur.",
		"- Par exemple, lors du rechargement de 34 cartouches d'un chargeur d'une taille de 59 cartouches, le Psyker générerait 14,4 % de Péril réel ; 0,25x(34/59)=0,144.",
		"- Recharger un chargeur vide génère la quantité maximale de 25 % de Péril.",
		"- Les bonus de réduction du coût en Péril réduisent l'efficacité de cette conversion Munitions rechargées/Péril. Par exemple, recharger la même quantité de munitions dans un chargeur de la même taille, mais avec trois noeuds de Résistance au Péril (c'est-à-dire un warp_charge_amount de 0,95³), le Psyker ne générerait que 12,3 % de Péril réel ; 0,25x(34/59)x0,95³=0,123.",
		"Notez que le Talent génère toujours du Péril au Rechargement, quel que soit le montant de Péril actuel, mais n'accorde la vitesse de Rechargement augmentée que lorsque le Péril réel est inférieur ou égal à 75 %.",
	}, "\n"), enhdesc_col)

--[+ ++ZEALOT++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Stun Grenade +]--
	local ED_ZEA_Blitz_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Temps de mise à feu : 1,5 seconde.",
		"- Rayon d'explosion : 8 mètres.",
		"- Électrocution :",
		"-- Dure 8 secondes.",
		"-- se cumule une fois.",
		"-- Inflige des dégâts faibles dans l'ensemble.",
		"-- Inflige des dégâts et Étourdit toutes les 0,55 secondes.",
		-- "-- Étourdit tous les ennemis dans la zone sauf les Mutants, les Monstruosités et les Capitaines/Jumeaux.",
		"-- Ignore les boucliers Remparts.",
		-- "-- Peut être relancé pendant la durée active.",
	}, "\n"), enhdesc_col)
	
	--[+ Blitz 1 - Stunstorm Grenade +]--
	local ED_ZEA_Blitz_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"-- Le rayon d'explosion est augmenté à 12 mètres.",
		"- Temps de mise à feu : 1,5 seconde.",
		"- Électrocution :",
		"-- Dure 8 secondes.",
		"-- se cumule une fois.",
		"-- Inflige des dégâts faibles dans l'ensemble.",
		"-- Inflige des dégâts et Étourdit toutes les 0,55 secondes.",
		"-- Étourdit tous les ennemis dans la zone sauf les Mutants, les Capitaines/Jumeaux et les Monstruosités.",
		"-- Ignore les boucliers Rembart.",
		"-- Peut être rafraîchie pendant la durée active.",
	}, "\n"), enhdesc_col)
	
	--[+ Blitz 2 - Immolation Grenade +]--
	local ED_ZEA_Blitz_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Temps de mise à feu : 1,7 seconde.",
		"- Zone de feu : Dure 15 secondes. Rayon de 5 mètres. Les ennemis l'évitent.",
		"- Brûlure (à l'intérieur de la zone de feu) : se cumule une fois. Se déclenche toutes les 0,875 secondes. Ignore les boucliers Rempart et du Vide.",
		"-- Inflige des dégâts variables par seconde selon le type d'armure (Très hauts dégâts contre Implacables ; Hauts dégâts contre Sans Armure, Infesté, Maniaque ; Très faibles dégâts contre Carapace).",
		-- "- Brûlure (en quittant la zone de feu) : Dure 1 seconde. Se déclenche toutes les 1 secondes. Effet de brûlure court avec des dégâts légèrement inférieurs.",
		"- Les dégâts de Brûlure sont augmentés par : Déchirure/Fragilité, les Bénédictions des armes actuellement équipées, et les buffs suivants :\n-- Talents : \"Onction par le sang\", \"Purge des corrompus\", \"Appel ecclésial\", et \"Jugement inexorable\".\n--- Bénédictions :\n--- Mêlée : \"Exécuteur\", \"Haute tension\", \"Brise-crâne\", et \"Massacre\".\n---À distance : \"Embrasement\", \"Dum-dum\", \"Crache-mort\", \"Execution\", \"Frénésie de feu\", \"À toute allure\", \"Sans répit\", \"Feu d'entrave\", et \"Courir et tirer\" (en sprintant).",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Lames de la foi +]--
	local ED_ZEA_Blitz_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Jet rapide.",
		"- Recharge 1 couteau par élimination d'Élite ou de Spécial en mêlée. 2 couteaux par petite boite de munitions, 6 couteaux par grosse. Tous les couteaux par caisse de munitions.",
		-- "- Le couteau vole le long d'une trajectoire courbe.",
		"- Dégâts : 585 dégâts de base.",
		"-- Hauts Pénétration d'armure contre Maniaque et Infesté.",
		"-- Finesse supplémentaire contre Non Armuré et Armure Légère.",
		"-- N'inflige aucun dégât contre Carapace sauf sur les points faibles comme la tête de Mauler.",
		"-- Pas de réduction de dégâts avec la distance.",
		"- Peut transpercer 1 Grogneur, Scrofuleux, Sal/Squam Stalker ou Tireurs Squameux.",
		"- Les tirs dans la tête tuent tous les ennemis sauf les Ogryns, les Furax, les Mutileur et les Monstruosités.\n- Les couteaux sont affectés par les Bénédictions des armes actuellement équipées et par les buffs suivants :",
		"-- Talents : \"Onction par le sang\", \"Purge des corrompus\", \"Appel ecclésial\", et \"Jugement inexorable\" (dégâts).",
		"-- De nombreuses Bénédictions de Mêlée et à Distance.",
	}, "\n"), enhdesc_col)
	
--[+ +AURA+ +]--
	--[+ Aura 0 - The Emperors's Will +]--
	--[+ Aura 1 - Bénédicton +]--
	local ED_ZEA_Aura_0_n_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		stacks_mult_w_other_dmg_red_buffs_fr,
		"- Ne se cumule pas avec la même Aura d'un autre Fanatique.",
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Guide de pureté +]--
	local ED_ZEA_Aura_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ce taux est suffisamment élevé pour contrer les dégâts de Corruption d'un Grimoire. Cependant, les 40 dégâts de Corruption initiaux par les Grimoires ne peuvent pas être supprimés.",
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Solitaire +]--
	local ED_ZEA_Aura_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec \"La force de la confrérie\", et avec multiplication de la vitesse de Régénération de Robustesse des Curiosités et les bonus associés du petit noeud de Talent du Vétéran \"Source d'inspiration\" ou de l'aura de l'Ogryn \"On reste groupé!\".",
		"- Notez que les conditions de déclenchement de la Régénération de Robustesse en Syntonie s'appliquent toujours.",
	}, "\n"), enhdesc_col)

	--[+ Ability 0 - Châtier le mal +]--
	local ED_ZEA_Ability_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Portée du Dash :",
		"-- De base : 7 mètres.",
		"-- Ciblé : jusqu'à 21 mètres.",
		"- Accorde l'immunité aux Dégâts de Robustesse et vous Esquivez toutes les attaques pendant le Dash.",
		-- "- Applique un Étourdissement léger à l'impact dans un rayon de 3 mètres.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Fureur des fidèles +]--
	local ED_ZEA_Ability_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"-- Portée : De base : 7 mètres. Ciblé (bouton maintenu) : jusqu'à 21 mètres.",
		"-- Ne peut pas être activé en sautant ou en tombant.",
		"-- Vous ne pouvez pas changer de direction, mais vous pouvez Annuler le Charge avec les boutons Bloquer ou Reculer.",
		"-- Vous esquivez toutes les Attaques et bénéficiez de l'Immunité aux Dégâts de Robustesse.",
		"-- Vous pouvez être arrêté par les Implacables, Carapaces, Monstruosités, ainsi que les boucliers Void.",
		"-- Ajoute 100 % de Déchirure contre les types d'armure Carapace, Légères, Maniaques, Implacables à la prochaine Attaque de Mêlée dans les 3 secondes suivant l'activation.",
		"-- Les attaques à distance ne bénéficient PAS de ce bonus.",
		"-- S'additionne avec d'autres bonus de vitesse d'attaque des Talents et de Stimulant de Célérité.",
	}, "\n"), enhdesc_col)
	
	--[+ Ability 1-1 - Redoubled Zeal +]--
	local ED_ZEA_Ability_1_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Le Temps de Recharge de la Deuxième charge ne commence qu'une fois que la Première charge a terminé son Temps de Recharge.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Invocation of Death +]--
	local ED_ZEA_Ability_1_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Cela entraîne une Réduction du Temps de Recharge total de 12 secondes par déclenchement (4 secondes du taux de base + 4x2 secondes du Talent)",
		can_be_refr_dur_active_dur_fr,
		"- Se déclenche en plus de l'effet de Réduction du Temps de Recharge restant du Stimulant de Concentration de 3 secondes par seconde.",
		doesnt_interact_w_c_a_r_from_curio_fr,
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Refrain de courage spirituel +]--
	local ED_ZEA_Ability_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Rayon : 10 mètres.",
		"- Les bonus d'Immunité aux Étourdissements et d'invulnérabilité peuvent être rafraîchis.",
		"- \"invulnérabilité\" signifie que la Santé du joueur ne peut pas descendre en dessous de 1. Les joueurs peuvent toujours perdre toute Santé supérieure à 1.",
		"- Le bonus de Robustesse jaune dure 10 secondes et ne se cumule pas avec la même capacité d'un autre Fanatique. Mais s'additionne avec le bonus de Robustesse du Vétéran de \"Devoir et honneur\".",
		"- La Robustesse bonus agit comme une 'deuxième' barre de Robustesse et est donc soumise au même règles.",
		-- "- Les Pulsations n'infligent aucun dégât et n'Étourdissent pas.",
		-- "- La Canalisation peut être annulée en Bloquant, en Sprintant ou en appuyant à nouveau sur le bouton de l'Aptitude.",
		-- "- Pendant la Canalisation, le temps de recharge est mis en pause. Cependant, son temps de recharge peut toujours être réduit en utilisant une Concentration Stimm avant l'activation ou en bénéficiant de l'aura du Psyker \"Aura du psychokinésiste\" pendant la Canalisation ; son temps de recharge maximum peut être réduit par la Régénération du Temps de Recharge des Aptitudes des curios, par l'aura du Psyker \"Présence prophétique\" et par les modificateurs de mission qui réduisent les temps de recharge des aptitudes de 20 %.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Holy Cause +]--
	local ED_ZEA_Ability_2_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les Alliés obtiennent le bonus tant qu'ils sont en Syntonie lorsque le bonus est déclenché.",
		stacks_mult_w_other_dmg_red_buffs_fr,
		"- Ne se cumule pas avec le même Talent d'un autre Fanatique.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Banishing Light +]--
	local ED_ZEA_Ability_2_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"-- 1. Il permet aux pulsations d'Étourdir les ennemis non Supprimables dans un rayon de 10 mètres. Contre les Monstruosités et les Capitaines/Jumeaux dans un rayon de 4 mètres, un Étourdissement forcé est appliqué sur la 1ère, 3ème, 5ème et 7ème pulsation. Contre tous les autres ennemis non Supprimables dans un rayon de 4 mètres, un Étourdissement forcé est appliqué à chaque pulsation. L'Étourdissement forcé dure 2 secondes.",
		"-- 2. Il permet à chaque pulsation de Supprimer tous les ennemis Supprimables dans un rayon de 10 mètres. Chaque pulsation applique une très forte Suppression avec un délai d'extinction de Suppression augmenté, choisi aléatoirement.",
		"--- Ennemis pouvant être Supprimées : Grogneur, Dreg Mitrailleur, Dreg Stalker, Scrofuleux (uniquement dans le cas de ce Talent), Faucheurs, Mitrailleurs Squameux, Tireurs Squameux, Stalker",
		"-- 3. Il augmente le rayon de pulsation de 10 mètres de 0,1 mètre par seconde pendant la Canalisation, jusqu'à 10,5 mètres. Cela affecte le rayon dans lequel les ennemis sont Supprimés ou Étourdis (n'augmente pas le rayon d'Étourdissement Forcé).",
	}, "\n"), enhdesc_col)
	
	--[+ Ability 2-3 - Appel ecclésial +]--
	local ED_ZEA_Ability_2_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les Alliés obtiennent le buff tant qu'ils sont en Syntonie lorsque le buff est déclenché.",
		stacks_add_w_oth_dmg_fr,
		"- Ne se cumule pas avec le même Talent d'un autre Fanatique.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-4 - Martyr's Purpose +]--
	local ED_ZEA_Ability_2_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne se déclenche pas lorsqu'il est abattu.",
		"- Par exemple, si le Fanatiques a 55 secondes de Temps de Recharge restantes sur les 60 secondes de sa relique et subit 80 dégâts de Santé, les 55 secondes restantes sont réduites de 60x(80x0,01)=48 à 7 secondes.",
		"- Se déclenche en plus de l'effet de Réduction du Temps de Recharge du stimulant de concentration de 3 secondes par seconde.",
		"- N'interagit pas avec la Régénération du Temps de Recharge des Aptitudes des Curiosités qui ne réduit que le Temps de Recharge Maximum d'une Aptitude de Combat.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Champ d'ombre +]--
	local ED_ZEA_Ability_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		become_invis_drop_all_enemy_aggro_fr,
		"- Vous pouvez toujours subir des dégâts pendant l'Invisibilité.",
		"- La Furtivité est interrompue par : frapper des ennemis avec une attaque de Mêlée, toute attaque à distance, lancer une grenade, terminer une action de Secours/Réanimation/Libérer du filet, lancer des couteaux n'interrompt la Furtivité que lorsqu'ils touchent une cible.",
		"- La Furtivité n'est pas interrompue par : pousser des ennemis, utiliser des Stimms (sur soi-même ou sur les coéquipiers), les dégâts sur la durée actifs, utiliser le dispositif Auspex ou le mini-jeu.",
		-- "- Fenêtre de grâce de Furtivité : les actions qui interrompraient la Furtivité ne le font pas si elles sont exécutées dans les 0,5 seconde suivant l'entrée en Invisibilité, cela permet, si le timing est correct, une attaque de Mêlée ou à distance supplémentaire qui bénéficie déjà de tous les buffs applicables mais n'interrompt pas encore la Furtivité.",
		-- "- Les buffs de Vitesse de déplacement, de Dégâts de Coup dans le dos, de Dégâts de Finesse et de Chance de Coup Critique durent aussi longtemps que l'Invisibilité. Le buff de Finesse s'additionne avec d'autres buffs associés ; le buff de dégâts de Coup dans le dos s'additionne avec les buffs associés de \"Adepte des coup dans le dos\" et \"Champ d'ombre\", et multiplicativement pendant le calcul avec d'autres bonus de dégâts et les buffs de de Puissance des Bénédictions d'armes ; le buff de vitesse de déplacement s'additionne avec les buffs associés et se multiplie aux buffs de vitesse de sprint (Certitude expéditive).",
		-- "{#color(255, 35, 5)}Ne vous cache pas des Hôtes Démoniaques !{#reset()}",
		-- "{#color(255, 35, 5)}Transfert l'aggro des ennemis vers la cible la plus proche !{#reset()}",
		"{#color(255, 35, 5)}Transfert l'aggro des ennemis vers la cible la plus proche ! Ne vous cache pas des Hôtes Démoniaques !{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-1 - Master-Crafted Champ d'ombre +]--
	-- local ED_ZEA_Ability_3_1_rgb_fr = iu_actit(table.concat({"",}, "\n"), enhdesc_col)

	--[+ Ability 3-2 - Perfectionniste +]--
	local ED_ZEA_Ability_3_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Le bonus de Finesse s'additionne avec d'autres bonus associés.",
		"- Le bonus de dégâts de Coup dans le dos s'additionne avec les bonus associés de \"Adepte des coup dans le dos\" et \"Champ d'ombre\", et multiplicativement pendant le calcul avec d'autres bonus de dégâts et les bonus de de Puissance des Bénédictions d'armes.",
		"- Augmente également le temps de recharge maximum de Chant d'Ombre de 30 à 37,5 secondes.",
		"- Cette augmentation du Temps de Recharge Maximum peut être atténuée par les Réductions du Temps de Recharge Maximum de l'aura du Psyker \"Présence prophétique\", de la Régénération du Temps de Recharge des Aptitudes des curiosités et par les modificateurs de mission qui réduisent les temps de recharge des Aptitudes de 20 %.",
	}, "\n"), enhdesc_col)
	
	--[+ Ability 3-3 - Invigorating Revelation +]--
	local ED_ZEA_Ability_3_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsque l'Invisibilité se termine, restaure 8 % de Robustesse maximale par seconde pendant 5 secondes.",
		red_both_tghns_n_health_dmg_fr,
		stacks_mult_w_other_dmg_red_buffs_fr,
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-4 - Pious Cut-Throat +]--
	local ED_ZEA_Ability_3_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- A un temps de echarge interne de 0,2 seconde.",
		"- C'est 6 secondes pour \"Fureur des fidèles\" et \"Champ d'ombre\" (7,5 secondes avec \"Perfectionniste\"), et 12 secondes pour \"Refrain de courage spirituel\".",
		"- Se déclenche en plus de l'effet de Réduction du Temps de Recharge de Stimulants de Concentration de 3 secondes par seconde.",
		doesnt_interact_w_c_a_r_from_curio_fr,
		"- Les attaques spéciales des Armes à chaîne ne déclenchent ce talent que si le coup de coup dans le dos initial tue immédiatement la cible.",
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Piété embrasée +]--
	local ED_ZEA_Keystone_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Après 8 secondes sans élimination, considère que le Fanatique est hors combat. Lorsqu'il est hors combat, perd des cumuls de \"Fureur\" au fil du temps. Lorsqu'il est hors combat, commence à perdre les cumuls de Fureur actuels un par un à un rythme décélérant.",
		"- La durée active de Fureur peut être rafraîchie en tuant des ennemis.",
		"- S'additionne avec d'autres sources de Chance de Coup Critique.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Stalwart +]--
	local ED_ZEA_Keystone_1_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsqu'il atteint 25 Cumuls de Fureur, fait deux choses :",
		"-- 1. Restaure 50 % de Robustesse maximale immédiatement. Ensuite, tout en maintenant 25 Cumuls de Fureur, restaure également 2 % de Robustesse maximale par élimination.",
		"--- S'additionne avec les 5 % de base de Robustesse maximale du Fanatique gagnés sur le élimination en mêlée.",
		"--"..z_eff_of_this_tougn_rep_fr,
		"-- 2. Accorde 25 % de Réduction des Dégâts de Robustesse tant que 25 Cumuls de Fureur sont maintenus.",
		"--"..stacks_mult_w_other_dmg_red_buffs_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Fureur Rising +]--
	local ED_ZEA_Keystone_1_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Peut générer plusieurs Cumuls par Attaque Critique lors d'un transpercement.",
		"- Se déclenche également sur les Attaques Critiques contre les boucliers.",
	}, "\n"), enhdesc_col)
	
	--[+ Keystone 1-3 - Infectious Zeal +]--
	local ED_ZEA_Keystone_1_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur_fr,
		"- Ne se cumule pas avec le même Talent d'un autre Fanatique.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - Righteous Warrior +]--
	local ED_ZEA_Keystone_1_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la Chance de Coup Critique de toutes les attaques pouvant faire un Coup Critique, en plus des 15 % de base de Chance de Coup Critique de \"Piété embrasée\". (+25 % au total).",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Martyrdom +]--
	local ED_ZEA_Keystone_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Un Segment est considéré comme manquant s'il est complètement épuisé ou complètement converti par la Corruption.",
		"- En Hérésie/Damnation, le Fanatiques peut avoir jusqu'à 7 Segments de Santé au total (2 de base, +3 des Curios, +2 de \"Faith's Fortitude\"), fixant ainsi le nombre de Cumuls maximum effectif à 6.",
		"- Par cumul, augmente les Dégâts des Attaques de Mêlée de 8 % (jusqu'à +48 % en Hérésie/Damnation, jusqu'à +56 % en dessous).",
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - I Shall Not Fall +]--
	local ED_ZEA_Keystone_2_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Chaque Segment de Santé manquant accorde 6,5 % de Réduction des Dégâts de Robustesse (jusqu'à 39 % sur Hérésie/Damnation, jusqu'à 45,5 % en dessous).",
		"- S'additionne avec les petits noeuds de Réduction des Dégâts de Robustesse.",
		"- La somme se multiplie avec d'autres bonus de Réduction des Dégâts.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Maniaque +]--
	local ED_ZEA_Keystone_2_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Chaque Segment de Santé manquant augmente la vitesse d'animation d'attaque des armes de Mêlée de 4 % (jusqu'à +24 % sur Hérésie/Damnation, jusqu'à +28 % en dessous).",
		"- S'additionne avec d'autres bonus de vitesse d'attaque.",
	}, "\n"), enhdesc_col)
	
	--[+ Keystone 3 - Jugement inexorable +]--
	local ED_ZEA_Keystone_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- La génération de Cumuls de Jugement est deux fois plus rapide en Sprintant.",
		"- Frapper un ennemi avec une attaque de Mêlée ou à distance fait perdre tous les Cumuls de Jugement actuels.",
		"- Par Cumul de Jugement perdu, augmente la vitesse d'animation d'attaque des armes de Mêlée et à distance de 1 % et tous les dégâts de 1 % pendant 6 secondes.",
		"- Augmente également la vitesse d'Esquive et la distance d'Esquive de 0,5 %, et le temps de réinitialisation d'Esquive de 1 % par Cumul perdu.",
		"- Peut générer de nouveaux Cumuls de Jugement pendant que la durée active du bonus de 6 secondes est active.",
		"- Les bonus de vitesse d'attaque s'additionne avec d'autres bonus associés.",
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Retributor's Stance +]--
	local ED_ZEA_Keystone_3_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Calme enivrant +]--
	local ED_ZEA_Keystone_3_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Génère en plus 3 Cumuls de Jugement en Esquivant avec succès les attaques de Mêlée ou à distance des ennemis (sauf Plombeurs, Reaper, Sniper) et les attaques de désactivation (saut de la Meute de Pox, filet du Trappeur, saisie du Mutant).",
		succss_dodge_means_fr,
		z_ghost_hitnrun_n_stripp_fr,
		"",
	}, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Disdain +]--
	local ED_ZEA_Passive_1_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Peut générer plusieurs Cumuls par coup.",
		"- Les Cumuls durent jusqu'à leur consommation.",
		stacks_add_w_oth_dmg_fr,
		"- Les actions spéciales de Mêlée des Armes à distance (frappes, etc.) peuvent générer et consommer des Cumuls.",
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Adepte des coup dans le dos +]--
	local ED_ZEA_Passive_2_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Active les Coups dans le dos.",
		"- S'additionne avec les bonus de dégâts de Coup dans le dos de \"Champ d'ombre\" (et \"Perfectionniste\").",
		"- Se multiplie pendant le calcul avec d'autres bonus de dégâts et les bonus de Puissance des Bénédictions d'armes.",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 3 - Onction par le sang +]--
	local ED_ZEA_Passive_3_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Tant que l'arme à distance est équipée, augmente tous les dégâts de 25 % contre les ennemis dans un rayon de 12,5 mètres.",
		stacks_add_w_oth_dmg_fr,
		"Au-delà de 12,5 mètres, le bonus de dégâts diminue linéairement jusqu'à perdre son effet à 30 mètres :",
		"______________________________",
		"Distance(m):1-12.5|   13|  15|  20|  25|  30",
		"Dégâts(%):         25|~24|~21| ~14|  ~7|    0",
		"______________________________",
		"- Cela augmente également les dégâts de \"Lames de la foi\" et des DoT (y compris la brûlure de la Grenade Immolation et l'électrocution de la Grenade Stunstorm/Stun) tant que le Fanatiques reste à moins de 30 mètres de l'ennemi et a l'arme à distance équipée.",
		"- Notez que les armes à distance interagissent différemment avec ce Talent en fonction de leurs portées de dégâts efficaces.",
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Scourge +]--
	local ED_ZEA_Passive_4_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les coups critiques avec des attaques de Mêlée (y compris les actions spéciales de Mêlée des armes à distance) appliquent 2 Cumuls de Saignement aux ennemis.",
		"- Ne peut pas appliquer de Saignement à travers les boucliers.",
		"- Saignement :",
		"-- Dure 1,5 seconde.",
		"-- Se déclenche toutes les 0,5 secondes.",
		"-- Rafraîchit la durée lors de l'application du Cumul.",
		"-- Identique aux autres sources de Saignement.",
		"-- Pénétration d'armure supérieurs à la moyenne dans l'ensemble, faible Pénétration d'armure contre Carapace.",
		can_be_refr_dur_active_dur_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Enemies Within, Enemies Without +]--
	local ED_ZEA_Passive_5_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- La vérification de proximité ignore la géométrie de la carte.",
		"- La régénération est inactive lorsque le Fanatiques est suspendu à un rebord et lorsqu'il est pris par les Mutants, les Meutes de chiens, le Trappeur, l'Hote Démoniaque, le Chaos Spawn ou la Bête de Nurgle.",
		"- N'interagit pas avec la Régénération de Robustesse en Syntonie.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 6 - La force de la confrérie +]--
	local ED_ZEA_Passive_6_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ajoute un montant fixe de 50 % au facteur de Syntonie qui évalue la quantité de Robustesse en Syntonie régénérée par allié en Syntonie.",
		"- Ce bonus s'additionne avec \"Solitaire\", et pendant le calcul, se multiple avec la vitesse de Régénération de Robustesse des curiosités, le petit noeud de Talent du Vétéran \"Source d'inspiration\", et l'aura de l'Ogryn \"Stay Close!\".",
		"- Augmente la quantité de base de Robustesse en Syntonie régénérée du Fanatique :",
		"_______________________________",
		"Alliés: | RCR:             | Après 5 secondes:",
		"         0| 0.00 -> 3.75 | 18.75(HUD:~19)",
		"          1| 3.75 -> 7.50  | 37.50(HUD:~38)",
		"         2| 5.63 -> 9.38 | 46.88(HUD:~47)",
		"         3| 7.50 -> 11.25 | 56.25(HUD:~57)",
		"_______________________________",
		"(*RCR = Robustesse en Syntonie Régénérée)",
		"- Notez qu'en raison de la façon dont le modificateur de taux de Régénération de Robustesse en Syntonie est appliqué pendant le calcul, ce Talent active la Régénération de Robustesse en Syntonie pour le Fanatiques même sans Alliés en Syntonie.",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 7 - Purge des corrompus +]--
	local ED_ZEA_Passive_7_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les mêmes bonus de dégâts des Bénédictions d'armes et, pendant le calcul, se multiplie avec d'autres bonus de dégâts et les bonus de de Puissance des Bénédictions d'armes.",
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Blood Redemption +]--
	local ED_ZEA_Passive_8_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la Robustesse maximale de base du Fanatique gagnée sur les éliminations en Mêlée de 5 % à 10 %.",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - Bleed for the Emperor +]--
	local ED_ZEA_Passive_9_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne se déclenche que sur les Dégâts de Santé.",
		"- Si le montant des Dégâts de Santé entrants est suffisamment élevé pour épuiser un Segment de Santé du Fanatique, le Talent réduit alors ce montant de Dégâts de Santé de 40 %.",
		stacks_mult_w_other_dmg_red_buffs_fr,
		"- Ne réduit pas les Dégâts de Robustesse subis.",
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Vicious Offering +]--
	local ED_ZEA_Passive_10_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep_fr,
		"- Par exemple, avec 120 de Robustesse maximale, le Fanatique rétablirait 120x(0,05+0,1)=18 de Robustesse par élimination par attaque lourde en mêlée.",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - The Voice of Terra +]--
	local ED_ZEA_Passive_11_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsque vous tuez des ennemis avec des attaques à distance (y compris \"Lames de la foi\"), restaure 4 % de Robustesse maximale.",
		"- Se déclenche en plus des Bénédictions d'armes comme \"Barrage inspirant\", \"Précision rassurante\", \"Chasse à la gloire\".",
		z_eff_of_this_tougn_rep_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Restoring Faith +]--
	local ED_ZEA_Passive_12_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne se déclenche que sur les Dégâts de Santé (même lorsqu'il est abattu).",
		"- Peut suivre jusqu'à 10 instances de Dégâts subis et restaure le montant correct de Santé lorsqu'il subit des Dégâts en plus de ceux déjà pris en compte.",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Second souffle +]--
	local ED_ZEA_Passive_13_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- A un Temps de Recharge interne de 0,5 seconde.",
		z_eff_of_this_tougn_rep_fr,
		procs_on_succss_dodging_fr,
		succss_dodge_means_fr,
		z_ghost_hitnrun_n_stripp_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 14 - Enduring Faith +]--
	local ED_ZEA_Passive_14_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les coups critiques avec des attaques de Mêlée ou à distance (y compris les attaques avec des actions spéciales d'armes) accordent 50 % de Réduction des Dégâts de Robustesse pendant 4 secondes.",
		can_be_refr_dur_active_dur_fr,
		stacks_mult_w_other_dmg_red_buffs_fr,
	}, "\n"), enhdesc_col)
	
	--[+ Passive 15 - Balle de l'Empereur +]--
	local ED_ZEA_Passive_15_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsque les munitions dans le chargeur atteignent 0, augmente la force d'Étourdissement en Mêlée de 30 % et la vitesse d'animation d'attaque des armes de Mêlée de 10 % pendant 5 secondes.",
		"- Le bonus de vitesse d'attaque s'additionne avec les bonus associés de \"Frénésie loyale\", \"Fureur des fidèles\", \"Jugement inexorable\", \"Maniaque\" et Stimulant de Célérité ;",
		"- Le bonus d'Étourdissement s'additionne avec les bonus associés de \"Blessures graves\", \"Marteau de la foi\", \"Châtiment\" et des Bénédictions d'armes, et se multiplie avec les bonus de Puissance des Bénédictions d'armes.",
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Danse mortelle +]--
	local ED_ZEA_Passive_16_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les bonus associés de \"Courir et tirer\" et des Bénédictions d'armes \"Poudre résiduelle\".",
		procs_on_succss_dodging_fr,
		succss_dodge_means_fr,
		z_ghost_hitnrun_n_stripp_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - Duelliste +]--
	local ED_ZEA_Passive_17_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec d'autres bonus de dégâts de Point faible et de Finesse, et se multiplie avec les buffs de de Puissance des Bénédictions d'armes.",
		procs_on_succss_dodging_fr,
		succss_dodge_means_fr,
		z_ghost_hitnrun_n_stripp_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Jusqu'à la mort +]--
	local ED_ZEA_Passive_18_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Si ce n'est pas en Temps de Recharge, empêche les Dégâts entrants de réduire la Santé actuelle du Fanatique en dessous de 1 PV en accordant l'Invincibilité pendant 5 secondes.",
		"- \"Invincibilité\" signifie que la Santé du Fanatique ne peut pas être réduite en dessous de 1. Le Fanatiques peut toujours perdre toute Santé supérieure à 1 lorsqu'il est Invincible (par exemple en subissant des coups tout en étant soigné par une caisse de soins médicale).",
		"- N'empêche pas la mort par des instakills comme lorsqu'il est projeté hors des limites dans une zone de mort de la carte.",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Unremitting +]--
	local ED_ZEA_Passive_19_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Se multiplie avec les Bénédictions d'efficacité de Sprint des Curios, des armes à distance et de Mêlée, et de Concentration Stimm.",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 20 - Shield of Contempt +]--
	local ED_ZEA_Passive_20_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		red_both_tghns_n_health_dmg_fr,
		"- Ne se déclenche que sur les Dégâts de Santé (même lorsqu'il est abattu).",
		"- Se déclenche toujours pour le Fanatiques si les conditions sont remplies.",
		"- N'a pas de limite de Portée lorsqu'il est déclenché par des Alliés ou des Bots (la Syntonie n'est PAS requise !).",
		"- Le Talent ne peut appliquer son bonus de Réduction des Dégâts qu'une seule fois par déclenchement.",
		"- Il a un Temps de Recharge Global qui est partagé entre tous les joueurs (et les bots).",
		"- Ainsi, si le Talent a été déclenché par le Fanatiques ou par un Allié, il accorde son bonus de Réduction des Dégâts uniquement au joueur qui l'a déclenché avant d'entrer en Temps de Recharge pendant 10 secondes.",
		"- Le Temps de Recharge commence immédiatement pendant la durée active de 4 secondes du bonus.",
		stacks_mult_w_other_dmg_red_buffs_fr,
		"- N'a pas d'icône HUD mais joue un effet d'écran pendant sa durée active.",
		-- "- Si plusieurs Zélotess utilisent tous \"Shield of Contempt\", le Talent fonctionne comme suit : Le premier Fanatiques à subir des Dégâts de Santé 'réclame' le buff de Réduction des Dégâts. Il dure 4 secondes, pendant lesquelles il se cumule se multiplie avec les buffs \"Shield of Contempt\" d'autres Zélotess, jusqu'à 97,44 % de Réduction des Dégâts avec quatre Zélotess (1-0,4⁴=0,9744), uniquement si les autres Zélotess déclenchent également leurs Talents pendant que la durée du buff 'réclamé' par le premier Fanatiques est toujours active. Étant donné que le buff de Réduction des Dégâts ne peut être appliqué qu'une seule fois par déclenchement, il ne profite pas aux Zélotess qui déclenchent leurs Talents alors que le premier Fanatiques a toujours le buff de Réduction des Dégâts.",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - Prompt à la colère +]--
	local ED_ZEA_Passive_21_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Accorde l'immunité aux Étourdissements et aux Ralentissements des attaques de Mêlée et à distance.",
		"- Permet également au Fanatiques de se déplacer dans les zones de feu sans entrave.",
		"- Le bonus de vitesse de déplacement ne se déclenche que sur les Dégâts de Santé subis.",
		"- S'additionne avec les buffs associés de \"Champ d'ombre\" et des Bénédictions d'armes comme \"Vrombissement\".",
		"- se cumule multiplicativement avec le bonus de vitesse de Sprint de \"Certitude expéditive\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 22 - Bon équilibre +]--
	local ED_ZEA_Passive_22_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		red_both_tghns_n_health_dmg_fr,
		"- Peut être rafraîchi pendant la durée active.",
		stacks_mult_w_other_dmg_red_buffs_fr,
		procs_on_succss_dodging_fr,
		succss_dodge_means_fr,
		z_ghost_hitnrun_n_stripp_fr,
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Desperation +]--
	local ED_ZEA_Passive_23_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Lorsque la Stamina atteint 0 en raison du Sprint, de la Poussée ou du Blocage des attaques de Mêlée ennemies, augmente les dégâts des attaques de Mêlée de 20 % pendant 5 secondes.",
		can_be_refr_dur_active_dur_fr,
		stacks_add_w_oth_dmg_fr,
		"- Si déclenché par le Sprint, le début de la durée du buff est retardé jusqu'à ce que l'action de Sprint s'arrête.",
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Holy Revenant +]--
	local ED_ZEA_Passive_24_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Pendant la durée de 5 secondes de \"Jusqu'à la mort\", vole 0,7 % des Dégâts non-Mêlée et 2,1 % des Dégâts de Mêlée infligés aux ennemis.",
		"- Lorsque \"Jusqu'à la mort\" se termine, convertit le montant volé en Santé, jusqu'à 25 % de la Santé maximale du Fanatique.",
	}, "\n"), enhdesc_col)

	--[+ Passive 25 - Sainted Gunslinger +]--
	local ED_ZEA_Passive_25_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Les éliminations en Mêlée accordent des Cumuls (jusqu'à 5).",
		"- Les Cumuls durent jusqu'à leur consommation par le Rechargement ou par le Chargement de munitions spéciales (Fusils à pompe).",
		"- Par Cumul, augmente la vitesse d'animation de Rechargement de 6 %.",
		"- S'additionne avec les buffs de vitesse de Rechargement des Bénédictions d'armes, des Bénédictions d'armes et de Stimulant de Célérité.",
		"- Cela augmente également la vitesse de Chargement de l'action spéciale des Fusils à pompe.",
	}, "\n"), enhdesc_col)
	
	--[+ Passive 26 - Marteau de la foi +]--
	local ED_ZEA_Passive_26_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la force d'Étourdissement des attaques de Mêlée et à distance.",
		"- S'applique également aux actions spéciales de Mêlée des armes à distance.",
		"- S'additionne avec les bonus associés de \"Blessures graves\", \"Châtiment\" ou \"Balle de l'Empereur\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Blessures graves +]--
	local ED_ZEA_Passive_27_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente la force d'Étourdissement sur les coups sur Points faibles avec les attaques de Mêlée de 50 %.",
		"- S'applique également aux actions spéciales de Mêlée des armes à distance.",
		"- S'additionne avec les buffs associés de \"Marteau de la foi\", \"Châtiment\" ou \"Balle de l'Empereur\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - Ambuscade +]--
	local ED_ZEA_Passive_28_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Active le l'attaque de Flanc.",
		"- Augmente les dégâts de 30 % en cas d'attaque de Flanc.",
		"- S'additionne avec la Bénédiction d'arme \"Feu balayant\", et se multiplie à d'autres bonus de dégâts et les bonus de de Puissance des Bénédictions d'armes.",
		"- \"Flanc\" fait référence aux attaques à distance exécutées depuis un angle spécifique derrière le dos d'un ennemi. C'est l'équivalent à distance du Coup dans le dos.",
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Châtiment +]--
	local ED_ZEA_Passive_29_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Frapper trois ennemis ou plus avec des attaques de Mêlée accorde des Cumuls (jusqu'à 5).",
		"- Les Cumuls durent 5 secondes et peuvent être rafraîchis pendant la durée active.",
		"- Par Cumul, augmente la force d'Étourdissement des attaques de Mêlée et à distance de 5 %.",
		"- S'additionne avec les buffs d'Étourdissement de \"Blessures graves\", \"Marteau de la foi\", \"Balle de l'Empereur\" et des Bénédictions d'armes, et se multiplie aux bonus de de Puissance des Bénédictions d'armes.",
		"- Au nombre maximum de Cumuls, accorde également l'immunité aux Étourdissements des attaques de Mêlée et à distance (les effets de Ralentissement s'appliquent toujours), et rend les actions d'interaction du Fanatique (par exemple, réanimer ou interagir avec des objets) ininterrompables afin qu'elles ne puissent pas être annulées dans le cadre des réactions de coups lorsqu'il subit des Dégâts de Santé.",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Frénésie loyale +]--
	local ED_ZEA_Passive_30_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les bonus associés de \"Fureur des fidèles\", \"Jugement inexorable\", \"Maniaque\", \"Balle de l'Empereur\" et Stimulant de Célérité.",
	}, "\n"), enhdesc_col)

	--[+ Passive 31 - Sustained Irruption +]--
	local ED_ZEA_Passive_31_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Frapper des ennemis avec des attaques de Mêlée (y compris les actions spéciales de Mêlée des armes à distance) accorde des Cumuls (jusqu'à 5).",
		"- S'additionne avec les bonus d'Étourdissement de \"Blessures graves\", \"Marteau de la foi\", \"Balle de l'Empereur\" et des Bénédictions d'armes, et se multiplie aux bonus de de Puissance des Bénédictions d'armes.",
		"- Par Cumul, augmente les Dégâts de Mêlée de 4 %.",
		stacks_add_w_oth_dmg_fr,
	}, "\n"), enhdesc_col)
	
	--[+ Passive 32 - The Master's Retribution +]--
	local ED_ZEA_Passive_32_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Si n'est pas en recharge, libère une poussée qui Étourdit l'attaquant (si possible) lorsqu'il subit un coup de Mêlée.",
		"- La poussée a une portée de 2,75 mètres et un angle de poussée effectif assez étroit (~22°).",
		"- S'applique toujours à l'attaquant direct (si possible).",
		"- Pousse des cibles supplémentaires (si possible) lorsqu'elles se trouvent dans l'angle de poussée effectif.",
		"- La Poussée ne peut pas Étourdir : Broyeur, Mutants, Furax, Monstruosités et Capitaines/Jumeaux.",
		"- Le coup de bouclier de Rempart, bien qu'il n'inflige aucun dégât, déclenche le Talent.",
		"- Ne se déclenche pas lorsque le Fanatique est immobilisé ou abattu.",
	}, "\n"), enhdesc_col)

	--[+ Passive 33 - Faith's Fortitude +]--
	local ED_ZEA_Passive_33_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- S'additionne avec les Blessures supplémentaires des curiosités.",
	}, "\n"), enhdesc_col)

	--[+ Passive 34 - Certitude expéditive +]--
	local ED_ZEA_Passive_34_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Augmente toujours la vitesse de Sprint de 5 %. Ce bonus de vitesse de Sprint se cumule se multiplie aux bonus de vitesse de Mouvement de \"Champ d'ombre\", \"Prompt à la colère\", le petit noeud de vitesse de Mouvement et les Bénédictions d'armes comme \"Vrombissement\".",
		"- Permet également au Fanatique de rester en état d'Esquive de Sprint lorsque l'endurance est épuisée. Normalement, lorsqu'on Esquive en Sprintant autour des ennemis en tirant (l'angle entre la direction du regard du Fanatique et la position de l'ennemi doit être d'au moins 70°), l'ennemi finira par commencer à toucher le joueur dès que l'endurance atteint 0. Le Talent préserve la capacité d'Esquive de Sprint indépendamment du fait que le Fanatiques ait de l'endurance ou non.",
		"L'Esquive de Sprint ne remplit pas les conditions de déclenchement de \"Danse mortelle\", \"Duelliste\", \"Bon équilibre\", \"Calme enivrant\" et \"Second souffle\".",
	}, "\n"), enhdesc_col)


	return {
	ED_PSY_Blitz_0_rgb_fr = ED_PSY_Blitz_0_rgb_fr,
	ED_PSY_Blitz_1_rgb_fr = ED_PSY_Blitz_1_rgb_fr,
	ED_PSY_Blitz_1_1_rgb_fr = ED_PSY_Blitz_1_1_rgb_fr,
	ED_PSY_Blitz_1_2_rgb_fr = ED_PSY_Blitz_1_2_rgb_fr,
	ED_PSY_Blitz_2_rgb_fr = ED_PSY_Blitz_2_rgb_fr,
	ED_PSY_Blitz_2_1_rgb_fr = ED_PSY_Blitz_2_1_rgb_fr,
	ED_PSY_Blitz_2_2_rgb_fr = ED_PSY_Blitz_2_2_rgb_fr,
	ED_PSY_Blitz_2_3_rgb_fr = ED_PSY_Blitz_2_3_rgb_fr,
	ED_PSY_Blitz_3_rgb_fr = ED_PSY_Blitz_3_rgb_fr,
	ED_PSY_Blitz_3_1_rgb_fr = ED_PSY_Blitz_3_1_rgb_fr,
	ED_PSY_Blitz_3_2_rgb_fr = ED_PSY_Blitz_3_2_rgb_fr,

	ED_PSY_Aura_0_rgb_fr = ED_PSY_Aura_0_rgb_fr,
	ED_PSY_Aura_1_rgb_fr = ED_PSY_Aura_1_rgb_fr,
	ED_PSY_Aura_2_rgb_fr = ED_PSY_Aura_2_rgb_fr,
	ED_PSY_Aura_3_rgb_fr = ED_PSY_Aura_3_rgb_fr,

	ED_PSY_Ability_0_rgb_fr = ED_PSY_Ability_0_rgb_fr,
	ED_PSY_Ability_1_rgb_fr = ED_PSY_Ability_1_rgb_fr,
	ED_PSY_Ability_1_1_rgb_fr = ED_PSY_Ability_1_1_rgb_fr,
	ED_PSY_Ability_1_2_rgb_fr = ED_PSY_Ability_1_2_rgb_fr,
	ED_PSY_Ability_1_3_rgb_fr = ED_PSY_Ability_1_3_rgb_fr,
	ED_PSY_Ability_2_rgb_fr = ED_PSY_Ability_2_rgb_fr,
	ED_PSY_Ability_2_1_rgb_fr = ED_PSY_Ability_2_1_rgb_fr,
	ED_PSY_Ability_2_2_rgb_fr = ED_PSY_Ability_2_2_rgb_fr,
	ED_PSY_Ability_2_3_rgb_fr = ED_PSY_Ability_2_3_rgb_fr,
	ED_PSY_Ability_2_4_rgb_fr = ED_PSY_Ability_2_4_rgb_fr,
	ED_PSY_Ability_3_rgb_fr = ED_PSY_Ability_3_rgb_fr,
	ED_PSY_Ability_3_1_rgb_fr = ED_PSY_Ability_3_1_rgb_fr,
	ED_PSY_Ability_3_2_rgb_fr = ED_PSY_Ability_3_2_rgb_fr,
	ED_PSY_Ability_3_3_rgb_fr = ED_PSY_Ability_3_3_rgb_fr,
	ED_PSY_Ability_3_4_rgb_fr = ED_PSY_Ability_3_4_rgb_fr,
	ED_PSY_Ability_3_5_rgb_fr = ED_PSY_Ability_3_5_rgb_fr,

	ED_PSY_Keystone_1_rgb_fr = ED_PSY_Keystone_1_rgb_fr,
	ED_PSY_Keystone_1_1_rgb_fr = ED_PSY_Keystone_1_1_rgb_fr,
	ED_PSY_Keystone_1_2_rgb_fr = ED_PSY_Keystone_1_2_rgb_fr,
	ED_PSY_Keystone_1_3_rgb_fr = ED_PSY_Keystone_1_3_rgb_fr,
	ED_PSY_Keystone_1_4_rgb_fr = ED_PSY_Keystone_1_4_rgb_fr,
	ED_PSY_Keystone_1_5_rgb_fr = ED_PSY_Keystone_1_5_rgb_fr,
	ED_PSY_Keystone_1_6_rgb_fr = ED_PSY_Keystone_1_6_rgb_fr,
	ED_PSY_Keystone_2_rgb_fr = ED_PSY_Keystone_2_rgb_fr,
	ED_PSY_Keystone_2_0_1_rgb_fr = ED_PSY_Keystone_2_0_1_rgb_fr,
	ED_PSY_Keystone_2_0_2_rgb_fr = ED_PSY_Keystone_2_0_2_rgb_fr,
	ED_PSY_Keystone_2_0_3_rgb_fr = ED_PSY_Keystone_2_0_3_rgb_fr,
	ED_PSY_Keystone_2_1_rgb_fr = ED_PSY_Keystone_2_1_rgb_fr,
	ED_PSY_Keystone_2_2_rgb_fr = ED_PSY_Keystone_2_2_rgb_fr,
	ED_PSY_Keystone_2_3_rgb_fr = ED_PSY_Keystone_2_3_rgb_fr,
	ED_PSY_Keystone_2_4_rgb_fr = ED_PSY_Keystone_2_4_rgb_fr,
	ED_PSY_Keystone_3_rgb_fr = ED_PSY_Keystone_3_rgb_fr,
	ED_PSY_Keystone_3_1_rgb_fr = ED_PSY_Keystone_3_1_rgb_fr,
	ED_PSY_Keystone_3_2_rgb_fr = ED_PSY_Keystone_3_2_rgb_fr,
	ED_PSY_Keystone_3_3_rgb_fr = ED_PSY_Keystone_3_3_rgb_fr,
	ED_PSY_Keystone_3_4_rgb_fr = ED_PSY_Keystone_3_4_rgb_fr,

	ED_PSY_Passive_1_rgb_fr = ED_PSY_Passive_1_rgb_fr,
	ED_PSY_Passive_2_rgb_fr = ED_PSY_Passive_2_rgb_fr,
	ED_PSY_Passive_3_rgb_fr = ED_PSY_Passive_3_rgb_fr,
	ED_PSY_Passive_4_rgb_fr = ED_PSY_Passive_4_rgb_fr,
	ED_PSY_Passive_5_rgb_fr = ED_PSY_Passive_5_rgb_fr,
	ED_PSY_Passive_6_rgb_fr = ED_PSY_Passive_6_rgb_fr,
	ED_PSY_Passive_7_rgb_fr = ED_PSY_Passive_7_rgb_fr,
	ED_PSY_Passive_8_rgb_fr = ED_PSY_Passive_8_rgb_fr,
	ED_PSY_Passive_9_rgb_fr = ED_PSY_Passive_9_rgb_fr,
	ED_PSY_Passive_10_rgb_fr = ED_PSY_Passive_10_rgb_fr,
	ED_PSY_Passive_11_rgb_fr = ED_PSY_Passive_11_rgb_fr,
	ED_PSY_Passive_12_rgb_fr = ED_PSY_Passive_12_rgb_fr,
	ED_PSY_Passive_13_rgb_fr = ED_PSY_Passive_13_rgb_fr,
	ED_PSY_Passive_14_rgb_fr = ED_PSY_Passive_14_rgb_fr,
	ED_PSY_Passive_15_rgb_fr = ED_PSY_Passive_15_rgb_fr,
	ED_PSY_Passive_16_rgb_fr = ED_PSY_Passive_16_rgb_fr,
	ED_PSY_Passive_17_rgb_fr = ED_PSY_Passive_17_rgb_fr,
	ED_PSY_Passive_18_rgb_fr = ED_PSY_Passive_18_rgb_fr,
	ED_PSY_Passive_19_rgb_fr = ED_PSY_Passive_19_rgb_fr,
	ED_PSY_Passive_20_rgb_fr = ED_PSY_Passive_20_rgb_fr,
	ED_PSY_Passive_21_rgb_fr = ED_PSY_Passive_21_rgb_fr,
	ED_PSY_Passive_22_rgb_fr = ED_PSY_Passive_22_rgb_fr,
	ED_PSY_Passive_23_rgb_fr = ED_PSY_Passive_23_rgb_fr,
	ED_PSY_Passive_24_rgb_fr = ED_PSY_Passive_24_rgb_fr,
	ED_PSY_Passive_25_rgb_fr = ED_PSY_Passive_25_rgb_fr,
	ED_PSY_Passive_26_rgb_fr = ED_PSY_Passive_26_rgb_fr,
	ED_PSY_Passive_27_rgb_fr = ED_PSY_Passive_27_rgb_fr,
	ED_PSY_Passive_28_rgb_fr = ED_PSY_Passive_28_rgb_fr,
	ED_PSY_Passive_29_rgb_fr = ED_PSY_Passive_29_rgb_fr,
	ED_PSY_Passive_30_rgb_fr = ED_PSY_Passive_30_rgb_fr,
	ED_PSY_Passive_31_rgb_fr = ED_PSY_Passive_31_rgb_fr,
	ED_PSY_Passive_32_rgb_fr = ED_PSY_Passive_32_rgb_fr,

	ED_ZEA_Blitz_0_rgb_fr = ED_ZEA_Blitz_0_rgb_fr,
	ED_ZEA_Blitz_1_rgb_fr = ED_ZEA_Blitz_1_rgb_fr,
	ED_ZEA_Blitz_1_1_rgb_fr = ED_ZEA_Blitz_1_1_rgb_fr,
	ED_ZEA_Blitz_1_2_rgb_fr = ED_ZEA_Blitz_1_2_rgb_fr,
	ED_ZEA_Blitz_2_rgb_fr = ED_ZEA_Blitz_2_rgb_fr,
	ED_ZEA_Blitz_2_1_rgb_fr = ED_ZEA_Blitz_2_1_rgb_fr,
	ED_ZEA_Blitz_2_2_rgb_fr = ED_ZEA_Blitz_2_2_rgb_fr,
	ED_ZEA_Blitz_2_3_rgb_fr = ED_ZEA_Blitz_2_3_rgb_fr,
	ED_ZEA_Blitz_3_rgb_fr = ED_ZEA_Blitz_3_rgb_fr,
	ED_ZEA_Blitz_3_1_rgb_fr = ED_ZEA_Blitz_3_1_rgb_fr,
	ED_ZEA_Blitz_3_2_rgb_fr = ED_ZEA_Blitz_3_2_rgb_fr,
	ED_ZEA_Aura_0_n_1_rgb_fr = ED_ZEA_Aura_0_n_1_rgb_fr,
	ED_ZEA_Aura_2_rgb_fr = ED_ZEA_Aura_2_rgb_fr,
	ED_ZEA_Aura_3_rgb_fr = ED_ZEA_Aura_3_rgb_fr,

	ED_ZEA_Ability_0_rgb_fr = ED_ZEA_Ability_0_rgb_fr,
	ED_ZEA_Ability_1_rgb_fr = ED_ZEA_Ability_1_rgb_fr,
	ED_ZEA_Ability_1_1_rgb_fr = ED_ZEA_Ability_1_1_rgb_fr,
	ED_ZEA_Ability_1_2_rgb_fr = ED_ZEA_Ability_1_2_rgb_fr,
	ED_ZEA_Ability_2_rgb_fr = ED_ZEA_Ability_2_rgb_fr,
	ED_ZEA_Ability_2_1_rgb_fr = ED_ZEA_Ability_2_1_rgb_fr,
	ED_ZEA_Ability_2_2_rgb_fr = ED_ZEA_Ability_2_2_rgb_fr,
	ED_ZEA_Ability_2_3_rgb_fr = ED_ZEA_Ability_2_3_rgb_fr,
	ED_ZEA_Ability_2_4_rgb_fr = ED_ZEA_Ability_2_4_rgb_fr,
	ED_ZEA_Ability_3_rgb_fr = ED_ZEA_Ability_3_rgb_fr,
	ED_ZEA_Ability_3_2_rgb_fr = ED_ZEA_Ability_3_2_rgb_fr,
	ED_ZEA_Ability_3_3_rgb_fr = ED_ZEA_Ability_3_3_rgb_fr,
	ED_ZEA_Ability_3_4_rgb_fr = ED_ZEA_Ability_3_4_rgb_fr,

	ED_ZEA_Keystone_1_rgb_fr = ED_ZEA_Keystone_1_rgb_fr,
	ED_ZEA_Keystone_1_1_rgb_fr = ED_ZEA_Keystone_1_1_rgb_fr,
	ED_ZEA_Keystone_1_2_rgb_fr = ED_ZEA_Keystone_1_2_rgb_fr,
	ED_ZEA_Keystone_1_3_rgb_fr = ED_ZEA_Keystone_1_3_rgb_fr,
	ED_ZEA_Keystone_1_4_rgb_fr = ED_ZEA_Keystone_1_4_rgb_fr,
	ED_ZEA_Keystone_2_rgb_fr = ED_ZEA_Keystone_2_rgb_fr,
	ED_ZEA_Keystone_2_1_rgb_fr = ED_ZEA_Keystone_2_1_rgb_fr,
	ED_ZEA_Keystone_2_2_rgb_fr = ED_ZEA_Keystone_2_2_rgb_fr,
	ED_ZEA_Keystone_3_rgb_fr = ED_ZEA_Keystone_3_rgb_fr,
	ED_ZEA_Keystone_3_1_rgb_fr = ED_ZEA_Keystone_3_1_rgb_fr,
	ED_ZEA_Keystone_3_2_rgb_fr = ED_ZEA_Keystone_3_2_rgb_fr,

	ED_ZEA_Passive_1_rgb_fr = ED_ZEA_Passive_1_rgb_fr,
	ED_ZEA_Passive_2_rgb_fr = ED_ZEA_Passive_2_rgb_fr,
	ED_ZEA_Passive_3_rgb_fr = ED_ZEA_Passive_3_rgb_fr,
	ED_ZEA_Passive_4_rgb_fr = ED_ZEA_Passive_4_rgb_fr,
	ED_ZEA_Passive_5_rgb_fr = ED_ZEA_Passive_5_rgb_fr,
	ED_ZEA_Passive_6_rgb_fr = ED_ZEA_Passive_6_rgb_fr,
	ED_ZEA_Passive_7_rgb_fr = ED_ZEA_Passive_7_rgb_fr,
	ED_ZEA_Passive_8_rgb_fr = ED_ZEA_Passive_8_rgb_fr,
	ED_ZEA_Passive_9_rgb_fr = ED_ZEA_Passive_9_rgb_fr,
	ED_ZEA_Passive_10_rgb_fr = ED_ZEA_Passive_10_rgb_fr,
	ED_ZEA_Passive_11_rgb_fr = ED_ZEA_Passive_11_rgb_fr,
	ED_ZEA_Passive_12_rgb_fr = ED_ZEA_Passive_12_rgb_fr,
	ED_ZEA_Passive_13_rgb_fr = ED_ZEA_Passive_13_rgb_fr,
	ED_ZEA_Passive_14_rgb_fr = ED_ZEA_Passive_14_rgb_fr,
	ED_ZEA_Passive_15_rgb_fr = ED_ZEA_Passive_15_rgb_fr,
	ED_ZEA_Passive_16_rgb_fr = ED_ZEA_Passive_16_rgb_fr,
	ED_ZEA_Passive_17_rgb_fr = ED_ZEA_Passive_17_rgb_fr,
	ED_ZEA_Passive_18_rgb_fr = ED_ZEA_Passive_18_rgb_fr,
	ED_ZEA_Passive_19_rgb_fr = ED_ZEA_Passive_19_rgb_fr,
	ED_ZEA_Passive_20_rgb_fr = ED_ZEA_Passive_20_rgb_fr,
	ED_ZEA_Passive_21_rgb_fr = ED_ZEA_Passive_21_rgb_fr,
	ED_ZEA_Passive_22_rgb_fr = ED_ZEA_Passive_22_rgb_fr,
	ED_ZEA_Passive_23_rgb_fr = ED_ZEA_Passive_23_rgb_fr,
	ED_ZEA_Passive_24_rgb_fr = ED_ZEA_Passive_24_rgb_fr,
	ED_ZEA_Passive_25_rgb_fr = ED_ZEA_Passive_25_rgb_fr,
	ED_ZEA_Passive_26_rgb_fr = ED_ZEA_Passive_26_rgb_fr,
	ED_ZEA_Passive_27_rgb_fr = ED_ZEA_Passive_27_rgb_fr,
	ED_ZEA_Passive_28_rgb_fr = ED_ZEA_Passive_28_rgb_fr,
	ED_ZEA_Passive_29_rgb_fr = ED_ZEA_Passive_29_rgb_fr,
	ED_ZEA_Passive_30_rgb_fr = ED_ZEA_Passive_30_rgb_fr,
	ED_ZEA_Passive_31_rgb_fr = ED_ZEA_Passive_31_rgb_fr,
	ED_ZEA_Passive_32_rgb_fr = ED_ZEA_Passive_32_rgb_fr,
	ED_ZEA_Passive_33_rgb_fr = ED_ZEA_Passive_33_rgb_fr,
	ED_ZEA_Passive_34_rgb_fr = ED_ZEA_Passive_34_rgb_fr,

}
