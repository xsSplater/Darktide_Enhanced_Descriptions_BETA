---@diagnostic disable: undefined-global
local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text



			-- ============ DO NOT DO ANYTHING ABOVE! ============ --

-- Check the length of the text in the game and adjust it so that the descriptions do not extend the card beyond the screen.
-- If you can't shorten it, you can simply hide the least useful line by adding "--" before that line.
-- Extended descriptions have a lower priority than the main description, imho.

-- If you added/changed something, then you need to duplicate/change the same entry in the list below.
-- For example, you change "ED_PSY_Blitz_0_rgb" to "ED_PSY_Blitz_0_rgb_urlang", then at the bottom you need to find (CTRL+F) the "ED_PSY_Blitz_0_rgb" entries and also rename them from "ED_PSY_Blitz_0_rgb = ED_PSY_Blitz_0_rgb," to "ED_PSY_Blitz_0_rgb_urlang = ED_PSY_Blitz_0_rgb_urlang,".
-- If you add a new entry (ex. MyEntry_rgb), just duplicate it in the list below (MyEntry_rgb = MyEntry_rgb,).

local ppp___ppp = "\n+++-------------------------------------------------+++"
local become_invis_drop_all_enemy_aggro = "- Become Invisible dropping all enemy aggro: Melee enemies reaggro immediately to another target if possible, firing Ranged enemies stop shooting, then reaggro if possible."
local can_be_refr_dur_active_dur = "- Can be refreshed during active duration."
local doesnt_stack_aura_psy = "- Doesn't Stack with the same Aura from another Psyker."
local doesnt_interact_w_c_a_r_from_curio = "- Does not interact with Combat Ability Regeneration from Curios which only reduces the Maximum cooldown of a Combat Ability."
local dmg_is_incr_by = "- Damage is increased by Rending/Brittleness, \"Skullcrusher\" Blessing (while Staggered) and buffs from \"Empowered Psionics\", \"Empyrean Empowerment\", \"Empyric Shock\", \"Disrupt Destiny\", \"Malefic Momentum\", \"Perfect Timing\", \"Scrier's Gaze\" (including \"Precognition\"), \"Warp Rider\", aura \"Kinetic Presence\" (against Elites), and small Ranged Damage node."
local procs_on_succss_dodging = "- Procs on successfully dodging enemy Melee or Ranged attacks (except Gunners, Reaper, Sniper), and disabler attacks (Pox Hound jump, Trapper net, Mutant grab)."
local red_both_tghns_n_health_dmg = "- Reduces both Toughness and Health Damage taken."
local stacks_add_w_oth_dmg = "- Stacks additively with other Damage buffs, and multiplicatively with Power level buffs from Weapon Blessings."
local stacks_mult_w_other_dmg_red_buffs = "- Stacks multiplicatively with other Damage Reduction buffs."
local succss_dodge_means = "- \"Successful dodge\" means Dodging an enemy attack that is locked on the player with an accordingly timed Dodge or Sliding action."
local warp_attc_refers_to = "- \"Warp attack\" refers to a list of attacks that have their Damage types denoted as \"Warp Damage types\": Force Swords' activated attacks, Force Staves' primary attacks, Force Staves' secondary attacks, Electrocution (\"Smite\", Electrokinetic Staff secondary, Shock Maul special action), \"Soulblaze\", \"Brain Rupture\"/\"Brain Burst\", \"Assail\", and \"Warp Rupture\"."
local z_eff_of_this_tougn_rep = "- The effectiveness of this Toughness Replenishment is affected by certain player debuffs like toxic gas."
local z_ghost_hitnrun_n_stripp = "- \"The Ghost\", \"Hit and Run\" and \"Stripped Down\" Weapon Blessings can proc this Talent (only against Ranged attacks)."

--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true) -- Do not translate this line!

--[+ ++PSYKER++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Brain Burst +]--
	local ED_PSY_Blitz_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Cannot Crit.",
		"- Base Damage: 900.",
		"- Always scores a Weakspot hit.",
		-- "- Higher Damage against Maniac and Unyielding.",
		"{#color(255, 35, 5)}- You may Explode! Don't use if Peril level is 97% or above!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1 - Brain Rupture +]--
	local ED_PSY_Blitz_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Cannot Crit.",
		"- Base Damage: 1350.",
		"- Always scores a Weakspot hit.",
		-- "- Higher Damage against Maniac and Unyielding.",
		"- Main attack applies a light Charge Stagger at 50% charge level to the targeted enemy. Cannot Stagger: Bombers, Maulers, Mutants, Ogryns, Poxbursters, Ragers, Scab Shotgunners or Monstrosities.",
		"- On Impact Staggers all enemies except Mutants, Monstrosities and enemies with active void shield.",
		dmg_is_incr_by,
		"{#color(255, 35, 5)}- You may Explode! Don't use if Peril level is 97% or above!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1-1 - Kinetic Resonance +]--!!!
	local ED_PSY_Blitz_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Reduces Brain Rupture's charge time for both primary and secondary attacks.",
		"- Charge time reduction stacks additively with itself (if procced twice in succession with \"Bolstered Shield\") and \"Empowered Psionics\", and multiplicatively/additively with Celerity Stimm's two charge time reductions.",
		"- Peril Cost Reduction stacks multiplicatively with related buffs from \"By Crack of Bone\", \"Becalming Eruption\", \"Empyric Resolve\", \"Inner Tranquility\", \"Reality Anchor\", small Peril Resistance nodes, Combat Stimm, and the \"Enhanced Blitz\" mutator.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1-2 - Kinetic Flayer +]--
	local ED_PSY_Blitz_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- \"Brain Rupture\" attacks triggered by the Talent benefit from \"Empowered Psionics\" Damage buff without consuming a Stack.",
		"{#color(255, 35, 5)}- There is currently a bug: When Peril is above 97%, the Talent triggers and a 15-second Cooldown begins, but the enemy does NOT receive Damage at all.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2 - Smite +]--
	local ED_PSY_Blitz_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Cannot crit.",
		"- Max range: 15 meters.",
		"- Targets only torso hitzone.",
		-- "- Cannot Stagger Monstrosities and enemies with active void shield.",
		-- "- Average armor Damage modifiers, low armor Damage modifier against Carapace.",
		dmg_is_incr_by,
		"- Forces a short Quelling action when reaching 100% Peril removing ~8.5% Peril. If released below 100% Peril, pushes enemies back (if possible).",
		"{#color(255, 35, 5)}- You can only Explode if you raise your Peril level to exactly 100% with a charged attack and at same time use a normal attack!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2-1 - Lightning Storm +]--
	local ED_PSY_Blitz_2_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- Increases max jumps from 1 to 2.",
		"- Applies both to Smite's primary and secondary actions.",
		"- Increases the Max radius within which \"Smite\" can chain to another target from 5 to 6 meters.",
		"- This also increases the targeting range by 1 meter, up to 16 meters.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2-2 - Enfeeble +]--
	local ED_PSY_Blitz_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- The debuff is being applied as long as the enemy is actively affected by \"Smite\".",
		"- Stacks multiplicatively with other Damage taken debuffs like \"Empyric Shock\" or Ogryn's \"Soften Them Up\", \"Valuable Destruction\" or Veteran's \"Focus Target!\", with Damage buffs, and with Power level buffs from Weapon Blessings.",
		-- "- Doesn't Stack with the same debuff applied by another Psyker.",
		"- Any source that may apply an Electrocution effect to enemies but is not \"Smite\" or \"Charged Strike\" will not proc \"Enfeeble\".",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2-3 - Charged Strike +]--
	local ED_PSY_Blitz_2_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- Up to 64 base Damage per tick when reaching Max charge level.",
		-- "- The Damage window lasts up to 2 seconds.",
		-- "- The Electrocuted state lasts until 2 seconds after the last Damage tick.",
		"-- Note that the time before the first Damage tick can happen depends on enemy Hit mass (just like with \"Smite\" itself), so the more Hit mass an enemy has the longer it will take before this Talent's Electrocution effect deals Damage. As a result, against Monstrosities (20 Hit mass), only 1 Damage tick can be executed before the Damage window of 2 seconds ends.",
		"-- If Enfeeble is selected, the Electrocution effect receives a more favorable Hit mass cost, which effectively doubles its tick rate against most enemies, and is also able to reach Max charge level sooner. With \"Enfeeble\", this Talent's Electrocution effect benefits from the 10% increased Damage taken debuff, and attacking players also benefit from it while the Electrocution effect is actively damaging and applying the debuff (just like with \"Smite\" itself).",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Assail +]--
	local ED_PSY_Blitz_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Can Crit. Cleave up to 2 enemies.",
		"- Costs 1 ammo and recharges it every 3 seconds.",
		-- "- Very low Damage against Carapace and low against Unyielding.",
		"- Affected by Peril Cost Reduction buffs from respective Talents and Combat Stimm.",
		dmg_is_incr_by,
		"{#color(255, 35, 5)}- You may Explode! Don't use if Peril level is 100%!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3-1 - Ethereal Shards +]--
	local ED_PSY_Blitz_3_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- If \"Empowered Psionics\" is active, this is doubled, up to 6 targets.",
		"- Carapace cannot be Cleaved by default.",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3-2 - Quick Shards +]--
	local ED_PSY_Blitz_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Reduces projectile recharge time from 3 to 2.1 seconds per projectile.",
		"- Does not interact with the \"Enhanced Blitz\" mutator.",
	}, "\n"), enhdesc_col)

