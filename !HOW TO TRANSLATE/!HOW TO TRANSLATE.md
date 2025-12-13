
> [!WARNING]
> My one firm request is that you stick to translating the mod. Please do not add unnecessary fluff, personal opinions, or off-topic comments.
>
> This mod represents me as much as it represents you. If I am notified that a translation contains inappropriate or offensive content, I will review it and may simply remove the entire localization into your language rather than search for every potential issue. My passion and the thousands of hours I've invested are too valuable to risk.
>
> Thank you for your understanding and cooperation!
***

> [!NOTE]
> If you're still reading this, you must be planning to translate the "Enhanced Descriptions" mod.
> 
> Well, you'll need that determination — and a whole lot of time, you crazy bastard! I admire you!
> 
> Once you start down this path, there's no turning back. You'll never be the same!
> 
> Don't say I didn't warn you! ;)
***

If you have any questions or run into difficulties while translating, feel free to ask.
I'll be happy to help:
[💬xsSplater's Discord](https://discord.gg/BGZagw3xnz)|[⚙️Darktide Modders](https://discord.com/channels/1048312349867646996/1165372604379570268)|[🎮Enhanced Descriptions Nexus](https://www.nexusmods.com/warhammer40kdarktide/mods/210)|
|--------------------------------------|---------------------------------|-----------------------------|
***

[![Превью видео](https://img.youtube.com/vi/EJXcAlEOpeU/0.jpg)](https://www.youtube.com/live/EJXcAlEOpeU)
***

# 🛠️PREPARATION
## Recommended Programs:
For translating mods, I use and can recommend __[Notepad++](https://notepad-plus-plus.org/downloads/)__ or __[Visual Studio Code](https://code.visualstudio.com/download)__.
You can also use __AI__ for the initial translation, then edit it yourself for accuracy and style.
- 🃏 __Notepad++__ is straightforward and feels familiar like the standard Notepad, but adds powerful features like syntax highlighting and convenient hotkeys.
- 📊 __Visual Studio Code__ includes advanced tools like error checking, but it takes a bit of time to set up and learn.

In general, you can translate in whatever you like best.
***

# 📚MOD STRUCTURE
*To help you locate the files that need translation, I'll provide a brief description of their contents and whether they require any translation at all.*
- *📗 - Translation is required, 📒 - Translation is optional, 📕 - Translation is not required.*

## 0. FOLDER "!HOW TO TRANSLATE"
- 📒 __!HOW TO TRANSLATE.md__ *-- >> You are here <<*
- __!HOW TO TRANSLATE TW.md__ *-- Chinese Traditional version.*

## 1. FOLDER "COLORS_KEYWORDS_NUMBERS"

### 1.1. 📗COLORS_KWords_xx.lua
- *Files with language-specific __Keywords__ here: __Damage__, __Health__, __Wound__, __Stamina__, __Toughness__, etc.*

### 1.2. 📒COLORS_Numbers.lua -- All Numbers and Variables here.
- *For basic translation, __you can safely ignore this file__, because I have already added All the necessary Numbers to the descriptions.*

## 2. FOLDER "MAIN_MODULES"
- *The __File Names__ are pretty self-explanatory, I think.*
- *The suggested order, from easiest to hardest, is:*
	- *__Curios Blessings and Perks__ --> __Weapons Blessings and Perks__ --> __Talents__, etc., but the final order is up to you.*
	
### 2.1. 📗CURIOS_Blessings_Perks.lua

### 2.2. 📒MENUS.lua
- *The main thing is the highlighted numbers in __Sir Melk's Contracts Menu__.*
- *The rest can only be translated where something needs to be corrected.*

### 2.3. 📒NAMES_Enemies_Weapons.lua

### 2.4. 📒NAMES_Talents_Blessings.lua

### 2.5. 📗PENANCES.lua

### 2.6. 📗TALENTS.lua
- *Small Nodes*

### 2.7. 📗TALENTS_Arbites.lua

### 2.8. 📗TALENTS_Ogryn.lua

### 2.9. 📗TALENTS_Psyker.lua

### 3.0. 📗TALENTS_Veteran.lua

### 3.1. 📗TALENTS_Zealot.lua

### 3.2. 📗WEAPONS_Blessings_Perks.lua

## 3. 📕Enhanced_descriptions.lua
- *The main file needed for this mod to work.*

## 4. 📕Enhanced_descriptions.mod
- *The main file that is needed to connect the main files of this mod to the framework.*

## 5. 📕Enhanced_descriptions_data.lua
- *The main file needed for this mod's menu to work.*

## 6. 📗Enhanced_descriptions_localization.lua
- *The main file with the Localization of the Menu of this mod.*

## 7. 📒README.md
***

# 📝TRANSLATION
## Simple strings
### 1. Open a file, for example: TALENTS.lua
### 2. Find the part you want to translate, for example:
	--[+ Blitz +]--
	["loc_glossary_term_tactical"] = {
		en = "Blitz",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
### 3. I'll choose the Russian localization as an example: -- ru = "",
#### 3.1. You need to remove two hyphens and a space before the line to uncomment it: ru = "",
#### 3.2. Then add the translation: ru = "Блиц",
	--[+ Blitz +]--
	["loc_glossary_term_tactical"] = {
		en = "Blitz",
		ru = "Блиц",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
### 4. Save the file (CTRL+S).
### 5. Done. You can test it in-game.
***
## Slightly more complex
### 1. Open a file, for example: TALENTS_Veteran.lua
### 2. Find the part you want to translate, for example:
	--[+ Passive 41 - Onslaught +]--
	["loc_talent_veteran_continous_hits_apply_rending_description"] = {
		en = "On continuous hits to a Single target:\n"
			..Dot_green.." {rending_multiplier:%s} "..COLORS_KWords.Brittleness_rgb.." for {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..PHRS.Can_be_refr.."\n"
			.."\n"
			..NTS.Brtl_note_rgb,
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
### 3. I'll choose the Russian localization as an example: -- ru = "",
#### 3.1. You need to remove two hyphens and a space before the line to uncomment it: ru = "",
#### 3.2. Then copy the English localization to yours:
	--[+ Passive 41 - Onslaught +]--
	["loc_talent_veteran_continous_hits_apply_rending_description"] = {
		en = "On continuous hits to a Single target:\n"
			..Dot_green.." {rending_multiplier:%s} "..COLORS_KWords.Brittleness_rgb.." for {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..PHRS.Can_be_refr.."\n"
			.."\n"
			..NTS.Brtl_note_rgb,
		ru = "On continuous hits to a Single target:\n"
			..Dot_green.." {rending_multiplier:%s} "..COLORS_KWords.Brittleness_rgb.." for {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..PHRS.Can_be_refr.."\n"
			.."\n"
			..NTS.Brtl_note_rgb,
		-- fr = "",
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
### 4. Translate the text into your language.
   *Don't forget to go to your language's Keyword file ("**_ru**" is __COLORS_KWords_ru.lua__) and translate it too.*

	--[+ Passive 41 - Onslaught +]--
	["loc_talent_veteran_continous_hits_apply_rending_description"] = {
		en = "On continuous hits to a Single target:\n"
			..Dot_green.." {rending_multiplier:%s} "..COLORS_KWords.Brittleness_rgb.." for {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..PHRS.Can_be_refr.."\n"
			.."\n"
			..NTS.Brtl_note_rgb,
		--[+ Пассивный 41 - Натиск +]--
		ru = "При повторных атаках по одной цели на неё накладывается:\n"
			..Dot_green.." {rending_multiplier:%s} "..COLORS_KWords_ru.Brittleness_rgb_ru.." брони на {duration:%s} секунд.\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			..PHRS.Can_be_refr_ru.."\n"
			.."\n"
			..NTS.Brtl_note_rgb_ru,
		-- fr = "",
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
#
You need to add Keywords from your file:

	..Dot_green.." {rending_multiplier:%s} "..COLORS_KWords_ru.Brittleness_rgb_ru.." брони на {duration:%s} секунд.\n"
- The text has been translated and "**_ru**" has been added to the Keyword "..**COLORS_KWords.Brittleness_rgb**..": *"..**COLORS_KWords_ru.Brittleness_rgb_ru**.."*
- This means that the "**COLORS_KWords_ru.lua**" file contains the Keyword "**Brittleness**" *(it is always added with **_rgb_your_localization***.
	- For "**_ru**" it's "**COLORS_KWords_ru.Brittleness_rgb_ru**", for "**_fr**" it's "**COLORS_KWords_fr.Brittleness_rgb_fr**", etc.
#
	..PHRS.Can_be_refr_ru.."\n"
- This value is taken from the beginning of the current file. Look for the list of frequently repeated phrases - "**PHRS**" at the beginning, and then look for the string "**Can_be_refr_ru**" in it. Add strings for your language and then use them.
#
	..NTS.Brtl_note_rgb_ru,
- This value is taken from the beginning of the current file. Look for the notes list - "**NTS**" at the beginning and then look for the string "**Brtl_note_rgb_ru**" in it. Add strings for your language and then use them.

### 5. Save the file (CTRL+S).
### 6. Done. You can test it in-game.
***
