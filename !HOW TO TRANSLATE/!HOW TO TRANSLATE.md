*If you have any difficulties with the translation of the mod, you can ask me questions and I will definitely answer them:
## xsSplater's Discord: https://discord.gg/BGZagw3xnz 
## Enhanced Descriptions on Nexus: https://www.nexusmods.com/warhammer40kdarktide/mods/210
*Thanks Ebo for inspiration!

If you are reading this, then you probably want to translate the "Enhanced Descriptions" mod into your language and have a LOT of desire and time. Cause you're going to need them, you crazy bastard! If you step on this path, your life will not be the same! I warned you!
;)
# +++------------------------------------------------+++

# PREPARATION
0. Programs. I translate mods into Visual Studio Code or Notepad++ and recommend them to you.
	*In Visual Studio Code, in addition to highlighting and autosave, errors are shown, which is convenient, but you need to figure out a little how to use the program.
	*Notepad++ is simple and similar to a regular Notepad, but it has highlighting and convenient hotkeys (which can be added to VSC).
	*You can do this anywhere, even in a simple Windows Notepad.

1. Duplicate the folder named "Loc_EN" and rename it to "Loc_ХХ".
														*XX - your language ID: IT, DE, etc.

2. Go to the new folder and you'll see 4 files:
	- COLORS_KWords.lua
	- TALENTS_Enh_desc.lua
	- TALENTS_Enh_desc2.lua
	- TALENTS_Enh_desc_nodes.lua

Rename these files adding your language ID. For example:
	- COLORS_KWords_xx.lua
	- TALENTS_Enh_desc_xx.lua
	- TALENTS_Enh_desc2_xx.lua
	- TALENTS_Enh_desc_nodes_xx.lua
									*xx - your language ID from step 1. Case sensitive!

3. Open the file "Enhanced_descriptions.lua" and duplicate the 3 lines in it to enable Extended Descriptions from step 2. Search for "--[+ Translations +]--" sections:
	- TALENTS_Enh_desc_xx = mod:io_dofile("Enhanced_descriptions/Loc_XX/TALENTS_Enh_desc_xx") -- YourLanguage
	- TALENTS_Enh_desc2_xx = mod:io_dofile("Enhanced_descriptions/Loc_XX/TALENTS_Enh_desc2_xx") -- YourLanguage
	- TALENTS_Enh_desc2_xx = mod:io_dofile("Enhanced_descriptions/Loc_XX/TALENTS_Enh_desc2_xx") -- YourLanguage
									*xx/XX - your language ID from step 1. Case sensitive!
4. Done.
	Now you can start translating the mod.

*5. Enable "Developer Mode" in the Mod Settings Menu (F4) in the DMF settings.
*This will allow you to check the translation on the go:
*	1. Translate the line,
*	2. Save the changes,
*	3. Back to the game (Alt+Tab),
*	4. Press Ctrl+Shift+R to reload the mods,
*	5. Check the translation in the game after a couple of seconds.

*Do not hold the cursor directly on the object on reloading mods (Ctrl+Shift+R) or the game may crash. For some things, you will have to go to the menu above or below after reloading the mods.
# +++------------------------------------------------+++

# STRUCTURE OF MOD
	To help you find the files you need to translate, I'll give you a brief description of what's in each file and whether it needs to be translated at all.

1. Folders "Loc_XX". *You only need the New folder you created, you can ignore the rest.
	1.1. COLORS_KWords_xx.lua - TRANSLATION IS REQUIRED!
		*All Keywords (Damage, Health, Wounds, etc.).
	1.2. TALENTS_Enh_desc_xx.lua - TRANSLATION IS REQUIRED!
		*Extended Descriptions: Psyker + Zealot.
	1.3. TALENTS_Enh_desc_nodes_xx.lua - TRANSLATION IS REQUIRED!
		*Extended Descriptions: Nodes.
	1.4. TALENTS_Enh_desc2_xx.lua - TRANSLATION IS REQUIRED!
		*Extended Descriptions: Veteran + Ogryn.
									*xx/XX - your language ID from step 1. Case sensitive!

2. Folder "NULL" - You can ignore it.
	*This is a crutch for the work of disabling Extended Descriptions.
	2.1. TALENTS_Enh_desc_nodes_null.lua
	2.2. TALENTS_Enh_desc_null.lua
	2.3. TALENTS_Enh_desc2_null.lua

3. !HOW TO TRANSLATE.md - This file.

