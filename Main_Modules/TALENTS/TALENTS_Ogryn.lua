---@diagnostic disable: undefined-global
-- OGRYN TALENT MODULE -- МОДУЛЬ ТАЛАНТОВ ОГРИНА

local mod = get_mod("Enhanced_descriptions")
local Utils = mod.get_utils()

local create_template = Utils.create_template
local loc_text = Utils.loc_text
local CKWord = Utils.CKWord
local CNumb = Utils.CNumb
local CPhrs = Utils.CPhrs
local CNote = Utils.CNote
local Dot_nc = Utils.DOT_NC or "•"
local Dot_red = Utils.DOT_RED or "•"
local Dot_green = Utils.DOT_GREEN or "•"

-- LOCALIZATION OF OGRYN TALENTS -- ЛОКАЛИЗАЦИИ ТАЛАНТОВ ОГРИНА
local ogryn_localizations = {
--[+ ++OGRYN - ОГРИН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Big Box of Hurt +]--	26.03.2026
	["loc_ability_ogryn_grenade_box_description"] = { -- +colors
		en = "Throw a box of Grenades with great strength and enthusiasm for High "..CKWord("Damage", "Damage_rgb").." against a Single Enemy.\n"
			.."\n"
			..Dot_green.." Impact base "..CKWord("Damage", "Damage_rgb")..": "..CNumb("1850", "n_1850_rgb")..".\n"
			..Dot_green.." Instakill: Gunners, Shotgunners, Dreg Rager, Scab Mauler, Mutants, Pox Hounds, Poxburster, Corruptor.\n"
			-- .."\n"
			..Dot_green.." Slightly increased "..CKWord("Damage", "Damage_rgb").." vs Unyielding.\n"
			..Dot_red.." Very low "..CKWord("Damage", "Damage_rgb").." vs Carapace.\n"
			..Dot_green.." High "..CKWord("Stagger", "Stagger_rgb").." against all enemies, except for Monstrosities and Captains/Twins.\n"
			-- .."\n"
			..Dot_nc.." Replenishes all boxes per Grenade pickup.",
		ru = "Вы бросаете коробку гранат с огромной силой и энтузиазмом для нанесения высокого "..CKWord("урона", "urona_rgb_ru").." одному врагу.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." при попадании: "..CNumb("1850", "n_1850_rgb")..".\n"
			..Dot_green.." Убивает сразу: пулемётчиков, скабов с дробовиками, берсерков, скабов-палачей, мутантов, чумных гончих, чумных взрывников, осквернителей(глаз с выползающими щупальцами).\n"
			.."\n"
			-- ..Dot_green.." Немного увеличен "..CKWord("урон", "uron_rgb_ru").." против несгибаемых.\n"
			-- ..Dot_red.." Очень низкий "..CKWord("урон", "uron_rgb_ru").." против панцирной брони.\n"
			-- ..Dot_green.." Высокое "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." против всех врагов, кроме чудовищ и капитанов/близнецов.\n"
			..Dot_nc.." Пополняет все ящики при подборе гранат.", -- Большая коробка боли -- руоф Ящик, полный боли
		-- fr = "Lancer une boîte de grenades avec une grande force et enthousiasme pour des "..COLORS_KWords_fr.Damage_rgb_fr.." élevés  contre un seul ennemi."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_0_rgb_fr,
		-- ["zh-tw"] = "投擲一個手榴彈箱攻擊單一敵人。\n"
			-- .."\n"
			-- ..Dot_green.." 對不屈敵人造成稍高 "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..Dot_red.." 對裝甲敵人造成非常低 "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..Dot_nc.." 撿拾手榴彈時補滿所有彈箱。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Blitz_0_rgb_tw, -- 巨量傷害盒 --激情地奮力投出手雷箱，對單一敵人造成大量傷害。
	},
	--[+ BLITZ 1 - Big Friendly Rock +]--	26.03.2026
	["loc_ability_ogryn_friend_rock_desc"] = { -- recharge: 45, max_charges: 4, s->seconds
		en = "Toss a Big rock or hunk of junk at a Single Enemy.\n"
			..Dot_nc.." You pick up a new rock every {recharge:%s} seconds.\n"
			..Dot_nc.." Сan hold up to {max_charges:%s} rocks at a time.\n"
			.."\n"
			..Dot_green.." Impact base "..CKWord("Damage", "Damage_rgb")..": "..CNumb("1200", "n_1200_rgb")..".\n"
			..Dot_green.." Instakill: Gunners, Shotgunners, Dreg Rager, Mutants, Pox Hounds, Poxburster, Corruptor.\n"
			-- .."\n"
			-- ..Dot_green.." Slightly increased "..CKWord("Damage", "Damage_rgb").." vs Maniac.\n"
			-- ..Dot_red.." Very low "..CKWord("Damage", "Damage_rgb").." vs Carapace.\n"
			.."\n"
			.."Inflicts high "..CKWord("Stagger", "Stagger_rgb").." with varying effectiveness:\n"
			..Dot_green.." Standard enemies: Always.\n"
			..Dot_green.." Monstrosities: Only on "..CKWord("Weakspot Hits", "Weakspothits_rgb")..".\n"
			..Dot_green.." Captains/Twins: Only with no Void shield.\n"
			.."\n"
			..Dot_red.." Ogryn cannot pick up Grenade ammo.",
		ru = "Вы можете бросить большой камень или кусок бетона в одного врага.\n"
			..Dot_nc.." Вы подбираете новый камень каждые {recharge:%s} секунд.\n"
			..Dot_nc.." Можете нести до {max_charges:%s} камней одновременно.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." при попадании: "..CNumb("1200", "n_1200_rgb")..".\n"
			..Dot_green.." Убивает сразу: пулемётчиков, скабов с дробовиками, берсерков, скабов-палачей, мутантов, чумных гончих, чумных взрывников, осквернителей(глаз с выползающими щупальцами).\n"
			-- .."\n"
			-- ..Dot_green.." Немного увеличен "..CKWord("урон", "uron_rgb_ru").." против маньяков.\n"
			-- ..Dot_red.." Очень низкий "..CKWord("урон", "uron_rgb_ru").." против панцирной брони.\n"
			.."\n"
			.."Наносит высокое "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." с различной эффективностью:\n"
			..Dot_green.." Обычные враги: всегда.\n"
			..Dot_green.." Чудовища: только при попадании в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".\n"
			..Dot_green.." Капитаны/близнецы: только без пустотного щита.\n"
			.."\n"
			..Dot_red.." Огрин не может подбирать гранаты.", -- Большой дружелюбный валун
		-- fr = "Lancer un gros caillou à un seul ennemi. Vous ramassez un nouveau caillou tous les {recharge:%s} secondes et pouvez en tenir jusqu'à {max_charges:%s} à la fois.\n"..COLORS_KWords_fr.Damage_rgb_fr.." légèrement augmenter contre les Maniaques et très faible "..COLORS_KWords_fr.Damage_rgb_fr.." contre ceux en armure Carapace. Bonus de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr.." contre les Implacable\nL'Ogryn ne peux plus ramasser de caisse de grenade."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_1_rgb_fr,
		-- ["zh-tw"] = "投擲巨石 攻擊單一敵人。\n"
			-- ..Dot_nc.." 每 {recharge:%s} 秒獲得一顆新石頭。\n"
			-- ..Dot_nc.." 最多可持有 {max_charges:%s} 顆。\n"
			-- ..Dot_green.." 對狂暴敵人造成 "..COLORS_KWords_tw.Damage_h_rgb_tw.."。\n"
			-- ..Dot_red.." 對裝甲敵人造成非常低 "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..Dot_green.." 對不屈敵人額外強化 "..COLORS_KWords_tw.Finesse_rgb_tw.." 效果。\n"
			-- ..Dot_red.." 歐格林無法撿拾手榴彈。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Blitz_1_rgb_tw, -- 投石問路 -- 向單個敵人投擲一塊巨石或一大塊垃圾。對甲殼護甲和不屈敵人的效果減弱。你每{recharge:%s}秒撿起一塊新岩石，一次可同時舉起{max_charges:%s}塊岩石。
	},
	--[+ BLITZ 1-1 - That One Didn't Count +]--	26.03.2026
	["loc_talent_ogryn_replenish_rock_on_miss_desc"] = { -- +colors
		en = "{talent_name:%s} Replenishes a Charge if you hit a "..CKWord("Weak Spot", "Weak_spot_rgb").." or hit no enemies.\n"
			..Dot_nc.." Cooldown: {cooldown_duration:%s} seconds.",
		ru = "{talent_name:%s} восстанавливает заряд, если вы попали в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru").." врага или промахнулись.\n"
			..Dot_nc.." Восстановление: {cooldown_duration:%s} секунд.", -- Этот не считается -- руоф 
		-- fr = "{talent_name:%s} rend un caillou si vous touchez un "..COLORS_KWords_fr.Weakspot_rgb_fr.." ou si vous ne touchez aucun ennemi. Temps de rechargement "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." secondes", -- Ca ne comtpe pas
		-- ["zh-tw"] = "{talent_name:%s} 若 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." 或未命中敵人，\n\n"
			-- ..Dot_green.." 將恢復一個使用次數。\n"
			-- ..Dot_nc.." 冷卻為 "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." 秒。", -- 那下不算! -- 命中弱點或未命中任何敵人時，{talent_name:%s}將恢復一次充能。冷卻時間{cooldown_duration:%s}秒。
	},
	--[+ BLITZ 2 - Frag Bomb +]--	26.03.2026
	["loc_ability_ogryn_grenade_demolition_instakill_desc"] = { -- radius: 16, m->meters, +colors
		en = "Throw an Ogryn-sized (the only proper kind!) "..CKWord("Frag Grenade", "Frag_gren_rgb")..".\n"
			..Dot_nc.." Fuse time: "..CNumb("2", "n_2_rgb").." seconds.\n"
			..Dot_nc.." Explosion radius: {radius:%s} meters.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb")..": ["..CNumb("1500", "n_1500_rgb").."-"..CNumb("1250", "n_1250_rgb").."].\n"
			-- .."\n"
			-- ..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb").." vs Flak, Maniac, Unyielding inside epicenter.\n"
			-- ..Dot_red.." Low armor "..CKWord("Damage", "Damage_rgb").." vs Flak, Carapace outside epicenter.\n"
			.."\n"
			..Dot_green.." High "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities, Captains/Twins (only without Void shield).\n"
			.."\n"
			..Dot_green.." Instakill all enemies with an explosion except: Maulers, Crushers, Bulwarks, Pack Masters, Captains/Twins and Monstrosities.",
		ru = "Вы бросаете "..CKWord("Фраг-гранату", "Frag_gren_rgb_ru").." огринского размера (единственно верный размер!).\n"
			..Dot_nc.." Время до взрыва: "..CNumb("2", "n_2_rgb").." секунды.\n"
			..Dot_nc.." Радиус взрыва: {radius:%s} метров.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru")..": ["..CNumb("1500", "n_1500_rgb").."-"..CNumb("1250", "n_1250_rgb").."].\n"
			-- .."\n"
			-- ..Dot_green.." Очень высокий "..CKWord("урон", "uron_rgb_ru").." против противоосколочной брони, маньяков и несгибаемых в эпицентре.\n"
			-- ..Dot_red.." Низкий "..CKWord("урон", "uron_rgb_ru").." против противоосколочной брони и панцирной брони вне эпицентра.\n"
			.."\n"
			..Dot_green.." Высокое "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." против всех врагов, включая чудовищ, капитанов/близнецов без пустотного щита.\n"
			.."\n"
			..Dot_green.." Убивает всех врагов взрывом, кроме: скабов-палачей, крушителей, бастионов, загонщиков, капитанов/близнецов и чудовищ.", -- Фраг-бомба -- руоф Осколочная бомба
		-- fr = "Lancer une "..COLORS_KWords_fr.Frag_gren_rgb_fr.." de taille Ogryn (la seule taille appropriée !) avec un rayon d'explosion de {radius:%s} mètres, infligeant des "..COLORS_KWords_fr.Damage_rgb_fr.." accrus au centre."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_2_rgb_fr,
		-- ["zh-tw"] = "投擲一顆歐格林專用 "..COLORS_KWords_tw.Frag_gren_rgb_tw.."。\n"
			-- ..Dot_green.." 爆炸半徑最大為 {radius:%s} 公尺。\n"
			-- ..Dot_green.." 中心區域造成更高 "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Blitz_2_rgb_tw, -- 破片炸彈 -- 投擲一枚歐格林尺寸（唯一完美的尺寸！）的破片手雷，爆炸範圍{radius:%s}公尺，爆心造成更高傷害。
	},
	--[+ BLITZ 3 - Bombs Away! +]--	26.03.2026
	["loc_talent_bonebreaker_grenade_super_armor_explosion_desc"] = { -- num_grenades: 6, talent_name: Big Box of Hurt, +colors
		en = "Throw a box of Grenades with great strength and enthusiasm to deal High "..CKWord("Damage", "Damage_rgb").." to a Single Enemy.\n"
			.."Hitting an Enemy causes the box to break open, releasing {num_grenades:%s} grenades around the target.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Impact base "..CKWord("Damage", "Damage_rgb")..": "..CNumb("1850", "n_1850_rgb")..".\n"
			..Dot_green.." Instakill: Gunners, Shotgunners, Dreg Rager, Scab Mauler, Mutants, Pox Hounds, Poxburster, Corruptor.\n"
			-- .."\n"
			-- ..Dot_green.." Slightly increased "..CKWord("Damage", "Damage_rgb").." vs Unyielding.\n"
			-- ..Dot_red.." Very low "..CKWord("Damage", "Damage_rgb").." vs Carapace.\n"
			.."\n"
			..Dot_green.." High "..CKWord("Stagger", "Stagger_rgb").." against all enemies, including Monstrosities and Captains/Twins (only without Void shield).\n"
			.."\n"
			..Dot_nc.." Replenishes all boxes per Grenade pickup.",
		ru = "Вы бросаете коробку гранат с огромной силой и энтузиазмом, чтобы нанести высокий "..CKWord("урон", "uron_rgb_ru").." одному врагу.\n"
			.."При попадание по врагу коробка разбивается, разбрасывая {num_grenades:%s} гранат вокруг цели.\n"
			..Dot_green.." Это улучшенная версия {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." при попадании: "..CNumb("1850", "n_1850_rgb")..".\n"
			..Dot_green.." Убивает сразу: пулемётчиков, скабов с дробовиками, берсерков, скабов-палачей, мутантов, чумных гончих, чумных взрывников, осквернителей(глаз с выползающими щупальцами).\n"
			-- .."\n"
			-- ..Dot_green.." Невысокий "..CKWord("урон", "uron_rgb_ru").." против несгибаемых.\n"
			-- ..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." против панцирной брони.\n"
			.."\n"
			..Dot_green.." Высокое "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." против всех врагов, включая чудовищ и капитанов/близнецов без пустотного щита.\n"
			.."\n"
			..Dot_nc.." Пополняет все ящики при подборе гранат.", -- Бросай бомбы! -- руоф Кидаю бомбу!
		-- fr = "Lancer une boîte de grenades avec une grande force et enthousiasme pour infliger des "..COLORS_KWords_fr.Damage_rgb_fr.." élevés à un seul ennemi.\nToucher un ennemi provoque l'ouverture de la boîte, libérant {num_grenades:%s} grenades autour de la cible.\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_3_rgb_fr,
		-- ["zh-tw"] = "投擲一個手榴彈箱攻擊單一敵人。\n"
			-- ..Dot_green.." 命中敵人後向四周拋出 {num_grenades:%s} 顆手榴彈。\n\n"
			-- .."此為 {talent_name:%s} 的強化版本。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Blitz_3_rgb_tw, -- 投彈完畢! -- 激情地奮力投出手雷箱，對單個敵人造成大量傷害。\n\n手雷箱擊中敵人即破壞，{num_grenades:%s}個即將爆炸的手雷散落於目標周圍。\n\n該天賦是{talent_name%s}的增強版。
	},
	--[+ BLITZ 3-1 - Bigger Box of Hurt +]--	26.03.2026
	["loc_talent_ogryn_big_box_of_hurt_more_bombs_desc"] = { -- num_grenades: 6, talent_name: Big Box of Hurt, +colors
		en = Dot_green.." {amount:%s} grenades released, up to "..CNumb("9", "n_9_rgb")..".",
		ru = Dot_green.." {amount:%s} дополнительные гранаты разбрасывается, вплоть до "..CNumb("9", "n_9_rgb")..".", -- Бросай бомбы! -- руоф Кидаю бомбу!
	},