--[+ +AURA+ +]--
	--[+ Aura 0 - The Quickening +]--
	local ED_PSY_Aura_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with Combat Ability Regeneration from Curios and the mission mutators that reduce Ability Cooldowns by 20%.",
		"- This Reduces the Max Cooldown of \"Venting Shriek\"/\"Psykinetic's Wrath\" to 27.75 seconds, for \"Scrier's Gaze\" to 23.125 seconds, and for \"Telekine Shield\" to 37 seconds.",
		doesnt_stack_aura_psy,
	}, "\n"), enhdesc_col)

	--[+ Aura 1 - Kinetic Presence +]--
	local ED_PSY_Aura_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
		doesnt_stack_aura_psy,
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Seer's Presence +]--
	local ED_PSY_Aura_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with Combat Ability Regeneration from Curios and the mission mutators that reduce Ability Cooldowns by 20%.",
		"- This Reduces the Cooldowns of \"Venting Shriek\"/\"Psykinetic's Wrath\" to 27 seconds, for \"Scrier's Gaze\" to 22.5 seconds, and for \"Telekine Shield\" to 36 seconds.",
		doesnt_stack_aura_psy,
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Prescience +]--
	local ED_PSY_Aura_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Applies to all attacks that can Crit.",
		"- Stacks additively with other sources of Crit Chance.",
		doesnt_stack_aura_psy,
	}, "\n"), enhdesc_col)

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Psykinetic's Wrath +]--
	local ED_PSY_Ability_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Can be used to prevent Psyker's self-explode.",
		"- The Warp wave passes through objects and spreads up to 30 meters. So you can drop the Pox Hound from an Ally through the wall.",
		"- Stuns enemies within a 5 meter radius in front of Psyker.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Venting Shriek +]--
	local ED_PSY_Ability_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Always targets torso hitzone.",
		"- Can be used while exploding thereby preventing Psyker's self-explode.",
		"- The Warp wave passes through objects and spreads up to 30 meters.",
		"- Stuns enemies within a 5 meter radius in front of Psyker.",
		"- Stagger strength scales with Peril reaching its Maximum strength at 100% Peril. Up to light Staggers against Crushers. Cannot Stagger Mutants, Monstrosities and  and enemies with active void shield.",
		"- Stagger strength decreases with range losing its efficiency almost entirely at 30 meters.",
		"- Stagger strength is additionally affected by some Weapon Blessings: \"Executor\", \"Slaughterer\", \"Superiority\", \"Unstable Power\", etc. Applies only when the respective weapon is equipped when shouting.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Becalming Eruption +]--
	local ED_PSY_Ability_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks multiplicatively with related Peril Cost Reduction buffs from \"By Crack of Bone\", \"Empyric Resolve\", \"Inner Tranquility\", \"Kinetic Resonance\", small Peril Resistance nodes, and Combat Stimm.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Warp Rupture +]--
	local ED_PSY_Ability_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Has same armor Damage modifier against all armor types, loses Damage with range.",
		"- Base Damage dealt scales with Peril:",
		"_______________________________",
		"Peril:           0%|  25%|  50%|  75%|  100%",
		"Damage:   100|   125|    150|   175|   200",
		"_______________________________",
		"- Damage is affected by Damage buffs: ",
		"-- from Talents: \"Disrupt Destiny\", \"Empyrean Empowerment\", \"Empyric Shock\" (while debuffed), \"Malefic Momentum\", \"Kinetic Presence\" (vs Elites), \"Perfect Timing\", and \"\".Warp Rider\".",
		"-- from Blessings of the Weapons:",
		"--- Melee, if procced with weapon before Warp Rupture's activation: \"Executor\", \"High Voltage\" (vs Electrocuted), \"Skullcrusher\" (vs Staggered), \"Slaughterer\", \"Superiority\", and \"Unstable Power\".",
		"--- Ranged, if procced with weapon before Warp Rupture's activation: \"Blaze Away\", \"Ceaseless Barrage\", \"Deathspitter\", \"Dumdum\", \"Execution\" (vs Staggered), \"Fire Frenzy\", \"Full Bore\", \"No Respite\" (vs Staggered), \"Pinning Fire\", \"Powderburn\", and \"Run 'n' Gun\" (while Sprinting).",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-3 - Warp Creeping Flames +]--
	local ED_PSY_Ability_1_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- The amount of Soulblaze Stacks applied to enemies scales with Peril:",
		"_______________________________",
		"Stacks: 1|      2|        3|       4|       5|       6",
		"Peril: 0%|~17%|~34%|~50%|~67%|~84%",
		"_______________________________",
		"- Lasts 8 seconds. Ticks every 0.75 seconds.",
		"- Refreshes duration on Stack application.",
		"- Stacks additively with other sources of Soulblaze.",
		"- Soulblaze damage is increased by Rending and Brittleness, by Perks of currently equipped Weapons, and by Buffs from Talents: \"Disrupt Destiny\", \"Empyrean Empowerment\", \"Malefic Momentum\", \"Kinetic Presence\", \"Perfect Timing\", and \"Warp Rider\".",
		"-- Blessings of the Weapons:",
		"--- Melee: \"Executor\", \"High Voltage\" (vs Electrocuted), \"Skullcrusher\" (vs Staggered), \"Slaughterer\", \"Superiority\", \"Uncanny Strike\", and \"Unstable Power\".",
		"--- Ranged: \"Blaze Away\", \"Deathspitter\", \"Dumdum\", \"Execution\" (vs Staggered), \"Fire Frenzy\", \"No Respite\" (vs Staggered), \"Pinning Fire\", and \"Run 'n' Gun\" (while Sprinting).",
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Telekine Shield +]--
	local ED_PSY_Ability_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Shield Health: 20.",
		"- Dimensions: 6 meters wide, 3.5 meters high.",
		"- Max placement range: 10 meters.",
		"- Total placement time: 0.6 seconds.",
		"- You can hold Ability button to preview location and you can cancel it by blocking.",
		"- Blocks: Ranged hit scan Attacks, projectiles (Bomber grenades), nets (Trappers), and flamethrower direct hits (Flamers).",
		"- Ground fire patches and toxic gas clouds expand through the shield.",
		"- Doesn't block Poxburster explosion.",
		"- How shield health works:",
		"-- Every incoming Ranged attack counts as dealing 1 Damage. After taking Damage, the shield doesn't take any more Damage for the next 0.33 seconds.",
		"--- For example, placed in front of a Dreg Gunner, the shield will eventually disappear during the Gunner's second salvo, after it has taken 20 valid hits total.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Bolstered Shield +]--
	local ED_PSY_Ability_2_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- The Cooldown of the second charge only starts after the first charge finished Cooldown.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Enervating Threshold +]--
	local ED_PSY_Ability_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Deals no Damage.",
		"- Applies Stagger every 0.55 seconds.",
		"- Electrocution effect lasts for 3 seconds.",
		"- Can Stun all enemies except Monstrosities.",
		"- Always applies the effect to Specials when they get in contact with the shield.",
		"- The shield takes 8 Damage per direct body hit from Specials, disappearing after 3 \"blocked\" Specials. Respects the 0.33 seconds Damage Cooldown window which means that any amount of direct body hits from Specials that happen within 0.33 seconds of each other count as just 1 direct body hit taken.",
		"",
		"{#color(255, 35, 5)}- There is currently a bug: Specials that touch the shield only deal 1 Damage to it instead of 8.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - Telekine Dome +]--
	local ED_PSY_Ability_2_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Sphere has a radius of 6 meters.",
		"- Protects from enemy attacks at all degrees.",
		"- Has the same properties as the flat shield.",
		"- Also takes Ranged Damage in the same way.",
		"",
		"{#color(255, 35, 5)}- There is currently a bug: Mutants that are successfully Dodged inside the dome always get Staggered.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-4 - Sanctuary +]--
	local ED_PSY_Ability_2_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- This replenishment effect can Stack if multiple spheres overlap.",
		z_eff_of_this_tougn_rep,
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Scrier's Gaze +]--
	local ED_PSY_Ability_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- While Ability is in overcharging phase Cooldown is paused. However, its remaining cooldown can still be actively reduced by proccing \"Psykinetic's Aura\" or using a Concentration Stimm.",
		"- Its Maximum Cooldown can be Reduced by \"Seer's Presence\", \"Warp Siphon\", Combat Ability Regeneration from Curios, and by the mission mutators that reduce Ability Cooldowns by 20%.",
		"- After overcharging has ended, grants a 1.5 seconds grace period in which Peril-generating actions can be executed without triggering Psyker's self-explosion.",
	}, "\n"), enhdesc_col)

	-- [+ Ability 3-1 - Endurance +]--
	local ED_PSY_Ability_3_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Does not linger after overcharging phase.",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	-- [+ Ability 3-2 - Precognition +]--
	local ED_PSY_Ability_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with other Weakspot and Finesse Damage buffs.",
		"- Can proc multiple times per attack when Cleaving.",
		"- These stacking Damage buffs are active immediately during the overcharging phase.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Warp Speed +]--
	local ED_PSY_Ability_3_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Does not linger after overcharging phase.",
		"- Stacks additively with movement speed buffs from \"Disrupt Destiny\", \"Mettle\", the small Movement speed node, and Weapon Blessings like \"Rev it Up\".",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-4 - Reality Anchor +]--
	local ED_PSY_Ability_3_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Does not linger after overcharging phase.",
		"- Stacks multiplicatively with Peril cost reduction buffs from \"By Crack of Bone\", \"Empyric Resolve\", \"Kinetic Resonance\", small Peril Resistance nodes, and Combat Stimm.",
		"- Can stack with \"Inner Tranquility\" only if Psyker regains Warp charges while overcharging.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-5 - Warp Unbound +]--
	local ED_PSY_Ability_3_5_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- After overcharging has ended, allows Psyker to execute Peril-generating actions while at 100% Peril for 10 seconds without triggering the self-explosion.",
		"- Note that when this 10 seconds duration ends, Scrier's Gaze's base grace period still applies, providing another 1.5 seconds of the same effect.",
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Warp Siphon +]--
	local ED_PSY_Keystone_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur,
		"- Interacts with Combat Ability Regeneration from Curios and other Maximum Cooldown Reductions from \"Seer's Presence\" or the mission mutators that reduce Ability cooldowns by 20%.",
		"- For example, when Psyker with \"Seer's Presence\" aura (-0.1), 4 Warp charges and 12% Combat Ability Regeneration (-0.12) from Curios uses \"Telekine Shield\", its Maximum cooldown of 40 seconds is first reduced by Curio stat and aura to 40+40x(-0.1-0.12)=31.2 seconds. This Max Cooldown is then considered by Warp Siphon and further reduced by the Warp charge-based reduction to 31.2-31.2x(0.075x4)=21.84 seconds (HUD rounds: 22 seconds).",
		-- "- Does not interact with Concentration Stimm's remaining Cooldown Reduction effect which increases a character's base Ability Cooldown rate of 1 second per second by additional 3 seconds per second.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Inner Tranquility +]--
	local ED_PSY_Keystone_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks linearly with itself (1 Warp charge = 6% Peril Cost Reduction, 2 = 12%, 3 = 18%, etc) and multiplicatively with other Peril Cost Reduction buffs from \"By Crack of Bone\", \"Empyric Resolve\", \"Kinetic Resonance\", small Peril Resistance nodes, and Combat Stimm.",
		"- Because all Warp charges are dropped when using a Combat Ability, the Talent cannot immediately Stack with \"Becalming Eruption\" and \"Reality Anchor\" (unless Psyker regains Warp charges during their active duration).",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Essence Harvest +]--
	local ED_PSY_Keystone_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Does not increase the amount of Toughness replenished.",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Empyrean Empowerment +]--
	local ED_PSY_Keystone_1_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - In Fire Reborn +]--
	local ED_PSY_Keystone_1_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- You gain a Warp charge when an enemy who is currently affected by Soulblaze is killed either by Soulblaze, by Psyker, or by an ally.",
		"- This effect has no range limit and benefits all Psykers who have this talent equipped.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-5 - Psychic Vampire +]--
	local ED_PSY_Keystone_1_5_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- If multiple Psykers are in Coherency with each other, all of them get a Warp charge when the Talent procs for one of them.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-6 - Warp Battery +]--
	local ED_PSY_Keystone_1_6_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Increases the Max amount of Warp charges Psyker can hold from 4 to 6.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Empowered Psionics - Empowered Brain Rupture +]--
	local ED_PSY_Keystone_2_0_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- Consumes Stacks when attack connects with an enemy.",
		"- Stacks additively with other applicable Damage buffs.",
		"- Stacking additively with \"Kinetic Resonance\", and multiplicatively/additively with Celerity Stimm's two charge time reductions.",
		"_______________________________",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Empowered Psionics - Empowered Smite +]--
	local ED_PSY_Keystone_2_0_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- Consumes Stacks when releasing.",
		"- Stacks additively with other applicable Damage buffs.",
		"- Stacks multiplicatively with related buff from Celerity Stimm.",
		"_______________________________",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Empowered Psionics - Empowered Assail +]--
	local ED_PSY_Keystone_2_0_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- Consumes Stacks per thrown projectile.",
		"- Allows casting at 100% Peril.",
		"- Double the number of targets.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - Bio-Lodestone +]--
	-- local ED_PSY_Keystone_2_1_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Psychic Leeching +]--
	local ED_PSY_Keystone_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Procs when \"Brain Rupture\" hits, when \"Smite\" starts casting or after charging, and when \"Assail\" spawns a projectile.",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-3 - Overpowering Souls +]--
	-- local ED_PSY_Keystone_2_3_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 2-4 - Charged Up +]--
	-- local ED_PSY_Keystone_2_4_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3 - Disrupt Destiny +]--
	local ED_PSY_Keystone_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Dealing damage to Marked enemies refreshes the Talent's duration.",
		"- Valid targets are: Dreg/Scab Bruisers, Dreg/Scab Stalkers, Scab Shooters, Ragers, Gunners, Shotgunners and Maulers.",
		"- Stacks additively with Movement Speed buffs from \"Mettle\", \"Warp Speed\", Movement Speed node and Weapon Blessings like \"Rev it Up\".",
		"- Precision bonuses Stacks additively with other related Damage buffs.",
		"- Can be refreshed during active duration either by killing or successfully Staggering the Marked enemy or by Damage ticks from Soulblaze, Burn and Bleed on the Marked target.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Perfectionism +]--
	-- local ED_PSY_Keystone_3_1_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Purloin Providence +]--
	local ED_PSY_Keystone_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- There is a 2% chance that the Talent procs on the same kill alongside \"Battle Meditation\" removing 25% Peril total.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-3 - Lingering Influence +]--
	-- local ED_PSY_Keystone_3_3_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3-4 - Cruel Fortune +]--
	local ED_PSY_Keystone_3_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Procs on Melee, Ranged, \"Brain Rupture\" or \"Assail\" attacks.",
	}, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Soulstealer +]--
	local ED_PSY_Passive_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- If the warp attack is a Melee attack, the Talent's amount of 7.5% is added to Psyker's base 5% of Maximum Toughness gained on Melee kill.",
		"-- For example, a Psyker with 96 Max Toughness killing two enemies with an activated Force sword attack replenishes 96x(0.1+0.15)=24 Toughness.",
		z_eff_of_this_tougn_rep,
		warp_attc_refers_to,
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Mettle +]--
	local ED_PSY_Passive_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Procs only once per Critical attack regardless of how many enemies have been hit.",
		z_eff_of_this_tougn_rep,
		"- Always generates 1 Stack per Critical attack regardless of how many enemies have been hit.",
		"-- Stacks last for 4 seconds and Can be refreshed during active duration.",
		"-- Stacks additively with Movement Speed buffs from \"Disrupt Destiny\", \"Warp Speed\", the small Movement Speed node, and Weapon Blessings like \"Rev it Up\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 3 - Quietude +]--
	local ED_PSY_Passive_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Replenishes 0.5% of Maximum Toughness per 1% Peril Quelled.",
		"- Procs on both active or passive quelling.",
		"- For example, a Psyker with 109 Maximum Toughness Quelling down from 59% true Peril to 0% Peril, replenishes 59x(109x0.005)=32.15 Toughness (HUD rounds up: 33).",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Warp Expenditure +]--
	local ED_PSY_Passive_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Replenishes 0.25% of maximum Toughness per 1% Peril generated.",
		"- Peril Cost Reduction buffs from \"Becalming Eruption\", \"Inner Tranquility\", \"Kinetic Resonance\", \"Reality Anchor\" and Peril Resistance nodes Reduce this Talent's efficiency!",
		"- For example, a Psyker with 90 Max Toughness who generates 44% Peril, replenishes 44x(90x0.0025)=9.9 Toughness. However, the same Psyker generating 44% Peril with 15% Peril Cost Reduction from 3 small Peril Resistance nodes, replenishes only 44x(90x0.0025x0.95^3)=8.488 Toughness instead.",
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Perilous Combustion +]--
	local ED_PSY_Passive_5_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks are applied at a distance of up to 4 meters from the killed enemy.",
		"- Does not proc on Elites or Specials killed by Psyker's Soulblaze Damage ticks.",
		"- Does proc on Burn or Bleed tick kills.",
		"- Soulblaze:",
		"-- Lasts 8s.",
		"-- Same as other sources of Soulblaze.",
		"-- Ticks every 0.75 seconds.",
		"-- Refreshes duration on stack application.",
		"-- Very high armor Damage modifiers across the board, very low armor Damage modifier against Carapace.",
		"{#color(255, 35, 5)}- Stacks apply to Daemonhosts!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 6 - Perfect Timing +]--
	local ED_PSY_Passive_6_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Hitting enemies with a Critical Melee, Ranged, or Assail attack grants Stacks.",
		"- Generates multiple Stacks per attack when Cleaving.",
		"- Stacks can be refreshed during active duration.",
		stacks_add_w_oth_dmg,
		warp_attc_refers_to,
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Battle Meditation +]--
	local ED_PSY_Passive_7_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Removes 10% Peril from the current Peril amount.",
		"- Has a 10% chance to proc when enemies die to Psyker's Melee and Ranged attacks, Damaging abilities, DoTs, and when pushed over ledges into map kill boxes by Psyker.",
		"- Procs additionally to \"By Crack of Bone\" and \"Tranquility Through Slaughter\".",
		"- There is a 2% chance that the Talent procs on the same kill alongside \"Purloin Providence\" removing 25% Peril total.",
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Wildfire +]--
	local ED_PSY_Passive_8_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Whenever an Enemy who is affected by at least 2 Stacks of Soulblaze dies, it spreads to valid targets within a 5 meters radius.",
		"- Targets do not receive Soulblaze Stacks caused by the Talent if they already have 4 Stacks or more on them.",
		"- Valid targets can receive Soulblaze Stacks up to a Maximum of 4 that are caused by the Talent.",
		"- The amount of Soulblaze Stacks that spread depends on the amount of Soulblaze stacks on the dying enemy:",
		"_______________________________",
		"Stacks:       1|        2|       3|       4|      >4",
		"Spreads:    0|       2|       3|        4|       4",
		"_______________________________",
		"- The maximum amount of valid targets to spread is 4:",
		"-- if 4 Stacks and 4 targets - each target receives 1 Stack;",
		"-- if 4 Stacks and 3 targets - 1 target receives 2 Stacks while the other 2 targets receive 1 Stack each, etc.",
		"Daemonhosts are No valid targets!",
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - Psykinetic's Aura +]--
	local ED_PSY_Passive_9_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- This is 1.5 seconds for \"Venting Shriek\"/\"Psykinetic's Wrath\", 1.25 seconds for \"Scrier's Gaze\", and 2 seconds for \"Telekine Shield\".",
		"- Does not Stack with the same Talent of another Psyker (each Psyker procs their own Talent spreading the cooldown reduction separately).",
		"- Procs additionally to Concentration Stimm's remaining cooldown reduction effect of 3 seconds per second.",
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Mind in Motion +]--
	local ED_PSY_Passive_10_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Does not interact with Movement Speed buffs.",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - Malefic Momentum +]--
	local ED_PSY_Passive_11_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
		"- The 8 seconds duration of each buff starts on respective kills and can be refreshed during active duration.",
		warp_attc_refers_to,
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Channeled Force +]--
	local ED_PSY_Passive_12_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Increases the Damage of staff Primary attacks after executing a charged secondary attack (at least 95% charged) with any Force Staff.",
		can_be_refr_dur_active_dur,
		"- Stacks additively with other Damage buffs.",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Perilous Assault +]--
	local ED_PSY_Passive_13_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- This reduces the time of Wielding actions when swapping item slots (weapons, Blitz abilities, stimms, med packs, ammo crates, books, etc):",
		"_______________________________",
		"Peril:     0|  20|  40|  50|  60|  80|  100",
		"WS(%):  0|   10|  20|  25|  30|  40|   50",
		"_______________________________",
		"(*WS = Wield Speed)",
		"{#color(255, 35, 5)}- Objectively speaking, Psyker's current Weapon arsenal does not include a single Weapon for which this Talent would provide a significant wield time reduction. Autoguns and Lasguns have the 'longest' wield times with 0.65 seconds when switching to them and starting to fire from hip. The Talent, at 100% Peril, would reduce these times to 0.43 seconds. For all other Weapons, the time reductions are even less significant.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 14 - Lightning Speed +]--
	local ED_PSY_Passive_14_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with related Attack Speed buff from Celerity Stimm.",
	}, "\n"), enhdesc_col)

	--[+ Passive 15 - Souldrinker +]--
	local ED_PSY_Passive_15_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Critical hit chance cannot be refreshed during active duration.",
		"- Maximum Toughness is replenished with each actual enemy death.",
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Empyric Shock +]--
	local ED_PSY_Passive_16_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Applies a debuff to enemies that increases the Damage they take from Warp attacks.",
		can_be_refr_dur_active_dur,
		"- Can be applied through shields.",
		"- The debuff stacks multiplicatively with itself, up to 33.8% (1.06⁵=1.338), with other Damage taken debuffs on enemies from \"Enfeeble\", Ogryn's \"Soften Them Up\", \"Valuable Destruction\", Veteran's \"Focus Target!\", and multiplicatively with Damage buffs and with Power level buffs from Weapon Blessings.",
		warp_attc_refers_to,
		"",
		"{#color(255, 35, 5)}- There is currently a bug: Inferno Staff left-clicks do not apply the debuff.{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - By Crack of Bone +]--
	local ED_PSY_Passive_17_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Removing Peril can proc multiple times per swing when Cleaving. Procs additionally to \"Battle Meditation\" and \"Purloin Providence\".",
		"- Reducing Peril Stacks multiplicatively with Peril Cost Reduction buffs from \"Becalming Eruption\", \"Empyric Resolve\", \"Inner Tranquility\", \"Kinetic Resonance\", \"Reality Anchor\", small Peril Resistance nodes, and Combat Stimm.",
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Warp Splitting +]--
	local ED_PSY_Passive_18_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Scaling proportionally with Peril.",
		"- Increases the Maximum hit mass limit of attacks (Melee, Ranged, \"Assail\") by up to 100%, thereby allowing attacks to Cleave more enemies.",
		"- Stacks additively with \"Ethereal Shards\" and \"Empowered Psionics\", and with related buffs from Weapon Blessings \"Devastating Strike\", \"Savage Sweep\", and \"Wrath\".",
		"- Stacks multiplicatively with Power level buffs from Weapon Blessings.",
		"- Note that Carapace armor cannot be Cleaved by default.",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Unlucky for Some +]--
	local ED_PSY_Passive_19_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- When Psyker goes down, replenishes Toughness to Allies in Coherency.",
		"- Does not proc when the Ally or Psyker dies.",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - One with the Warp +]--
	local ED_PSY_Passive_20_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_mult_w_other_dmg_red_buffs,
		"- Always grants a minimum of 10% Toughness Damage Reduction regardless of current Peril amount:",
		"_______________________________",
		"Peril:       0|  20|  40|  50|  60|  80|  100",
		"TDR(%): 10|  14|   19|   21|  23|  28|    33",
		"_______________________________",
		"(*TDR = Toughness Damage Reduction)",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - Empathic Evasion +]--
	local ED_PSY_Passive_21_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Hitting enemies with a Critical Melee, Ranged, or \"Assail\" attack puts Psyker into \"Dodging state\" against Ranged attacks for 1 second.",
		can_be_refr_dur_active_dur,
		"- This effect is mechanically the same as the one provided by Weapon Blessings \"Ghost\", \"Hit and Run\", and \"Stripped Down\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 22 - Anticipation +]--
	local ED_PSY_Passive_22_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Increases Psyker's base Dodge linger time from 0.2 seconds to 0.3 seconds.",
		"- \"Dodge linger time\" refers to the time window in which a character is still considered to be in \"Dodging state\" against a Melee attack after a Dodge has technically ended. This makes the Dodge window more forgiving in regard to player input timing.",
		"- Also adds one effective Dodge at all times.",
		"- The overall amount of effective Dodges a character can perform varies depending on the Dodge template of the currently equipped Weapon or Iitem.",
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Solidity +]--
	local ED_PSY_Passive_23_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Applies only to active quelling, passive quelling is unaffected.",
		"- Stacks multiplicatively during calculation with the Quelling buff from Celerity Stimm.",
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Puppet Master +]--
	local ED_PSY_Passive_24_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Increases base Coherency radius from 8 to 12 meters.",
	}, "\n"), enhdesc_col)

	--[+ Passive 25 - Warp Rider +]--
	local ED_PSY_Passive_25_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
		"_______________________________",
		"Peril:       0|  20|  40|  50|  60|  80|  100",
		"Dmg(%): 0|     4|    8|   10|   12|   16|   20",
		"_______________________________",
		"(*Dmg = Damage Increase)",
	}, "\n"), enhdesc_col)

	--[+ Passive 26 - Crystalline Will +]--
	local ED_PSY_Passive_26_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Instead of knocking down Psyker on self-explosion, converts one Health Segment to full Corruption.",
		"- Always converts one Segment regardless whether the Segment in question is already partially Corrupted or not.",
		"- Also reduces the overall time of the self-explosion from 3 to 1.13 seconds.",
		"- Psyker's self-explosion:",
		"-- Max radius: 10 meters.",
		"-- Staggers all enemies except for Crusher, Mutants, Monstrosities, Twins (Captains only without void shield).",
		"-- Deals 600 base Damage against all enemies.",
		"-- Explosion Damage decreases from center to Max range and can be increased by Damage buffs from \"Disrupt Destiny\", \"Empyrean Empowerment\", \"Malefic Momentum\" (regular Damage buff), \"Scrier's Gaze\", and \"Warp Rider\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Kinetic Deflection +]--
	local ED_PSY_Passive_27_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- The efficiency of the Stamina Cost-to-Peril conversion is increased by Peril Cost Reduction buffs from \"Becalming Eruption\", \"By Crack of Bone\", \"Empyric Resolve\", \"Inner Tranquility\", \"Reality Anchor\" and small Peril Resistance nodes.",
		"- Also increased by Block Cost Reduction buffs from Block Efficiency from Curios, Melee weapon perks, and \"Deflector\" Weapon Blessing (also against Ranged attacks), and by Stamina Cost Reduction buff from Celerity Stimm.",
		"- All sources of Peril Cost Reduction, Block Cost Reduction, and Stamina Cost Reduction Stack multiplicatively with themselves and each other.",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - Tranquility Through Slaughter +]--
	local ED_PSY_Passive_28_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Critical hits with regular ranged attacks remove 4% Peril from the current Peril amount.",
		"- Procs when hitting shields.",
		"- Procs only once per shot regardless of how many enemies have been hit.",
		"- Procs additionally to \"Battle Meditation\" and \"Purloin Providence\".",
		warp_attc_refers_to,
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Empyric Resolve +]--
	local ED_PSY_Passive_29_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Reduces the amount of peril generated by 40%.",
		"- Stacks multiplicatively with Peril Cost Reduction buffs from \"Becalming Eruption\", \"By Crack of Bone\", \"Inner Tranquility\", \"Kinetic Resonance\", \"Reality Anchor\", small Peril Resistance nodes, and Combat Stimm.",
		"- Also reduces the amount of any Toughness replenished from Melee kills and Talents by 30%.",
		"- Does not affect Toughness replenishments from Coherency Toughness Regeneration and Weapon Blessings \"Gloryhunter\", \"Inspiring Barrage\", and \"Reassuringly Accurate\".",
		"- This Replenishment debuff Stacks multiplicatively with other player debuffs like toxic gas.",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Penetration of the Soul +]--
	local ED_PSY_Passive_30_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- While at or above 75% true Peril, grants 10% Rending to Warp attacks boosting Damage against armor types Carapace, Flak, Maniac, Unyielding.",
		"- Only affects Psyker's own Damage.",
		"- Stacks additively with other Rending buffs and with Brittleness debuffs that are applied to enemies.",
		warp_attc_refers_to,
		-- "{#color(255, 35, 5)}There is currently a bug: The Rending multiplier fails to be applied correctly during Damage calculation.\nTHIS TALENT DOES NOTHING!!!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 31 - True Aim +]--
	local ED_PSY_Passive_31_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Generates 1 Weakspot Stack per Weakspot hit with Melee, Ranged, \"Assail\" and \"Brain Rupture\"/\"Brain Burst\" attacks.",
		"- Cleaving attacks (e.g. Voidstrike Staff charged shots into density) can accumulate up to 5 Weakspot Stacks at once but do not consume the guaranteed Crit right away.",
		"- Weakspot Stacks last until consumed.",
		"- \"Brain Rupture\"/\"Brain Burst\" and \"Smite\" do not consume the guaranteed Crit.",
	}, "\n"), enhdesc_col)

	--[+ Passive 32 - Surety of Arms +]--
	-- 
	local ED_PSY_Passive_32_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Increases Reload animation speed by 25%.",
		"- Stacks additively with Reload speed buffs from Weapon Blessings.",
		"- Upon Reload, generates up to 25% Peril based on the percentage of reloaded ammo in clip. ",
		"- For example, when reloading 34 rounds of a clip that has a size of 59 rounds, Psyker would generate 14.4% true peril; 0.25x(34/59)=0.144.",
		"- Reloading an empty clip generates the Max amount of 25% Peril. ",
		"- Peril cost reduction buffs reduce the efficiency of this Reloaded-ammo-to-Peril conversion. For example, reloading the same amount of ammo in a clip of the same size, but with three Peril Resistance nodes (i.e. a warp_charge_amount of 0.95³), Psyker would only generate 12.3% true peril; 0.25x(34/59)x0.95³=0.123.",
		"Note that the Talent always generates Peril on Reload regardless of current Peril amount but only grants the increased Reload speed when below or at 75% true Peril.",
	}, "\n"), enhdesc_col)