4. !README.md - Main ReadMe for GitHub.

5. COLORS_Numbers.lua - No need to translate. But here is a list of variables - All Numbers.
	*Instructions for adding numbers to the translation are at the beginning of the files where it may be needed. Briefly: Add "COLORS_Numbers." and the name of the variable from this file, for example "dmg_var_rgb". It should look something like: "..COLORS_Numbers.dmg_var_rgb.."

6. CURIOS_Blessings_Perks.lua - TRANSLATION IS REQUIRED!
	*CURIOS, their Blessings and perks.

7. Enhanced_descriptions.lua - Do not touch at all.
	*Except step 3 from "PREPARATION".

8. Enhanced_descriptions.mod - Do not touch at all.
	*The main file for loading the mod.

9. Enhanced_descriptions_data.lua - Do not touch at all.
	*Main menu of the mod (F4).

10. Enhanced_descriptions_localization.lua - TRANSLATION IS REQUIRED!
	*Translation of the mod's main menu (F4).

11. MENUS.lua - Fixes in various game menus. OPTIONAL.
	*In the English version, only the numbers in Sir Melk's Contracts are highlighted.
	*In the Russian version, a lot of things have been fixed.
	*If you don't need any of this and there are no problems in the various menus of the game - Ignore it!

12. TALENTS.lua - TRANSLATION IS REQUIRED!
	*All Talents.

13. WEAPONS_Blessings_Perks.lua - TRANSLATION IS REQUIRED!
	*Weapons Blessings and Perks.
# +++------------------------------------------------+++

## TRANSLATION
Now you can finally start translating.
	*Additional instructions will be in the files themselves.

### Example 1. Simple:
1. In the main folder, open the "Enhanced_descriptions_localization.lua" file, for example.
You will see code like this:

	mod_name = {						<- *This is the string ID. Skip it.
		en = "Enhanced Descriptions",	<- *This is the name of the mod itself in English.
		fr = "Descriptions avancées",	<- *This is the translation of the mod's name into French.
	},

2. Add a translation line into your language after the last line. In this case, I will write a translation into Russian after the French translation.

	mod_name = {
		en = "Enhanced Descriptions",
		fr = "Descriptions avancées",
		ru = "Улучшенные описания", --*Our new translation. Don't forget the comma at the end!
	},

3. Done.

*This file will contain special symbols of icons from the game. Just copy the line and translate.
*	combat_ability_colour = {
*		en = " Combat Ability",
*		fr = " Capacité de combat",
*	},

### Example 2. More difficult:
Let's try to translate another file, where the structure is a little more complex.
1. Open the "CURIOS_Blessings_Perks.lua" file.
You will see code like this:

