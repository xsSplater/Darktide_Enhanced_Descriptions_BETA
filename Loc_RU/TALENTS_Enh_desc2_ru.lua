---@diagnostic disable: undefined-global
local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text



			-- ============ DO NOT DO ANYTHING ABOVE! ============ --

-- Check the length of the text in the game and adjust it so that the descriptions do not extend the card beyond the screen.
-- If you can't shorten it, you can simply hide the least useful line by adding "--" before that line.
-- Extended descriptions have a lower priority than the main description, imho.

-- If you added/changed something, then you need to duplicate/change the same entry in the list below.
-- For example, you change "ED_VET_Blitz_0_rgb_ru" to "ED_VET_Blitz_0_rgb_ru_urlang", then at the bottom you need to find (CTRL+F) the "ED_VET_Blitz_0_rgb_ru" entries and also rename them from "ED_VET_Blitz_0_rgb_ru = ED_VET_Blitz_0_rgb_ru," to "ED_VET_Blitz_0_rgb_ru_urlang = ED_VET_Blitz_0_rgb_ru_urlang,".
-- If you add a new entry (ex. MyEntry_rgb_ru), just duplicate it in the list below (MyEntry_rgb_ru = MyEntry_rgb_ru,).

local ppp______ppp = "\n+++-------------------------------------------------+++"
local become_invis_drop_all_enemy_aggro = "- Став невидимым, вы сбрасываете всё вражеское внимание: враги ближнего боя немедленно переключаются на другую цель, а стрелки прекращают стрельбу, затем переключаются на другую цель, если возможно."
local can_be_refr_dur_active_dur = "- Может быть обновлено во время активности."
local doesnt_interact_w_c_a_r_from_curio = "- Не взаимодействует с восстановлением боевых способностей от редкостей, которое только снижает максимальное время восстановления боевой способности."
local doesnt_stack_w_z_same_aura_ogr = "- Не суммируется с такой же аурой другого Огрина."
local doesnt_stack_w_z_same_aura_vet = "- Не суммируется с такой же аурой другого Ветерана."
local procs_add_conc_stim_rem_cd_red = "- Действует совместно к эффектом сокращения времени восстановления от стимулятора концентрации: на 3 секунды в секунду."
local stacks_add_w_oth_dmg = "- Складывается с другими усилениями урона и перемножается с усилениями уровня силы от благословений оружия."
local stacks_add_w_oth_rend_brit = "- Складывается с другими эффектами пробивания и хрупкости брони, применяемыми к врагам."
local stacks_mult_w_other_dmg_red_buffs = "- Перемножается с другими усилениями снижения урона."
local this_also_incr_speed_load_com_shotg = "- Также увеличивает скорость заряжания спецпатрона боевых дробовиков."
local this_also_buffs_melee_sp_act_guns = "- Также усиливает специальные действия ближнего боя у дробовика-потрошителя, гренадёрской перчатки (ближний бой), гранатомёта, тяжёлых стабберов и дробовика."
local z_eff_of_this_tougn_rep = "- Эффективность этого восстановления стойкости зависит от некоторых ослаблений игроков, таких как токсичный газ."

--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ ++VETERAN++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Frag Grenade +]--
	local ED_VET_Blitz_0_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Fuse time: 1.7 seconds.",
		-- "- Explosion radius: 10 meters (max), 2 meters (epicenter).",
		-- "- Explosion Damage:",
		-- "-- Enemies inside epicenter will take more Damage, enemies between epicenter and max radius will take less Damage depending on distance",
		-- "-- Base Damage epicenter: 500.",
		-- "-- Base Damage between epicenter and max radius: 200.",
		-- "-- Average armor Damage modifiers across the board, very low armor Damage modifier against Carapace.",
		-- "-- Explosion Damage is increased by Rending/Brittleness, by \"Skullcrusher\" Blessing (while Staggered), and by Damage buffs from \"Bring it Down!\", \"Close Quarters Killzone\" (if within 30 meters to the enemy), \"Competitive Urge\", \"Covering Fire\" (if applied to Veteran by another Veteran), \"Focus Target!\" (if Tagged), \"Grenade Tinkerer\", \"Longshot\" (if not within 12.5 meters to the enemy), \"Redirect Fire!\", \"Skirmisher\", \"Superiority Complex\" (against Elites), \"Surprise Attack\", and aura \"Fire Team\".",
		-- "- Stagger: Deals high Stagger against all enemies including Monstrosities, except for Captains/Twin.",
		-- "- Ammo: replenishes all grenades per grenade pickup.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1 - Frag Grenade +]--
	local ED_VET_Blitz_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Fuse time: 1.7 seconds.",
		-- "- Explosion radius: 10 meters (max), 2 meters (epicenter).",
		-- "- Explosion Damage:",
		-- "-- Enemies inside epicenter will take more Damage, enemies between epicenter and max radius will take less Damage depending on distance",
		-- "-- Base Damage epicenter: 500.",
		-- "-- Base Damage between epicenter and max radius: 200.",
		-- "-- Average armor Damage modifiers across the board, very low armor Damage modifier against Carapace.",
		-- "-- Explosion Damage is increased by Rending/Brittleness, by \"Skullcrusher\" Blessing (while Staggered), and by Damage buffs from \"Bring it Down!\", \"Close Quarters Killzone\" (if within 30 meters to the enemy), \"Competitive Urge\", \"Covering Fire\" (if applied to Veteran by another Veteran), \"Focus Target!\" (if Tagged), \"Grenade Tinkerer\", \"Longshot\" (if not within 12.5 meters to the enemy), \"Redirect Fire!\", \"Skirmisher\", \"Superiority Complex\" (against Elites), \"Surprise Attack\", and aura \"Fire Team\".",
		-- "- Stagger: Deals high Stagger against all enemies including Monstrosities, except for Captains/Twin.",
		-- "- Ammo: replenishes all grenades per grenade pickup.",
		-- "- Bleed: Applies 6 Stacks of Bleed on explosion.",
		-- "-- The same Bleed like other sources of Bleed: 16 Max Stacks on a target, ticks every 0.5 seconds, lasts 1.5 seconds.",
		-- "-- Bleed Damage is increased by the same sources (except \"Grenade Tinkerer\") that also buff the grenade's explosion Damage (see above).",
		-- "-- Additionally, Bleed Damage is affected by Perks of currently equipped Weapons and the buffs from Blessings.",
		-- "- Additionally, bleed damage is affected by perks of currently equipped weapons and the following buffs from:",
		-- "- Blessings (Melee): if procced with Weapon before or during Bleed's active duration: \"Executor\", \"High Voltage\" (while Electrocuted), \"Skullcrusher\" (while Staggered), and \"Slaughterer\".",
		-- "- Blessings (Ranged): if procced with Weapon before or during Bleed's active duration: \"Blaze Away\", \"Deathspitter\", \"Dumdum\", \"Execution\" (while Staggered), \"Fire Frenzy\", \"Full Bore\", \"No Respite\" (while Staggered), \"Pinning Fire\", and \"Run and Gun\" (while Sprinting).",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2 - Krak Grenade +]--
	local ED_VET_Blitz_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Explosion radius: 1.5 meters (epicenter), 5 meters (max).",
		-- "- Explosion damage:",
		-- "-- Enemies inside epicenter will take more Damage, enemies between epicenter and Max radius will take less Damage depending on distance, enemies that the grenade sticks to always take epicenter damage.",
		-- "-- Base Damage epicenter: 2400.",
		-- "-- Base damage between epicenter and max radius: 500.",
		-- "-- Inside epicenter, good armor Damage modifiers across the board and very high armor Damage modifiers against Carapace, Flak, Unyielding.",
		-- "-- Outside epicenter, decent armor Damage modifiers across the board.",
		-- "-- Explosion Damage is increased by Rending/Brittleness, by \"Skullcrusher\" Blessing (while Staggered), and by Damage buffs from \"Bring it Down!\", \"Close Quarters Killzone\" (if within 30 meters to the enemy), \"Competitive Urge\", \"Covering Fire\" (if applied to Veteran by another Veteran), \"Focus Target!\" (if Tagged), \"Grenade Tinkerer\", \"Longshot\" (if not within 12.5 meters to the enemy), \"Redirect Fire!\", \"Skirmisher\", \"Superiority Complex\" (against Elites), \"Surprise Attack\", and aura \"Fire Team\".",
		-- "- Stagger:",
		-- "-- Deals high Stagger against all enemies including Monstrosities.",
		-- "-- Against Captains/Twins only without void shield.",
		-- "- Ammo: replenishes all grenades per grenade pickup.",
		-- "- Regardless of the hit zone the projectile sticks to, the explosion will always target center mass hit zone dealing the same Damage.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Smoke Grenade +]--
	local ED_VET_Blitz_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Initial explosion deals no Damage and very light Stagger, 10m radius",
		-- "- Smoke cloud effect:",
		-- "-- Radius: 5.5 meters.",
		-- "-- Lasts for 15 seconds.",
		-- "-- Disables HUD nameplates of Allies.",
		-- "-- Players inside smoke are considered \"concealed\" which alters the line of sight distance requirement of enemies during target selection.",
		-- "-- If a player holds aggro of an enemy who is in Melee combat, the smoke has no effect on enemy perception.",
		-- "-- If a player holds aggro of an enemy who is in Ranged combat, then the smoke makes the Ranged enemy stop firing and change positions (Reaper is less likely to reposition).",
		-- "-- Gunners and Reaper when they are inside the smoke cloud's area of effect themselves keep firing at a player's last known position.",
		-- "-- Pox Hounds cannot lock on a player who is inside smoke cloud's area of effect and will keep circling the cloud (no effect on Mutants and Poxbursters).",
		-- "- Ammo: replenishes all grenades per grenade pickup.",
	}, "\n"), enhdesc_col)