--[+ ++ZEALOT++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Stun Grenade +]--
	local ED_ZEA_Blitz_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Fuse time: 1.5 seconds.",
		"- Explosion radius: 8 meters.",
		"- Electrocution:",
		"-- Lasts 8 seconds.",
		"-- Stacks once.",
		"-- Deals low Damage across the board.",
		"-- Deals Damage and Stagger every 0.55 seconds.",
		-- "-- Staggers all enemies in range except Mutants, monstrosities and Captains/Twins.",
		"-- Ignores Bulwark shields.",
		"-- Can be refreshed during active duration.",
	}, "\n"), enhdesc_col)
	
	--[+ Blitz 1 - Stunstorm Grenade +]--
	local ED_ZEA_Blitz_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"-- Explosion radius is increased to 12 meters.",
		"- Fuse time: 1.5 seconds.",
		"- Electrocution:",
		"-- Lasts 8 seconds.",
		"-- Stacks once.",
		"-- Deals low Damage across the board.",
		"-- Deals Damage and Stagger every 0.55 seconds.",
		"-- Staggers all enemies in range except Mutants, Scab Captain/Twins and Monstrosities.",
		"-- Ignores Bulwark shields.",
		"-- Can be refreshed during active duration.",
	}, "\n"), enhdesc_col)
	
	--[+ Blitz 2 - Immolation Grenade +]--
	local ED_ZEA_Blitz_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Fuse time: 1.7 seconds.",
		"- Fire patch: Lasts 15 seconds. Radius 5 meters. Enemies avoid it.",
		"- Burn (inside fire patch): Stacks once. Ticks every 0.875 seconds. Ignores Bulwark and Void shields.",
		"-- Deals varying Damage per tick per armor type (Very high Damage against Unyielding; High Damage against Unarmoured, Infested, Maniac; Very low Damage against Carapace).",
		-- "- Burn (leaving Fire patch): Lasts 1 second. Ticks every 1 second. Short burn effect with slightly less Damage.",
		"- Burn damage is increased by: Rending/Brittleness, Perks of currently equipped Weapons, and the following buffs from:\n-- Talents: \"Anoint in Blood\", \"Purge the Unclean\", \"Ecclesiarch's Call\", and \"Inexorable Judgement\".\n-- Blessings:\n--- Melee: \"Executor\", \"High Voltage\", \"Skullcrusher\", and \"Slaughterer\".\n--- Ranged: \"Blaze Away\", \"Dumdum\", \"Deathspitter\", \"Execution\", \"Fire Frenzy\", \"Full Bore\", \"No Respite\", \"Pinning Fire\", and \"Run 'n' Gun\" (while sprinting).",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Blades of Faith +]--
	local ED_ZEA_Blitz_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Quick Throw.",
		"- Ammo: Replenishes 1 knife per melee Elite or Special kill. 2 knives per small ammo pickup. 6 knives per big ammo pickup. All knives per ammo crate.",
		"- The knife flies along a curving trajectory.",
		"- Damage: 585 base Damage.",
		"-- High armor Damage modifiers against Maniac and Infested.",
		"-- Extra Finesse boosts against Unarmoured and Flak.",
		"-- Deals no Damage against Carapace unless weakspot like Mauler head.",
		"-- Low Crit Chance - 5%.",
		"-- No Damage falloff.",
		"- Can Cleave 1 Groaner, Poxwalker, Scab/Dreg Stalker or Scab Shooter.",
		"- Headshot kills all enemies except Ogryns, Ragers, Maulers and Monstrosities.\n- Knives are affected by Perks of currently equipped Weapons and by the following buffs from:",
		"-- Talents: \"Anoint in Blood\", \"Purge the Unclean\", \"Ecclesiarch's Call\", and \"Inexorable Judgement\" (damage).",
		"-- A lot of Melee and Ranged Blessings.",
	}, "\n"), enhdesc_col)