--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Intimidating Presence +]--	26.03.2026
	["loc_talent_ogryn_2_base_4_description_new"] = { -- damage: +7.5%, +colors
		en = Dot_green.." {damage:%s} Heavy Melee Attack "..CKWord("Damage", "Damage_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..Dot_green.." This also buffs the Melee Special actions of Ripper Guns, Grenadier Gauntlet (melee part), Rumbler, Twin-Linked Stubbers, and Kickback.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_Aura"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." тяжёлых атак ближнего боя для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Также усиливает специальные действия ближнего боя у дробовика-потрошителя, гранатомётной перчатки (часть ближнего боя), гранатомёта, спаренного тяжёлого стаббера и отбойника.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_Aura"), -- Устрашающее присутствие -- руоф Пугающее присутствие
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mêlée puissantes pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_0_rgb_fr,
		-- ["zh-tw"] = "你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友，\n\n"
			-- ..Dot_green.." {damage:%s} "..COLORS_KWords_tw.Damage_s_rgb_tw.." 。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Aura_0_rgb_tw, -- 威嚇氣場 
	},
	--[+ AURA 1 - Bonebreaker's Aura +]--	26.03.2026
	["loc_talent_damage_aura_improved_new"] = { -- damage: +10%, talent_name: Intimidating Presence, +colors
		en = Dot_green.." {damage:%s} Melee Attack "..CKWord("Damage", "Damage_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." This also buffs the Melee Special actions of Ripper Guns, Grenadier Gauntlet (melee part), Rumbler, Twin-Linked Stubbers, and Kickback.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_Aura").."\n",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." атак ближнего боя для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n"
			..Dot_green.." Это улучшенная версия {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Также усиливает специальные действия ближнего боя у дробовика-потрошителя, гранатомётной перчатки (часть ближнего боя), гранатомёта, спаренного тяжёлого стаббера и отбойника.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_Aura").."\n", -- Аура костолома
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mêlée pour vous et les alliés en syntonie.\n\nCeci est une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_1_rgb_fr,
		-- ["zh-tw"] = "你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友，\n"
			-- ..Dot_green.." {damage:%s} "..COLORS_KWords_tw.Damage_s_rgb_tw.." 。\n\n"
			-- ..Dot_nc.." 此為 {talent_name:%s} 的強化版。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Aura_1_rgb_tw, -- 破骨者之環 --你和協同中的盟友的近戰攻擊傷害提高{damage:%s}。\n\n該天賦是{talent_name:%s}的強化版。
	},
	--[+ AURA 2 - Stay Close! +]--	26.03.2026
	["loc_talent_ogryn_toughness_regen_aura_desc"] = { -- toughness_regen_rate_modifier: +25%, +colors
		en = Dot_green.." {toughness_regen_rate_modifier:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Dont_intw_coher_toughn").."\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_Aura"),
		ru = Dot_green.." {toughness_regen_rate_modifier:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Dont_intw_coher_toughn").."\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_Aura"), -- Будь рядом! -- руоф Не расходимся!
		-- fr = "{toughness_regen_rate_modifier:%s} de Régénération de la "..COLORS_KWords_fr.Toughness_rgb_fr.." pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_2_rgb_fr,
		-- ["zh-tw"] = "你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友，\n"
			-- ..Dot_green.." {toughness_regen_rate_modifier:%s} "..COLORS_KWords_tw.Toughness_rs_rgb_tw.."。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Aura_2_rgb_tw, -- 跟緊我! 
	},
	--[+ AURA 3 - Coward Culling +]--	26.03.2026
	["loc_talent_ogryn_damage_vs_suppressed_new_desc"] = { -- damage:+20%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." against Suppressed Enemies for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..Dot_green.." {suppression:%s} Suppression dealt.\n"
			..Dot_nc.." Breeds that can be Suppressed: Armored Groaner, Groaner, Dreg Gunner, Dreg Stalker, Radio Operator, Reaper, Scab Gunner, Scab Shooter, Scab Stalker.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_Aura"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." по подавленным врагам для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." {suppression:%s} к подавлению врагов.\n"
			..Dot_nc.." Враги, которых можно подавить: бронированный ворчун, ворчун, отброс-пулемётчик, дрег-охотник, радист, жнец, стрелок-пулемётчик, скаб-стрелок, скаб-охотник.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_Aura"), -- Отсев трусливых -- руоф Трусливые отбросы
		-- fr = "{suppression:%s} de Suppression infligé.\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemis sous suppression pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_3_rgb_fr,
		-- ["zh-tw"] = "你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友，\n"
			-- ..Dot_green.." 提升 {suppression:%s} 壓制效果。\n"
			-- ..Dot_green.." 對被壓制敵人增加 {damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Aura_3_rgb_tw, -- 優勝劣汰 -- 你和協同中的盟友對被壓制的敵人造成的傷害增加{damage:%s}。
	},