--[+ +AURA+ +]--
	--[+ Aura 0 - Scavenger +]--
	local ED_VET_Aura_0_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- doesnt_stack_w_z_same_aura_vet..", multiple Veterans spread their replenished ammo amounts separately.",
		-- "- For example, with a weapon that has 180 bullets max ammo in reserve: On the first proc, Veteran regains 180x0.01=1.8 bullets which is rounded down to 1; the leftover amount of 1.8-1=0.8 is carried over to the next proc. On the second proc, Veteran regains 180x0.01+0.8=2.6 bullets which is rounded down to 2; the leftover amount of 2.6-2=0.6 is once again carried over to the next proc, and so on. This means, in this case, Veteran gets 1 bullet on the first proc, 2 bullets on the next four procs, and then 1 bullet again on the fifth proc, and so on.",
	}, "\n"), enhdesc_col)

	--[+ Aura 1 - Survivalist +]--
	local ED_VET_Aura_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- doesnt_stack_w_z_same_aura_vet..", multiple Veterans spread their replenished ammo amounts separately.",
		-- "- For example, with a weapon that has 180 bullets max ammo in reserve: On the first proc, Veteran regains 180x0.01=1.8 bullets which is rounded down to 1; the leftover amount of 1.8-1=0.8 is carried over to the next proc. On the second proc, Veteran regains 180x0.01+0.8=2.6 bullets which is rounded down to 2; the leftover amount of 2.6-2=0.6 is once again carried over to the next proc, and so on. This means, in this case, Veteran gets 1 bullet on the first proc, 2 bullets on the next four procs, and then 1 bullet again on the fifth proc, and so on.",
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Fire Team +]--
	local ED_VET_Aura_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		stacks_add_w_oth_dmg,
		doesnt_stack_w_z_same_aura_vet..".",
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Close and Kill +]--
	local ED_VET_Aura_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks additively with Movement Speed buffs from \"Infiltrate\", \"Leave No One Behind\", the small Movement Speed node, and Weapon Blessings like \"Rev it Up\".",
		doesnt_stack_w_z_same_aura_vet..".",
	}, "\n"), enhdesc_col)

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Volley Fire +]--
	local ED_VET_Ability_0_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Increases both Ranged Damage and Ranged Weakspot Damage by 15%.",
		-- "- Stacks additively with related Damage buffs.",
		-- "- Increases Ranged Stagger strength by 50%.",
		-- "- On activation, forces a swap to Ranged weapon playing a short wield animation.",
		-- "- Grants a plethora of buffs to Veteran:",
		-- "-- Immunity to Stuns and Slowdowns from both Melee and Ranged attacks, and Immunity to Suppression.",
		-- "-- Veteran's attack actions cannot be interrupted as part of hit reactions.",
		-- "-- Weapon Spread reduced by 38%.",
		-- "-- Weapon Recoil reduced by 24%, randomness in recoil patterns replaced by a fixed one.",
		-- "-- Weapon Sway reduced by 60% and slightly zoomed in Field Of View.",
		-- "- Lasts for 5 seconds.",
		-- "- Killing an outlined enemy refreshes the active duration by 5 seconds. This also refreshes the duration of outlines on enemies for Veteran.",
		-- "- Ends early when Veteran gets disabled.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Executioner's Stance +]--
	local ED_VET_Ability_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Grants a plethora of buffs to Veteran:",
		-- "-- Immunity to Stuns and Slowdowns from both Melee and Ranged attacks, and Immunity to Suppression.",
		-- "-- Veteran's attack actions cannot be interrupted as part of hit reactions.",
		-- "-- Weapon Spread reduced by 38%.",
		-- "-- Weapon Recoil reduced by 24%, randomness in recoil patterns replaced by a fixed one.",
		-- "-- Weapon Sway reduced by 60% and slightly zoomed in Field Of View.",
		-- "- Stacks additively with related Damage buffs.",
		-- "- Increases Ranged Stagger strength by 100%.",
		-- "- Ends early when Veteran gets disabled.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Enhanced Target Priority +]--
	local ED_VET_Ability_1_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Outlines visible to Allies always last 5 seconds.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Counter-Fire +]--
	-- local ED_VET_Ability_1_2_rgb_ru = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Ability 1-3 - The Bigger they Are... +]--
	-- local ED_VET_Ability_1_3_rgb_ru = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Ability 1-4 - Marksman +]--
	local ED_VET_Ability_1_4_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks additively with other Power level buffs from Weapon Blessings, and multiplicatively with Damage buffs.",
		-- "- \"Power level buffs\" increase the Base Power of attacks which benefits Damage, Stagger, and Cleave (where applicable).",
		-- "- For \"Infiltrate\", the buff is active immediately, only the duration starts when invisibility ends.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Voice of Command +]--
	local ED_VET_Ability_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Sets Veteran's Toughness to 100% upon activation.",
		-- "- Shout:",
		-- "-- Holding the Ability button shows shout range; preview can be block canceled.",
		-- "-- Radius: 9 meters.",
		-- "-- Staggers all enemies within radius.",
		-- "-- Stagger strength decreases with range.",
		-- "-- Does not apply to enemies who are already Staggered.",
		-- "-- Always forces a heavy Stagger against Crusher, Mauler, Mutants, Reaper, Monstrosities, and Captains/Twins (only without Void shield) for 2.5 seconds.",
		-- "-- Does not apply to enemies who are already Staggered.",
		-- "-- Staggers Bulwark only if Veteran is not in front of the shield.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Duty and Honour +]--
	local ED_VET_Ability_2_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- For Veteran, Voice of Command adds 50 bonus Toughness (yellow), additionally to setting Veteran's Toughness to 100% upon activation.",
		-- "- For allies who are in coherency with Veteran, Voice of Command adds 50 Toughness upon activation if their Toughness is below 100%.",
		-- "- If their Toughness is at or above 100%, Voice of Command adds 50 bonus Toughness (yellow) to Allies.",
		-- "- \"Charismatic\" increases the effective Range of this Talent.",
		-- "- Veteran's bonus Toughness lasts for 15 seconds.",
		-- "- Can Stack additively with itself and with bonus Toughness from Zealot's \"Chorus of Spiritual Fortitude\"..",
		-- "- It acts as a 'second' Toughness bar and can be replenished by Melee kills, respective Talents, and Weapon Blessings.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Only In Death Does Duty End +]--
	local ED_VET_Ability_2_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- The Revive effect ignores map geometry.",
		-- "- Reduces Voice of Command's radius from 9 to 6.03 meters.",
		-- "- Allies who are not in this Radius do not get revived regardless of whether they are in Coherency with Veteran or not.",
		-- "- Also increases \"Voice of Command's\" Maximum Cooldown from 30 to 45 seconds.",
		-- "- This Max Cooldown increase Stacks additively with Max Cooldown Reductions from Psyker's aura \"Seer's Presence\", Combat Ability Regeneration from Curios, and the mission mutators that reduce Ability Cooldowns by 20%.",
		-- "- For example, a Veteran with this Talent playing the Maelstrom mutator (-0.2) with three 4% Combat Ability Regeneration Curios (-0.12) will have a \"Voice of Command\" Max Cooldown of 30+30x(0.5-0.32)=35.4 seconds.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - For the Emperor! +]--
	local ED_VET_Ability_2_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Allies get the buff as long as they are in Coherency when the buff is triggered.",
		-- "- Stacks additively with the same Talent of another Veteran and with other Damage buffs.",
		-- "- Multiplicatively with Power level buffs from Weapon Blessings.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Infiltrate +]--
	local ED_VET_Ability_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		"- Stealth: "..become_invis_drop_all_enemy_aggro,
		-- "-- You can still take Damage during Invisibility.",
		-- "-- Stealth breaks on: hitting enemies with a Melee attack, any Ranged attack, throwing a grenade (quickthrow, aimed or underhand), finishing a Rescue/Revive/Pull up/Free from net action.",
		-- "-- Stealth does not break on: throwing a grenade (underhand; Krak Grenades do break Stealth on underhand throws if the projectile hits an enemy); pushing enemies; using Stimms (on self or team mates); exploding grenades that have been thrown before going invisible; active DoT ticks; operating the Auspex device or minigame",
		-- "-- Stealth grace window: actions that would break Stealth do not if they are executed within 0.5 seconds after going Invisible; this allows, if timed accordingly, for one additional Melee or Ranged attack that already benefits from all applicable buffs but does not break Stealth yet.",
		-- "- Breeds that can be Suppressed: Groaner, Dreg Gunner, Dreg Stalker, Reaper, Scab Gunner, Scab Shooter, Scab Stalker.",
		-- "- The Movement Speed buff lasts as long as the Invisibility (8 seconds) and Stacks additively with related buffs from \"Leave No One Behind\", aura \"Close and Kill\", the small Movement Speed node, and Weapon Blessings like \"Rev it Up\".",
		"{#color(255, 35, 5)}Doesn't hide you from a Daemonhosts!{#reset()}",
	}, "\n"), enhdesc_col)


	--[+ Ability 3-1 - Low Profile +]--
	local ED_VET_Ability_3_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- When Invisibility ends, grants a weight multiplier for 10 seconds.",
		-- "- There are multiple factors that are used to calculate the score which determines enemy target selection of player units.",
		-- "- The tldr is that this Talent grants a multiplier which manipulates the score calculation in the player's favor to make it less likely to be targeted by enemies.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-2 - Overwatch +]--
	local ED_VET_Ability_3_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- The Cooldown of the Second charge only starts after the First charge finished its Cooldown.",
		-- "- Also increases Infiltrate's Maximum Cooldown from 45 to 59.85 seconds.",
		-- "- This Max Cooldown increase Stacks additively with Max Cooldown Reductions from Psyker's aura \"Seer's Presence\", Combat Ability Regeneration from Curios, and the mission mutators that Reduce Ability Cooldowns by 20%.",
		-- "- For example, a Veteran with this Talent playing the Maelstrom mutator (-0.2) with a Psyker who has the Cooldown aura (-0.1) will have an \"Infiltrate\" Max Cooldown of 45+45x(0.33-0.3)=46.35 seconds.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Hunter's Resolve +]--
	local ED_VET_Ability_3_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- The 10 seconds duration starts when Invisibility ends.",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-4 - Surprise Attack +]--
	local ED_VET_Ability_3_4_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- The 5 seconds duration starts when Invisibility ends.",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-5 - Close Quarters Killzone +]--
	local ED_VET_Ability_3_5_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- For \"Infiltrate\", the buff is active immediately, only the duration starts when Invisibility ends.",
		-- "- Beyond 12.5 meters, the Damage buff decreases linearly until it loses its effect at 30 meters:",
		-- "_______________________________",
		-- "Distance(m):  1-12.5|   15|   20|   25|   30",
		-- "Damage(%):		 15| ~13|	~9|   ~4|	 0",
		-- "_______________________________",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Marksman's Focus +]--
	local ED_VET_Keystone_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Drops Stacks based on movement:",
		-- "-- Walking removes 1 Stack per second.",
		-- "-- Sprinting removes 1 Stack every 0.5 seconds.",
		-- "-- Also accounts for respective Move Speed while Sliding.",
		-- "- The Finesse bonus Stacks additively with other Weakspot and Finesse Damage buffs, and multiplicatively with Power level buffs from Weapon Blessings.",
		-- "- The Reload Speed Stacks additively with buffs from \"Fleeting Fire\", \"Tactical Reload\", \"Volley Adept\", the small Reload Speed node, Weapon Perks, Weapon Blessings, and Celerity Stimm.",
		-- "- The Reload Speed buff also increases the Speed of the loading special action of Combat Shotguns.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Chink in their Armour +]--
	local ED_VET_Keystone_1_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- When at or above 10 Focus Stacks, grants 10% Rending to all attacks boosting Damage against armor types Carapace, Flak, Maniac, Unyielding (including Damage of explosions and DoTs).",
		-- "- Only affects Veteran's own Damage.",
		stacks_add_w_oth_rend_brit,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Tunnel Vision +]--
	local ED_VET_Keystone_1_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- This Talent does two things:",
		-- "-- 1. Per Focus Stack, increases the amount of any Toughness Replenished by Melee kills and Talents by 5% (up to +50% or, if \"Long Range Assassin\", up to +75%).",
		-- "--- Does not apply to Coherency Toughness Regeneration.",
		-- "--- For example, at 10 Stacks, a Veteran with 152 Max Toughness killing an enemy with a Melee attack replenishes 152x(0.05+0.05x0.5)=11.4 Toughness (HUD rounds up).",
		"--"..z_eff_of_this_tougn_rep,
		-- "-- 2. Ranged Weakspot kills replenish 10% of Maximum Stamina.",
		-- "--- Can proc multiple times when Cleaving.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Long Range Assassin +]--
	-- local ED_VET_Keystone_1_rgb_ru = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - Camouflage +]--
	-- local ED_VET_Keystone_1_rgb_ru = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 2 - Focus Target! +]--
	local ED_VET_Keystone_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Upon Tagging an enemy, applies the amount of Focus Target Stacks currently held by Veteran to the enemy (always at least 1), and resets Veteran's Stack count to 1.",
		-- "- Per applied Stack, increases any Damage taken by the Tagged enemy by 4%.",
		-- "- This debuff lasts for the duration of the Tag (25 seconds) and can Stack up to 8 times on a single enemy.",
		-- "- Enemies Tagged with this Talent are highlighted yellow.",
		-- "- The current amount of Stacks on an enemy can only be overwritten if the amount of new Stacks to be applied is higher than the current one.",
		-- "- Successfully overwriting Stacks refreshes the 25 seconds duration.",
		-- "- Multiple Veterans can overwrite each other's Tags unless there are already 8 Stacks on the enemy.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - Target Down! +]--
	local ED_VET_Keystone_2_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Up to 40% of Max Toughness/Stamina at 8 Stacks.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Redirect Fire! +]--
	local ED_VET_Keystone_2_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Up to 12% increased Damage at 8 Stacks.",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-3 - Focused Fire +]--
	-- local ED_VET_Keystone_2_3_rgb_ru = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3 - Weapons Specialist +]--
	local ED_VET_Keystone_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Generally, whether a Stack is allocated to Ranged Specialist or Melee Specialist depends on which weapon is equipped when the enemy dies.",
		-- "-- Kills by DoTs allocate Stacks accordingly.",
		-- "-- Kills by DoTs while having other items equipped (Grenade, Medpack, Ammo crate, Books, etc) do not generate any Stacks.",
		-- "- Ranged Specialist Stacks additively with Celerity Stimm. Crit chance increase caps out at 3 Stacks in practicality, granting a guaranteed Ranged Crit.",
		-- "- Melee Specialist Stacks additively with related buffs from \"Trench Fighter Drill\" and Celerity Stimm.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Always Prepared +]--
	local ED_VET_Keystone_3_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- For example, Veteran with 6 Ranged Specialist Stacks and a weapon missing 36 bullets in its clip transfers 36x0.33x(6/10)=7.128 bullets which is rounded up to 8.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Invigorated +]--
	local ED_VET_Keystone_3_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Procs separately to the Stamina Replenishment from \"Duck and Dive\", \"Get Back in the Fight!\", and \"Target Down!\".",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-3 - On Your Toes +]--
	local ED_VET_Keystone_3_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Each replenishment has a 3 seconds internal Cooldown that is tracked separately.",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-4 - Fleeting Fire +]--
	local ED_VET_Keystone_3_4_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks additively with buffs from \"Marksman's Focus\", \"Tactical Reload\", \"Volley Adept\", the small Reload Speed node, Weapon Perks, Weapon Blessings, and Celerity Stimm.",
		this_also_incr_speed_load_com_shotg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-5 - Conditioning +]--
	local ED_VET_Keystone_3_5_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks multiplicatively with the Stamina Cost Reduction buff from Celerity Stimm:",
		-- "-- 1. Reduces Stamina drain while Sprinting.",
		-- "--- Stacks multiplicatively with the Sprint Cost Reduction buff from Celerity Stimm and Sprint Efficiency perk on Curios, Ranged and Melee weapons.",
		-- "-- 2. Reduces Stamina drain when Blocking a Melee attack.",
		-- "--- Stacks multiplicatively with Block Cost Reduction buff from Block Efficiency perk on Curios and Melee weapons.",
		-- "-- 3. Reduces the Stamina drain when Pushing and also during Deadshot's duration.",
	}, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Longshot +]--
	local ED_VET_Passive_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Increases any Damage against enemies beyond 12.5 meters.",
		-- "- The Damage buff increases linearly up to 20% at 30 meters. Within 12.5 meters distance, the Talent has no effect:",
		-- "_______________________________",
		-- "Distance(m):  1-12.5|   15|   20|   25|   30",
		-- "Damage(%):		   0|  ~3|	~9|  ~15|   20",
		-- "_______________________________",
		-- "- This also increases the Damage of explosions and DoTs as long as Veteran stays more than 12.5 meters away from the enemy.",
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Close Order Drill +]--
	local ED_VET_Passive_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Reduces Toughness Damage taken by 11% per Ally in Coherency.",
		-- "- Stacks linearly with itself (i.e. 2 Allies = 22%, 3 = 33% Toughness Damage Reduction).",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Passive 3 - One Motion +]--
	local ED_VET_Passive_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Increases Wield Speed by 25%.",
		-- "- This Reduces the time of Wielding actions when Swapping item slots (Weapons, Grenades, Stimms, Med packs, Ammo crates, Books, etc).",
		-- "- For example, when switching to Boltgun or Helbore Lasguns, it takes 1.5 seconds (left-click) or 1.25 seconds (alt fire) until the Shooting/Charging actions can be started. These times are reduced by the Talent to 1.2 seconds and 1 second respectively. For other Weapons, this Talent does not provide significant wield time Reductions.",
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Exhilarating Takedown +]--
	local ED_VET_Passive_4_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Killing enemies with Ranged Weakspot hits does two things:",
		-- "-- 1. Replenishes 15% of Maximum Toughness.",
		-- "--- Can proc multiple times per shot when Cleaving.",
		-- "--"..z_eff_of_this_tougn_rep,
		-- "-- 2. Grants Stacks (up to 3).",
		-- "--- Stacks last for 8 seconds and can be refreshed during active duration.",
		-- "--- Per Stack, reduces Toughness Damage taken by 10%.",
		-- "--- Stacks multiplicatively with itself, up to 27.1% at Max Stacks (1-0.9³=0.271), and with other Damage Reduction buffs.",
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Volley Adept +]--
	local ED_VET_Passive_5_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- The buff is held until consumed upon Reloading.",
		-- "- Stacks additively with Reload Speed buffs from \"Fleeting Fire\", \"Marksman's Focus\", \"Tactical Reload\", the small Reload Speed node, Weapon Perks, Weapon Blessings, and Celerity Stimm.",
		this_also_incr_speed_load_com_shotg,
	}, "\n"), enhdesc_col)

	--[+ Passive 6 - Charismatic +]--
	local ED_VET_Passive_6_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "Increases Veteran's Base Coherency radius from 8 meters to 12 meters.",
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Confirmed Kill +]--
	local ED_VET_Passive_7_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Killing an Elite or a Special does two things:",
		-- "-- 1. Immediately Replenishes 10% of Maximum Toughness per kill.",
		-- "--- Can proc multiple times when Cleaving.",
		-- "-- 2. Additionally per kill, replenishes 2% of Maximum Toughness per second for 10 seconds..",
		-- "--- This replenishment over time effect can proc multiple times when Cleaving and Stacks without a cap (the default HUD displays only a limited amount of buff icons).",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Tactical Reload +]--
	local ED_VET_Passive_8_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Increases Reload animation Speed by 25% if the current ammo count in clip is above 0 when Reloading.",
		-- "- Stacks additively with Reload Speed buffs from \"Fleeting Fire\", \"Marksman's Focus\", \"Volley Adept\", the small Reload Speed node, Weapon Perks, Weapon Blessings, and Celerity Stimm.",
		this_also_incr_speed_load_com_shotg,
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - Out for Blood +]--
	local ED_VET_Passive_9_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Procs on Melee and Ranged kills as well as on kills from explosions.",
		-- "- Procs additionally to Weapon Blessings like \"Inspiring Barrage\", \"Reassuringly Accurate\", \"Gloryhunter\".",
		-- "- When the Talent procs on a Melee kill, it replenishes 5% of Max Toughness additionally to Veteran's base 5% of Max Toughness gained on Melee kill.",
		-- "- For example, killing 3 enemies with a Melee attack with 184 Max Toughness, Veteran would replenish 184x(0.15+0.15)=55.2 Toughness (HUD rounds: 56).",
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Get Back in the Fight! +]--
	local ED_VET_Passive_10_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Lets Veteran move through Fire patches without hindrance.",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - Catch a Breath +]--
	local ED_VET_Passive_11_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		z_eff_of_this_tougn_rep,
		-- "- The proximity check ignores map geometry.",
		-- "- Does not interact with Coherency Toughness.",
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Grenade Tinkerer +]--
	local ED_VET_Passive_12_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Frag Grenade:",
		-- "-- Does not affect Bleeds applied by the explosion.",
		-- "- Increases the radii of its epicenter and Max Range to 2.5 meters and 12.5 meters respectively.",
		-- "- Smoke Grenade:",
		-- "-- increases the cloud duration  from 15 to 30 seconds.",
		-- "- The grenade Damage buffs Stack additively with Damage buffs from \"Bring it Down!\", \"Close Quarters Killzone\" (if within 30 meters to the enemy), \"Competitive Urge\", \"Covering Fire\" (if applied to Veteran by another Veteran), \"Longshot\" (if not within 12.5 meters to the enemy), \"Redirect Fire!\", \"Skirmisher\", \"Superiority Complex\" (against Elites ), \"Surprise Attack\", and aura \"Fire Team\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Covering Fire +]--
	local ED_VET_Passive_13_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Damage increase can be refreshed during active duration.",
		stacks_add_w_oth_dmg,
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 14 - Serrated Blade +]--
	local ED_VET_Passive_14_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "Melee attacks (including Melee special actions of Ranged weapons) apply 1 Stack of Bleed to enemies.",
		-- "- Up to 16 Max Bleed Stacks on a target.",
		-- "- Can't apply Bleed through shields.",
		-- "- Bleed:",
		-- "-- Same as other sources of Bleed.",
		-- "-- Lasts 1.5 seconds.",
		-- "-- Ticks every 0.5 seconds.",
		-- "-- Refreshes duration on Stack application.",
		-- "-- Above average armor Damage modifiers across the board, low armor Damage modifier against Carapace.",
	}, "\n"), enhdesc_col)

	--[+ Passive 15 - Agile Engagement +]--
	local ED_VET_Passive_15_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Active buff duration starts on the respective kill.",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Kill Zone +]--
	local ED_VET_Passive_16_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		stacks_add_w_oth_dmg,
		-- "- The proximity check ignores map geometry.",
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - Opening Salvo +]--
	local ED_VET_Passive_17_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "For example, with a weapon that has a clip size of 43 rounds, the additional Crit chance is granted for the first 9 rounds (i.e. as long as the current ammo in clip percentage is greater or equal to 0.8; 35/43=0.81 but 34/43=0.79).",
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Field Improvisation +]--
	local ED_VET_Passive_18_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- This Talent upgrades all Ammo crates and Med packs deployed by any player as long as Veteran is alive.",
		-- "- Note that the Healing effect is always actively 'fighting' against the initial grimoire_chunk of 40 base Corruption Damage per book. But since this chunk cannot be removed, this can Quickly Drain a Med pack's limited reserve of 500 Health.",
		-- "- To a minor extent, this also applies to players who are Downed within the Med pack's 3 meters radius: Despite the consumption of the Health reserve being reduced by 70% when healing a Downed player (the amount of Health restored to a Downed player is also reduced by 90%), the Med pack still can drain fairly quickly. ",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Twinned Blast +]--
	local ED_VET_Passive_19_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Does not interact with the \"Enhanced Blitz\" difficulty mutator.",
		-- "- The twinned grenade's fuse time is increased by 0.3 seconds.",
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - Demolition Stockpile +]--
	local ED_VET_Passive_20_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Does not interact with the \"Enhanced Blitz\" difficulty mutator.",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - Grenadier +]--
	local ED_VET_Passive_21_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks additively with the \"Enhanced Blitz\" difficulty mutator that adds another 2 grenades to Veteran's maximum grenade capacity.",
	}, "\n"), enhdesc_col)

	--[+ Passive 22 - Leave No One Behind +]--
	local ED_VET_Passive_22_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "This Talent does three things:",
		-- "- Always grants Veteran 20% increased Interaction Speed when Reviving Knocked down Allies, when Pulling up them from ledges and Freeing from nets.",
		-- "- The Revive speed buff Stacks additively with Revive Speed (Ally) from Curios.",
		-- "- This Talent does not increase the Interaction Speed when Rescuing Allies after they have respawned.",
		-- "- Additionally, if an Ally is Knocked down or Incapacitated, grants Veteran Immunity to Stuns from both Melee and Ranged attacks and increases Movement Speed by 20% as long as Veteran is looking towards the Ally (view check ignores map geometry).",
		-- "-- The Movement Speed buff Stacks additively with related buffs from \"Infiltrate\", aura \"Close and Kill\", the small Movement Speed node, and Weapon Blessings like \"Rev it Up\".",
		-- "- \"Incapacitated\" includes: netted (by Trapper), pounced (by Pox Hounds), grabbed (by Daemonhost, Chaos Spawn, Mutants), eaten by Beast of Nurgle, hanging from ledge, and waiting for rescue after respawn.",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Precision Strikes +]--
	local ED_VET_Passive_23_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Determined +]--
	-- local ED_VET_Passive_24_rgb_ru = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Passive 25 - Deadshot +]--
	local ED_VET_Passive_25_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- These buffs Stack additively with respective buffs from \"Executioner's Stance\".",
		-- "- The Spread Reduction also Stacks with the related buff from the  \"Run and Gun \" Weapon Blessing.",
		-- "- The Recoil Reduction also Stacks with the related buff from the \"Powderburn\" Weapon Blessing.",
		-- "- When stamina reaches 0, the Talent loses its effect and applies a fixed immediate sway.",
		-- "- For example, a Veteran with 7 Max Stamina aiming down sights for 5 seconds and shooting twice during this time will have 7-(5x0.75+2x0.25)=2.75 Stamina left after the 5 seconds have elapsed; or 39% as per player HUD. The Stamina Cost Reduction buffs from \"Conditioning\" and Celerity Stimm reduce this drain effect.",
		-- "{#color(255, 35, 5)}- Note that this Talent has no effect on Plasma Gun.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 26 - Born Leader +]--
	local ED_VET_Passive_26_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- This is effect is always active, even if Veteran is at 100% Toughness, and considers all Toughness replenished by Talents, Weapon Blessings, and Coherency Regeneration.",
		-- "- Does not Stack with the same Talent from another Veteran, each Veteran spreads their amounts separately.",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Keep Their Heads Down! +]--
	local ED_VET_Passive_27_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks additively with related buff from \"Competitive Urge\", the small Suppression node, and the Weapon Blessing \"Powderburn\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - Reciprocity +]--
	local ED_VET_Passive_28_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Successfully Dodging enemy Melee or Ranged attacks (except Gunners, Reaper, Sniper) and Disabler attacks (Pox Hound jump, Trapper net, Mutant grab) grants Stacks (up to 5).",
		-- "- Stacks last for 8 seconds and can be refreshed during active duration.",
		-- "- Per stack, grants 5% additional crit chance to Melee and Ranged attacks.",
		-- "- \"Successful dodge\" means Dodging an enemy attack that is locked on the player with an accordingly timed Dodge or Sliding action.",
		-- "- \"The Ghost\", \"Hit and Run\" and \"Stripped Down\" Weapon Blessings can proc this Talent (only against Ranged attacks).",
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Duck and Dive +]--
	local ED_VET_Passive_29_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Has an internal cooldown of 3 seconds.",
		-- "- Procs on regular Dodges, Sliding Dodges, and Dodges while Sprint Dodging.",
		-- "- Note that this Talent requires the character to have more than 0 Stamina.",
		-- "- \"The Ghost\", \"Hit and Run\" and \"Stripped Down\" Weapon Blessings can also proc this Talent.",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Fully Loaded +]--
	local ED_VET_Passive_30_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Increases Veteran's maximum Ammo in reserve by 25%.",
		-- "- Rounds down.",
	}, "\n"), enhdesc_col)

	--[+ Passive 31 - Tactical Awareness +]--
	local ED_VET_Passive_31_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		procs_add_conc_stim_rem_cd_red,
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Passive 32 - Desperado +]--
	local ED_VET_Passive_32_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Also applies to Melee special actions of Ranged weapons.",
		-- "- Crit chance Stacks additively with other sources of Crit chance.",
		-- "- Finesse bonus Stacks additively with other Weakspot and Finesse Damage buffs, and multiplicatively with Power level buffs from Weapon Blessings.",
	}, "\n"), enhdesc_col)

	--[+ Passive 33 - Shock Trooper +]--
	local ED_VET_Passive_33_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- For Helbore Lasguns, Infantry Lasguns, Laspistols, and Recon Lasguns, allows every shooting action that Crits to not consume ammo.",
		-- "- Weapons with guaranteed Crit sequences (Recon Lasguns) don't consume Ammo for any of the Critical shots.",
	}, "\n"), enhdesc_col)

	--[+ Passive 34 - Superiority Complex +]--
	local ED_VET_Passive_34_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 35 - Iron Will +]--
	local ED_VET_Passive_35_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		stacks_mult_w_other_dmg_red_buffs,
		-- "- If Veteran has bonus Toughness (yellow) from \"Duty and Honour\" or Zealot's \"Chorus of Spiritual Fortitude\", the Talent considers the temporary new Maximum for its 75% threshold.",
		-- "- For example, with 198 Max Toughness, the Talent will be active as long as Veteran is above 198x0.75=148.5 Toughness; however, with 50 bonus Toughness, the new temporary threshold is (198+50)x0.75=186 Toughness. This temporary threshold lasts until the duration of bonus Toughness expires.",
	}, "\n"), enhdesc_col)

	--[+ Passive 36 - Demolition Team +]--
	local ED_VET_Passive_36_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Procs regardless whether Veteran is in Coherency with Allies or not.",
	}, "\n"), enhdesc_col)

	--[+ Passive 37 - Exploit Weakness +]--
	local ED_VET_Passive_37_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Critical hits with Melee attacks apply a Brittleness debuff to enemies boosting Damage against armor types Carapace, Flak, Maniac, Unyielding (including Damage of explosions and DoTs).",
		-- "- Can also be applied by Crit hits with Melee special actions of ranged weapons.",
		-- "- Stacks additively with Rending buffs that only boost a character's own Damage.",
		-- "- This Talent's Brittleness debuff is unique: rending_debuff_medium. It Stacks 2 times and applies a rending_multiplier of 10% per Stack.",
		-- "- This debuff being unique also means that it is, in regard to the Brittleness debuff cap on an enemy, in fact a separate debuff which Stacks additively with the regular Brittleness debuff from \"Onslaught\" and from Weapon Blessings \"Armourbane\", \"Can Opener\", \"Rending Shockwave\", \"Shattering Impact\", \"Supercharge\", and \"Thunderous\".",
		-- "- It also Stacks additively with the other unique rending_burn_debuff from the \"Penetrating Flame\" Weapon Blessing.",
	}, "\n"), enhdesc_col)

	--[+ Passive 38 - Onslaught +]--
	local ED_VET_Passive_38_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Repeated Melee and Ranged hits against the same target apply a Brittleness debuff to enemies boosting Damage against armor types Carapace, Flak, Maniac, Unyielding (including damage of explosions and DoTs).",
		-- "- Procs on the second hit against an enemy.",
		-- "- Stacks additively with the unique Brittleness debuff from \"Exploit Weakness\", with other Brittleness debuffs, and with Rending buffs that only boost a character's own Damage.",
	}, "\n"), enhdesc_col)

	--[+ Passive 39 - Trench Fighter Drill +]--
	local ED_VET_Passive_39_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks additively with related buffs from \"Weapons Specialist\" and Celerity Stimm.",
	}, "\n"), enhdesc_col)

	--[+ Passive 40 - Skirmisher +]--
	local ED_VET_Passive_40_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Every second spent sprinting grants Stacks (up to 5).",
		-- "- Stacks can be refreshed during active duration.",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 41 - Competitive Urge +]--
	local ED_VET_Passive_41_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		can_be_refr_dur_active_dur,
		-- "- The Damage buff and Stagger buff stack additively with other related buffs, and multiplicatively with Power level buffs from Weapon Blessings.",
		-- "- The Suppression buff Stacks additively with \"Keep Their Heads Down!\", the small Suppression node, and Weapon Blessing \"Powderburn\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 42 - Rending Strikes +]--
	local ED_VET_Passive_42_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Grants 10% Rending to all attacks boosting Damage against armor types Carapace, Flak, Maniac, Unyielding (including Damage of explosions and DoTs).",
		-- "- Only affects Veteran's own Damage.",
		stacks_add_w_oth_rend_brit,
	}, "\n"), enhdesc_col)

	--[+ Passive 43 - Bring it Down! +]--
	local ED_VET_Passive_43_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Increases any Damage against enemies with the Ogryn tag (Bulwark, Crusher, Reaper) and against enemies with the Monster tag (Beast of Nurgle, Chaos Spawn, Daemonhost, Plague Ogryn).",
		stacks_add_w_oth_dmg,
		-- "- Does not buff Damage against Captains/Twins who do not have the Monster tag.",
	}, "\n"), enhdesc_col)