--[+ +AURA+ +]--
	--[+ Aura 0 - The Emperors's Will +]--
	--[+ Aura 1 - Benediction +]--
	local ED_ZEA_Aura_0_n_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_mult_w_other_dmg_red_buffs,
		"- Does not Stack with the same Aura from another Zealot.",
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Beacon of Purity +]--
	local ED_ZEA_Aura_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- This rate is strong enough to counter a Grimoire's Corruption Damage tick rate. However, the initial 40 Corruption Damage per book cannot be removed.",
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Loner +]--
	local ED_ZEA_Aura_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with \"Fortitude in Fellowship\", and during calculation multiplicatively with Toughness Regeneration Speed from Curios and related buffs from Veteran's small Talent node \"Inspiring Presence\" or Ogryn's aura \"Stay Close!\".",
		"- Note that the proc conditions for Coherency Toughness Regeneration still apply.",
	}, "\n"), enhdesc_col)

	--[+ Ability 0 - Chastise the Wicked +]--
	local ED_ZEA_Ability_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Dash Range:",
		"-- Base: 7 meters.",
		"-- Aimed: up to 21 meters.",
		"- Grants immunity to Toughness Damage and you Dodge all attacks while dashing.",
		"- Applies a light Stagger on impact in a 3 meters radius.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Fury of the Faithful +]--
	local ED_ZEA_Ability_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Dash:",
		"-- Range: Base: 7 meters. Aimed(hold button): up to 21 meters.",
		"-- Cannot be activated while jumping or falling.",
		"-- You can't change direction, but you can Cancel the dash with Block or Back buttons.",
		"-- You Dodge all Attacks and grants Immunity to Toughness Damage.",
		"-- You can be stopped by Unyielding, Carapace, Monstrosities, as well as the Void shields.",
		"- Melee armor penetration buff:",
		"-- Adds a 100% Rending against Carapace, Flak, Maniac, Unyielding armor types to the next Melee Attack within 3 seconds after activation.",
		"-- The first Melee Attack within the duration consumes this buff.",
		"-- Ranged attacks do NOT benefit from this buff.",
		"-- Stacks additively with other Attack Speed buffs from Talents and Celerity Stimm.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Redoubled Zeal +]--
	local ED_ZEA_Ability_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- The Cooldown of the Second charge only starts after the First charge finished its Cooldown.",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Invocation of Death +]--
	local ED_ZEA_Ability_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- This results in a total Cooldown Reduction of 12 seconds per proc (4 seconds from Base rate + 4x2 seconds from Talent)",
		can_be_refr_dur_active_dur,
		"- Procs additionally to Concentration Stimm's remaining Cooldown Reduction effect of 3 seconds per second.",
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Chorus of Spiritual Fortitude +]--
	local ED_ZEA_Ability_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Radius: 10 meters.",
		"- Immunity to Stuns and Invulnerability can be refreshed during active duration.",
		"- \"Invulnerability\" means that player Health can't fall below 1. Players can still lose any Health above 1.",
		"- Yellow Toughness bonus lasts 10 seconds and does not Stack with bonus Toughness from the same Talent of another Zealot. But does Stack additively with Veteran's bonus Toughness from \"Duty and Honour\".",
		"- Bonus Toughness acts as a 'second' Toughness bar and can be replenished by Melee kills, respective Talents, and Weapon Blessings",
		-- "- Pulses deal no Damage and do not Stagger.",
		-- "- Channeling can be canceled by Blocking, Sprinting, or pressing the Ability button again.",
		-- "- While channeling, cooldown is paused. However, its cooldown can still be reduced by using a Concentration Stimm before activation or by benefitting from Psyker's talent Psykinetic's Aura while channeling; its maximum cooldown can be reduced by Combat Ability Regeneration from curios, by Psyker's aura Seer's Presence, and by the mission mutators that reduce ability cooldowns by 20%.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Holy Cause +]--
	local ED_ZEA_Ability_2_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Allies get the buff as long as they are in Coherency when the buff is triggered.",
		stacks_mult_w_other_dmg_red_buffs,
		"- Does not Stack with the same Talent from another Zealot.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Banishing Light +]--
	local ED_ZEA_Ability_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- This talent does three things:",
		"-- 1. It enables pulses to Stagger non-suppressible enemies within 10 meters. Against Monstrosities and Captains/Twins within 4 meters, a forced Stagger is applied on the 1st, 3rd, 5th, and 7th pulse. Against all other non-Suppressible enemies within 4 meters, a forced Stagger is applied every pulse. Forced Stagger lasts 2 seconds.",
		"-- 2. It enables each pulse to Suppress all suppressible enemies within 10 meters. Each pulse applies very high Suppression with an increased, randomly chosen Suppression decay delay.",
		"--- Breeds that can be suppressed: Groaner, Dreg Gunner, Dreg Stalker, Poxwalker (only in this Talent's case), Reaper, Scab Gunner, Scab Shooter, Scab Stalker",
		"-- 3. It increases the pulse radius of 10 meters by 0.1 meters per second while channeling, up to 10.5 meters. This affects the radius in which enemies get Suppressed or Staggered (does not increase Forced Stagger radius).",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - Ecclesiarch's Call +]--
	local ED_ZEA_Ability_2_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Allies get the buff as long as they are in Coherency when the buff is triggered.",
		stacks_add_w_oth_dmg,
		"- Does not Stack with the same Talent from another Zealot.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-4 - Martyr's Purpose +]--
	local ED_ZEA_Ability_2_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Does not proc while downed.",
		"- For example, if Zealot has 55 seconds of Chorus of Spiritual Fortitude's 60 seconds Cooldown remaining and takes 80 Health Damage, then the remaining 55 seconds are reduced by 60x(80x0.01)=48 to 7 seconds.",
		"- Procs additionally to Concentration Stimm's Cooldown Reduction effect of 3 seconds per second.",
		"- Does not interact with Combat Ability Regeneration from Curios which only reduces the Maximum Cooldown of a Combat Ability.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Shroudfield +]--
	local ED_ZEA_Ability_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		become_invis_drop_all_enemy_aggro,
		"- You can still take Damage during Invisibility.",
		"- Stealth breaks on: hitting enemies with a Melee attack, any Ranged attack, throwing a grenade (quickthrow, aimed or underhand), finishing a Rescue/Revive/Pull up/Free from net action, throwing knives only break Stealth when they hit a target.",
		"- Stealth does not break on: pushing enemies, using Stimms (on self or team mates), exploding grenades that have been thrown before going invisible, active DoT ticks, operating the Auspex device or minigame.",
		-- "- Stealth grace window: actions that would break Stealth do not if they are executed within 0.5 seconds after going invisible, this allows, if timed accordingly, for one additional Melee or Ranged attack that already benefits from all applicable buffs but does not break Stealth yet.",
		-- "- Buffs to movement Speed, Backstab Damage, Finesse Damage, and Crit chance last as long as the Invisibility. The Finesse buff Stacks additively with other related buffs; the backstab damage buff stacks additively with related buffs from Backstabber and Perfectionist, and multiplicatively during calculation with other damage buffs and power level buffs from weapon blessings; the movement speed buff stacks additively with related buffs, and multiplicatively with sprinting speed buffs (Swift Certainty).",
		"{#color(255, 35, 5)}Doesn't hide you from a Daemonhosts!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-1 - Master-Crafted Shroudfield +]--
	-- local ED_ZEA_Ability_3_1_rgb = iu_actit(table.concat({"",}, "\n"), enhdesc_col)

	--[+ Ability 3-2 - Perfectionist +]--
	local ED_ZEA_Ability_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- The Finesse buff Stacks additively with other related buffs.",
		"- The backstab Damage buff Stacks additively with related buffs from \"Backstabber\" and \"Shroudfield\", and multiplicatively during calculation with other Damage buffs and Power level buffs from Weapon Blessings.",
		"- Also increases Shroudfield's maximum cooldown from 30 to 37.5 seconds.",
		"- This Max Ccooldown increase can be mitigated by the Max Cooldown Reductions from Psyker's Aura \"Seer's Presence\", Combat Ability Regeneration from Curios, and by the mission mutators that reduce Ability Cooldowns by 20%.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Invigorating Revelation +]--
	local ED_ZEA_Ability_3_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- When Invisibility ends, replenishes 8% of Maximum Toughness per second for 5 seconds.",
		red_both_tghns_n_health_dmg,
		stacks_mult_w_other_dmg_red_buffs,
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-4 - Pious Cut-Throat +]--
	local ED_ZEA_Ability_3_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Has a 0.2 seconds internal Cooldown.",
		"- This is 6 seconds for \"Fury of the Faithful\" and \"Shroudfield\" (7.5 seconds with \"Perfectionist\"), and 12 seconds for \"Chorus of Spiritual Fortitude\".",
		"- \"Backstabbing\" refers to Melee attacks executed from within a specific angle behind an enemy's back.",
		"- Procs additionally to Concentration Stimm's Cooldown Reduction effect of 3 seconds per second.",
		doesnt_interact_w_c_a_r_from_curio,
		"- Revved up attacks of Chain Weapons proc this Talent only if the initial backstab hit kills the target right away.",
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Blazing Piety +]--
	local ED_ZEA_Keystone_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- After 8 seconds without a kill, considers Zealot as being out of combat. While out of combat, drops Stacks of \"Fury\" over time. While out of combat, starts dropping current Stacks of Fury one by one at a decelerating rate.",
		"- The active Fury duration can be refreshed by killing enemies.",
		"- Stacks additively with other sources of Crit Chance.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Stalwart +]--
	local ED_ZEA_Keystone_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- When reaching 25 Stacks of Fury, does two things:",
		"-- 1. Replenishes 50% of Maximum Toughness immediately. Then, while maintaining 25 Stacks of Fury, also replenishes 2% of Max Toughness per kill.",
		"--- Stacks additively with Zealot's base 5% Max Toughness gained on melee kill.",
		"--"..z_eff_of_this_tougn_rep,
		"-- 2. Grants 25% Toughness Damage Reduction for as long as 25 Stacks of Fury are maintained.",
		"--"..stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Fury Rising +]--
	local ED_ZEA_Keystone_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Can generate multiple Stacks per Critical Attack when Cleaving.",
		"- Also procs on Critical Attacks against shields.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Infectious Zeal +]--
	local ED_ZEA_Keystone_1_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur,
		"- Does not Stack with the same Talent from another Zealot.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - Righteous Warrior +]--
	local ED_ZEA_Keystone_1_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Increases Critical Strike Chance for all attacks that can Crit, additionally to \"Blazing Piety's\" base 15% Crit Chance. (+25% total)",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Martyrdom +]--
	local ED_ZEA_Keystone_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- A Segment counts as missing if it is fully depleted or fully converted by Corruption.",
		"- On Heresy/Damnation, Zealot can have up to 7 total Health Segments (2 base, +3 from Curios, +2 from \"Faith's Fortitude\") thereby setting the effective Max Stack count to 6.",
		"- Per stack, increases the Damage of Melee Attacks by 8% (up to +48% on Heresy/Damnation, up to +56% below)",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - I Shall Not Fall +]--
	local ED_ZEA_Keystone_2_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Each missing Health Segment grants 6.5% Toughness Damage Reduction (up to 39% on Heresy/Damnation, up to 45.5% below).",
		"- Stacks additively with small Toughness Damage Reduction nodes.",
		"- The sum Stacks multiplicatively with other Damage Reduction buffs.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Maniac +]--
	local ED_ZEA_Keystone_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Each missing Health Segment increases Melee weapon Attack animation Speed by 4% (up to +24% on Heresy/Damnation, up to +28% below).",
		"- Stacks additively with other Attack Speed buffs.",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3 - Inexorable Judgement +]--
	local ED_ZEA_Keystone_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Sprinting generates stacks twice as fast.",
		"- Hitting an enemy with a Melee or Ranged Attack drops all current Momentum Stacks.",
		"- Per dropped stack of \"Momentum\", increases Melee and Ranged weapon attack animation speed by 1% and any Damage by 1% for 6 seconds.",
		"- Also increases Dodge speed and Dodge distance by 0.5%, and Dodge reset time by 1% per dropped Stack.",
		"- Can generate new \"Momentum\" Stacks while 6 seconds buff duration is active.",
		"- The Attack Speed buffs Stack additively with other related buffs.",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Retributor's Stance +]--
	local ED_ZEA_Keystone_3_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Inebriate's Poise +]--
	local ED_ZEA_Keystone_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Additionally generates 3 Momentum Stacks on successfully Dodging enemy Melee or Ranged attacks (except Gunners, Reaper, Sniper), and disabler attacks (Pox Hound jump, Trapper net, Mutant grab).",
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
		"",
	}, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Disdain +]--
	local ED_ZEA_Passive_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Can generate multiple Stacks per swing.",
		"- Stacks last until consumed.",
		stacks_add_w_oth_dmg,
		"- Melee special actions of Ranged Weapons (bashes, etc) can generate and consume Stacks.",
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Backstabber +]--
	local ED_ZEA_Passive_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Enables backstabbing.",
		"- Stacks additively with backstab Damage buffs from \"Shroudfield\" (and \"Perfectionist\").",
		"- Multiplicatively during calculation with other Damage buffs and Power level buffs from Weapon Blessings.",
		"- \"Backstabbing\" refers to Melee attacks executed from within a specific angle behind an enemy's back.",
	}, "\n"), enhdesc_col)

	--[+ Passive 3 - Anoint in Blood +]--
	local ED_ZEA_Passive_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- While the Ranged weapon is equipped, increases any Damage by 25% against Enemies within a 12.5 meters radius.",
		stacks_add_w_oth_dmg,
		"Beyond 12.5 meters, the Damage buff decreases linearly until it loses its effect at 30 meters:",
		"______________________________",
		"Distance(m):1-12.5|   13|  15|  20|  25|  30",
		"Damage(%):       25|~24|~21| ~14|  ~7|    0",
		"______________________________",
		"- This also increases the Damage of \"Blades of Faith\" and DoTs (including Immolation Grenade's burn and Stunstorm Grenade / Stun Grenade's electrocution) as long as Zealot stays within 30 meters to the enemy and has the Ranged weapon equipped.",
		"- Note that Ranged weapons interact differently with this Talent depending on their individual effective Damage ranges.",
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Scourge +]--
	local ED_ZEA_Passive_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Critical hits with Melee attacks (including Melee special actions of Ranged weapons) apply 2 Stacks of Bleed to enemies.",
		"- Can't apply Bleed through shields.",
		"- Bleed:",
		"-- Lasts 1.5 seconds.",
		"-- Ticks every 0.5 seconds.",
		"-- Refreshes duration on Stack application.",
		"-- Same as other sources of Bleed.",
		"-- Above average armor Damage modifiers across the board, low armor Damage modifier against Carapace.",
		can_be_refr_dur_active_dur,
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Enemies Within, Enemies Without +]--
	local ED_ZEA_Passive_5_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Proximity check ignores map geometry.",
		"- The replenishment is inactive while Zealot is hanging from a ledge and while disabled by Mutants, Pox Hounds, Trapper, Daemonhost, Chaos Spawn, or Beast of Nurgle.",
		"- Does not interact with Coherency Toughness Regeneration.",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 6 - Fortitude in Fellowship +]--
	local ED_ZEA_Passive_6_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Adds a flat 50% to the Coherency factor that scales the amount of Coherency Toughness Regenerated per ally in Coherency.",
		"- This buff Stacks additively with \"Loner\", and during calculation multiplicatively with Toughness Regeneration Speed from Curios, Veteran's small Talent node \"Inspiring Presence\", and Ogryn's aura \"Stay Close!\".",
		"- Increases Zealot's base amount of Coherency Toughness Regenerated:",
		"_______________________________",
		"Allies: | CTR:                 | After 5 seconds:",
		"        0 |  0.00 -> 3.75    | 18.75(HUD:~19)",
		"         1 |  3.75 -> 7.50    | 37.50(HUD:~38)",
		"        2 |  5.63 -> 9.38   | 46.88(HUD:~47)",
		"        3 |  7.50 -> 11.25   | 56.25(HUD:~57)",
		"_______________________________",
		"(*CTR = Coherency Toughness Regenerated)",
		"- Note that because of how the Toughness Coherency Regen rate modifier is applied During Calculation, this Talent enables Coherency Toughness Regeneration for Zealot even with no Allies in Coherency.",
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Purge the Unclean +]--
	local ED_ZEA_Passive_7_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with the same Damage buffs from Weapon Perks, and during calculation multiplicatively with other Damage buffs and Power level buffs from Weapon Blessings.",
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Blood Redemption +]--
	local ED_ZEA_Passive_8_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Increases the Zealot's base Maximum Toughness gained on Melee kill from 5% to 7.5%.",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - Bleed for the Emperor +]--
	local ED_ZEA_Passive_9_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Procs only on Health Damage.",
		"- If the amount of incoming Health Damage is high enough to deplete one of Zealot's Health segments, the Talent then reduces this Health Damage amount by 40%.",
		stacks_mult_w_other_dmg_red_buffs,
		"- Does not reduce Toughness Damage taken.",
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Vicious Offering +]--
	local ED_ZEA_Passive_10_rgb = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep,
		"- For example, with 120 max Toughness, Zealot would replenish 120x(0.05+0.1)=18 Toughness per Heavy Melee kill.",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - The Voice of Terra +]--
	local ED_ZEA_Passive_11_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- When killing enemies with Ranged attacks (including \"Blades of Faith\"), replenishes 4% of Maximum Toughness. ",
		"- Procs additionally to Weapon Blessings like \"Inspiring Barrage\", \"Reassuringly Accurate\", \"Gloryhunter\".",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Restoring Faith +]--
	local ED_ZEA_Passive_12_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Procs only on Health Damage (also while in downed state).",
		"- Can track up to 10 instances of Damage taken and restores the correct amount of Health when taking Damage while already restoring.",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Second Wind +]--
	local ED_ZEA_Passive_13_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Has a 0.5 seconds internal Cooldown.",
		z_eff_of_this_tougn_rep,
		procs_on_succss_dodging,
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
	}, "\n"), enhdesc_col)

	--[+ Passive 14 - Enduring Faith +]--
	local ED_ZEA_Passive_14_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Critical hits with Melee or Ranged attacks (including attacks with weapon special actions) grant 50% Toughness Damage Reduction for 4 seconds.",
		can_be_refr_dur_active_dur,
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Passive 15 - The Emperor's Bullet +]--
	local ED_ZEA_Passive_15_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- When ammo in clip reaches 0, increases Melee Stagger strength by 30% and Melee weapon Attack animation Speed by 10% for 5 seconds. ",
		"- The Attack Speed buff Stacks additively with related buffs from \"Faithful Frenzy\", \"Fury of the Faithful\", \"Inexorable Judgement\", \"Maniac\", and Celerity Stimm; ",
		"- The Stagger buff Stacks additively with related buffs from \"Grievous Wounds\", \"Hammer of Faith\", \"Punishment\", and Weapon Blessings , and multiplicatively with Power level buffs from Weapon Blessings.",
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Dance of Death +]--
	local ED_ZEA_Passive_16_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with related buffs from \"Run 'n' Gun\" and \"Powderburn\" Weapon Blessings.",
		procs_on_succss_dodging,
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - Duellist +]--
	local ED_ZEA_Passive_17_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with other Weakspot and Finesse Damage buffs, and multiplicatively with Power level buffs from Weapon Blessings. ",
		procs_on_succss_dodging,
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Until Death +]--
	local ED_ZEA_Passive_18_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- If not on cooldown, prevents incoming Damage from lowering Zealot's current Health below 1 HP by granting Invulnerability for 5 seconds. ",
		"- \"Invulnerability\" means that Zealot's Health cannot be reduced below 1. Zealot can still lose any Health above 1 while Invulnerable (e.g. by taking hits while being healed by a medical crate).",
		"- Does not prevent death from instakills like when thrown out of bounds into a map killbox.",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Unremitting +]--
	local ED_ZEA_Passive_19_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks multiplicatively with Sprint efficiency Perks from Curios, Ranged and Melee weapons, and Celerity Stimm.",
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - Shield of Contempt +]--
	local ED_ZEA_Passive_20_rgb = iu_actit(table.concat({
		ppp___ppp,
		red_both_tghns_n_health_dmg,
		"- Procs only on Health Damage (also while in downed state).",
		"- Always procs for Zealot if conditions are met.",
		"- Has no Range limit when proc'ed by Allies or Bots (Coherency is NOT required!).",
		"- The Talent can apply its Damage Reduction buff only once per proc.",
		"- It has one Global Cooldown that is shared between all players (and bots).",
		"- So if the Talent has been procced either by Zealot or by an Ally, it grants its Damage Reduction buff only to the player who triggered it before it goes on Cooldown for 10 seconds.",
		"- The Cooldown starts immediately during the buff's 4 seconds duration.",
		stacks_mult_w_other_dmg_red_buffs,
		"- Does not have a HUD icon but plays a screen effect during its active duration.",
		-- "- If there are multiple Zealots who all run \"Shield of Contempt\", the Talent works as follows: The first Zealot to take Health Damage 'claims' the Damage Reduction buff. It lasts for 4 seconds, during which it Stacks multiplicatively with other Zealots' \"Shield of Contempt\" buffs, up to 97.44% Damage Reduction with four Zealots (1-0.4⁴=0.9744), only if the other Zealots also proc their Talents while the duration of the buff that was 'claimed' by the first Zealot is still active. Since the Damage Reduction buff can only be applied once per proc, it does not benefit those Zealots who proc their Talents while the first Zealot still has the Damage Reduction buff. ",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - Thy Wrath be Swift +]--
	local ED_ZEA_Passive_21_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Grants immunity to Stuns and Slowdowns from both Melee and Ranged attacks.",
		"- Also lets Zealot move through Fire patches without hindrance.",
		"- The Movement Speed buff procs only on Health Damage taken.",
		"- Stacks additively with related buffs from \"Shroudfield\" and weapon Blessings like \"Rev it Up\".",
		"- Stacks multiplicatively with the Sprint speed buff from \"Swift Certainty\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 22 - Good Balance +]--
	local ED_ZEA_Passive_22_rgb = iu_actit(table.concat({
		ppp___ppp,
		red_both_tghns_n_health_dmg,
		"- Can be refreshed during active duration.",
		stacks_mult_w_other_dmg_red_buffs,
		procs_on_succss_dodging,
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Desperation +]--
	local ED_ZEA_Passive_23_rgb = iu_actit(table.concat({
		ppp___ppp,
		"When Stamina reaches 0 as a result of Sprinting, Pushing or Blocking enemy Melee attacks, increases the Damage of Melee attacks by 20% for 5 seconds.",
		can_be_refr_dur_active_dur,
		stacks_add_w_oth_dmg,
		"- If procced by Sprinting, the start of the buff duration is delayed until the Sprinting action stops.",
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Holy Revenant +]--
	local ED_ZEA_Passive_24_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- During Until Death's 5 second duration, leeches 0.7% of non-Melee Damage and 2.1% of Melee Damage dealt to enemies.",
		"- When Until Death ends, converts the leeched amount to Health, up to 25% of Zealot's Maximum Health.",
	}, "\n"), enhdesc_col)

	--[+ Passive 25 - Sainted Gunslinger +]--
	local ED_ZEA_Passive_25_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Melee kills grant Stacks (up to 5).",
		"- Stacks last until consumed by Reloading or by Loading special ammo (Combat Shotguns).",
		"- Per Stack, increases Reload animation Speed by 6%.",
		"- Stacks additively with Reload Speed buffs from Weapon Perks, Weapon Blessings, and Celerity Stimm.",
		"- This also increases the Loading Speed of the special action of Combat Shotguns.",
	}, "\n"), enhdesc_col)

	--[+ Passive 26 - Hammer of Faith +]--
	local ED_ZEA_Passive_26_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Increases Stagger strength for both Melee and Ranged attacks.",
		"- Also applies to Melee special actions of Ranged weapons.",
		"- Stacks additively with related buffs from \"Grievous Wounds\", \"Punishment\" or \"The Emperor's Bullet\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Grievous Wounds +]--
	local ED_ZEA_Passive_27_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Increases the Stagger strength on Weakspot hits with Melee attacks by 50%.",
		"- Also applies to Melee special actions of Ranged weapons.",
		"- Stacks additively with related buffs from \"Hammer of Faith\", \"Punishment\" or \"The Emperor's Bullet\".",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - Ambuscade +]--
	local ED_ZEA_Passive_28_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Enables Flanking.",
		"- Increases damage by 30% when flanking.",
		"- Stacks additively with the \"Raking Fire\" Weapon Blessing, and multiplicatively with other Damage buffs and Power level buffs from Weapon Blessings.",
		"- \"Flanking\" refers to Ranged attacks executed from within a specific angle behind an enemy's back. It is the Ranged equivalent to Backstabbing.",
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Punishment +]--
	local ED_ZEA_Passive_29_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Hitting three or more enemies with Melee attacks grants Stacks (up to 5).",
		"- Stacks last for 5 seconds and can be refreshed during active duration.",
		"- Per stack, increases the stagger strength of melee and ranged attacks by 5%.",
		"- Stacks additively with Stagger buffs from \"Grievous Wounds\", \"Hammer of Faith\", \"The Emperor's Bullet\" and Weapon Blessings, and multiplicatively with Power level buffs from Weapon Blessings.",
		"- At max Stacks, also grants immunity to Stuns from both Melee and Ranged attacks (slowdown effects still apply), and makes Zealot's interact actions (e.g. reviving or object interactions) uninterruptible so that they cannot be canceled as part of hit reactions when taking Health Damage.",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Faithful Frenzy +]--
	local ED_ZEA_Passive_30_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with related buffs from \"Fury of the Faithful\", \"Inexorable Judgement\", \"Maniac\", \"The Emperor's Bullet\" and Celerity Stimm.",
	}, "\n"), enhdesc_col)

	--[+ Passive 31 - Sustained Assault +]--
	local ED_ZEA_Passive_31_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Hitting enemies with Melee attacks (including Melee special actions of Ranged weapons) grants Stacks (up to 5).",
		"- Stacks additively with Stagger buffs from \"Grievous Wounds\", \"Hammer of Faith\", \"The Emperor's Bullet\" and Weapon Blessings, and multiplicatively with Power level buffs from Weapon Blessings.",
		"- Per Stack, increases Melee Damage by 4%.",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 32 - The Master's Retribution +]--
	local ED_ZEA_Passive_32_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- If not on Cooldown, releases a push that Staggers the attacker (if possible) when taking a Melee hit.",
		"- The push has a range of 2.75 meters and a rather narrow effective push angle (~22°).",
		"- Always applies to the direct attacker (if possible).",
		"- Pushes additional targets (if possible) when they are inside the effective push angle.",
		"- The Push cannot Stagger: Crusher, Mutants, Ragers, Monstrosities, and Captains/Twins.",
		"- Bulwark's shield bash, despite not dealing any Damage, procs the Talent.",
		"- Does not proc while Zealot is disabled or downed.",
	}, "\n"), enhdesc_col)

	--[+ Passive 33 - Faith's Fortitude +]--
	local ED_ZEA_Passive_33_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Stacks additively with extra Wounds from Curios.",
	}, "\n"), enhdesc_col)

	--[+ Passive 34 - Swift Certainty +]--
	local ED_ZEA_Passive_34_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Always increases Sprinting Speed by 5%. This Sprint Speed buff Stacks multiplicatively with Movement Speed buffs from \"Shroudfield\", \"Thy Wrath be Swift\", the small Movement Speed node, and Weapon Blessings like \"Rev It Up\". ",
		"- Also allows Zealot to stay in Sprint Dodging state when Stamina is depleted. Usually, when Dodging shooting enemies by Sprinting around them with an angle (the angle between Zealot's look direction and the position of the enemy has to be at least 70°), the enemy will ultimately start hitting the player as soon as Stamina reaches 0. The Talent preserves the Sprint Dodging capability regardless of whether Zealot has Stamina or not. ",
		"Sprint Dodging does not fulfill proc condition of \"Dance of Death\", \"Duellist\", \"Good Balance\", \"Inebriate's Poise\", and \"Second Wind\".",
	}, "\n"), enhdesc_col)