--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ ABILITY 0 - Bull Rush +]--	26.03.2026
	["loc_ability_ogryn_charge_description_new"] = { -- attack_speed: +25%, move_speed: +25%, duration: 5, cooldown: 30, s->seconds, +colors
		en = "Charge forward with great force, knocking back enemies, "..CKWord("Staggering", "Staggering_rgb").." them and gain for {duration:%s} seconds:\n"
			..Dot_green.." {attack_speed:%s} Attack Speed and\n"
			..Dot_green.." {move_speed:%s} Movement Speed.\n"
			-- ..Dot_red.." Charge is stopped on collision with Carapace, Unyielding and Monstrosities.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			.."Charge:\n"
			..Dot_nc.." Range: "..CNumb("12", "n_12_rgb").." meters.\n"
			-- ..Dot_nc.." Can be canceled by backwards movement input.\n"
			-- ..Dot_nc.." Can slightly change direction while charging.\n"
			-- ..Dot_red.." Cannot be activated while jumping or falling.\n"
			..Dot_red.." Stops at enemies with armor base types Carapace and Unyielding, at Monstrosities, and at Captains/Twins Void shield.",
		ru = "Вы совершаете рывок вперёд, с огромной силой отбрасывая врагов, накладывая на них "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." и получая на {duration:%s} секунд:\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки и\n"
			..Dot_green.." {move_speed:%s} к скорости движения.\n"
			.."\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			.."\n"
			.."Рывок:\n"
			..Dot_nc.." Дистанция: "..CNumb("12", "n_12_rgb").." метров.\n"
			..Dot_red.." Рывок прекращается при столкновении с врагами в панцирной броне, несгибаемыми врагами, чудовищами и с пустотным щитом капитанов/близнецов.", -- Рывок быка -- руоф Бычий натиск
		-- fr = "Chargez vers l'avant avec une grande force, repoussant les ennemis et les faisant "..COLORS_KWords_fr.Staggering_rgb_fr..". Gagnez {attack_speed:%s} de vitesse d'attaque et {move_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes. La charge est arrêtée en cas de collision avec des ennemis en armure carapace, implacables et des monstruosités.\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_0_rgb_fr,
	},
	--[+ ABILITY 1 - Indomitable +]--	26.03.2026
	["loc_talent_ogryn_bull_rush_distance_desc"] = { -- attack_speed: +25%, move_speed: +25%, duration: 5, cooldown: 30, talent_name: Bull Rush, distance: 100%, s->seconds, +colors
		en = "Charge forward with great force, knocking back Enemies, "..CKWord("Staggering", "Staggering_rgb").." them and gain for {duration:%s} seconds:\n"
			..Dot_green.." {attack_speed:%s} Attack Speed and\n"
			..Dot_green.." {move_speed:%s} Movement Speed.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			.."Charge:\n"
			..Dot_nc.." Range: "..CNumb("24", "n_24_rgb").." meters.\n"
			..Dot_nc.." Can be canceled by backwards movement input.\n"
			..Dot_nc.." Can slightly change direction while charging.\n"
			..Dot_nc.." Charges through Captains/Twins Void shield but applies "..CKWord("Stagger", "Stagger_rgb").."  only without Void shield.\n"
			..Dot_red.." Cannot be activated while jumping or falling.\n"
			..Dot_red.." Stops only at Monstrosities.",
		ru = "Вы совершаете рывок вперёд, с огромной силой отбрасывая врагов, накладывая на них "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." и получая на {duration:%s} секунд:\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки и\n"
			..Dot_green.." {move_speed:%s} к скорости движения.\n"
			.."\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			..Dot_green.." Это улучшенная версия {talent_name:%s}.\n"
			.."\n"
			.."Рывок:\n"
			..Dot_nc.." Дистанция: "..CNumb("24", "n_24_rgb").." метра.\n"
			..Dot_nc.." Можно отменить движением назад.\n"
			..Dot_nc.." Можно немного менять направление во время рывка.\n"
			..Dot_nc.." Проходит через пустотный щит капитанов/близнецов, но накладывает "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." только без пустотного щита.\n"
			..Dot_red.." Нельзя активировать в прыжке или при падении.\n"
			..Dot_red.." Рывок прекращается только при столкновении с чудовищами.", -- Неукротимый -- руоф Неукротимость
		-- fr = "Chargez vers l'avant avec une grande force, repoussant les ennemis et les faisant "..COLORS_KWords_fr.Staggering_rgb_fr..". Gagnez {attack_speed:%s} de vitesse d'attaque et {move_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes. La charge est arrêtée uniquement en cas de collision avec des monstruosités.\nTemps de recharge de base : {cooldown:%s} secondes.\nCeci est une version augmentée de {talent_name:%s} avec une distance de charge accrue de {distance:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_rgb_fr,
	},
	--[+ ABILITY 1-1 - Trample +]--	26.03.2026
	["loc_talent_ogryn_ability_charge_trample_desc"] = { -- talent_name: Bull Rush, damage: +2.5%, duration: 10, stack: 20, s->seconds, +colors
		en = "For each Enemy hit by {talent_name:%s} you gain a Stack of "..CKWord("Trample", "Trample_rgb")..".\n"
			.."\n"
			.."Each Stack provides for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Maximum {stack:%s} Stacks.",
		ru = "За каждого врага, задетого способностью {talent_name:%s}, вы получаете заряд "..CKWord("Топота", "Trample_rgb_ru")..".\n"
			.."\n"
			.."Каждый заряд даёт на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Максимум {stack:%s} зарядов.", -- Топот -- руоф Топанье
		-- fr = "Pour chaque ennemi touché par {talent_name:%s}, vous gagnez un cumul de "..COLORS_KWords_fr.Trample_rgb_fr.." qui augmente les "..COLORS_KWords_fr.Damage_rgb_fr.." de base de {damage:%s} pendant {duration:%s} secondes. Jusqu'à {stack:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_2_rgb_fr,
	},
	--[+ ABILITY 1-2 - Stomping Boots +]--	26.03.2026
	["loc_talent_ogryn_toughness_on_bull_rush_desc"] = { -- toughness: +10%, ability: Indomitable, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished per Enemy Hit with {ability:%s}.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за каждого врага, задетого способностью {ability:%s}.", -- Топающие сапоги -- руоф Сокрушающий топот
		-- fr = "{toughness:%s} de la "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère par ennemi touché avec {ability:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_1_rgb_fr,
	},
	--[+ ABILITY 1-3 - Pulverise +]--	26.03.2026
	["loc_talent_ogryn_bleed_on_bull_rush_desc"] = { -- stacks: 5, ability: Indomitable, +colors
		en = Dot_green.." {stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." are applied to enemies hit by {ability:%s}.\n"
			.."\n"
			..Dot_green.." Can apply "..CKWord("Bleed", "Bleed_rgb").." through Bulwark shield and Captains/Twins Void shield.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			.."\n"
			..Dot_green.." Above average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Low armor "..CKWord("Damage", "Damage_rgb").." vs Carapace.",
		ru = Dot_green.." {stacks:%s} зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается на врагов, задетых способностью {ability:%s}.\n"
			.."\n"
			..Dot_green.." Может накладывать "..CKWord("кровотечение", "krovotechenie_rgb_ru").." через щит бастиона и пустотный щит капитанов/близнецов.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			.."\n"
			..Dot_green.." Выше среднего "..CKWord("урон", "uron_rgb_ru").." по броне.\n"
			..Dot_red.." Низкий "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.", -- Разбрызгивание -- Крошилово
		-- fr = "{stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sont appliqués aux ennemis touchés par {ability:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_3_rgb_fr,
	},
	--[+ ABILITY 2 - Loyal Protector +]--	26.03.2026
	["loc_ability_ogryn_taunt_shout_new_desc"] = { -- radius: 12, duration: 15, first_pulse: 3, second_pulse: 6, cooldown: 50, m->meters, s->seconds
		en = CKWord("Taunt", "Taunt_rgb").." Enemies within {radius:%s} meters, making them Attack only you for {duration:%s} seconds.\n"
			.."The effect Repeats after {first_pulse:%s} seconds, and after {second_pulse:%s} seconds.\n"
			.."\n"
			.."Base Cooldown: {cooldown:%s} seconds.",
		ru = "Вы кричите, "..CKWord("провоцируя", "Taunting_rgb_ru").." врагов в радиусе {radius:%s} метров, заставляя их атаковать только вас в течение {duration:%s} секунд.\n"
			.."Эффект повторяется через {first_pulse:%s} и через {second_pulse:%s} секунд.\n"
			.."\n"
			.."Восстанавливается: {cooldown:%s} секунд.", -- Верный защитник
		-- fr = "Provoque les ennemis dans un rayon de {radius:%s} mètres, les obligeant à ne s'attaquer qu'à vous pendant {duration:%s} secondes. L'effet se repète après {first_pulse:%s} secondes, et une seconde fois après {second_pulse:%s} secondes.\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_rgb_fr, -- Protecteur Loyal
	},
	--[+ ABILITY 2-1 - Valuable Distraction +]--	26.03.2026
	["loc_talent_ogryn_taunt_damage_taken_increase_description"] = { -- talent_name: Loyal Protector, base_damage: +20%, +colors
		en = "Enemies affected by {talent_name:%s} are debuffed for "..CNumb("15", "n_15_rgb").." seconds:\n"
			..Dot_green.." {base_damage:%s} Base "..CKWord("Damage", "Damage_rgb").." Taken from all sources.\n"
			.."\n"
			..Dot_red.." Enemies "..CKWord("Taunted", "Taunted_rgb").." by the means of "..CKWord("Attention Seeker", "Att_Seeker_rgb").." do not get this debuff.",
		ru = "Враги, которых "..CKWord("спровоцировала", "Taunted_rgb_ru").." способность {talent_name:%s}, получают ослабление на "..CNumb("15", "n_15_rgb").." секунд:\n"
			..Dot_green.." {base_damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." из любого источника.\n"
			.."\n"
			..Dot_red.." Враги, "..CKWord("спровоцированные", "Taunt_rgb_ru").." талантом "..CKWord("Провокатор", "Att_Seeker_rgb_ru")..", не получают это ослабление.", -- Отвлекающий манёвр -- руоф Ценное отвлечение
		-- fr = "{base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." provenant de toutes les sources pour les ennemis affectés par {talent_name:%s} pendant "..CNumb("15", "n_15_rgb").." secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_1_rgb_fr,
	},
	--[+ ABILITY 2-2 - No Pain! +]--	26.03.2026
	["loc_talent_ogryn_taunt_restore_toughness_new_desc"] = { -- talent_name: Loyal Protector, tougness: 10%, toughness_per_hit: 0.5%, max: 10%, duration: 3, +colors
		en = "{talent_name:%s} and its Repeats, replenish:\n"
			..Dot_green.." {tougness:%s} "..CKWord("Toughness", "Toughness_rgb").." instantly.\n"
			.."\n"
			.."Additionally, any enemy hit by {talent_name:%s}"..CNumb("'s", "n__s_rgb").." shouts grants Stacks.\n"
			..Dot_nc.." Up to "..CNumb("20", "n_20_rgb").." Stacks.\n"
			..Dot_nc.." Stacks last for "..CNumb("3.25", "n_3_25_rgb").." seconds.\n"
			.."\n"
			.."Per stack, replenishes:\n"
			..Dot_green.." {toughness_per_hit:%s} "..CKWord("Toughness", "Toughness_rgb").." per second.\n"
			..Dot_nc.." Up to {max:%s} total over {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "{talent_name:%s} и его повторы восстанавливают:\n"
			..Dot_green.." {tougness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." мгновенно.\n"
			.."\n"
			.."Дополнительно каждый задетый способностью {talent_name:%s} враг даёт заряды.\n"
			..Dot_nc.." До "..CNumb("20", "n_20_rgb").." зарядов.\n"
			..Dot_nc.." Заряды длятся "..CNumb("3.25", "n_3_25_rgb").." секунды.\n"
			.."\n"
			.."За каждый заряд восстанавливается:\n"
			..Dot_green.." {toughness_per_hit:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду.\n"
			..Dot_nc.." Вплоть до максимум {max:%s} за {duration:%s} секунды.\n"
			.."\n"
			..CPhrs("Can_be_refr"), -- Боли нет!
		-- fr = "Régénere {tougness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par {talent_name:%s} et ses répétitions. Plus {toughness_per_hit:%s} "..COLORS_KWords_fr.Toughness_rgb_fr.." toute les "..CNumb("1", "n_1_rgb").." second par ennemi pendant {duration:%s} secondes, jusqu'à {max:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_2_rgb_fr, -- Sans douleur!
	},
	--[+ ABILITY 2-3 - Go again! +]--	26.03.2026
	["loc_talent_ogryn_taunt_stagger_cd_description"] = { -- cooldown_reduction: 2.0%, talent_name: Loyal Protector, +colors
		en = CKWord("Staggering", "Staggering_rgb").." an Enemy replenishes:\n"
			..Dot_green.." {cooldown_reduction:%s} "..CKWord("Cooldown", "Cd_rgb").." of your {talent_name:%s}.",
		ru = CKWord("Ошеломление", "Oshelomlenie_rgb_ru").." врага восполняет:\n"
			..Dot_green.." {cooldown_reduction:%s} "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." {talent_name:%s}.", -- Давай по новой!
		-- fr = "Faire "..COLORS_KWords_fr.Staggering_rgb_fr.." un ennemi régénère {cooldown_reduction:%s} du "..COLORS_KWords_fr.Cd_rgb_fr.." de votre {talent_name:%s}.", -- Encore une fois! --..TALENTS_Enh_desc2.ED_OGR_Ability_2_3_rgb_fr
	},
	--[+ ABILITY 3 - Point-Blank Barrage +]--	26.03.2026
	["loc_talent_ogryn_combat_ability_special_ammo_replenish_desc"] = { -- ranged_attack_speed: +25%, reload_speed: +65%, reduced_move_penalty: 50%, ammo_return_percent: 50%, damage: +15%, duration: 10, cooldown: 80, s->seconds, +colors
		en = "Swaps to your Ranged Weapon, reloads it, and grants for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} Close Range "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {ranged_attack_speed:%s} Rate of Fire,\n"
			..Dot_green.." {reload_speed:%s} Reload Speed and\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{reduced_move_penalty:%s} Braced Movement Speed penalty.\n"
			.."\n"
			..Dot_green.." {ammo_return_percent:%s} of Ammo consumed while active is returned to your Reserve once finished.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			.."Close Range "..CKWord("Damage", "Damage_rgb").." buff is maximum within "..CNumb("12.5", "n_12_5_rgb").." meters, then decreases linearly until it loses its effect at "..CNumb("30", "n_30_rgb").." meters:\n"
			.."_______________________________\n"
			.."Distance ("..CNumb("m", "n_meter_rgb").."):   "..CNumb("1", "n_1_rgb").."| "..CNumb("12.5", "n_12_5_rgb").."|   "..CNumb("15", "n_15_rgb").."|  "..CNumb("20", "n_20_rgb").."|   "..CNumb("25", "n_25_rgb").."| "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").." ("..CNumb("%", "pc_rgb").."):  "..CNumb("15", "n_15_rgb").."|    "..CNumb("15", "n_15_rgb").."| "..CKWord("~13", "n__13_rgb").."|   "..CKWord("~9", "n__9_rgb").."|   "..CKWord("~4", "n__4_rgb").."|   "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n",
		ru = "Вы переключаетесь на оружие дальнего боя и перезаряжаете его и получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на ближней дистанции,\n"
			..Dot_green.." {ranged_attack_speed:%s} к скорострельности,\n"
			..Dot_green.." {reload_speed:%s} к скорости перезарядки и\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{reduced_move_penalty:%s} от штрафа к скорости движения при прицеливании.\n"
			.."\n"
			..Dot_green.." {ammo_return_percent:%s} патронов, потраченных во время действия способности, возвращается в резерв после окончания действия.\n"
			.."\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			.."\n"
			.."Усиление "..CKWord("урона", "urona_rgb_ru").." на ближней дистанции максимально в пределах "..CNumb("12.5", "n_12_5_rgb").." метров, затем уменьшается линейно, пока не теряет эффект на "..CNumb("30", "n_30_rgb").." метрах:\n"
			.."_______________________________\n"
			.."Дистанция ("..CNumb("м", "n_metr_rgb").."):  "..CNumb("1", "n_1_rgb").."| "..CNumb("12.5", "n_12_5_rgb").."|  "..CNumb("15", "n_15_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("25", "n_25_rgb").."| "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").." ("..CNumb("%", "pc_rgb").."):          "..CNumb("15", "n_15_rgb").."|    "..CNumb("15", "n_15_rgb").."| "..CKWord("~13", "n__13_rgb").."| "..CKWord("~9", "n__9_rgb").."|  "..CKWord("~4", "n__4_rgb").."|   "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n", -- Беспощадный обстрел в упор -- руоф Решительный натиск
		-- fr = "Échange et recharge votre arme à distance. Pendant les {duration:%s} secondes suivantes, vous avez une vitesse de tir de {ranged_attack_speed:%s}, une vitesse de recharge de {reload_speed:%s}, des pénalités de vitesse de déplacement réduites de {reduced_move_penalty:%s}, et vous gagnez {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à courte portée.\nTemps de recharge de base {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_rgb_fr, -- Barrage à bout portant
	},
	--[+ ABILITY 3-1 - Bullet Bravado +]--	26.03.2026
	["loc_talent_ogryn_special_ammo_toughness_on_shot_and_reload_desc"] = { -- ability: Point-Blank Barrage, toughness: +2%, toughness_reload: +10%, +colors
		en = "While {ability:%s} is active, replenish:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per Shot fired and\n"
			..Dot_green.." {toughness_reload:%s} "..CKWord("Toughness", "Toughness_rgb").." per Reload.",
		ru = "Пока активна способность {ability:%s}, восполняется:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждый сделанный выстрел и\n"
			..Dot_green.." {toughness_reload:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждую перезарядку.", -- Бравада стрелка -- руоф Лихая пуля
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère à chaque tir et {toughness_reload:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." à chaque rechargement pendant que {ability:%s} est actif."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_1_rgb_fr, -- Bravade de la balle
	},
	--[+ ABILITY 3-2 - Hail of Fire +]--	26.03.2026
	["loc_talent_ogryn_special_ammo_armor_pen_new_desc"] = { 
		en = "While {ability:%s} is active your Ranged attacks gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {rending_multiplier:%s} "..CKWord("Rending", "Rending_rgb")..".\n"
			.."\n"
			..CNote("Rend_note"),
		ru = "Пока активна способность {ability:%s}, ваши атаки дальнего боя получают:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {rending_multiplier:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони.\n"
			.."\n"
			..CNote("Rend_note"), -- Град огня -- руоф Слава пламени
		-- fr = "{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." et {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à vos attaques à distance pendant que {ability:%s} est actif."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_2_rgb_fr,
	},
	--[+ ABILITY 3-3 - Light 'em Up +]--	26.03.2026
	["loc_talent_ogryn_special_ammo_fire_shots_new_desc"] = { -- stacks: 2, ability: Point-Blank Barrage, +colors
		en = "While {ability:%s} is active, Ranged Attacks applied:\n"
			..Dot_green.." {stacks:%s} Stacks of "..CKWord("Burn", "Burn_rgb")..".\n"
			..Dot_nc.." Maximum {max_stacks:%s} Stacks.",
		ru = "Пока активна способность {ability:%s}, атаки дальнего боя накладывают:\n"
			..Dot_green.." {stacks:%s} заряда "..CKWord("горения", "gorenia_rgb_ru")..".\n"
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.",-- ru = CNumb("+", "n_plus_rgb").."{stacks:%s} заряда "..CKWord("горения", "gorenia_rgb_ru").." накладывают ваши выстрелы во время действия способности {ability:%s}. Максимум {max_stacks:%s} зарядов."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_3_rgb"), -- Задай жару -- руоф Зададим жару
		-- fr = "Les attaques à distance appliquent {stacks:%s} cumuls de "..COLORS_KWords_fr.Burn_rgb_fr.." pendant que {ability:%s} est actif. Jusqu'à un maximum de {max_stacks:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_3_rgb_fr, -- Allumez-les!
	},
--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ KEYSTONE 1 - Heavy Hitter +]--	26.03.2026
	["loc_talent_ogryn_passive_heavy_hitter_new_desc"] = { -- damage: +5%, duration: 7.5, stacks: 5, s->seconds, +colors
		en = "Hitting enemies with Melee attacks grants:\n"
			..Dot_green.." Light attacks: "..CNumb("1", "n_1_rgb").." Stack,\n"
			..Dot_green.." Heavy attacks: {heavy_stacks:%s} Stacks.\n"
			..Dot_nc.." Up to {stacks:%s} Stacks.\n"
			.."\n"
			.."Each Stacks lasts {duration:%s} seconds and grants:\n"
			..Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_red.." Generates "..CNumb("1", "n_1_rgb").." or {heavy_stacks:%s} Stacks per swing, not per enemy hit.",
		ru = "Попадания по врагам атаками ближнего боя дают:\n"
			..Dot_green.." Лёгкая атака: "..CNumb("1", "n_1_rgb").." заряд,\n"
			..Dot_green.." Тяжёлая атака: {heavy_stacks:%s} заряда.\n"
			..Dot_nc.." До {stacks:%s} зарядов.\n"
			.."\n"
			.."Каждый заряд длится {duration:%s} секунд и даёт:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя.\n"
			.."\n"
			..Dot_red.." Генерирует "..CNumb("1", "n_1_rgb").." или {heavy_stacks:%s} заряда за удар, а не за каждого задетого врага.", -- Тяжёлый нападающий -- руоф Тяжеловес
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée pendant {duration:%s} secondes lors d'une attaque réussie. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_rgb_fr, -- Frappe lourde
	},
	--[+ KEYSTONE 1-1 - Don't Feel a Thing +]--	26.03.2026
	["loc_talent_ogryn_passive_heavy_hitter_tdr_desc"] = { -- talent_name: Heavy Hitter, stacks: 5, attack_speed: +10%
		en = "{talent_name:%s} also grants, per Stack:\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..". Up to "..CNumb("+", "n_plus_rgb")..CNumb("10%", "pc_10_rgb")..".",
		ru = "{talent_name:%s} также даёт за каждый заряд:\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..". До "..CNumb("+", "n_plus_rgb")..CNumb("10%", "pc_10_rgb")..".", -- Не чувствую ничего
		-- fr = "{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Tghns_dmg_red_rgb_fr.." par cumuls de {talent_name:%s}.", -- Rien senti
	},
	--[+ KEYSTONE 1-2 - Just Getting Started +]--	26.03.2026
	["loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed_description"] = { -- talent_name: Heavy Hitter, stacks: 5, attack_speed: +10%
		en = "While {talent_name:%s} is at {stacks:%s} Stacks, gain for "..CNumb("7.5", "n_7_5_rgb").." seconds:\n"
			..Dot_green.." {attack_speed:%s} Attack Speed.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "Пока у таланта {talent_name:%s} {stacks:%s} зарядов, вы получаете на "..CNumb("7.5", "n_7_5_rgb").." секунд:\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки.\n"
			.."\n"
			..CPhrs("Can_be_refr"), -- Я только начал -- руоф Лишь начало!
		-- fr = "{attack_speed:%s} Vitesse d'attaque tant que {talent_name:%s} est à {stacks:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_2_rgb_fr, -- Rien que le début
	},
	--[+ KEYSTONE 1-3 - Unstoppable +]--	26.03.2026
	["loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness_new_description"] = { -- talent_name: Heavy Hitter, stacks: 5, toughness_melee_replenish: +100%, +colors
		en = "{talent_name:%s} also grants, per Stack:\n"
			..Dot_green.." {melee_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment from Melee Kills.\n"
			.."\n"
			.."Increases Ogryn's base "..CNumb("5%", "pc_5_rgb").." of Maximum "..CKWord("Toughness", "Toughness_rgb").." gained on Melee kill by {melee_toughness:%s} per Stack:\n"
			.."_______________________________\n"
			.."Stacks: "..CNumb("0", "n_0_rgb").."|     "..CNumb("1", "n_1_rgb").."|    "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|  "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|    "..CNumb("6", "n_6_rgb").."|     "..CNumb("7", "n_7_rgb").."| "..CNumb("8", "n_8_rgb").."\n"
			..CKWord("TGHN", "TGHN_rgb")..":  "..CNumb("5", "n_5_rgb").."| "..CNumb("5.8", "n_5_8_rgb").."| "..CNumb("6.5", "n_6_5_rgb").."| "..CNumb("7.3", "n_7_3_rgb").."| "..CNumb("8", "n_8_rgb").."| "..CNumb("8.8", "n_8_8_rgb").."| "..CNumb("9.5", "n_9_5_rgb").."|"..CNumb("10.3", "n_10_3_rgb").."|"..CNumb("11", "n_11_rgb").."\n"
			.."_______________________________\n"
			.."* rounded for brevity.\n",
		ru = "{talent_name:%s} также даёт за каждый заряд:\n"
			..Dot_green.." {melee_toughness:%s} восполнения "..CKWord("стойкости", "stoikosti_rgb_ru").." за убийства в ближнем бою.\n"
			.."\n"
			.."Увеличивает базовые "..CNumb("5%", "pc_5_rgb").." максимальной "..CKWord("стойкости", "stoikosti_rgb_ru")..", получаемой за убийство в ближнем бою, на {melee_toughness:%s} за каждый заряд:\n"
			.."_______________________________\n"
			.."Заряды:     "..CNumb("0", "n_0_rgb").."|    "..CNumb("1", "n_1_rgb").."|   "..CNumb("2", "n_2_rgb").."|  "..CNumb("3", "n_3_rgb").."| "..CNumb("4", "n_4_rgb").."|   "..CNumb("5", "n_5_rgb").."|   "..CNumb("6", "n_6_rgb").."|     "..CNumb("7", "n_7_rgb").."| "..CNumb("8", "n_8_rgb").."\n"
			..CKWord("Стойкость", "Stoikost_rgb_ru")..":"..CNumb("5", "n_5_rgb").."|"..CNumb("5.8", "n_5_8_rgb").."|"..CNumb("6.5", "n_6_5_rgb").."|"..CNumb("7.3", "n_7_3_rgb").."|"..CNumb("8", "n_8_rgb").."|"..CNumb("8.8", "n_8_8_rgb").."|"..CNumb("9.5", "n_9_5_rgb").."|"..CNumb("10.3", "n_10_3_rgb").."|"..CNumb("11", "n_11_rgb").."\n"
			.."_______________________________\n"
			.."* округлено для краткости.\n", -- Неудержимый -- руоф Неудержимость
		-- fr = "{melee_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée par les éliminations en mêlée par cumuls de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_3_rgb_fr, -- Instoppable
	},
	--[+ KEYSTONE 1-4 - Great Cleaver +]--	26.03.2026
	["loc_talent_ogryn_passive_heavy_hitter_cleave_desc"] = { -- talent_name: Heavy Hitter
		en = "{talent_name:%s} also grants, per Stack:\n"
			..Dot_green.." {cleave:%s} "..CKWord("Cleave", "Cleave_rgb")..".\n"
				.."\n"
				..CPhrs("Carap_cant_cleave"),
		ru = "{talent_name:%s} также даёт за каждый заряд:\n"
			..Dot_green.." {cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru").." врагов.\n"
			.."\n"
			..CPhrs("Carap_cant_clv"),
		-- fr = "{cleave:%s} de "..COLORS_KWords_fr.Cleave_rgb_fr.." par cumul de {talent_name:%s}.", -- Fouet de guerre
	},
	--[+ KEYSTONE 1-5 - Impactful +]--	26.03.2026
	["loc_talent_ogryn_passive_heavy_hitter_stagger_desc"] = { 
		en = "{talent_name:%s} also grants, per Stack:\n"
			..Dot_green.." {impact:%s} "..CKWord("Impact", "Impact_rgb")..". Up to "..CNumb("+", "n_plus_rgb")..CNumb("60%", "pc_60_rgb")..".\n"
			.."\n"
			..CNote("Impact_note"),
		ru = "{talent_name:%s} также даёт за каждый заряд:\n"
			..Dot_green.." {impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..". До "..CNumb("+", "n_plus_rgb")..CNumb("60%", "pc_60_rgb")..".\n"
			.."\n"
			..CNote("Impact_note"),
		-- fr = "{impact:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.."par cumul de {talent_name:%s}.", -- Impactant
	},
	--[+ KEYSTONE 2 - Feel No Pain +]--	26.03.2026
	["loc_talent_ogryn_carapace_armor_any_damage_desc"] = { -- stacks: 10, toughness_regen: +2.5%, damage_reduction: +2.5%, duration: 3, s->seconds, +colors
		en = "You are blessed with {stacks:%s} Stacks of "..CKWord("Feel No Pain", "Feel_no_pain_rgb")..".\n"
			.."\n"
			.."Each Stack grants:\n"
			..Dot_green.." {toughness_regen:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment and\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Reduction.\n"
			.."\n"
			..Dot_nc.." Regenerates "..CNumb("1", "n_1_rgb").." Stack every {duration:%s} seconds.\n"
			..Dot_red.." Taking "..CKWord("Damage", "Damage_rgb").." removes "..CNumb("1", "n_1_rgb").." Stack.\n"
			.."\n"
			..CPhrs("Dont_intw_coher_toughn"),
		ru = "Вы благословлены {stacks:%s} зарядами "..CKWord("Неболита", "Feel_no_pain_rgb_ru")..".\n"
			.."\n"
			.."Каждый заряд даёт:\n"
			..Dot_green.." {toughness_regen:%s} восполнения "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
			..Dot_green.." {damage_reduction:%s} сопротивления "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Восстанавливает "..CNumb("1", "n_1_rgb").." заряд каждые {duration:%s} секунды.\n"
			..Dot_red.." Получение "..CKWord("урона", "uronа_rgb_ru").." снимает "..CNumb("1", "n_1_rgb").." заряд.\n"
			.."\n"
			..CPhrs("Dont_intw_coher_toughn"), -- Неболит
		-- fr = "Vous recevez {stacks:%s} cumuls de "..COLORS_KWords_fr.Feel_no_pain_rgb_fr..". Chaque cumul accorde :\n{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." et\n{damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr..".\nPrendre des "..COLORS_KWords_fr.Damage_rgb_fr.." retire un cumul. Les cumuls sont restaurées toutes les {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_rgb_fr,
	},
	--[+ KEYSTONE 2-1 - Pained Outburst +]--	26.03.2026
	["loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks_new_desc"] = { -- talent_name: Feel No Pain, toughness_replenish: +20%, cooldown: 30, s->seconds, +colors
		en = "If not on "..CKWord("Cooldown", "Cd_rgb").." and if when {talent_name:%s} reaches {stacks:%s} Stacks or below, you push back Enemies and replenish:\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			..Dot_nc.." This effect can occur once every {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Also creates an explosion that deals no "..CKWord("Damage", "Damage_rgb").." but "..CKWord("Staggers", "Staggers_rgb").." surrounding enemies.\n"
			.."\n"
			.."The explosion:\n"
			..Dot_nc.." Radius: "..CNumb("2.5", "n_2_5_rgb").." meters.\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all enemies except for Mutants, Monstrosities, and Captains/Twins.",
		ru = "Если {talent_name:%s} не на "..CKWord("восстановлении", "vosstanovlenii_rgb_ru").." и если у вас {stacks:%s} зарядов или меньше, вы отталкиваете врагов и восполняете:\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Этот эффект срабатывает раз в {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_green.." Также создаётся взрыв, который не наносит "..CKWord("урона", "urona_rgb_ru")..", но "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." окружающих врагов.\n"
			.."\n"
			.."Взрыв:\n"
			..Dot_nc.." Радиус: "..CNumb("2.5", "n_2_5_rgb").." метра.\n"
			..Dot_green.." "..CKWord("Ошеломляет", "Oshelomlaet_rgb_ru").." всех врагов, кроме мутантов, чудовищ и капитанов/близнецов.", -- Вспышка боли
		-- fr = "{toughness_replenish:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée quand {talent_name:%s} atteint {stacks:%s} cumul ou moins. Cela crée aussi une explosion qui ne cause pas de dégâts mais fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis environnants.\n\nCet effet peut se produire une fois toutes les {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_1_rgb_fr, -- Éclat de douleur
	},
	--[+ KEYSTONE 2-2 - Strongest! +]--	26.03.2026
	["loc_talent_ogryn_carapace_armor_add_stack_on_push_desc"] = { -- talent_name: Feel No Pain
		en = "Pushing enemies restores:\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." Stack of {talent_name:%s}.\n"
			.."\n"
			..Dot_red.." Restores "..CNumb("1", "n_1_rgb").." Stack per Push, regardless of enemies hit.",
		ru = "Отталкивание врагов восстанавливает:\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." заряд таланта {talent_name:%s}.\n"
			.."\n"
			..Dot_red.." Вы получаете только "..CNumb("1", "n_1_rgb").." заряд за отталкивание, независимо от количества задетых врагов.", -- Сильнейший!
		-- fr = CNumb("1", "n_1_rgb").." cumul de {talent_name:%s} est restaurée en poussant les ennemis."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_2_rgb_fr, -- Le plus fort!
	},
	--[+ KEYSTONE 2-3 - Toughest! +]--	26.03.2026
	["loc_talent_ogryn_carapace_armor_more_toughness_desc"] = { -- talent_name: Feel No Pain, toughness_regen: +2.5%, +colors
		en = "{talent_name:%s} grants, per Stack:\n"
			..Dot_green.." {toughness_regen:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment.\n"
			.."\n"
			..CPhrs("Dont_intw_coher_toughn"),
		ru = "{talent_name:%s} даёт за каждый заряд:\n"
			..Dot_green.." {toughness_regen:%s} восполнения "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Dont_intw_coher_toughn"), -- Стойкий! -- руоф Самый выносливый!
		-- fr = "{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." par cumul est accordée par {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_3_rgb_fr, -- Le plus résistant!
	},
	--[+ KEYSTONE 3 - Burst Limiter Override +]--	26.03.2026
	["loc_talent_ogryn_blo_new_alt_desc"] = { -- proc_chance: 8%, +colors
		en = Dot_green.." {proc_chance:%s} chance of triggering "..CKWord("Lucky Bullet", "Lucky_bullet_rgb").." and not consuming Ammo on Ranged Attacks.\n"
			.."\n"
			.."In addition, gain:\n"
			..Dot_green.." {ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." on Ranged Kills.\n"
			..Dot_nc.." Maximum {stacks:%s} Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..Dot_green.." Can generate multiple Stacks when "..CKWord("Cleaving", "Cleaving_rgb").." or on explosions.",
		ru = Dot_green.." {proc_chance:%s} шанс получить "..CKWord("Счастливую пулю", "Lucky_bullet_rgb_ru").." не потратить боеприпас при выстреле.\n"
			.."\n"
			.."Дополнительно вы получаете:\n"
			..Dot_green.." {ranged_damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." при дальнобойных убийствах.\n"
			..Dot_nc.." Максимум {stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..Dot_green.." Может генерировать несколько зарядов если несколько врагов "..CKWord("простреливается", "prostrelivaetsa_rgb_ru").." или задевается взрывом.", -- Обход ограничителя очереди -- руоф Взлом ограничителя взрыва
		-- fr = "{proc_chance:%s} de chance de déclencher "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." et de ne pas consommer de munitions lors des attaques à distance.\n\nDe plus, vous gagnez {ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance lors d'une élimination à distance. Se cumuls {stacks:%s} fois. Dure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_rgb_fr, -- Obstruction du limiteur de tir
	},
	--[+ KEYSTONE 3-1 - Back Off! +]--	26.03.2026
	["loc_talent_ogryn_blo_melee_desc"] = { -- cooldown_reduction: +200%, duration: 2, s->seconds, +colors
		en = "On Killing Melee Attack gain:\n"
			..Dot_green.." {chance:%s} chance to trigger "..CKWord("Lucky Bullet", "Lucky_bullet_rgb").." on next Shot.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..Dot_red.." Gain "..CNumb("1", "n_1_rgb").." Stack per Swing, regardless of enemies killed.",
		ru = "При убийстве атакой ближнего боя вы получаете:\n"
			..Dot_green.." {chance:%s} к шансу получить "..CKWord("Счастливую пулю", "Lucky_bullet_rgb_ru").." при следующем выстреле.\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..Dot_red.." Вы получаете "..CNumb("1", "n_1_rgb").." заряд за удар, независимо от количества убитых врагов.", -- Максимальная огневая мощь
		-- fr = "{chance:%s} de chance de déclancher une "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." lors de votre prochain tir lors d'une élimination en mélée. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_1_rgb_fr, -- Reculez!
	},
	--[+ KEYSTONE 3-2 - Maximum Firepower +]--	26.03.2026
	["loc_talent_ogryn_leadbelcher_grant_cooldown_reduction_desc"] = { -- cooldown_reduction: +200%, duration: 2, s->seconds, +colors
		en = "When "..CKWord("Lucky Bullet", "Lucky_bullet_rgb").." triggers, gain for {duration:%s} seconds:\n"
			..Dot_green.." {cooldown_reduction:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Reduction.",
		ru = "Когда активируется "..CKWord("Счастливая пуля", "Lucky_bullt_rgb_ru")..", вы получаете на {duration:%s} секунды:\n"
			..Dot_green.." {cooldown_reduction:%s} к сокращению времени "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru")..".", -- Максимальная огневая мощь
		-- fr = "{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pendant {duration:%s} secondes lorsque "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est déclenché."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_2_rgb_fr, -- Maximale puissance de feu
	},
	--[+ KEYSTONE 3-3 - Good Shootin' +]--	26.03.2026
	["loc_talent_ogryn_critical_leadbelcher_desc"] = { -- +colors
		en = "The shot that triggers "..CKWord("Lucky Bullet", "Lucky_bullet_rgb").." is a guaranteed "..CKWord("Critical", "Critical_rgb").." (if it Hits).",
		ru = "Выстрел активировавший "..CKWord("Счастливую пулю", "Lucky_bullet_rgb_ru").." гарантированно будет "..CKWord("критическим выстрелом", "krit_vystrelom_rgb_ru").." (если попадёт).", -- Хорошая стрельба -- руоф Хороший выстрел
		fr = "Le tir qui déclenche "..CKWord("Balle chanceuse", "Lucky_bullet_rgb_fr").." est un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." garanti (s'il touche).", -- Bonne visée
	},
	--[+ KEYSTONE 3-4 - Heat of Battle +]--	26.03.2026
	["loc_talent_ogryn_blo_fire_rate_desc"] = { -- proc_chance: 12%, +colors
		en = "{talent_name:%s} also grants, per Stack:\n"
			..Dot_green.." {fire_rate:%s} Fire Rate.",
		ru = "{talent_name:%s} также даёт за каждый заряд:\n"
			..Dot_green.." {fire_rate:%s} к скорострельности.", -- Горячка боя
		-- fr = "{fire_rate:%s} de vitesse de tir par cumul de {talent_name:%s}.", -- Chaleur de la bataille
	},
	--[+ KEYSTONE 3-5 - Bulletstorm +]--	26.03.2026
	["loc_talent_ogryn_blo_ally_ranged_buffs_desc"] = { -- proc_chance: 12%, +colors
		en = "{ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." to you and Allies in "..CKWord("Coherency", "Coherency_rgb").." on "..CKWord("Lucky Bullet", "Lucky_bullet_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_abil"),
		ru = "{ranged_damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").." при срабатывании "..CKWord("Счастливой пули", "Lucky_bllt_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_abil"),
		-- fr = "{ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance pour vous et vos alliés en syntonie lors d'une "..COLORS_KWords_fr.Lucky_bullet_rgb_fr..". Dure {duration:%s} secondes..", -- Encore plus de contournement du limiteur de tir!
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Lynchpin +]--	26.03.2026
	["loc_talent_ogryn_coherency_toughness_increase_desc"] = { -- toughness_multiplier: +50%, +colors
		en = Dot_green.." {toughness_multiplier:%s} "..CKWord("Coherency", "Coherency_rgb").." "..CKWord("Toughness", "Toughness_rgb").." Regeneration.",
		ru = Dot_green.." {toughness_multiplier:%s} к восполнению "..CKWord("стойкости", "stoikosti_rgb_ru").." в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Опора -- руоф Переломный момент
		-- fr = "{toughness_multiplier:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_7_rgb_fr, -- Opérateur
	},
	--[+ Passive 2 - Heavyweight +]--	26.03.2026
	["loc_talent_ogryn_ogryn_fighter_desc"] = { -- damage: +30%, damage_reduction: +30%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." against Bulwarks, Crushers, Pack Master, Plague Ogryns and Reapers.\n"
			.."\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Reduction against the same.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против бастионов, загонщиков, крушителей, чумных огринов и жнецов.\n"
			.."\n"
			..Dot_green.." {damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." от этих же врагов.", -- Тяжеловес
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les Remparts, Broyeurs, Ogryns de la Peste et Fauchers. Vous recevez également {damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les mêmes ennemis.", -- Poid Lourd
	},
	--[+ Passive 3 - Steady Grip +]--	26.03.2026
	["loc_talent_ogryn_toughness_regen_while_bracing_or_shooting_desc"] = { -- toughness_regen: +12.5%, +colors
		en = "While shooting or bracing your Ranged weapon, you gain:\n"
			..Dot_green.." {toughness_regen:%s} "..CKWord("Toughness", "Toughness_rgb").." Regeneration.\n"
			.."\n"
			..CPhrs("Dont_intw_coher_toughn"),
		ru = "Пока вы стреляете или целитесь, вы получаете:\n"
			..Dot_green.." {toughness_regen:%s} к восполнению "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Dont_intw_coher_toughn"), -- Крепкий хват -- руоф Крепкая хватка
		-- fr = "{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors de la mis en joue de votre arme à distance.", -- Poigne ferme
	},
	--[+ Passive 4 - Smash 'Em! +]--	26.03.2026
	["loc_talent_ogryn_toughness_on_single_heavy_new_desc"] = { -- toughness: 20%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished after hitting a single Enemy with a Melee Attack.\n"
			.."\n"
			..Dot_green.." {heavy_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." if it is a Heavy Attack.\n"
			.."\n"
			..Dot_nc.." The Melee Special actions of Grenadier Gauntlet (Melee part), Rumbler, Twin-Linked Stubbers, and Kickback are considered Heavy attacks.\n"
			..Dot_nc.." The Melee Special action of Ripper Guns is a Light attack.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восполняется после попадания по одному врагу атакой ближнего боя.\n"
			.."\n"
			..Dot_green.." {heavy_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восполняется после тяжёлой атаки.\n"
			.."\n"
			..Dot_nc.." Специальные действия ближнего боя гранатомётной перчатки (часть ближнего боя), гранатомёта, спаренного тяжёлого стаббера и отбойника считаются тяжёлыми атаками.\n"
			..Dot_nc.." Специальное действие ближнего боя дробовика-потрошителя считается лёгкой атакой.", -- Круши их! -- руоф Вдарь им!
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère après avoir frappé un seul ennemi avec une attaque de mêlée et {heavy_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." si c'est une attaque de mélée puissante.", -- Ecrabouille les
	},
	--[+ Passive 5 - The Best Defence +]--	26.03.2026
	["loc_talent_ogryn_toughness_on_multiple_new_desc"] = { -- toughness: 20%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished after hitting multiple Enemies with a single Melee Attack.\n"
			.."\n"
			..Dot_green.." {heavy_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." if it is a Heavy Attack.\n"
			.."\n"
			..Dot_nc.." The Melee Special actions of Grenadier Gauntlet (Melee part), Rumbler, Twin-Linked Stubbers, and Kickback are considered Heavy attacks.\n"
			..Dot_nc.." The Melee Special action of Ripper Guns is a Light attack.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восполняется после попадания по нескольким врагам одной атакой ближнего боя.\n"
			.."\n"
			..Dot_green.." {heavy_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восполняется после тяжёлой атаки.\n"
			.."\n"
			..Dot_nc.." Специальные действия ближнего боя гранатомётной перчатки (часть ближнего боя), гранатомёта, спаренного тяжёлого стаббера и отбойника считаются тяжёлыми атаками.\n"
			..Dot_nc.." Специальное действие ближнего боя дробовика-потрошителя считается лёгкой атакой.", -- Лучшая защита
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère après avoir touché plusieurs ennemis avec une seule attaque de mêlée et {heavy_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." si c'est une attaque de mélée puissante.", -- La meilleure défense
	},
	--[+ Passive 6 - Furious +]--	26.03.2026
	["loc_talent_ogryn_damage_per_enemy_hit_previous_new_desc"] = { -- damage: +2.5%, +colors
		en = "Hitting enemies with a Melee attack grants Stacks, up to "..CNumb("10", "n_10_rgb")..".\n"
			.."\n"
			.."On next Melee attack you gain, per Stack:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..", up to "..CNumb("+", "n_plus_rgb")..CNumb("30%", "pc_30_rgb")..".\n"
			.."\n"
			..Dot_nc.." Melee special actions of Ripper Guns, Grenadier Gauntlet (Melee part), Rumbler, Twin-Linked Stubbers, and Kickback can also proc this Talent.",
		ru = "Нанесение ударов врагам в ближнем бою даёт заряды, вплоть до "..CNumb("10", "n_10_rgb")..".\n"
			.."\n"
			.."При следующей атаке ближнего боя вы получаете, за каждый заряд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..", до "..CNumb("+", "n_plus_rgb")..CNumb("30%", "pc_30_rgb").." к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Специальные действия ближнего боя дробовика-потрошителя, гранатомётной перчатки (часть ближнего боя), гранатомёта, спаренного тяжёлого стаббера и отбойника также могут активировать этот талант.", -- Разъярённый -- руоф Разъяренный
		-- fr = "Vous gagnez "..CNumb("1", "n_1_rgb").." cumul de {damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." par ennemis touchez durant une attaque de mélée unique. Jusqu'à "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." de "..COLORS_KWords_fr.Damage_rgb_fr.." à "..CNumb("10", "n_10_rgb").." cumuls. calculer séparement pour chaque attaque.", -- Furieux
	},
	--[+ Passive 7 - Towering Presence +]--	26.03.2026
	["loc_talent_ogryn_bigger_coherency_radius_desc"] = { -- radius: +50%
		en = Dot_green.." {radius:%s} "..CKWord("Coherency", "Coherency_rgb").." radius. Increases from "..CNumb("8", "n_8_rgb").." to "..CNumb("14", "n_14_rgb").." meters.",
		ru = Dot_green.." {radius:%s} к радиусу "..CKWord("сплочённости", "splochennosti_rgb_ru")..". Увеличивается с "..CNumb("8", "n_8_rgb").." до "..CNumb("14", "n_14_rgb").." метров.", -- Живая башня -- Величественное присутствие -- руоф Выдающееся присутствие
		-- fr = "{radius:%s} de rayon de syntonie.",
	},
	--[+ Passive 8 - Soften Them Up +]--	26.03.2026
	["loc_talent_ogryn_targets_recieve_damage_increase_debuff_new_desc"] = { -- damage: +15%, duration: 5, +colors
		en = "Enemies hit by your Melee Attacks gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." Taken.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_nc.." Can also be applied with Melee Special actions of Ripper Guns, Grenadier Gauntlet (Melee part), Rumbler, Twin-Linked Stubbers, and Kickback.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_abil"),
		ru = "Враги, задетые вашими атаками ближнего боя, получают на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к получаемому "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_nc.." Также может накладываться специальными действиями ближнего боя дробовика-потрошителя, гранатомётной перчатки (часть ближнего боя), гранатомёта, спаренного тяжёлого стаббера и отбойника.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Ogr_abil"), -- Ослабь их -- руоф Упокоить их
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes est subit par les ennemis que vous frappez.",
	},
	--[+ Passive 9 - Payback Time +]--	26.03.2026
	["loc_talent_ogryn_revenge_damage_new_desc"] = { -- damage: +20%, duration: 5, s->seconds, +colors
		en = "On Successful Dodge, or being Hit by an Attack, you gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."Procs on:\n"
			..Dot_nc.." Taking or Blocking a Melee hit,\n"
			..Dot_nc.." Successfully Dodging enemy Melee or Ranged attacks (except Gunners, Reaper, Sniper),\n"
			..Dot_nc.." Disabler attacks (Pox Hound jump, Trapper net, Mutant grab).\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "При успешном уклонении или получении удара, вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			.."Срабатывает при:\n"
			..Dot_nc.." Получении или блокировании удара,\n"
			..Dot_nc.." Уклонении от вражеских атак ближнего и дальнего боя (исключая выстрелы пулемётчиков, жнецов или снайперов),\n"
			..Dot_nc.." Уклонении от атак обездвиживающих врагов (прыжка чумной гончей, сети скаба-ловца, захвата мутанта).\n"
			.."\n"
			..CPhrs("Can_be_refr"), -- Время расплаты
		-- fr = "Vous gagnez {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." durant {duration:%s} secondes en subbisant ou en bloquant une attaque de mélée, ainsi qu'une esquive réussie d'une attaque de mélée ou d'une attaque à distance (sauf Mitrailleurs, Faucheurs, Snipers), et les attaques des spéciaux (saut de cerbère, filet de trappeuse, Mutant).",
	},
	--[+ Passive 10 - Pumped Up +]--	26.03.2026
	["loc_talent_ogryn_damage_reduction_on_high_stamina_desc"] = { -- damage_taken: +15%, stamina: 75%, +colors
		en = "While above {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..":\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.",
		ru = "Пока у вас выше {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." вы получаете:\n"
			..Dot_green.." {damage_taken:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".", -- Качок
		-- fr = "{damage_taken:%s} Résistance au "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." et de "..COLORS_KWords_fr.Toughness_rgb_fr.."  en étant au dessus de {stamina:%s} max "..CKWord("Stamina", "Stamina_rgb")..".", -- Gonflé
	},
	--[+ Passive 11 - Focused Fighter +]--	26.03.2026
	["loc_talent_ogryn_melee_attacks_give_mtdr_desc"] = { -- : +4%, : 5, +colors
		en = "On Successful Melee Attack, you gain "..CNumb("1", "n_1_rgb").." Stack per swing:\n"
			..Dot_green.." {reduction:%s} "..CKWord("Damage", "Damage_rgb").." Resistance from Melee Attacks.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..Dot_nc.." Stacks are only removed by Melee "..CKWord("Damage", "Damage_rgb")..".",
		ru = "При успешной атаке ближнего боя вы получаете "..CNumb("1", "n_1_rgb").." заряд за удар:\n"
			..Dot_green.." {reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." от атак ближнего боя.\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..Dot_nc.." Заряды снимаются только при получении "..CKWord("урона", "urona_rgb_ru").." в ближнем бою.", -- Сосредоточенный боец
		-- fr = "{reduction:%s} Réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mélée lors d'une attaque de mélée réussie.Vous gagnez "..CNumb("1", "n_1_rgb").." cumul par coup, Jusqu'à {stacks:%s}. Les cumuls sont retirés lorsque vous subissez des "..COLORS_KWords_fr.Damage_rgb_fr.." d'une attaque de mélée.",
	},
	--[+ Passive 12 - Strongman +]--	26.03.2026
	["loc_talent_ogryn_damage_reduction_after_elite_kill_desc"] = { -- : +10%, : 5, +colors
		en = "Killing an Elite or Specialist grants for {duration:%s} seconds:\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.",
		ru = "Убийство элитного врага или специалиста даёт на {duration:%s} секунд:\n"
			..Dot_green.." {damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".", -- Силач
		-- fr = "{damage_reduction:%s} Réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." et de "..COLORS_KWords_fr.Toughness_rgb_fr.."  lors d'une élimination d'élite ou de spécialiste. Pendant {duration:%s} secondes.",
	},
	--[+ Passive 13 - Can't Hit Me...Again +]--	26.03.2026
	["loc_talent_ogryn_ranged_damage_immunity_desc"] = { -- : +10%, : 5, +colors
		en = "On taking Ranged Hit, gain for {duration:%s} seconds:\n"
			..Dot_green.." {resistance:%s} "..CKWord("Damage", "Damage_rgb").." Resistance vs Ranged.\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "Когда враг попадает по вам выстрелом, вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {resistance:%s} к сопротивлению дальнобойному "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.", -- Попробуй попади... снова
		-- fr = "{resistance:%s} de Résistance au "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." et de "..COLORS_KWords_fr.Toughness_rgb_fr.." à distance pendant {duration:%s} secondes après avoir été touchez par une attaque à distance (incluant le vomit de la bête de Nurgle, le feu direct des incendiaires, et l'impact directe des grenades des grenadiers). Temps de recharge {cooldown:%s} secondes.",
	},
	--[+ Passive 14 - Keep Shooting +]--	26.03.2026
	["loc_talent_ogryn_reload_speed_on_empty_desc"] = { -- : +10%, : 5, +colors
		en = Dot_green.." {reload_speed:%s} Reload Speed when reloading an Empty Clip.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки пустого магазина.", -- Продолжай стрелять
		fr = Dot_green.." {reload_speed:%s} de vitesse de rechargement si le chargeur est vide.",
	},
	--[+ Passive 15 - Beat Them Back +]--	26.03.2026
	["loc_talent_ogryn_melee_damage_after_heavy_desc"] = { -- : +10%, : 5, +colors
		en = "On Successful Heavy Melee Attack, you gain:\n"
			..Dot_green.." {melee_damage:%s} Melee "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "При успешной тяжёлой атаке ближнего боя вы получаете:\n"
			..Dot_green.." {melee_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя.\n"
			..Dot_nc.." Длится {duration:%s} секунд."-- ru = "{melee_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя при успешной тяжёлой атаке ближнего боя. Длится {duration:%s} секунд.", -- Дай им отпор -- руоф Дай сдачи
		-- fr = "{melee_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée lors d'une attaque puissante de mélée réussie. Dure pendant {duration:%s} secondes.",
	},
	--[+ Passive 16 - Strike True +]--	26.03.2026
	["loc_talent_ogryn_weakspot_damage_desc"] = { -- : +10%, : 5, +colors
		en = Dot_green.." {damage:%s} Melee "..CKWord("Weakspot", "Weakspot_rgb").." "..CKWord("Strength", "Strength_rgb")..".\n"
			.."\n"
			..CNote("Pwr_note"),
		ru = Dot_green.." {damage:%s} к "..CKWord("силе", "sile_rgb_ru").." атак ближнего боя при попадании в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".\n"
			.."\n"
			..CNote("Pwr_note"), -- Меткий удар
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." de mélée lors d'un coup en mélée sur un "..COLORS_KWords_fr.Weakspothit_rgb_fr.."."..COLORS_KWords_fr.Pwr_note_fr, -- Coup au but
	},
	--[+ Passive 17 - Slam +]--	26.03.2026
	["loc_talent_ogryn_melee_stagger_new_desc"] = { -- stagger: +25%, stamina: 5%, cooldown: 0.75, +colors
		en = Dot_green.." {stagger:%s} "..CKWord("Impact", "Impact_rgb").." bonus on Melee Attacks.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." replenished on "..CKWord("Staggering", "Staggering_rgb").." an enemy with a Melee Attack.\n"
			.."\n"
			..Dot_nc.." Cooldown: {cooldown:%s} second.\n"
			.."\n"
			..CNote("Impact_note"),
		ru = Dot_green.." {stagger:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." врагов от атак ближнего боя.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." восполняется при "..CKWord("ошеломлении", "oshelomlenii_rgb_ru").." врага атакой ближнего боя.\n"
			.."\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунда.\n"
			.."\n"
			..CNote("Impact_note"),-- ru = "{stagger:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." врагов от атак ближнего боя.\n{stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." восполняется при "..CKWord("ошеломлении", "oshelomlenii_rgb_ru").." врага атакой ближнего боя. Восстановление {cooldown:%s} секунда.", -- Сокрушение -- руоф Хлопок
		-- fr = "{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." bonus sur les attaques de mêlée. {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." est régénérée lorsque vous faites "..COLORS_KWords_fr.Staggering_rgb_fr.." un ennemie avec une attaque de mélée. Temps de recharge : {cooldown:%s} seconde.",
	},
	--[+ Passive 18 - Ammo Stash +]--	26.03.2026
	["loc_talent_ogryn_increased_ammo_desc"] = { -- max_ammo: +25%
		en = Dot_green.." {max_ammo:%s} to your Maximum Ammo reserve. Rounds down.",
		ru = Dot_green.." {max_ammo:%s} к максимальному количеству боеприпасов в резерве. Округляется в меньшую сторону.", -- Схрон патронов
		-- fr = "Augmente votre réserve de munitions maximale de {max_ammo:%s}, arrondi à l'inférieur.",
	},
	--[+ Passive 19 - Big Boom +]--	26.03.2026
	["loc_talent_ogryn_increase_explosion_radius_desc"] = { -- explosion_radius: +27.5%
		en = Dot_green.." {explosion_radius:%s} radius to your explosions.",
		ru = Dot_green.." {explosion_radius:%s} к радиусу любых взрывов, вызванных вами.", -- Большой бабах
		-- fr = "Augmentez le rayon de vos explosion de {explosion_radius:%s} peu importe la source.", -- Baboom
	},
	--[+ Passive 20 - Crunch! +]--	26.03.2026
	["loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger_new_desc"] = { -- damage: +15%, stagger: +30%, &->and, +colors
		en = "Charging your Heavy Melee attack builds Stacks, up to "..CNumb("4", "n_4_rgb")..".\n"
			.."\n"
			.."You gain per Stack:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("7.5%", "pc_7_5_rgb").." "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("7.5%", "pc_7_5_rgb").." "..CKWord("Impact", "Impact_rgb")..".\n"
			.."\n"
			.."At "..CNumb("4", "n_4_rgb").." Stacks:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {stagger:%s} "..CKWord("Impact", "Impact_rgb")..".\n"
			.."\n"
			..Dot_nc.." Stacks are unaffected by Attack Speed buffs.",
		ru = "Заряжание тяжёлой атаки ближнего боя накапливает вплоть до "..CNumb("4", "n_4_rgb").." зарядов.\n"
			.."\n"
			.."Вы получаете за каждый заряд:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("7.5%", "pc_7_5_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("7.5%", "pc_7_5_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..".\n"
			.."\n"
			.."При "..CNumb("4", "n_4_rgb").." зарядах:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {stagger:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." На заряды не влияют усиления скорости атаки.", -- Хрусь! -- руоф Хрясь!
		-- fr = "En fonction du temps de charge de votre attaque vous gagnez :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." bonus et\n{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." bonus."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_10_rgb_fr,
	},
	--[+ Passive 21 - Batter +]--	26.03.2026
	["loc_talent_ogryn_heavy_bleeds_new_desc"] = { -- stacks: +4, +colors
		en = "On Light Melee Hit:\n"
			..Dot_green.." {stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb")..".\n"
			.."\n"
			.."On Heavy Melee Hit:\n"
			..Dot_green.." {heavy_stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb")..".\n"
			.."\n"
			..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Max "..CKWord("Bleed", "Bleed_rgb").." Stacks on a target.",
		ru = "При попадании лёгкой атакой ближнего боя враг получает:\n"
			..Dot_green.." {stacks:%s} заряд "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".\n"
			.."\n"
			.."При попадании тяжёлой атакой ближнего боя:\n"
			..Dot_green.." {heavy_stacks:%s} заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." До максимум "..CNumb("16", "n_16_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." на цели."-- ru = "{stacks:%s} заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается на врага атаками ближнего боя. Увеличивается до {heavy_stacks:%s} при тяжёлом ударе ближнего боя. Вплоть до "..CNumb("16", "n_16_rgb").." зарядов на цель.", -- Месиво
		-- fr = "Inflige {stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur une attaque de mêlée. Et {heavy_stacks:%s} cumuls sur une attaque puissante. Jusqu'à "..CNumb("16", "n_16_rgb").." cumuls maximum de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur une cible.",
	},
	--[+ Passive 22 - Brutish Strength +]--	26.03.2026
	["loc_talent_ogryn_pushing_applies_brittlenes_desc"] = { -- stacks: +4, +colors
		en = Dot_green.." {stacks:%s} Stacks of "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." applied to enemies on Push.\n"
			.."\n"
			..Dot_nc.." Lasts "..CNumb("5", "n_5_rgb").." seconds.\n"
			..Dot_nc.." Up to "..CNumb("40%", "pc_40_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." at "..CNumb("16", "n_16_rgb").." Stacks.\n"
			..Dot_nc.." The push action does not need to "..CKWord("Stagger", "Stagger_rgb").." the enemy.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {stacks:%s} заряда "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони накладывается на врагов при отталкивании.\n"
			.."\n"
			..Dot_nc.." Длится "..CNumb("5", "n_5_rgb").." секунд.\n"
			..Dot_nc.." До "..CNumb("40%", "pc_40_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." при "..CNumb("16", "n_16_rgb").." зарядах.\n"
			..Dot_nc.." Срабатывает даже если отталкивание не "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врага.\n"
			.."\n"
			..CPhrs("Can_be_refr")-- ru = "{stacks:%s} заряда "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." применяется к врагам при отталкивании. До максимум "..CNumb("40%", "pc_40_rgb").." при "..CNumb("16", "n_16_rgb").." зарядах.", -- Грубая сила
		-- fr = "{stacks:%s} cumuls de "..CNumb("2.5%", "pc_2_5_rgb").." de "..COLORS_KWords_fr.Brittleness_rgb_fr.." appliqués lors d'une poussée. Jusqu'à "..CNumb("40%", "pc_40_rgb").." Max à "..CNumb("16", "n_16_rgb").." cumuls.",
	},
	--[+ Passive 23 - For the Lil'Uns +]--	26.03.2026
	["loc_talent_ogryn_protect_allies_desc"] = { -- stacks: +4, +colors
		en = "On Ally getting "..CKWord("Toughness", "Toughness_rgb").." Broken, gain for {duration:%s} seconds:\n"
			..Dot_green.." {power:%s} "..CKWord("Strength", "Strength_rgb").." and\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.\n"
			.."\n"
			.."On Ally getting Knocked Down, gain for {duration:%s} seconds:\n"
			..Dot_green.." {revive_speed:%s} Revive Speed and\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity.",
		ru = "При пробитии "..CKWord("стойкости", "stoikosti_rgb_ru").." союзника вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {power:%s} к "..CKWord("силе", "sile_rgb_ru").." и\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			.."\n"
			.."При выведении союзника из строя вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {revive_speed:%s} к скорости поднятия и\n"
			..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru")..".", -- За малых -- руоф За малявок
		-- fr = "{power:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." et {toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Tghns_dmg_red_rgb_fr.." pendant {duration:%s} secondes quand la "..COLORS_KWords_fr.Toughness_rgb_fr.." d'un allié se brise. Temps de recharge : {cooldown:%s} secondes.\n\n{revive_speed:%s} de vitesse de réanimation et l'immunité à l'"..COLORS_KWords_fr.Stuns_rgb_fr.." pendant {duration:%s} secondes quand un allié tombe à terre.", -- Pour les microbes
	},
	--[+ Passive 24 - Concentrate +]--	26.03.2026
	["loc_talent_ogryn_drain_stamina_for_handling_desc"] = { -- stacks: +4, +colors
		en = "While bracing your Ranged Weapon you gain:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{spread_reduction:%s} Spread and\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{recoil_reduction:%s} Recoil,\n"
			.."but lose:\n"
			..Dot_red.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." per second.",
		ru = "При прицеливании вы получаете:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} к раскачиванию,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{spread_reduction:%s} к разбросу и\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{recoil_reduction:%s} к отдаче,\n"
			.."но теряете:\n"
			..Dot_red.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." в секунду.", -- Сосредоточься
		-- fr = "Lors de la mis en joue de votre arme à distance vous gagnez:\n{sway_reduction:%s} de réduction du balancement ,\n{spread_reduction:%s} de réduction du dispercement et\n{recoil_reduction:%s} de réduction du recul,\nMaisvous perdez {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." par seconde.", -- Concentration
	},
	--[+ Passive 25 - Fire Away +]--	26.03.2026
	["loc_talent_ogryn_explosions_burn_close_desc"] = { -- stacks: +4, +colors
		en = Dot_green.." {stacks:%s} Stack of "..CKWord("Burn", "Burn_rgb").." applied by your explosions.\n"
			.."\n"
			..Dot_green.." {more_stacks:%s} Stacks if targets are inside the explosion epicenter.\n"
			.."\n"
			..Dot_nc.." Up to {max_stacks:%s} Max "..CKWord("Burn", "Burn_rgb").." Stacks on a target.",
		ru = Dot_green.." {stacks:%s} заряд "..CKWord("горения", "gorenia_rgb_ru").." накладывается вашими взрывами.\n"
			.."\n"
			..Dot_green.." {more_stacks:%s} заряда, если цели находятся в эпицентре взрыва.\n"
			.."\n"
			..Dot_nc.." До максимум {max_stacks:%s} зарядов "..CKWord("горения", "gorenia_rgb_ru").." на цели.", -- Поджиг
		-- fr = "{stacks:%s} cumul de "..COLORS_KWords_fr.Burn_rgb_fr.." est appliqué à vos explosions.\n{more_stacks:%s} cumuls ci la cible est dans l'épicentre de l'explosion.\nJusqu'à {max_stacks:%s} cumuls de "..COLORS_KWords_fr.Burn_rgb_fr.." maximum sur une cible.", -- Flamboiment
	},
	--[+ Passive 26 - Simple Minded +]--	26.03.2026
	["loc_talent_ogryn_corruption_resistance_desc"] = { -- stacks: +4, +colors
		en = Dot_green.." {resistance:%s} "..CKWord("Corruption", "Corruption_rgb").." Resistance.\n"
			.."\n"
			.."Reduces "..CKWord("Corruption Damage", "Corruptdmg_rgb").." taken by any enemy source, including:\n"
			..Dot_nc.." Poxburster explosion,\n"
			..Dot_nc.." Toxic gas,\n"
			..Dot_nc.." Poxwalker Melee attacks,\n"
			..Dot_nc.." Pox Hound pounce,\n"
			..Dot_nc.." Beast of Nurgle vomit/slime/consumed,\n"
			..Dot_nc.." Daemonhost,\n"
			..Dot_nc.." Grimoires, etc.",
		ru = Dot_green.." {resistance:%s} сопротивления "..CKWord("порче", "porche_rgb_ru")..".\n"
			.."\n"
			.."Уменьшает получаемый "..CKWord("урон от порчи", "porchi_uron_rgb_ru").." от любого вражеского источника, включая:\n"
			..Dot_nc.." Взрыв чумного взрывника,\n"
			..Dot_nc.." Токсичный газ,\n"
			..Dot_nc.." Атаки чумного ходока в ближнем бою,\n"
			..Dot_nc.." Прыжок чумной гончей,\n"
			..Dot_nc.." Рвоту/слизь/проглатывание зверя Нургла,\n"
			..Dot_nc.." Воздействие демонхоста,\n"
			..Dot_nc.." Гримуары и т.д.", -- Простота ума
		-- fr = "{resistance:%s} de résistance à la "..COLORS_KWords_fr.Corruption_rgb_fr..".\nréduit les "..COLORS_KWords_fr.Corruptdmg_rgb_fr.." subit de toute les sources:  explosion des crache-peste, gaz toxique, attaque de mélée des scrofuleux, morsures des cerbère, le vomit/résidu/avalement de la bête de Nurgle, Hôte Daemoniaque, grimoires, etc.",
	},
	--[+ Passive 27 - Unbreakable +]--	26.03.2026
	["loc_talent_ogryn_block_all_attacks_variant_desc"] = { -- stacks: +4, +colors
		en = "Your Perfect Blocks can block all Melee Attacks, including overheads.\n"
			.."\n"
			.."On Perfect Block gain for "..CNumb("5", "n_5_rgb").." seconds:\n"
			..Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb")..".",
		ru = "Ваши идеальные блоки могут блокировать все атаки ближнего боя, включая удары сверху.\n"
			.."\n"
			.."При идеальном блоке получаете на "..CNumb("5", "n_5_rgb").." секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя.", -- Непробиваемый
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée pendant "..CNumb("5", "n_5_rgb").." secondes lors d'un blocage parfait. Vos blocage parfait peuvent bloquer toute les attaques de mélées.",
	},
	--[+ Passive 28 - Too Stubborn to Die +]--	26.03.2026
	["loc_talent_ogryn_toughness_gain_increase_on_low_health_desc"] = { -- toughness_multiplier: +100%, health: 33%, +colors
		en = "While below {health:%s} "..CKWord("Health", "Health_rgb")..":\n"
			..Dot_green.." {toughness_multiplier:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment.",
		ru = "Пока у вас ниже {health:%s} "..CKWord("здоровья", "zdorovia_rgb_ru").." вы получаете:\n"
			..Dot_green.." {toughness_multiplier:%s} к восполнению "..CKWord("стойкости", "stoikosti_rgb_ru")..".", -- Слишком упёртый, чтобы умереть -- руоф Слишком упрям, чтобы умереть
		-- fr = "{toughness_multiplier:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." Récupération en dessous de {health:%s} de "..COLORS_KWords_fr.Health_rgb_fr..".", -- Trop têtu pour mourir
	},
	--[+ Passive 29 - Frenzied Blows +]--	26.03.2026
	["loc_talent_ogryn_stacking_attack_speed_desc"] = { -- stacks: +4, +colors
		en = "On Chained Hit you gain for {duration:%s} seconds:\n"
			..Dot_green.." {attack_speed:%s} Melee Attack Speed.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..Dot_nc.." Generates "..CNumb("1", "n_1_rgb").." Stack per swing.\n"
			..CPhrs("Can_be_refr"),
		ru = "При серии атак вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {attack_speed:%s} к скорости атак ближнего боя.\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..Dot_nc.." Генерирует "..CNumb("1", "n_1_rgb").." заряд за удар.\n"
			..CPhrs("Can_be_refr"), -- Яростные удары
		-- fr = "{attack_speed:%s} de vitesse d'attaque de mélée lors de coup en chaîne pendant {duration:%s} secondes. Se cumuls {stacks:%s} fois. Génère "..CNumb("1", "n_1_rgb").." cumul par coup. La durée est rafraichie une fois le mumuls maximal atteint.",
	},
	--[+ Passive 30 - Attention Seeker +]--	26.03.2026
	["loc_talent_ranged_enemies_taunt_description"] = { -- duration: 8, s->seconds
		-- en = "Blocking or Pushing Enemies Taunts them for {duration:%s} seconds.",
		en = "You "..CKWord("Taunt", "Taunt_rgb").." enemies, forcing them to attack you by:\n"
			..Dot_nc.." Pushing,\n"
			..Dot_nc.." Blocking Melee attacks,\n"
			..Dot_nc.." Blocking Ranged attacks with your shield.\n"
			.."\n"
			..CKWord("Taunting", "Taunting_rgb").." Ranged enemies forces them into Melee combat.\n"
			..Dot_nc.." Does not affect: Gunners, Reapers, or Monstrosities.\n"
			..Dot_nc.." Does affect: Captains and Twins.\n"
			.."\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Cant_be_refr"),
		ru = "Вы "..CKWord("провоцируете", "Tauntin_rgb_ru").." врагов, заставляя их атаковать вас если:\n"
			..Dot_nc.." Толкаете их,\n"
			..Dot_nc.." Блокируете их атаки ближнего боя,\n"
			..Dot_nc.." Блокируете их атаки дальнего боя своим щитом.\n"
			.."\n"
			..CKWord("Провокация", "TauntT_rgb_ru").." врагов дальнего боя заставляет их вступить в ближний бой с вами.\n"
			..Dot_nc.." Этот эффект не действует на: пулемётчиков, жнецов или чудовищ.\n"
			..Dot_nc.." Действует на: капитанов и близнецов.\n"
			.."\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Cant_be_refr"), -- Провокатор -- руоф Внимание искателя
		-- fr = "Bloquer ou Pousser les ennemies les provoquent pendant {duration:%s} secondes.", -- Chercher l'attention
	},
	--[+ Passive 31 - Bruiser +]--	26.03.2026
	["loc_talent_ogryn_cooldown_on_elite_kills_new_desc"] = { 
		en = "When you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an Elite enemy, you gain for {duration:%s} seconds:\n"
			..Dot_green.." {cooldown_regen:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Regeneration.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "Когда вы или союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." убиваете элитного врага, вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {cooldown_regen:%s} восстановления "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Can_be_refr"), -- Бугай
		-- fr = "+{cooldown_regen:%s} de régénération du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." pendant {duration:%s} secondes quand vous ou un allié en syntonie effectués une élimination d'élite.", -- Cogneure
	},
	--[+ Passive 32 - Pacemaker +]--	26.03.2026
	["loc_talent_ogryn_reload_speed_on_multiple_hits_new_desc"] = { -- multi_hit: 5, reload_speed: +25%, duration: 5, s->seconds
		en = "Hitting {multi_hit:%s} or more Enemies with a single Attack grants:\n"
			..Dot_green.." {reload_speed:%s} Reload Speed on your next Reload.\n"
			.."\n"
			..Dot_nc.." Can proc on Melee and Ranged attacks, Pushes, explosions, and "..CKWord("Staggering", "Staggering_rgb").." Abilities.",
		ru = "Попадание по {multi_hit:%s} или более врагам одной атакой даёт:\n"
			..Dot_green.." {reload_speed:%s} к скорости следующей перезарядки.\n"
			.."\n"
			..Dot_nc.." Может активироваться от атак ближнего и дальнего боя, отталкиваний, взрывов и "..CKWord("ошеломляющих", "oshelomlauschih_rgb_ru").." способностей.", -- Задающий ритм -- руоф Водитель ритма
		-- fr = "{reload_speed:%s} Vitesse de rechargement pendant {duration:%s} secondes en touchant {multi_hit:%s} ennemis ou plus avec une seule attaque.", -- Stimulateur
	},
	--[+ Passive 33 - Unstoppable Momentum +]--	26.03.2026
	["loc_talent_ogryn_ranged_kill_grant_movement_speed_desc"] = { -- movement_speed: +20%, duration: 2, s->seconds
		en = "On Ranged Kill you gain for {duration:%s} seconds:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed.",
		ru = "При убийстве в дальнем бою вы получаете на {duration:%s} секунды:\n"
			..Dot_green.." {movement_speed:%s} к скорости движения.", -- Неудержимый моментум
		-- fr = "{movement_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes sur une élimination à distance.", -- Élan inarétable
	},
	--[+ Passive 34 - Delight in Destruction +]--	26.03.2026
	["loc_talent_ogryn_damage_reduction_per_bleed_desc"] = { -- damage_reduction: +8%, max_stacks: 6, +colors
		en = Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Resistance per "..CKWord("Bleeding", "Bleeding_rgb").." Enemy in Melee range.\n"
			.."\n"
			..Dot_nc.." Stacks {max_stacks:%s} times. Up to "..CNumb("30%", "pc_30_rgb")..".",
		ru = Dot_green.." {damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." за каждого врага с "..CKWord("кровотечением", "krovotecheniem_rgb_ru").." в радиусе ближнего боя.\n"
			..Dot_nc.." Суммируется {max_stacks:%s} раза. До "..CNumb("30%", "pc_30_rgb")..".", -- Упоение в разрушении -- руоф Наслаждение разрушением
		-- fr = "{damage_reduction:%s} de résistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." par ennemi qui "..COLORS_KWords_fr.Bleeding_rgb_fr.." à portée de mêlée. Se cumule jusqu'à {max_stacks:%s} fois. Jusqu'à "..CNumb("32%", "pc_32_rgb")..".", -- Joie dans la destruction
	},
	--[+ Passive 35 - Dedicated Practice +]--	26.03.2026
	["loc_talent_ogryn_wield_speed_increase_desc"] = { -- wield_speed: +35%, +colors
		en = Dot_green.." {wield_speed:%s} Swap Speed.\n"
			.."\n"
			..Dot_nc.." This reduces the time of wielding actions when Swapping item slots (Weapons, Grenades, Stimms, Medpacks, Ammo crates, Books, etc).",
		ru = Dot_green.." {wield_speed:%s} к скорости смены оружия и предметов.\n" -- Упорные тренировки
			.."\n"
			..Dot_nc.." Этот талант сокращает время затрачиваемое на смену слотов предметов (оружие, гранаты, стимуляторы, медпаки, ящики с боеприпасами, книги и т.д.).",
	},
	--[+ Passive 36 - Mobile Emplacement +]--	26.03.2026
	["loc_talent_ogryn_bracing_or_shooting_reduces_damage_taken_desc"] = { -- damage_taken_multiplier: 25%, +colors
		en = "While shooting or bracing a Ranged Weapon:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken_multiplier:%s} "..CKWord("Damage", "Damage_rgb").." Reduction.",
		ru = "Пока вы целитесь или стреляете из дальнобойного оружия, получаете:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken_multiplier:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".", -- Мобильная огневая точка -- руоф Передвижной окоп
		-- fr = "Vous réduisez les "..COLORS_KWords_fr.Damage_rgb_fr.." de {damage_taken_multiplier:%s} en utilisant une arme à distance.",
	},
	--[+ Passive 37 - Implacable +]--	26.03.2026
	["loc_talent_ogryn_windup_reduces_damage_taken_desc"] = { -- damage_taken_multiplier: +15%, +colors
		en = "While charging Melee Attacks:\n"
			..Dot_green.." {damage_taken_multiplier:%s} "..CKWord("Damage", "Damage_rgb").." Reduction.",
		ru = "При заряжании атак ближнего боя:\n"
			..Dot_green.." {damage_taken_multiplier:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".", -- Непоколебимый
		-- fr = "{damage_taken_multiplier:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant le chargement des attaques de mêlée.",
	},
	--[+ Passive 38 - Dominate +]--	26.03.2026
	["loc_talent_ogryn_rending_on_elite_kills_desc"] = { -- rending_multiplier: +10%, duration: 10, s->seconds, +colors
		en = Dot_green.." {rending_multiplier:%s} "..CKWord("Rending", "Rending_rgb").." for {duration:%s} seconds on Elite kill.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Rend_note"),
		ru = Dot_green.." {rending_multiplier:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони на {duration:%s} секунд при убийстве элитного врага.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Rend_note"), -- Доминируй -- руоф Господство
		-- fr = "{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." pendant {duration:%s} secondes après une élimination d'élite.",
	},
	--[+ Passive 39 - No Pushover +]--	26.03.2026
	["loc_talent_ogryn_empowered_pushes_desc"] = { -- push_impact_modifier: 250%, cooldown: 8, s->seconds, +colors
		en = Dot_green.." {push_impact_modifier:%s} "..CKWord("Stagger", "Stagger_rgb").." for your Pushes.\n"
			..Dot_nc.." Can only trigger once every {cooldown:%s} seconds.",
		ru = Dot_green.." {push_impact_modifier:%s} к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." для ваших отталкиваний.\n"
			..Dot_nc.." Может срабатывать только раз в {cooldown:%s} секунд.", -- Не слабак
		-- fr = "{push_impact_modifier:%s} de "..COLORS_KWords_fr.Stagger_rgb_fr.." pour vos poussées. Peut se déclencher une fois toutes les {cooldown:%s} secondes.",
	},
	--[+ Passive 40 - Get Stuck In +]--	26.03.2026
	["loc_talent_ogryn_ability_movement_speed_desc"] = { -- movement_speed: +20%, time: 4 -- &->and, s->seconds, +colors
		en = "On activating your "..CKWord("Combat Ability", "Cmbt_abil_rgb").." grants you and Allies in "..CKWord("Coherency", "Coherency_rgb").." for {time:%s} seconds:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed,\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity and\n"
			..Dot_green.." Suppression Immunity.",
		ru = "При активации вашей "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете на {time:%s} секунд:\n"
			..Dot_green.." {movement_speed:%s} к скорости движения,\n"
			..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." и\n"
			..Dot_green.." Иммунитет к подавлению.", -- Очертя голову
		-- fr = "En activant votre "..COLORS_KWords_fr.Cmbt_abil_rgb_fr..", vous et vos alliés en syntonie gagnez {movement_speed:%s} de vitesse de déplacement et êtes également immunisés contre les "..COLORS_KWords_fr.Stuns_rgb_fr.." et la suppression pendant {time:%s} secondes.",
	},
	--[+ Passive 41 - Reloaded and Ready +]--	26.03.2026
	["loc_talent_ogryn_ranged_damage_on_reload_desc"] = { -- damage :+15%, duration: 8, s->seconds, +colors
		en = Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on Reload.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." дальнего боя на {duration:%s} секунд при перезарядке.", -- К бою готов! -- Перезаряжен и готов -- руоф Заряжен и готов
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance pendant {duration:%s} secondes lors du rechargement.",
	},
	--[+ Passive 42 - Massacre +]--	26.03.2026
	["loc_talent_ogryn_crit_chance_on_kill_desc"] = { -- crit_chance: +1%, duration: 6, max_stacks: 8, s->seconds, +colors
		en = "Killing an Enemy grants for {duration:%s} seconds:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb")..".\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.",
		ru = "Убийство врага даёт на {duration:%s} секунд:\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".\n"
			..Dot_nc.." Суммируется {max_stacks:%s} раз.", -- Резня
		-- fr = "{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant {duration:%s} secondes en tuant un ennemi. Se cumul jusqu'à {max_stacks:%s} fois.",
	},
	--[+ Passive 43 - No Stopping Me! +]--	26.03.2026
	["loc_talent_ogryn_windup_is_uninterruptible_unslowed_desc"] = { 
		en = "While winding up a Melee Attack:\n"
			..Dot_green.." No Movement Speed Penalty,\n"
			..Dot_green.." Uninterruptible.",
		ru = "При заряжании атаки ближнего боя вы получаете:\n"
			..Dot_green.." Нет штрафа к скорости движения,\n"
			..Dot_green.." Непрерываемый.", -- Меня не остановить!
		-- fr = "Devenez Inarrêtable pendant le chargement des attaques puissantes de mêlée. Réduit {reduced_move_penalty:%s} des pénalités de vitesse de déplacement des attaques de mélées puissantes.", -- Rien peut m'arreter
	},
	--[+ Passive 44 - Bash and Blast +]--	26.03.2026
	["loc_talent_ogryn_melee_improves_ranged_desc"] = { -- stacks: +4, +colors
		en = Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." on Melee Kill.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Maximum {max_stacks:%s} Stacks.\n"
			.."\n"
			..CPhrs("Can_gen_mult")
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." при убийстве в ближнем бою.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Максимум зарядов {max_stacks:%s}.\n"
			.."\n"
			..CPhrs("Can_gen_mult")
			..CPhrs("Can_be_refr"), -- Удар-выстрел
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance lors d'une élimination en mélée. Pendant {duration:%s} secondes. Cumuls maximuml : {max_stacks:%s}.", -- Pluie de coups
	},
	--[+ Passive 45 - Hard Knocks +]--	26.03.2026
	["loc_talent_ogryn_big_bully_heavy_hits_new_desc"] = { -- damage: +1%, stacks: 25, duration: 10, s->seconds, +colors
		en = "Enemies "..CKWord("Staggered", "Staggered_rgb").." by your Melee Attacks receive for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb")..".",
		ru = "Враги "..CKWord("ошеломлённые", "oshelomlennye_rgb_ru").." вашими атаками ближнего боя получают в течение {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя.", -- Тяжёлые удары -- руоф Мощные удары
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." subit pendant {duration:%s} secondes par les ennemies qui "..COLORS_KWords_fr.Staggered_rgb_fr.." à cause de vos attaques de mélées.", -- Coup dur
	},
	--[+ Passive 46 - No Hurting Friends! +]--	26.03.2026
	["loc_talent_ogryn_damage_taken_by_all_increases_strength_tdr_desc"] = { -- stacks: +4, +colors
		en = "On "..CKWord("Damage", "Damage_rgb").." Taken by you or Allies in "..CKWord("Coherency", "Coherency_rgb")..", you gain "..CNumb("1", "n_1_rgb").." Stack.\n"
			..Dot_nc.." Maximum {stacks:%s} Stacks.\n"
			..Dot_nc.." Each stack lasts {duration:%s} seconds.\n"
			.."\n"
			.."You gain per Stack:\n"
			..Dot_green.." {strength:%s} "..CKWord("Strength", "Strength_rgb")..".\n"
			.."\n"
			.."At Maximum Stacks:\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "При получении "..CKWord("урона", "urona_rgb_ru").." вами или союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." вы получаете "..CNumb("1", "n_1_rgb").." заряд.\n"
			..Dot_nc.." Максимум {stacks:%s} зарядов.\n"
			..Dot_nc.." Каждый заряд длится {duration:%s} секунд.\n"
			.."\n"
			.."За каждый заряд вы получаете:\n"
			..Dot_green.." {strength:%s} к "..CKWord("силе", "sile_rgb_ru")..".\n"
			.."\n"
			.."При максимуме зарядов:\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Can_be_refr"), -- За друзей порву!
		-- fr = "{strength:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." lors de "..COLORS_KWords_fr.Damage_rgb_fr.." subit par vous ou des alliés en syntonie. {stacks:%s} cumuls maximum. Pendant {duration:%s} secondes. {tdr:%s} de "..COLORS_KWords_fr.Tghns_dmg_red_rgb_fr.." en étant au cumul maximal.",
	},
	--[+ Passive 47 - Won't Give In +]--	26.03.2026
	["loc_talent_ogryn_tanky_with_downed_allies_desc"] = { -- damage_taken: +20%, range: 20, +colors
		en = Dot_green.." {damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Reduction for each Knocked Down or Incapacitated Ally within {range:%s} meters.",
		ru = Dot_green.." {damage_taken:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." за каждого выведенного из строя союзника в радиусе {range:%s} метров.", -- Не сдамся
		-- fr = "{damage_taken:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pour chaque allié à terre или incapacité dans un rayon de {range:%s} mètres.",
	},
	--[+ Passive 48 - Spray and Slay +]--	26.03.2026
	["loc_talent_ogryn_ranged_improves_melee_desc"] = { -- stacks: +4, +colors
		en = "Emptying your Clip grants for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {attack_speed:%s} Melee Attack Speed.",
		ru = "Опустошение вашего магазина даёт на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя и\n"
			..Dot_green.." {attack_speed:%s} к скорости атак ближнего боя.", -- Отстрелял - добил -- Отстрелял - порубил
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée et {attack_speed:%s} de vitesse d'attaque de mélée pendant {duration:%s} secondes после avoir vidé votre chargeur.", -- Canardage
	},
	--[+ Passive 49 - Lucky Streak +]--	26.03.2026
	["loc_talent_ogryn_crit_damage_increase_desc"] = { -- stacks: +4, +colors
		en = Dot_green.." {crit_damage:%s} "..CKWord("Critical Strike Damage", "Crt_strk_dmg_rgb")..".",
		ru = Dot_green.." {crit_damage:%s} к "..CKWord("урону критического удара", "krit_udara_uron_rgb_ru")..".", -- Месиво
		-- fr = "{crit_damage:%s} de "..COLORS_KWords_fr.Crit_dmg_r_rgb_fr.." sur vos attaques de mélées et de distances.", -- Coup chanceux
	},
}

-- CREATING TEMPLATES -- СОЗДАЁМ ШАБЛОНЫ
local ogryn_templates = {}

for loc_key, locales in pairs(ogryn_localizations) do
	for locale, text in pairs(locales) do
		table.insert(ogryn_templates, create_template(
			"ogryn_" .. loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

return ogryn_templates