--[+ ++OGRYN++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Big Box of Hurt +]--
	local ED_OGR_Blitz_0_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Base impact damage: 1850.",
		-- "-- Slightly increased armor Damage modifier against Unyielding and very low armor Damage modifier against Carapace.", 							--!moved_2_main_desc!
		-- "-- Has instakill overrides for: Gunners, Shotgunners, Dreg Rager, Mauler, Mutants, Pox Hounds, Poxburster, Corruptor.",
		-- "-- Direct impact Damage is increased by Rending/Brittleness, by \"Skullcrusher\" blessing (while Staggered), and by Damage buffs from \"Heavyweight\" (against Ogryns), \"Payback Time\", \"Reload and Ready\", \"Soften Them Up\", \"Valuable Distraction\", and small Ranged Damage nodes",
		-- "- Stagger:",
		-- "-- Deals high Stagger against all enemies, except for Monstrosities and Captains/Twins.",
		-- "- Replenishes all boxes per Grenade pickup.", 				--!moved_2_main_desc!
	}, "\n"), enhdesc_col)

	--[+ Blitz 1 - Big Friendly Rock +]--
	local ED_OGR_Blitz_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Base impact damage: 1200.",
		-- "-- Slightly increased armor Damage modifier against Maniac.", --!moved_2_main_desc!
		-- "-- Very low armor Damage modifier against Carapace.", 		--!moved_2_main_desc!
		-- "-- Extra Finesse boost against Unyielding.", 				--!moved_2_main_desc!
		-- "-- Has instakill overrides for: Gunners, Shotgunners, Dreg Ragers, Mutants, Pox Hounds, Poxbursters, Corruptors.",
		-- "-- Can't oneshot: Maulers, Ogryns and Monstrosities.",
		-- "-- Direct impact Damage is increased by Rending/Brittleness, by \"Skullcrusher\" Blessing (while Staggered), and by Damage buffs from \"Heavyweight\" (against Ogryns), \"Payback Time\", \"Reload and Ready\", \"Soften Them Up\" (if applied by another Ogryn), \"Valuable Distraction\", and small Ranged Damage nodes.",
		-- "- Deals high Stagger against all enemies. Requires Weakspot hits to Stagger Monstrosities, and Scab Captain/Twins (only without shield).",
		-- "- Ogryn cannot pick up Grenade ammo.", 						--!moved_2_main_desc!
		-- "- Doesn't Cleave but may bounce back a bit and Damage/Kill a second closest enemy.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1-1 - That One Didn't Count +]--
	-- local ED_OGR_Blitz_1_1_rgb_ru = iu_actit(table.concat({
			-- ppp______ppp,
		-- }, "\n"), enhdesc_col)

	--[+ Blitz 2 - Frag Bomb +]--
	local ED_OGR_Blitz_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Fuse time: 2 seconds.",
		-- "- Explosion radius:",
		-- "-- 2 meters (epicenter), 16 meters (max).",
		-- "- Explosion damage:",
		-- "-- Base Damage: 1500 (epicenter), 1250 (outside epicenter).",
		-- "-- Instakill all enemies with an explosion except: Maulers, Crushers, Bulwarks and Monstrosities.",
		-- "-- Very high armor Damage modifiers across the board, especially against Flak, Maniac, Unyielding.",
		-- "-- Explosion Damage is increased by Rending/Brittleness, by \"Skullcrusher\" Blessing (while Staggered), and by Damage buffs from \"Heavyweight\" (against Ogryns), \"Payback Time\", \"Soften Them Up\", and \"Valuable Distraction\".",
		-- "- Deals high Stagger against all enemies including Monstrosities, Captains/Twins (only without void shield).",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Bombs Away! +]--
	local ED_OGR_Blitz_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Impact damage: 1850 base. Slightly increased armor Damage modifier against Unyielding and very low armor Damage modifier against Carapace. Has instakill overrides for: Gunners, Shotgunners, Dreg Rager, Mauler, Mutants, Pox Hounds, Poxburster, Corruptor. Direct impact Damage is increased by Rending/Brittleness, by \"Skullcrusher\" blessing (while Staggered), and by Damage buffs from \"Heavyweight\" (against Ogryns), \"Payback Time\", \"Reload and Ready\", \"Soften Them Up\", \"Valuable Distraction\", and small Ranged Damage nodes",
		-- "- Stagger: Deals high Stagger against all enemies, except for Monstrosities and Captains/Twins.",
		-- "- Replenishes all boxes per Grenade pickup.",
		-- "- Frag grenades: Grenade explosions have epicenter radius of 2 meters, Max Radius of 8 meters. Can Stagger all enemies inside epicenter radius, including Monstrosities and Captains/Twins (only without void shield).",
	}, "\n"), enhdesc_col)

	--[+ Aura 0 - Intimidating Presence +]--
	local ED_OGR_Aura_0_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		this_also_buffs_melee_sp_act_guns,
		-- "- Stacks additively with other related Damage buffs, and multiplicatively with Power level buffs from Weapon Blessings.",
		doesnt_stack_w_z_same_aura_ogr,
	}, "\n"), enhdesc_col)

	--[+ Aura 1 - Bonebreaker's Aura +]--
	local ED_OGR_Aura_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		this_also_buffs_melee_sp_act_guns,
		stacks_add_w_oth_dmg,
		doesnt_stack_w_z_same_aura_ogr,
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Stay Close! +]--
	local ED_OGR_Aura_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Increases Ogryn's base amount of Coherency Toughness regenerated while in Coherency:",
		-- "_______________________________",
		-- "Allies: | CTR:			 | After 5 seconds:",
		-- "		  1|  3.75 -> 4.69 | 23.44(HUD:~24)",
		-- "		 2|  5.63 -> 7.03 | 35.16(HUD:~36)",
		-- "		 3|  7.50 -> 9.38 | 46.88(HUD:~47)",
		-- "_______________________________",
		-- "- Stacks additively with \"Lynchpin\", keystone \"Feel No Pain\" (including \"Toughest!\"), Toughness Regeneration Speed from Curios, and Veteran's small Talent node \"Inspiring Presence\".",
		doesnt_stack_w_z_same_aura_ogr,
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Coward Culling +]--
	local ED_OGR_Aura_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- For Ogryn, Stacks additively with the \"Ceaseless Barrage\" Weapon Blessing and other related Damage buffs, and multiplicatively with Power level buffs from Weapon Blessings.",
		doesnt_stack_w_z_same_aura_ogr,
		-- "- Breeds that can be Suppressed: Groaner, Dreg Gunner, Dreg Stalker, Reaper, Scab Gunner, Scab Shooter, Scab Stalker.",
	}, "\n"), enhdesc_col)

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Bull Rush +]--
	local ED_OGR_Ability_0_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Range: 12 meters.",
		-- "- Stops at enemies with armor base types Carapace/Unyielding, at Monstrosities, and at Captains/Twins void shield.",
		-- "- Deals no Damage on impact.",
		-- "- Can be canceled by Backwards movement input.",
		-- "- On charge end, also Increases Melee weapon attack animation Speed and Movement Speed by 25% for 5 seconds.",
		-- "-- Stacks additively with other related buffs.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Indomitable +]-- 
	local ED_OGR_Ability_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Range: 24 meters.",
		-- "- Charges through Scab Captain/Twins void shield (applies Stagger only without void shield). Stops only at Monstrosities.",
		-- "- Charge:",
		-- "-- Cannot be activated while jumping or falling.",
		-- "-- Can be canceled by Backwards movement input.",
		-- "-- Can slightly change direction while charging.",
		-- "-- While charging, pushes enemies away, including Monstrosities (unless direct impact).",
		-- "-- Deals no damage on impact.",
		-- "-- On charge end, Staggers all enemies within a 2.5 meters radius.",
		-- "-- On charge end, also Increases Melee weapon attack animation speed and Movement speed by 25% for 5 seconds.",
		-- "--- Stacks additively with other related buffs.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Stomping Boots +]--
	local ED_OGR_Ability_1_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Trample +]--
	local ED_OGR_Ability_1_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		stacks_add_w_oth_dmg,
		-- "- On charge end, Indomitable's Stagger effect also generates Stacks separately for each enemy hit by it.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-3 - Pulverise +]--
	local ED_OGR_Ability_1_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Can apply Bleed through Bulwark shield and Captains/Twins void shield.",
		-- "- The Bleeds Stack additively with other sources of Bleed.",
		-- "- Bleed:",
		-- "-- Same as other sources of Bleed.",
		-- "-- Lasts 1.5 seconds.",
		-- "-- Ticks every 0.5 seconds.",
		-- "-- Refreshes duration on Stack application.",
		-- "-- Above average armor Damage modifiers across the board, low armor Damage modifier against Carapace.",
		-- "- Bleed Damage is increased by Rending/Brittleness, by Perks of currently equipped Weapons, and by the following buffs from:",
		-- "-- Talents: \"Heavyweight\" (against Ogryns), \"Payback Time\", \"Soften Them Up\", and \"Valuable Distraction\" (if applied by another Ogryn).",
		-- "-- Blessings (if procced with Weapon before or during Bleed's active duration):",
		-- "--- Melee: \"Skullcrusher\" (while Staggered), \"Slaughterer\", and \"Tenderiser\" (Bleed ticks don't consume Stacks).",
		-- "--- Ranged: \"Blaze Away\", \"Deathspitter\", \"Explosive Offensive\", \"Fire Frenzy\", and \"Full Bore\".",
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Loyal Protector +]--
	local ED_OGR_Ability_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Radius: 8 meters.",
		-- "- Holding the Ability button shows taunt Range. Preview can be Block canceled.",
		-- "- On activation, forces at least light Stagger on all enemies within radius for 1 second.",
		-- "- Taunted enemies are visually highlighted.",
		-- "- Monstrosities and aggroed Daemonhosts ignore taunt. Scab Captain/Twins can be taunted.",
		-- "- Forces taunted Ranged enemies into Melee combat (except Gunners and Reapers).",
		-- "- Taunt duration is not overwritten by \"Attention Seeker\"'s duration.",
		-- "- When Ogryn gets Disabled, the taunt effect is removed from any Disabler enemies (Pox Hounds, Mutant, Trapper) that have been taunted by Ogryn before.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Valuable Distraction +]--
	local ED_OGR_Ability_2_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks multiplicatively with Damage taken debuffs from \"Soften Them Up\" and the Pickaxe special actions (10%), with Damage buffs and with Power level buffs from Weapon Blessings.",
		-- "- Does not Stack with the same Talent from another Ogryn.",
		-- "- Enemies taunted by the means of \"Attention Seeker\" do not get this debuff.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Go Again +]--
	local ED_OGR_Ability_2_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Reduces the remaining Ability Cooldown of Loyal Protector by 1.125 seconds per Stagger action.",
		-- "- Procs on successful Pushes, Staggering Melee hits, and Staggering Melee special actions from Ripper Gun, Grenadier Gauntlet (Melee part), Rumbler, Heavy Stubbers, and Kickback.",
		-- "- Procs once per Stagger action regardless of how many enemies are Staggered.",
		procs_add_conc_stim_rem_cd_red,
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - Big Lungs +]--
	local ED_OGR_Ability_2_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Increases taunt base Radius from 8 to 12 meters.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Point-Blank Barrage +]--
	local ED_OGR_Ability_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- The forced Reload always procs \"Reloaded and Ready\".",
		-- "- Ranged weapon attack animation Speed Stacks additively with \"Just Getting Started\" and Celerity Stimm.",
		-- "- Reload animation Speed Stacks additively with Reload Speed buffs from \"Pacemaker\" and the small Reload Speed node.",
		-- "- Reduction of Movement Speed penalty stacks multiplicatively with the related buff from the \"Roaring Advance\" Weapon Blessing, and Stacks multiplicatively with Movement Speed buffs from \"Get Stuck In\", \"Unstoppable Momentum\" and Veteran's aura \"Close and Kill\".",
		-- "-- Beyond 12.5 meters, the Damage buff decreases linearly until it loses its effect at 30 meters:",
		-- "-- The Damage buff decreases linearly:",
		-- "______________________________",
		-- "Distance(m):1-12.5|  15|  20|  25|  30",
		-- "Damage(%):	   15| ~13|  ~9|  ~5|	0",
		-- "______________________________",
		"-"..stacks_add_w_oth_dmg,
		-- "- This also affects explosion damage and DoTs like bleed (from Flechette weapon blessing) while the ranged weapon is equipped as long as Ogryn stays within 30m to the enemy.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-1 - Bullet Bravado +]--
	local ED_OGR_Ability_3_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- If a shooting action entails multiple shots (e.g. Ripper Gun left clicks), each shot fired during this action will trigger the Replenishment.",
		-- "- The forced reload upon activating \"Point-Blank Barrage\" always triggers this Replenishment.",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-2 - Hail of Fire +]--
	local ED_OGR_Ability_3_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Grants 30% Rending while the Ranged weapon is equipped boosting Damage against armor types Carapace, Flak, Maniac, Unyielding.",
		-- "- Only affects Ogryn's own Damage.",
		-- "- This also affects Explosion Damage and DoTs like Bleed (from \"Flechette\" Weapon Blessing) while the Ranged weapon is equipped, and the Damage of explosions.",
		-- "- Stacks additively with other Rending buffs, including Brittleness debuffs that are applied to enemies.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Light 'em Up +]--
	local ED_OGR_Ability_3_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Ranged attacks (including Rock or Grenade projectile direct impact hits) apply 2 Stacks of Burn per hit to enemies, up to 31 Max Burn Stacks on a target.",
		-- "- Can apply burn through shields.",
		-- "- Burn: Same as other sources of Burn. Lasts 4 seconds. Ticks every 0.5 seconds. Refreshes duration on Stack application. High armor Damage modifiers across the board, very low armor Damage modifier against Carapace.",
		-- "- Burn Damage is increased by Rending/Brittleness, by Perks of currently equipped Weapons, and by the following buffs from:",
		-- "-- Talents: \"Heavyweight\" (against Ogryns), \"Payback Time\", \"Soften Them Up\", and \"Valuable Distraction\" (if applied by another Ogryn).",
		-- "-- Blessings (if procced with Weapon before or during Burn's active duration):",
		-- "--- Melee: \"Skullcrusher\" (while Staggered), \"Slaughterer\", and \"Tenderiser\" (Burn ticks don't consume Stacks).",
		-- "--- Ranged: \"Blaze Away\", \"Explosive Offensive\", \"Deathspitter\", \"Fire Frenzy\", and \"Full Bore\".",
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Heavy Hitter +]--
	local ED_OGR_Keystone_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Always generates 1 Stack per attack regardless of how many enemies have been hit.",
		-- "- Stacks last 7.5 seconds and can be refreshed during active duration.",
		stacks_add_w_oth_dmg,
		-- "- Also procs on Melee special actions from Ripper Gun, Grenadier Gauntlet (Melee part), Rumbler, Heavy Stubbers, and Kickback.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Don't Feel a Thing +]--
	local ED_OGR_Keystone_1_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks additively with related buffs from \"Indomitable\"/\"Bull Rush\", \"Point-Blank Barrage\", and Celerity Stimm.",
		-- "- Does currently not have a HUD icon.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Just Getting Started +]--
	local ED_OGR_Keystone_1_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Stacks additively with related buffs from \"Indomitable\"/\"Bull Rush\", \"Point-Blank Barrage\", and Celerity Stimm.",
		-- "- Does currently not have a HUD icon.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Unstoppable +]--
	local ED_OGR_Keystone_1_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- For example, with 160 Max Toughness and \"Smash 'Em!\" equipped, Ogryn replenishes 160x(0.1+0.2)=48 Toughness on killing a single enemy.",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - Brutish Momentum +]--
	-- local ED_OGR_Keystone_1_4_rgb_ru = iu_actit(table.concat({
		-- ppp______ppp,
		-- "- Light attacks cannot generate Stacks (this requires Heavy Melee attacks), they can only maintain the current Stack count.",
	-- }, "\n"), enhdesc_col)

	--[+ Keystone 1-5 - Brutish Momentum +]--
	-- local ED_OGR_Keystone_1_5_rgb_ru = iu_actit(table.concat({
		-- ppp______ppp,
		-- "- Light attacks cannot generate Stacks (this requires Heavy Melee attacks), they can only maintain the current Stack count.",
	-- }, "\n"), enhdesc_col)

	--[+ Keystone 2 - Feel No Pain +]--
	local ED_OGR_Keystone_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Does not regen Stacks while Disabled or Downed.",
		-- "- Increases Ogryn's base amount of Coherency Toughness regenerated while in Coherency by up to 25%:",
		-- "_______________________________",
		-- "Allies: | CTR:			 | After 5 seconds:",
		-- "		  1|  3.75 -> 4.69 | 23.44(HUD:~24)",
		-- "		 2|  5.63 -> 7.03  | 35.16(HUD:~36)",
		-- "		 3|  7.50 -> 9.38  | 46.88(HUD:~47)",
		-- "_______________________________",
		-- "- Stacks additively with Ogryn's Aura \"Stay Close!\", \"Lynchpin\", the keystone node \"Toughest!\", Toughness Regeneration Speed from Curios, and Veteran's small Talent nodes \"Inspiring Presence\".",
		-- "- Also reduces Toughness Damage taken.",
		-- "- The buff Stacks multiplicatively with itself, up to ~22.4% Toughness Damage Reduction at Max Stacks (1-0.975¹⁰=0.2236), and with other Damage Reduction buffs.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - Pained Outburst +]--
	local ED_OGR_Keystone_2_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- When Ogryn is Disabled (e.g. Pounced or Netted etc.), losing the last Stack of \"Feel No Pain\" triggers the knockback explosion and the Toughness replenishment.",
		-- "- This also allows Ogryn to free himself from Pox Hounds.",
		-- "- When Ogryn gets Downed, the current Stack amount is set to 0 which also procs the Staggering explosion, however, does not proc the Toughness replenishment.",
		-- "- The explosion has a radius of 2.5 meters and Staggers all enemies except for Mutants, Monstrosities, and Captains/Twins.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Strongest! +]--
	local ED_OGR_Keystone_2_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Always adds 1 Stack per push action regardless of how many enemies are pushed.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-3 - Toughest! +]--
	local ED_OGR_Keystone_2_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Doubles Feel No Pain's amount of Coherency Toughness Regenerated while in Coherency from 2.5% to 5% per Stack.",
		-- "- Stacks additively with Ogryn's Aura \"Stay Close!\", \"Lynchpin\", Toughness Regeneration Speed from Curios, and Veteran's small Talent node \"Inspiring Presence\".",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3 - Burst Limiter Override +]--
	local ED_OGR_Keystone_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- For Ripper Guns, the left click shooting action entails multiple shots fired per action.",
		-- "- None of the shots consume Ammo on proc.",
		-- "- For the remaining weapons, the Talent procs per single shot fired.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Maximum Firepower +]--
	local ED_OGR_Keystone_3_1_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- Additionally to Ogryn's base Ability Cooldown rate of 1 second per second, reduces the remaining Ability Cooldown by 2 seconds per second for 2 seconds when Burst Limiter Override procs. This results in a total Cooldown Reduction of 6 seconds per proc (2 seconds from base rate + 2x2 seconds from Talent).",
		"-"..can_be_refr_dur_active_dur,
		-- "- Procs additionally to Concentration Stimm's Cooldown Reduction effect of 3 seconds per second.",
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Good Shootin' +]--
	local ED_OGR_Keystone_3_2_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "- If a shooting action entails multiple shots (Ripper Guns and Heavy Stubbers left-clicks) and if one of these shots Crits, then all subsequent shots of that action will be converted into Crit shots.",
		-- "- For Heavy Stubbers' alt fire (full auto), any Crit shot granted by this Talent procs the guaranteed Crit sequence of 6 shots.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-3 - More Burst Limiter Overrides! +]--
	local ED_OGR_Keystone_3_3_rgb_ru = iu_actit(table.concat({
		ppp______ppp,
		-- "",
	}, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Lynchpin +]--
	-- local ED_OGR_Passive_1_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Increases Ogryn's base amount of Coherency Toughness Regenerated (CTR) while in Coherency by 50%:",
		-- "_______________________________",
		-- "Allies: | CTR:				  | After 5 seconds:",
		-- "		  1|  3.75 -> 5.63  | 28.13(HUD:~29)",
		-- "		  2|  5.63 -> 8.44 | 42.19(HUD:~43)",
		-- "		  3|  7.50 -> 11.25 | 56.25(HUD:~57)",
		-- "_______________________________",
		-- "- Stacks additively with Ogryn's Aura \"Stay Close!\", keystone \"Feel No Pain\" (including \"Toughest!\"), Toughness Regeneration Speed from Curios, and Veteran's small Talent node \"Inspiring Presence\".",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 2 - Heavyweight +]--
	-- local ED_OGR_Passive_2_rgb_ru = iu_actit(table.concat({
		-- ppp______ppp,
		-- "- Increases all Damage against Bulwark, Crusher, Plague Ogryn, and Reaper.",
		-- stacks_add_w_oth_dmg,
		-- "- Also reduces both Toughness and Health Damage taken from Bulwark, Crusher, Plague Ogryn, and Reaper.",
		-- stacks_mult_w_other_dmg_red_buffs,
	-- }, "\n"), enhdesc_col)

	--[+ Passive 3 - Steady Grip +]--
	-- local ED_OGR_Passive_3_rgb_ru = iu_actit(table.concat({
		-- ppp______ppp,
		-- "- Does not interact with Coherency Toughness Regeneration.",
		-- z_eff_of_this_tougn_rep,
		-- "- \"Braced\" refers to an action keyword in Ranged Weapon profiles.",
		-- "- Using a Weapon's alt fire, like zooming or firing when zoomed in, activates the buff.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 4 - Smash 'Em! +]--
	-- local ED_OGR_Passive_4_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Replenishes Toughness when hitting exactly ONE enemy with a Heavy Melee attack.",
		-- "- Also procs on Melee special actions of Ripper Guns, Grenadier Gauntlet (Melee part), Rumbler, Heavy Stubbers, and Kickback.",
		-- "- If the hit enemy dies, the Toughness amount replenished from the Talent is added to Ogryn's base 5% of Maximum Toughness gained on Melee kill.",
		-- "- For example, with 90 Max Toughness and if the attacked enemy dies, Ogryn would replenish 90x(0.2+0.05)=22.5 Toughness.",
	-- 	z_eff_of_this_tougn_rep,
	-- }, "\n"), enhdesc_col)

	--[+ Passive 5 - The Best Defence +]--
	-- local ED_OGR_Passive_5_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Also procs on melee special actions of Ripper Guns, Grenadier Gauntlet (melee part), Rumbler, Heavy Stubbers, and Kickback.",
		-- "- If one of the hit enemies dies, the Toughness amount replenished from the Talent is added to Ogryn's base 5% of Maximum Toughness gained on Melee kill.",
		-- "- For example, with 140 Max Toughness and if two of the attacked enemies die, Ogryn would replenish 140x(0.2+0.05+0.05)=42 Toughness.",
	-- 	z_eff_of_this_tougn_rep,
	-- }, "\n"), enhdesc_col)

	--[+ Passive 6 - Furious +]--
	-- local ED_OGR_Passive_6_rgb_ru = iu_actit(table.concat({
		-- ppp______ppp,
		-- "- Stacks last until next Melee attack and are consumed even if the Melee attack hits nothing.",
		-- "- Per Stack, increases Melee Damage by 2.5%.",
		-- stacks_add_w_oth_dmg,
		-- "- Melee special actions of Ripper Guns, Grenadier Gauntlet (Melee part), Rumbler, Heavy Stubbers, and Kickback can also proc this Talent.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 7 - Towering Presence +]--
	-- local ED_OGR_Passive_7_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Increases Ogryn's Base Coherency radius of 8 to 12 meters.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 8 - Soften Them Up +]--
	-- local ED_OGR_Passive_8_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- can_be_refr_dur_active_dur,
		-- "- Can also be applied with Melee special actions of Ripper Guns, Grenadier Gauntlet (Melee part), Rumbler, Heavy Stubbers, and Kickback.",
		-- "- Does not Stack with the same Talent from another Ogryn.",
		-- "- The debuff Stacks additively with the related Damage taken debuff from Pickaxe special actions (+10%), and multiplicatively with \"Valuable Distraction\".",
		-- "- During calculation, Stacks multiplicatively with Damage buffs and Power level buffs from Weapon Blessings.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 9 - Payback Time +]--
	-- local ED_OGR_Passive_9_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Increases any Damage when taking a Damaging Melee hit or Blocking a Melee hit.",
	-- 	stacks_add_w_oth_dmg,
	-- 	can_be_refr_dur_active_dur,
	-- }, "\n"), enhdesc_col)

	--[+ Passive 10 - Pumped Up +]--
	-- local ED_OGR_Passive_10_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 11 - Focused Fighter +]--
	-- local ED_OGR_Passive_11_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 12 - Strongman +]--
	-- local ED_OGR_Passive_12_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 13 - Can't Hit Me...Again - Can't Hit Me... Again +]--
	-- local ED_OGR_Passive_13_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 14 - Keep Shooting +]--
	-- local ED_OGR_Passive_14_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 15 - Beat Them Back +]--
	-- local ED_OGR_Passive_15_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 16 - Strike True +]--
	-- local ED_OGR_Passive_16_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 17 - Slam +]--
	-- local ED_OGR_Passive_17_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Stacks additively with \"Crunch!\" and other related Stagger buffs from Weapon Blessings, and multiplicatively with Power level buffs from Weapon Blessings.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 18 - Ammo Stash +]--
	-- local ED_OGR_Passive_18_rgb_ru = iu_actit(table.concat({ },"\n"), enhdesc_col)

	--[+ Passive 19 - Big Boom +]--
	-- local ED_OGR_Passive_19_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Stacks additively with the \"Blast Zone\" Weapon Blessing.",
		-- "- This increases the radii of both the inner epicenter and the outer maximum of explosions.",
		-- "- Note that this Talent also increases the radius of explosions that are created by Melee attacks (e.g. Power Maul activated attacks). In this case, Stacks additively with the \"Power Surge\" Weapon Blessing.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 20 - Crunch! +]--
	-- local ED_OGR_Passive_20_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Stacks additively with other related Damage buffs and Stagger buffs (from \"Slam\" and Weapon Blessings), and multiplicatively with Power level buffs from Weapon Blessings.",
		-- "- \"Fully charged\" means that you have to hold the button until the Heavy attack is executed automatically.",
		-- "- Only applies to Heavy attacks of Melee weapons (and Grenadier Gauntlet heavies).",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 21 - Batter +]--
	-- local ED_OGR_Passive_21_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Can't apply Bleed through shields.",
		-- "- Also procs on Melee special actions from Ripper Gun, Grenadier Gauntlet (Melee part), Rumbler, Heavy Stubbers, and Kickback.",
		-- "- Bleed: Same as other sources of Bleed. Lasts 1.5 seconds. Ticks every 0.5 seconds. Refreshes duration on Stack application. Above average armor Damage modifiers across the board, low armor Damage modifier against Carapace.",
		-- "- Bleed damage is increased by Rending/Brittleness, by Perks of currently equipped weapons, and by the following buffs from:",
		-- "-- Talents: \"Heavyweight\" (against Ogryns), \"Payback Time\", \"Soften Them Up\", and \"Valuable Distraction\" (if applied by another Ogryn).",
		-- "-- Blessings (if procced with Weapon before or during Burn's active duration):",
		-- "--- Melee: \"Skullcrusher\" (while Staggered), \"Slaughterer\", and \"Tenderiser\" (Bleed ticks don't consume Stacks).",
		-- "--- Ranged: \"Blaze Away\", \"Explosive Offensive\", \"Deathspitter\", \"Fire Frenzy\", and \"Full Bore\".",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 22 - Brutish Strength +]--
	-- local ED_OGR_Passive_22_rgb = iu_actit(table.concat({
	-- 	ppp___ppp,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 23 - For the Lil'Uns +]--
	-- local ED_OGR_Passive_23_rgb = iu_actit(table.concat({
	-- 	ppp___ppp,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 24 - Concentrate +]--
	-- local ED_OGR_Passive_24_rgb = iu_actit(table.concat({
	-- 	ppp___ppp,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 25 - Fire Away +]--
	-- local ED_OGR_Passive_25_rgb = iu_actit(table.concat({
	-- 	ppp___ppp,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 26 - Simple Minded +]--
	-- local ED_OGR_Passive_26_rgb = iu_actit(table.concat({
	-- 	ppp___ppp,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 26 - Simple Minded +]--
	-- local ED_OGR_Passive_26_rgb = iu_actit(table.concat({
	-- 	ppp___ppp,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 27 - Unbreakable +]--
	-- local ED_OGR_Passive_27_rgb = iu_actit(table.concat({
	-- 	ppp___ppp,
	-- 	-- "- ",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 28 - Too Stubborn to Die +]--
	-- local ED_OGR_Passive_28_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- When below 33% of Maximum Health, doubles the amount of any Toughness replenished by Melee kills, Talents, and select Weapon Blessings (only \"Momentum\").",
		-- "- Does not apply to Coherency Toughness Regeneration.",
	-- 	z_eff_of_this_tougn_rep,
	-- }, "\n"), enhdesc_col)

-- ENDED HERE

	--[+ Passive 00 - Reloaded and Ready +]--
	-- local ED_OGR_Passive_00_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
	-- 	stacks_add_w_oth_dmg,
		-- "- The forced Reload of \"Point-Blank Barrage\" procs this Talent (even if the weapon's clip is full).",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 12 - Pacemaker +]--
	-- local ED_OGR_Passive_12_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Stacks additively with related buffs from \"Point-Blank Barrage\", the small Reload Speed node, Weapon Perks, and Celerity Stimm.",
		-- "- Can proc on Melee and Ranged attacks, Pushes, Explosions, and Staggering Abilities (\"Loyal Protector\", \"Pained Outburst\").",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 14 - Hard Knocks +]--
	-- local ED_OGR_Passive_14_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Also buffs the melee special actions of Ripper Guns, Grenadier Gauntlet (melee part), Rumbler, Heavy Stubbers, and Kickback.",
		-- stacks_add_w_oth_dmg,
		-- "- Generates Stacks when successfully applying instances of Stagger to enemies by Ogryn's Melee and Ranged attacks, Pushes, Explosions, and Staggering Abilities.",
		-- "- The Stack amount generated varies per enemy:",
		-- "_______________________________",
		-- "Stacks: |Breeds:",
		-- "1			|Groaner, Poxwalker, Bruisers,",
		-- "			  |Stalkers, Scab Shooter, Sniper.",
		-- "2			|Gunners, Bombers, Flamers,",
		-- "			  |Poxburster, Shotgunners,",
		-- "			  |Trapper, Twins.",
		-- "3			|Mauler, Ragers, Pox Hound,",
		-- "			  |Pox Hound (mutator).",
		-- "5			|Bulwark, Crusher, Reaper,",
		-- "			  |Mutant, Mutant (mutator)",
		-- "8			|Daemonhost, Captains",
		-- "10		   |Plague Ogryn, Chaos Spawn,",
		-- "			   |Beast of Nurgle.",
		-- "_______________________________",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 16 - Delight in Destruction +]--
	-- local ED_OGR_Passive_16_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Reduces both Toughness and Health Damage taken.",
		-- "- Considers Bleed Stacks applied to enemies within 8 meters.",
		-- "- Checks for Bleeding enemies every second.",
	-- 	stacks_mult_w_other_dmg_red_buffs,
	-- }, "\n"), enhdesc_col)

	--[+ Passive 17 - Attention Seeker +]--
	-- local ED_OGR_Passive_17_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Pushing enemies, Blocking enemy Melee attacks or Blocking enemy Ranged attacks (shield only) forces enemies to attack Ogryn.",
		-- "- Taunting Ranged enemies forces them into Melee combat (except Gunners and Reapers) Affects Captains/Twins, does not affect Monstrosities..",
		-- "- Taunted enemies are visually highlighted.",
		-- "- The Taunt lasts 8 seconds.",
		-- "- Cannot be refreshed during active duration.",
		-- "- \"Loyal Protector\" overwrites this Talent's taunt duration applying its own 15 seconds duration.",
		-- "- When Ogryn gets Disabled, the taunt effect is removed from any Disabler enemies (Pox Hounds, Mutant, Trapper) that have been taunted by Ogryn before.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 18 - Get Stuck In +]--
	-- local ED_OGR_Passive_18_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Stacks additively with Movement Speed buffs from \"Indomitable\"/\"Bull Rush\" and \"Unstoppable Momentum\", and multiplicatively with Movement Speed penalty reduction while braced from \"Point-Blank Barrage\".",
		-- "- Also grants Immunity to Stuns from both Melee and Ranged attacks, and Immunity to Suppression.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 20 - Unstoppable Momentum +]--
	-- local ED_OGR_Passive_20_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
	-- 	can_be_refr_dur_active_dur,
		-- "- Stacks additively with Movement Speed buffs from \"Indomitable\"/\"Bull Rush\" and \"Get Stuck In\", and multiplicatively with Movement Speed penalty reductions from \"Point-Blank Barrage\" and the \"Roaring Advance\" Weapon Blessing.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 21 - No Stopping Me! +]--
	-- local ED_OGR_Passive_21_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Makes Ogryn's Melee attack actions Uninterruptible during windup phase so that they cannot be canceled as part of hit reactions.",
		-- "- \"Windup\" refers to a specific action kind in weapon profiles, it's basically the \"Charging or Ready up movement\" animation before an actual swing is executed.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 22 - Dominate +]--
	-- local ED_OGR_Passive_22_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- On Elite kill, grants 10% Rending to all attacks for 10 seconds boosting Damage against armor types Carapace, Flak, Maniac, Unyielding (including Damage of Explosions and DoTs like Bleed and Burn applied by Ogryn).",
		-- can_be_refr_dur_active_dur,
		-- "- Only affects Ogryn's own Damage.",
	-- 	stacks_add_w_oth_rend_brit,
	-- }, "\n"), enhdesc_col)

	--[+ Passive 24 - Bruiser +]--
	-- local ED_OGR_Passive_24_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Procs on any Elite kill by Ogryn and Elite kills by Allies who are in Coherency with Ogryn.",
		-- "- This is 1.2 seconds for \"Indomitable\"/\"Bull Rush\", 1.8 seconds for \"Loyal Protector\", and 3.2 seconds for \"Point-Blank Barrage\".",
	-- 	procs_add_conc_stim_rem_cd_red,
	-- 	doesnt_interact_w_c_a_r_from_curio,
	-- }, "\n"), enhdesc_col)

	--[+ Passive 26 - Massacre +]--
	-- local ED_OGR_Passive_26_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Generates Stacks when enemies die to Ogryn's Melee and Ranged attacks, Explosions, and DoTs, and when Pushed over ledges into map kill boxes by Ogryn.",
		-- "- Stacks last 10 seconds and can be refreshed during active duration.",
		-- "- Per Stack, grants 1% additional Crit chance to all attacks that can Crit.",
		-- "- Stacks additively with other sources of Crit chance.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 27 - Implacable +]--
	-- local ED_OGR_Passive_27_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Reduces both Toughness and Health Damage taken while winding up Melee attacks.",
		-- stacks_mult_w_other_dmg_red_buffs,
		-- "- \"Windup\" refers to a specific action kind in weapon profiles, it's basically the \"Charging or Ready up movement\" animation before an actual swing is executed.",
		-- "- Technically, the Talent does indeed proc every time a weapon attack is in its windup phase, light attacks included. But windup windows can be very short (especially for light attacks), so the Talent works most efficiently during the longer windup windows of Heavy Melee attacks.",
		-- "- Does currently not have a HUD icon.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 28 - No Pushover +]--
	-- local ED_OGR_Passive_28_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Allows the Push to Stagger all enemies except for Mutants, Monstrosties, and Twins (Captains only without void shield).",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 29 - Won't Give In +]--
	-- local ED_OGR_Passive_29_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Reduces both Toughness and Health Damage taken by 20% per Downed or Incapacitated ally within 20 meters.",
		-- "- Stacks linearly with itself: 1 incapacitated Ally=20% Damage Reduction, 2 Allies=40%, 3 Allies=60%",
		-- stacks_mult_w_other_dmg_red_buffs,
		-- "- \"Incapacitated\" includes: Netted (by Trapper), Pounced (by Pox Hounds), Grabbed (by Daemonhost, Chaos Spawn, Mutants), Eaten by Beast of Nurgle, Hanging from ledge, and waiting for Rescue after respawn.",
	-- }, "\n"), enhdesc_col)

	--[+ Passive 30 - Mobile Emplacement +]--
	-- local ED_OGR_Passive_30_rgb_ru = iu_actit(table.concat({
	-- 	ppp______ppp,
		-- "- Reduces both Toughness and Health Damage taken by 20% while braced.",
		-- stacks_mult_w_other_dmg_red_buffs,
		-- "- \"Braced\" refers to an action keyword in Ranged weapon profiles.",
		-- "- Using a Ranged weapon's alt fire, like zooming or firing when zoomed in, activates the buff.",
	-- }, "\n"), enhdesc_col)

	-- local  = iu_actit(table.concat({
		-- "\n+++-------------------------------------------------+++",
		-- "",
	-- }, "\n"), enhdesc_col)