-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_PSY_Blitz_0_rgb = ED_PSY_Blitz_0_rgb,
	ED_PSY_Blitz_1_rgb = ED_PSY_Blitz_1_rgb,
	ED_PSY_Blitz_1_1_rgb = ED_PSY_Blitz_1_1_rgb,
	ED_PSY_Blitz_1_2_rgb = ED_PSY_Blitz_1_2_rgb,
	ED_PSY_Blitz_2_rgb = ED_PSY_Blitz_2_rgb,
	ED_PSY_Blitz_2_1_rgb = ED_PSY_Blitz_2_1_rgb,
	ED_PSY_Blitz_2_2_rgb = ED_PSY_Blitz_2_2_rgb,
	ED_PSY_Blitz_2_3_rgb = ED_PSY_Blitz_2_3_rgb,
	ED_PSY_Blitz_3_rgb = ED_PSY_Blitz_3_rgb,
	ED_PSY_Blitz_3_1_rgb = ED_PSY_Blitz_3_1_rgb,
	ED_PSY_Blitz_3_2_rgb = ED_PSY_Blitz_3_2_rgb,

	ED_PSY_Aura_0_rgb = ED_PSY_Aura_0_rgb,
	ED_PSY_Aura_1_rgb = ED_PSY_Aura_1_rgb,
	ED_PSY_Aura_2_rgb = ED_PSY_Aura_2_rgb,
	ED_PSY_Aura_3_rgb = ED_PSY_Aura_3_rgb,

	ED_PSY_Ability_0_rgb = ED_PSY_Ability_0_rgb,
	ED_PSY_Ability_1_rgb = ED_PSY_Ability_1_rgb,
	ED_PSY_Ability_1_1_rgb = ED_PSY_Ability_1_1_rgb,
	ED_PSY_Ability_1_2_rgb = ED_PSY_Ability_1_2_rgb,
	ED_PSY_Ability_1_3_rgb = ED_PSY_Ability_1_3_rgb,
	ED_PSY_Ability_2_rgb = ED_PSY_Ability_2_rgb,
	ED_PSY_Ability_2_1_rgb = ED_PSY_Ability_2_1_rgb,
	ED_PSY_Ability_2_2_rgb = ED_PSY_Ability_2_2_rgb,
	ED_PSY_Ability_2_3_rgb = ED_PSY_Ability_2_3_rgb,
	ED_PSY_Ability_2_4_rgb = ED_PSY_Ability_2_4_rgb,
	ED_PSY_Ability_3_rgb = ED_PSY_Ability_3_rgb,
	ED_PSY_Ability_3_1_rgb = ED_PSY_Ability_3_1_rgb,
	ED_PSY_Ability_3_2_rgb = ED_PSY_Ability_3_2_rgb,
	ED_PSY_Ability_3_3_rgb = ED_PSY_Ability_3_3_rgb,
	ED_PSY_Ability_3_4_rgb = ED_PSY_Ability_3_4_rgb,
	ED_PSY_Ability_3_5_rgb = ED_PSY_Ability_3_5_rgb,

	ED_PSY_Keystone_1_rgb = ED_PSY_Keystone_1_rgb,
	ED_PSY_Keystone_1_1_rgb = ED_PSY_Keystone_1_1_rgb,
	ED_PSY_Keystone_1_2_rgb = ED_PSY_Keystone_1_2_rgb,
	ED_PSY_Keystone_1_3_rgb = ED_PSY_Keystone_1_3_rgb,
	ED_PSY_Keystone_1_4_rgb = ED_PSY_Keystone_1_4_rgb,
	ED_PSY_Keystone_1_5_rgb = ED_PSY_Keystone_1_5_rgb,
	ED_PSY_Keystone_1_6_rgb = ED_PSY_Keystone_1_6_rgb,
	ED_PSY_Keystone_2_rgb = ED_PSY_Keystone_2_rgb,
	ED_PSY_Keystone_2_0_1_rgb = ED_PSY_Keystone_2_0_1_rgb,
	ED_PSY_Keystone_2_0_2_rgb = ED_PSY_Keystone_2_0_2_rgb,
	ED_PSY_Keystone_2_0_3_rgb = ED_PSY_Keystone_2_0_3_rgb,
	ED_PSY_Keystone_2_1_rgb = ED_PSY_Keystone_2_1_rgb,
	ED_PSY_Keystone_2_2_rgb = ED_PSY_Keystone_2_2_rgb,
	ED_PSY_Keystone_2_3_rgb = ED_PSY_Keystone_2_3_rgb,
	ED_PSY_Keystone_2_4_rgb = ED_PSY_Keystone_2_4_rgb,
	ED_PSY_Keystone_3_rgb = ED_PSY_Keystone_3_rgb,
	ED_PSY_Keystone_3_1_rgb = ED_PSY_Keystone_3_1_rgb,
	ED_PSY_Keystone_3_2_rgb = ED_PSY_Keystone_3_2_rgb,
	ED_PSY_Keystone_3_3_rgb = ED_PSY_Keystone_3_3_rgb,
	ED_PSY_Keystone_3_4_rgb = ED_PSY_Keystone_3_4_rgb,

	ED_PSY_Passive_1_rgb = ED_PSY_Passive_1_rgb,
	ED_PSY_Passive_2_rgb = ED_PSY_Passive_2_rgb,
	ED_PSY_Passive_3_rgb = ED_PSY_Passive_3_rgb,
	ED_PSY_Passive_4_rgb = ED_PSY_Passive_4_rgb,
	ED_PSY_Passive_5_rgb = ED_PSY_Passive_5_rgb,
	ED_PSY_Passive_6_rgb = ED_PSY_Passive_6_rgb,
	ED_PSY_Passive_7_rgb = ED_PSY_Passive_7_rgb,
	ED_PSY_Passive_8_rgb = ED_PSY_Passive_8_rgb,
	ED_PSY_Passive_9_rgb = ED_PSY_Passive_9_rgb,
	ED_PSY_Passive_10_rgb = ED_PSY_Passive_10_rgb,
	ED_PSY_Passive_11_rgb = ED_PSY_Passive_11_rgb,
	ED_PSY_Passive_12_rgb = ED_PSY_Passive_12_rgb,
	ED_PSY_Passive_13_rgb = ED_PSY_Passive_13_rgb,
	ED_PSY_Passive_14_rgb = ED_PSY_Passive_14_rgb,
	ED_PSY_Passive_15_rgb = ED_PSY_Passive_15_rgb,
	ED_PSY_Passive_16_rgb = ED_PSY_Passive_16_rgb,
	ED_PSY_Passive_17_rgb = ED_PSY_Passive_17_rgb,
	ED_PSY_Passive_18_rgb = ED_PSY_Passive_18_rgb,
	ED_PSY_Passive_19_rgb = ED_PSY_Passive_19_rgb,
	ED_PSY_Passive_20_rgb = ED_PSY_Passive_20_rgb,
	ED_PSY_Passive_21_rgb = ED_PSY_Passive_21_rgb,
	ED_PSY_Passive_22_rgb = ED_PSY_Passive_22_rgb,
	ED_PSY_Passive_23_rgb = ED_PSY_Passive_23_rgb,
	ED_PSY_Passive_24_rgb = ED_PSY_Passive_24_rgb,
	ED_PSY_Passive_25_rgb = ED_PSY_Passive_25_rgb,
	ED_PSY_Passive_26_rgb = ED_PSY_Passive_26_rgb,
	ED_PSY_Passive_27_rgb = ED_PSY_Passive_27_rgb,
	ED_PSY_Passive_28_rgb = ED_PSY_Passive_28_rgb,
	ED_PSY_Passive_29_rgb = ED_PSY_Passive_29_rgb,
	ED_PSY_Passive_30_rgb = ED_PSY_Passive_30_rgb,
	ED_PSY_Passive_31_rgb = ED_PSY_Passive_31_rgb,
	ED_PSY_Passive_32_rgb = ED_PSY_Passive_32_rgb,

	ED_ZEA_Blitz_0_rgb = ED_ZEA_Blitz_0_rgb,
	ED_ZEA_Blitz_1_rgb = ED_ZEA_Blitz_1_rgb,
	ED_ZEA_Blitz_1_1_rgb = ED_ZEA_Blitz_1_1_rgb,
	ED_ZEA_Blitz_1_2_rgb = ED_ZEA_Blitz_1_2_rgb,
	ED_ZEA_Blitz_2_rgb = ED_ZEA_Blitz_2_rgb,
	ED_ZEA_Blitz_2_1_rgb = ED_ZEA_Blitz_2_1_rgb,
	ED_ZEA_Blitz_2_2_rgb = ED_ZEA_Blitz_2_2_rgb,
	ED_ZEA_Blitz_2_3_rgb = ED_ZEA_Blitz_2_3_rgb,
	ED_ZEA_Blitz_3_rgb = ED_ZEA_Blitz_3_rgb,
	ED_ZEA_Blitz_3_1_rgb = ED_ZEA_Blitz_3_1_rgb,
	ED_ZEA_Blitz_3_2_rgb = ED_ZEA_Blitz_3_2_rgb,
	ED_ZEA_Aura_0_n_1_rgb = ED_ZEA_Aura_0_n_1_rgb,
	ED_ZEA_Aura_2_rgb = ED_ZEA_Aura_2_rgb,
	ED_ZEA_Aura_3_rgb = ED_ZEA_Aura_3_rgb,

	ED_ZEA_Ability_0_rgb = ED_ZEA_Ability_0_rgb,
	ED_ZEA_Ability_1_rgb = ED_ZEA_Ability_1_rgb,
	ED_ZEA_Ability_1_1_rgb = ED_ZEA_Ability_1_1_rgb,
	ED_ZEA_Ability_1_2_rgb = ED_ZEA_Ability_1_2_rgb,
	ED_ZEA_Ability_2_rgb = ED_ZEA_Ability_2_rgb,
	ED_ZEA_Ability_2_1_rgb = ED_ZEA_Ability_2_1_rgb,
	ED_ZEA_Ability_2_2_rgb = ED_ZEA_Ability_2_2_rgb,
	ED_ZEA_Ability_2_3_rgb = ED_ZEA_Ability_2_3_rgb,
	ED_ZEA_Ability_2_4_rgb = ED_ZEA_Ability_2_4_rgb,
	ED_ZEA_Ability_3_rgb = ED_ZEA_Ability_3_rgb,
	ED_ZEA_Ability_3_2_rgb = ED_ZEA_Ability_3_2_rgb,
	ED_ZEA_Ability_3_3_rgb = ED_ZEA_Ability_3_3_rgb,
	ED_ZEA_Ability_3_4_rgb = ED_ZEA_Ability_3_4_rgb,

	ED_ZEA_Keystone_1_rgb = ED_ZEA_Keystone_1_rgb,
	ED_ZEA_Keystone_1_1_rgb = ED_ZEA_Keystone_1_1_rgb,
	ED_ZEA_Keystone_1_2_rgb = ED_ZEA_Keystone_1_2_rgb,
	ED_ZEA_Keystone_1_3_rgb = ED_ZEA_Keystone_1_3_rgb,
	ED_ZEA_Keystone_1_4_rgb = ED_ZEA_Keystone_1_4_rgb,
	ED_ZEA_Keystone_2_rgb = ED_ZEA_Keystone_2_rgb,
	ED_ZEA_Keystone_2_1_rgb = ED_ZEA_Keystone_2_1_rgb,
	ED_ZEA_Keystone_2_2_rgb = ED_ZEA_Keystone_2_2_rgb,
	ED_ZEA_Keystone_3_rgb = ED_ZEA_Keystone_3_rgb,
	ED_ZEA_Keystone_3_1_rgb = ED_ZEA_Keystone_3_1_rgb,
	ED_ZEA_Keystone_3_2_rgb = ED_ZEA_Keystone_3_2_rgb,

	ED_ZEA_Passive_1_rgb = ED_ZEA_Passive_1_rgb,
	ED_ZEA_Passive_2_rgb = ED_ZEA_Passive_2_rgb,
	ED_ZEA_Passive_3_rgb = ED_ZEA_Passive_3_rgb,
	ED_ZEA_Passive_4_rgb = ED_ZEA_Passive_4_rgb,
	ED_ZEA_Passive_5_rgb = ED_ZEA_Passive_5_rgb,
	ED_ZEA_Passive_6_rgb = ED_ZEA_Passive_6_rgb,
	ED_ZEA_Passive_7_rgb = ED_ZEA_Passive_7_rgb,
	ED_ZEA_Passive_8_rgb = ED_ZEA_Passive_8_rgb,
	ED_ZEA_Passive_9_rgb = ED_ZEA_Passive_9_rgb,
	ED_ZEA_Passive_10_rgb = ED_ZEA_Passive_10_rgb,
	ED_ZEA_Passive_11_rgb = ED_ZEA_Passive_11_rgb,
	ED_ZEA_Passive_12_rgb = ED_ZEA_Passive_12_rgb,
	ED_ZEA_Passive_13_rgb = ED_ZEA_Passive_13_rgb,
	ED_ZEA_Passive_14_rgb = ED_ZEA_Passive_14_rgb,
	ED_ZEA_Passive_15_rgb = ED_ZEA_Passive_15_rgb,
	ED_ZEA_Passive_16_rgb = ED_ZEA_Passive_16_rgb,
	ED_ZEA_Passive_17_rgb = ED_ZEA_Passive_17_rgb,
	ED_ZEA_Passive_18_rgb = ED_ZEA_Passive_18_rgb,
	ED_ZEA_Passive_19_rgb = ED_ZEA_Passive_19_rgb,
	ED_ZEA_Passive_20_rgb = ED_ZEA_Passive_20_rgb,
	ED_ZEA_Passive_21_rgb = ED_ZEA_Passive_21_rgb,
	ED_ZEA_Passive_22_rgb = ED_ZEA_Passive_22_rgb,
	ED_ZEA_Passive_23_rgb = ED_ZEA_Passive_23_rgb,
	ED_ZEA_Passive_24_rgb = ED_ZEA_Passive_24_rgb,
	ED_ZEA_Passive_25_rgb = ED_ZEA_Passive_25_rgb,
	ED_ZEA_Passive_26_rgb = ED_ZEA_Passive_26_rgb,
	ED_ZEA_Passive_27_rgb = ED_ZEA_Passive_27_rgb,
	ED_ZEA_Passive_28_rgb = ED_ZEA_Passive_28_rgb,
	ED_ZEA_Passive_29_rgb = ED_ZEA_Passive_29_rgb,
	ED_ZEA_Passive_30_rgb = ED_ZEA_Passive_30_rgb,
	ED_ZEA_Passive_31_rgb = ED_ZEA_Passive_31_rgb,
	ED_ZEA_Passive_32_rgb = ED_ZEA_Passive_32_rgb,
	ED_ZEA_Passive_33_rgb = ED_ZEA_Passive_33_rgb,
	ED_ZEA_Passive_34_rgb = ED_ZEA_Passive_34_rgb,
}