--[+ +CURIOS+ +]--			<- *If you see something written starting with two minuses (--) - it's just a Comment. In this case, a note that this is the Сurios category. The Game skips Comments, so you can mark something so you don't forget, for example.
	--[+ Blessings +]--		<- *Comment. Blessings subcategory.
		--[+ +Health +]--	<- *Comment. Subsub...
	create_template("curio_bless0_ext_en", {"loc_inate_gadget_health_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.p_maxhlth_rgb.." Maximum "..COLORS_KWords.Health_rgb end),	<- *Localization string

	1.1. Let's break down the localization string into its components a bit so that it's clear what does what:

create_template( <- *This code marks the beginning of a localization string. You don't need to translate it, but remember it so you know where the string starts.

	"curio_bless0_ext_en", <- *This is the ID of this string. It is not important in general, but it is better if it is unique. Change _en to your localization ID and that's it.

		{"loc_inate_gadget_health_desc"}, <- *This is the loc-code of the localization element. You can simply skip it.

			{"en"}, <- *This is the localization ID. Change it to yours.

				function(locale, value) return <- *After "return", the localization text itself begins, which you will need to translate.

COLORS_Numbers.p_maxhlth_rgb.." Maximum "..COLORS_KWords.Health_rgb <- *Localization.
*"Usually it starts and ends with quotеs." Then it's enough to simply translate the text and that's it.
*In my mod, Highlighted Numbers and Keywords are written in Code so that their colors can be changed. These codes start with "COLORS_Numbers." for Numbers and "COLORS_KWords." for Keywords.
*For the Game to distinguish code from text, codes need to be separated in a special way, with quotes and 2 dots on both sides:
*	"Text texttext "..COLORS_KWords_fr.Damage_rgb.." text texttext text."
*If the code is at the side, then you can separate it only from the rest of the text:
*	COLORS_Numbers.p_maxhlth_rgb.." texttext text text."
*	"Texttext text "..COLORS_KWords.Health_rgb
*Usually you don't need to do anything with the "COLORS_Numbers", because they are picked up by the game automatically and they are my concern, but you will need to modify the Keyword for your localization. I will explain how below.

					end), <- *End of line.

2. Duplicate the entire English line and translate into your language. For example:

	create_template("curio_bless0_ext_fr", {"loc_inate_gadget_health_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.p_maxhlth_rgb.." de "..COLORS_KWords_fr.Health_rgb_fr.." Maximum" end), function(locale, value) return COLORS_Numbers.p_maxhlth_rgb.." de "..COLORS_KWords.Health_rgb end),

3. Done.

### Example 3. Keywords:
It's easy.
1. Open your duplicate "COLORS_KWords_xx.lua".
2. Rename all locals and translate words in "quotes".

English:
	local Cd_rgb = iu_actit("Cooldown", cmbtab_col)
	local Combat_ability_rgb = iu_actit("Combat Ability", cmbtab_col)
	local Combat_ability_cd_rgb = iu_actit("Combat Ability Cooldown", cmbtab_col)

French, for example:
	local Cd_rgb_fr = iu_actit("Temps de recharge", cmbtab_col)
	local Combat_ability_rgb_fr = iu_actit("Capacité de combat", cmbtab_col)
	local Combat_ability_cd_rgb_fr = iu_actit("Temps de recharge des capacités de combat", cmbtab_col)

	2.1. DO NOT touch at all the lines where it says:
		... Color[mod:get(" ... ")](255, true).

3. Done.

*If you decide to add a new value, for example:
*	--[++Peril++]--
*	local prl_col = Color[mod:get("peril_text_colour")](255, true)
*	local Peril_rgb = iu_actit("Peril", prl_col)
*	local Perils_rgb = iu_actit("Perils", prl_col) <<<- This one, for example

*Then you must add a line to the list at the bottom of the file after the "return {":
*	Peril_rgb = Peril_rgb,
*	Perils_rgb = Perils_rgb, <<<- Like this

### Example 4. Extended descriptions:
In "TALENTS_Enh_desc....lua" files, the lines are written into tables.
Each new line will be a new line in the description in game.
All "local" values (ED_PSY_Blitz_0_rgb) should be replaced with unique ones, adding your localization ID (ED_PSY_Blitz_0_rgb_xx).

	--[+ Blitz 0 - Brain Burst +]--
	local ED_PSY_Blitz_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- Cannot Crit.",
		"- Base Damage: 900.",
		"- Always scores a Weakspot hit.",
		"- Higher Damage against Maniac and Unyielding.",
		"{#color(255, 35, 5)}- You may Explode! Don't use if Peril level is 97% or above!{#reset()}",
	}, "\n"), enhdesc_col)

Then just translate the lines. But be sure to check everything in the game so that the text does not go beyond the screen boundaries.

	--[+ Blitz 0 - Explosion cérébrale +]--
	local ED_PSY_Blitz_0_rgb_fr = iu_actit(table.concat({
		ppp___ppp,
		"- Ne peut pas infliger de Coup Critique.",
		"- Dégâts de base : 900.",
		"- Touche toujours un Point faible.",
		"- Dégâts plus élevés contre Maniaques et Implacables.",
		"{#color(255, 35, 5)}- Vous pourriez exploser ! Ne l'utilisez pas si le niveau de Péril est de 97% ou plus !{#reset()}",
	}, "\n"), enhdesc_col)

*You may notice that in the localization there is a code "{#color(255, 35, 5)}Red text.{#reset()}" - this is just color highlighting. Red in this case.

*As you can see, the main part of the translation can be done by duplicating the English line and translating it into your language using Google Translate or AI. Then just proofread and save.

*Start with something easy and when you get to something difficult, you will already understand how everything is done: Enhanced_descriptions_localization.lua -> CURIOS_Blessings_Perks.lua -> WEAPONS_Blessings_Perks.lua -> TALENTS.lua -> ...

# +++------------------------------------------------+++

# SAVE OFTEN, PRAY THE GOD-EMPEROR, TAKE BREAKS.

*If you have any questions, wishes or suggestions, feel free to contact me. Links at the beginning of the file.

## I wish you success, patience and strength!
# THANK YOU!