-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_VET_Blitz_0_rgb_ru = ED_VET_Blitz_0_rgb_ru,
	ED_VET_Blitz_1_rgb_ru = ED_VET_Blitz_1_rgb_ru,
	ED_VET_Blitz_1_1_rgb_ru = ED_VET_Blitz_1_1_rgb_ru,
	ED_VET_Blitz_1_2_rgb_ru = ED_VET_Blitz_1_2_rgb_ru,
	ED_VET_Blitz_2_rgb_ru = ED_VET_Blitz_2_rgb_ru,
	ED_VET_Blitz_2_1_rgb_ru = ED_VET_Blitz_2_1_rgb_ru,
	ED_VET_Blitz_2_2_rgb_ru = ED_VET_Blitz_2_2_rgb_ru,
	ED_VET_Blitz_2_3_rgb_ru = ED_VET_Blitz_2_3_rgb_ru,
	ED_VET_Blitz_3_rgb_ru = ED_VET_Blitz_3_rgb_ru,
	ED_VET_Blitz_3_1_rgb_ru = ED_VET_Blitz_3_1_rgb_ru,
	ED_VET_Blitz_3_2_rgb_ru = ED_VET_Blitz_3_2_rgb_ru,

	ED_VET_Aura_0_rgb_ru = ED_VET_Aura_0_rgb_ru,
	ED_VET_Aura_1_rgb_ru = ED_VET_Aura_1_rgb_ru,
	ED_VET_Aura_2_rgb_ru = ED_VET_Aura_2_rgb_ru,
	ED_VET_Aura_3_rgb_ru = ED_VET_Aura_3_rgb_ru,

	ED_VET_Ability_0_rgb_ru = ED_VET_Ability_0_rgb_ru,
	ED_VET_Ability_1_rgb_ru = ED_VET_Ability_1_rgb_ru,
	ED_VET_Ability_1_1_rgb_ru = ED_VET_Ability_1_1_rgb_ru,
	ED_VET_Ability_1_2_rgb_ru = ED_VET_Ability_1_2_rgb_ru,
	ED_VET_Ability_1_3_rgb_ru = ED_VET_Ability_1_3_rgb_ru,
	ED_VET_Ability_1_4_rgb_ru = ED_VET_Ability_1_4_rgb_ru,
	ED_VET_Ability_2_rgb_ru = ED_VET_Ability_2_rgb_ru,
	ED_VET_Ability_2_1_rgb_ru = ED_VET_Ability_2_1_rgb_ru,
	ED_VET_Ability_2_2_rgb_ru = ED_VET_Ability_2_2_rgb_ru,
	ED_VET_Ability_2_3_rgb_ru = ED_VET_Ability_2_3_rgb_ru,
	ED_VET_Ability_3_rgb_ru = ED_VET_Ability_3_rgb_ru,
	ED_VET_Ability_3_1_rgb_ru = ED_VET_Ability_3_1_rgb_ru,
	ED_VET_Ability_3_2_rgb_ru = ED_VET_Ability_3_2_rgb_ru,
	ED_VET_Ability_3_3_rgb_ru = ED_VET_Ability_3_3_rgb_ru,
	ED_VET_Ability_3_4_rgb_ru = ED_VET_Ability_3_4_rgb_ru,
	ED_VET_Ability_3_5_rgb_ru = ED_VET_Ability_3_5_rgb_ru,

	ED_VET_Keystone_1_rgb_ru = ED_VET_Keystone_1_rgb_ru,
	ED_VET_Keystone_1_1_rgb_ru = ED_VET_Keystone_1_1_rgb_ru,
	ED_VET_Keystone_1_2_rgb_ru = ED_VET_Keystone_1_2_rgb_ru,
	ED_VET_Keystone_1_3_rgb_ru = ED_VET_Keystone_1_3_rgb_ru,
	ED_VET_Keystone_1_4_rgb_ru = ED_VET_Keystone_1_4_rgb_ru,
	ED_VET_Keystone_2_rgb_ru = ED_VET_Keystone_2_rgb_ru,
	ED_VET_Keystone_2_1_rgb_ru = ED_VET_Keystone_2_1_rgb_ru,
	ED_VET_Keystone_2_2_rgb_ru = ED_VET_Keystone_2_2_rgb_ru,
	ED_VET_Keystone_2_3_rgb_ru = ED_VET_Keystone_2_3_rgb_ru,
	ED_VET_Keystone_3_rgb_ru = ED_VET_Keystone_3_rgb_ru,
	ED_VET_Keystone_3_1_rgb_ru = ED_VET_Keystone_3_1_rgb_ru,
	ED_VET_Keystone_3_2_rgb_ru = ED_VET_Keystone_3_2_rgb_ru,
	ED_VET_Keystone_3_3_rgb_ru = ED_VET_Keystone_3_3_rgb_ru,
	ED_VET_Keystone_3_4_rgb_ru = ED_VET_Keystone_3_4_rgb_ru,
	ED_VET_Keystone_3_5_rgb_ru = ED_VET_Keystone_3_5_rgb_ru,

	ED_VET_Passive_0_rgb_ru = ED_VET_Passive_0_rgb_ru,
	ED_VET_Passive_1_rgb_ru = ED_VET_Passive_1_rgb_ru,
	ED_VET_Passive_2_rgb_ru = ED_VET_Passive_2_rgb_ru,
	ED_VET_Passive_3_rgb_ru = ED_VET_Passive_3_rgb_ru,
	ED_VET_Passive_4_rgb_ru = ED_VET_Passive_4_rgb_ru,
	ED_VET_Passive_5_rgb_ru = ED_VET_Passive_5_rgb_ru,
	ED_VET_Passive_6_rgb_ru = ED_VET_Passive_6_rgb_ru,
	ED_VET_Passive_7_rgb_ru = ED_VET_Passive_7_rgb_ru,
	ED_VET_Passive_8_rgb_ru = ED_VET_Passive_8_rgb_ru,
	ED_VET_Passive_9_rgb_ru = ED_VET_Passive_9_rgb_ru,
	ED_VET_Passive_10_rgb_ru = ED_VET_Passive_10_rgb_ru,
	ED_VET_Passive_11_rgb_ru = ED_VET_Passive_11_rgb_ru,
	ED_VET_Passive_12_rgb_ru = ED_VET_Passive_12_rgb_ru,
	ED_VET_Passive_13_rgb_ru = ED_VET_Passive_13_rgb_ru,
	ED_VET_Passive_14_rgb_ru = ED_VET_Passive_14_rgb_ru,
	ED_VET_Passive_15_rgb_ru = ED_VET_Passive_15_rgb_ru,
	ED_VET_Passive_16_rgb_ru = ED_VET_Passive_16_rgb_ru,
	ED_VET_Passive_17_rgb_ru = ED_VET_Passive_17_rgb_ru,
	ED_VET_Passive_18_rgb_ru = ED_VET_Passive_18_rgb_ru,
	ED_VET_Passive_19_rgb_ru = ED_VET_Passive_19_rgb_ru,
	ED_VET_Passive_20_rgb_ru = ED_VET_Passive_20_rgb_ru,
	ED_VET_Passive_21_rgb_ru = ED_VET_Passive_21_rgb_ru,
	ED_VET_Passive_22_rgb_ru = ED_VET_Passive_22_rgb_ru,
	ED_VET_Passive_23_rgb_ru = ED_VET_Passive_23_rgb_ru,
	ED_VET_Passive_24_rgb_ru = ED_VET_Passive_24_rgb_ru,
	ED_VET_Passive_25_rgb_ru = ED_VET_Passive_25_rgb_ru,
	ED_VET_Passive_26_rgb_ru = ED_VET_Passive_26_rgb_ru,
	ED_VET_Passive_27_rgb_ru = ED_VET_Passive_27_rgb_ru,
	ED_VET_Passive_28_rgb_ru = ED_VET_Passive_28_rgb_ru,
	ED_VET_Passive_29_rgb_ru = ED_VET_Passive_29_rgb_ru,
	ED_VET_Passive_30_rgb_ru = ED_VET_Passive_30_rgb_ru,
	ED_VET_Passive_31_rgb_ru = ED_VET_Passive_31_rgb_ru,
	ED_VET_Passive_32_rgb_ru = ED_VET_Passive_32_rgb_ru,
	ED_VET_Passive_33_rgb_ru = ED_VET_Passive_33_rgb_ru,
	ED_VET_Passive_34_rgb_ru = ED_VET_Passive_34_rgb_ru,
	ED_VET_Passive_35_rgb_ru = ED_VET_Passive_35_rgb_ru,
	ED_VET_Passive_36_rgb_ru = ED_VET_Passive_36_rgb_ru,
	ED_VET_Passive_37_rgb_ru = ED_VET_Passive_37_rgb_ru,
	ED_VET_Passive_38_rgb_ru = ED_VET_Passive_38_rgb_ru,
	ED_VET_Passive_39_rgb_ru = ED_VET_Passive_39_rgb_ru,
	ED_VET_Passive_40_rgb_ru = ED_VET_Passive_40_rgb_ru,
	ED_VET_Passive_41_rgb_ru = ED_VET_Passive_41_rgb_ru,
	ED_VET_Passive_42_rgb_ru = ED_VET_Passive_42_rgb_ru,
	ED_VET_Passive_43_rgb_ru = ED_VET_Passive_43_rgb_ru,

	ED_OGR_Blitz_0_rgb_ru = ED_OGR_Blitz_0_rgb_ru,
	ED_OGR_Blitz_1_rgb_ru = ED_OGR_Blitz_1_rgb_ru,
	ED_OGR_Blitz_1_1_rgb_ru = ED_OGR_Blitz_1_1_rgb_ru,
	ED_OGR_Blitz_2_rgb_ru = ED_OGR_Blitz_2_rgb_ru,
	ED_OGR_Blitz_3_rgb_ru = ED_OGR_Blitz_3_rgb_ru,

	ED_OGR_Aura_0_rgb_ru = ED_OGR_Aura_0_rgb_ru,
	ED_OGR_Aura_1_rgb_ru = ED_OGR_Aura_1_rgb_ru,
	ED_OGR_Aura_2_rgb_ru = ED_OGR_Aura_2_rgb_ru,
	ED_OGR_Aura_3_rgb_ru = ED_OGR_Aura_3_rgb_ru,

	ED_OGR_Ability_0_rgb_ru = ED_OGR_Ability_0_rgb_ru,
	ED_OGR_Ability_1_rgb_ru = ED_OGR_Ability_1_rgb_ru,
	ED_OGR_Ability_1_1_rgb_ru = ED_OGR_Ability_1_1_rgb_ru,
	ED_OGR_Ability_1_2_rgb_ru = ED_OGR_Ability_1_2_rgb_ru,
	ED_OGR_Ability_1_3_rgb_ru = ED_OGR_Ability_1_3_rgb_ru,
	ED_OGR_Ability_2_rgb_ru = ED_OGR_Ability_2_rgb_ru,
	ED_OGR_Ability_2_1_rgb_ru = ED_OGR_Ability_2_1_rgb_ru,
	ED_OGR_Ability_2_2_rgb_ru = ED_OGR_Ability_2_2_rgb_ru,
	ED_OGR_Ability_2_3_rgb_ru = ED_OGR_Ability_2_3_rgb_ru,
	ED_OGR_Ability_3_rgb_ru = ED_OGR_Ability_3_rgb_ru,
	ED_OGR_Ability_3_1_rgb_ru = ED_OGR_Ability_3_1_rgb_ru,
	ED_OGR_Ability_3_2_rgb_ru = ED_OGR_Ability_3_2_rgb_ru,
	ED_OGR_Ability_3_3_rgb_ru = ED_OGR_Ability_3_3_rgb_ru,
	ED_OGR_Ability_3_4_rgb_ru = ED_OGR_Ability_3_4_rgb_ru,

	ED_OGR_Keystone_1_rgb_ru = ED_OGR_Keystone_1_rgb_ru,
	ED_OGR_Keystone_1_1_rgb_ru = ED_OGR_Keystone_1_1_rgb_ru,
	ED_OGR_Keystone_1_2_rgb_ru = ED_OGR_Keystone_1_2_rgb_ru,
	ED_OGR_Keystone_1_3_rgb_ru = ED_OGR_Keystone_1_3_rgb_ru,
	ED_OGR_Keystone_1_4_rgb_ru = ED_OGR_Keystone_1_4_rgb_ru,
	ED_OGR_Keystone_1_5_rgb_ru = ED_OGR_Keystone_1_5_rgb_ru,
	ED_OGR_Keystone_2_rgb_ru = ED_OGR_Keystone_2_rgb_ru,
	ED_OGR_Keystone_2_1_rgb_ru = ED_OGR_Keystone_2_1_rgb_ru,
	ED_OGR_Keystone_2_2_rgb_ru = ED_OGR_Keystone_2_2_rgb_ru,
	ED_OGR_Keystone_2_3_rgb_ru = ED_OGR_Keystone_2_3_rgb_ru,
	ED_OGR_Keystone_3_rgb_ru = ED_OGR_Keystone_3_rgb_ru,
	ED_OGR_Keystone_3_1_rgb_ru = ED_OGR_Keystone_3_1_rgb_ru,
	ED_OGR_Keystone_3_2_rgb_ru = ED_OGR_Keystone_3_2_rgb_ru,
	ED_OGR_Keystone_3_3_rgb_ru = ED_OGR_Keystone_3_3_rgb_ru,

	ED_OGR_Passive_0_rgb_ru = ED_OGR_Passive_0_rgb_ru,
	ED_OGR_Passive_1_rgb_ru = ED_OGR_Passive_1_rgb_ru,
	ED_OGR_Passive_2_rgb_ru = ED_OGR_Passive_2_rgb_ru,
	ED_OGR_Passive_3_rgb_ru = ED_OGR_Passive_3_rgb_ru,
	ED_OGR_Passive_4_rgb_ru = ED_OGR_Passive_4_rgb_ru,
	ED_OGR_Passive_5_rgb_ru = ED_OGR_Passive_5_rgb_ru,
	ED_OGR_Passive_6_rgb_ru = ED_OGR_Passive_6_rgb_ru,
	ED_OGR_Passive_7_rgb_ru = ED_OGR_Passive_7_rgb_ru,
	ED_OGR_Passive_8_rgb_ru = ED_OGR_Passive_8_rgb_ru,
	ED_OGR_Passive_9_rgb_ru = ED_OGR_Passive_9_rgb_ru,
	ED_OGR_Passive_10_rgb_ru = ED_OGR_Passive_10_rgb_ru,
	ED_OGR_Passive_11_rgb_ru = ED_OGR_Passive_11_rgb_ru,
	ED_OGR_Passive_12_rgb_ru = ED_OGR_Passive_12_rgb_ru,
	ED_OGR_Passive_13_rgb_ru = ED_OGR_Passive_13_rgb_ru,
	ED_OGR_Passive_14_rgb_ru = ED_OGR_Passive_14_rgb_ru,
	ED_OGR_Passive_15_rgb_ru = ED_OGR_Passive_15_rgb_ru,
	ED_OGR_Passive_16_rgb_ru = ED_OGR_Passive_16_rgb_ru,
	ED_OGR_Passive_17_rgb_ru = ED_OGR_Passive_17_rgb_ru,
	ED_OGR_Passive_18_rgb_ru = ED_OGR_Passive_18_rgb_ru,
	ED_OGR_Passive_19_rgb_ru = ED_OGR_Passive_19_rgb_ru,
	ED_OGR_Passive_20_rgb_ru = ED_OGR_Passive_20_rgb_ru,
	ED_OGR_Passive_21_rgb_ru = ED_OGR_Passive_21_rgb_ru,
	ED_OGR_Passive_22_rgb_ru = ED_OGR_Passive_22_rgb_ru,
	ED_OGR_Passive_23_rgb_ru = ED_OGR_Passive_23_rgb_ru,
	ED_OGR_Passive_24_rgb_ru = ED_OGR_Passive_24_rgb_ru,
	ED_OGR_Passive_25_rgb_ru = ED_OGR_Passive_25_rgb_ru,
	ED_OGR_Passive_26_rgb_ru = ED_OGR_Passive_26_rgb_ru,
	ED_OGR_Passive_27_rgb_ru = ED_OGR_Passive_27_rgb_ru,
	ED_OGR_Passive_28_rgb_ru = ED_OGR_Passive_28_rgb_ru,
	ED_OGR_Passive_29_rgb_ru = ED_OGR_Passive_29_rgb_ru,
	ED_OGR_Passive_30_rgb_ru = ED_OGR_Passive_30_rgb_ru,
	ED_OGR_Passive_31_rgb_ru = ED_OGR_Passive_31_rgb_ru,
	ED_OGR_Passive_32_rgb_ru = ED_OGR_Passive_32_rgb_ru,
	ED_OGR_Passive_33_rgb_ru = ED_OGR_Passive_33_rgb_ru,
	ED_OGR_Passive_34_rgb_ru = ED_OGR_Passive_34_rgb_ru,
	ED_OGR_Passive_35_rgb_ru = ED_OGR_Passive_35_rgb_ru,
	ED_OGR_Passive_36_rgb_ru = ED_OGR_Passive_36_rgb_ru,
	ED_OGR_Passive_37_rgb_ru = ED_OGR_Passive_37_rgb_ru,
	ED_OGR_Passive_38_rgb_ru = ED_OGR_Passive_38_rgb_ru,
	ED_OGR_Passive_39_rgb_ru = ED_OGR_Passive_39_rgb_ru,
	ED_OGR_Passive_40_rgb_ru = ED_OGR_Passive_40_rgb_ru,
	ED_OGR_Passive_41_rgb_ru = ED_OGR_Passive_41_rgb_ru,
	ED_OGR_Passive_42_rgb_ru = ED_OGR_Passive_42_rgb_ru,
	ED_OGR_Passive_43_rgb_ru = ED_OGR_Passive_43_rgb_ru,
	ED_OGR_Passive_44_rgb_ru = ED_OGR_Passive_44_rgb_ru,
	ED_OGR_Passive_45_rgb_ru = ED_OGR_Passive_45_rgb_ru,
	ED_OGR_Passive_46_rgb_ru = ED_OGR_Passive_46_rgb_ru,
	ED_OGR_Passive_47_rgb_ru = ED_OGR_Passive_47_rgb_ru,
	ED_OGR_Passive_48_rgb_ru = ED_OGR_Passive_48_rgb_ru,
	ED_OGR_Passive_49_rgb_ru = ED_OGR_Passive_49_rgb_ru,
}