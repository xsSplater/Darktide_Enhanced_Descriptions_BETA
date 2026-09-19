---@diagnostic disable: undefined-global
-- PSYKER TALENT MODULE -- МОДУЛЬ ТАЛАНТОВ ПСАЙКЕРА

local mod = get_mod("Enhanced_descriptions")

-- Using cached utilities - Используем кэшированные утилиты
local Utils = mod.get_utils()

-- Importing all necessary functions and constants - Импорт всех нужных функций и констант
local create_template = Utils.create_template
local loc_text = Utils.loc_text
local CKWord = Utils.CKWord
local CNumb = Utils.CNumb
local CPhrs = Utils.CPhrs
local CNote = Utils.CNote
local Dot_nc = Utils.DOT_NC or "•"
local Dot_red = Utils.DOT_RED or "•"
local Dot_green = Utils.DOT_GREEN or "•"

-- Localization of Psyker talents -- Локализации талантов псайкера
local psyker_localizations = {
--[+ ++PSYKER - ПСАЙКЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Brain Burst +]--	09.06.2026
	["loc_ability_psyker_smite_description_new"] = { -- &->and, +colors
		en = "Charge up psychic power and release it to deal high "..CKWord("Damage", "Damage_rgb").." to a single enemy.\n"
			.."\n"
			..Dot_green.." Effective against Flak and Carapace.\n"
			..Dot_green.." Always targets "..CKWord("Weakspots", "Weakspots_rgb")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			.."Casting with "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." or higher will trigger a self-explosion!",
		ru = "Зарядите психическую мощь и высвободите её, чтобы нанести высокий "..CKWord("урон", "uron_rgb_ru").." одному врагу.\n" -- Взрыв мозга -- руоф Взрыв разума
			.."\n"
			..Dot_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
			..Dot_green.." Всегда бьёт в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Вы можете взорваться!{#reset()}\n"
			.."Не используйте если уровень "..CKWord("опасности", "opasnosti_rgb_ru").." "..CNumb("97%", "pc_97_rgb").." или выше!",
		fr = "Chargez votre puissance psychique et relâchez-la pour infliger d'importants "..CKWord("Dégâts", "Damage_rgb_fr").." à un seul ennemi.\n"
			.."\n"
			..Dot_green.." Efficace contre les armures Flak et Carapace.\n"
			..Dot_green.." Vise toujours les "..CKWord("Points faibles", "Weakspots_rgb_fr")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Attention !{#reset()}\n"
			.."Incantation à "..CNumb("97%", "pc_97_rgb").." de "..CKWord("Péril", "Peril_rgb_fr").." ou plus déclenche une auto-explosion !",
		["zh-tw"] = "蓄積靈能力量並釋放，對單一敵人造成大量"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 對防彈護甲和甲殼護甲敵人有效。\n"
			..Dot_green.." 必定命中"..CKWord("弱點", "Weakspots_rgb_tw").."。\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			.."反噬達 "..CNumb("97%", "pc_97_rgb").." 或以上時施放將觸發自爆！",
		["zh-cn"] = "充能灵能并释放，对单个敌人造成高额"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 对防弹甲与甲壳甲有效。\n"
			..Dot_green.." 总是命中"..CKWord("弱点", "Weakspot_rgb_zh_cn").."。\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			.."在"..CNumb("97%", "pc_97_rgb").."或以上"..CKWord("危机值", "Peril_rgb_zh_cn").."时施放会引发自爆！",
		de = "Laden Sie psychische Energie auf und entladen Sie sie, um einem einzelnen Gegner hohen "..CKWord("Schaden", "Damage_rgb_de").." zuzufügen.\n"
			.."\n"
			..Dot_green.." Effektiv gegen Flak- und Carapax-Rüstung.\n"
			..Dot_green.." Trifft immer "..CKWord("Schwachstellen", "Weakspots_rgb_de")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warnung!{#reset()}\n"
			.."Wirken bei "..CNumb("97%", "pc_97_rgb").." "..CKWord("Gefahr", "Peril_rgb_de").." oder mehr löst eine Selbstexplosion aus!",
		it = "Carica il potere psichico e rilascialo per infliggere alti "..CKWord("Danni", "Damage_rgb_it").." a un singolo nemico.\n"
			.."\n"
			..Dot_green.." Efficace contro Flak e Carapace.\n"
			..Dot_green.." Colpisce sempre i "..CKWord("Punti deboli", "Weakspots_rgb_it")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Attenzione!{#reset()}\n"
			.."Incantesimo con "..CNumb("97%", "pc_97_rgb").." o più di "..CKWord("Pericolo", "Peril_rgb_it").." innesca un'autodetonazione!",
		ja = "精神力チャージし、放つことで単体の敵に高い"..CKWord("ダメージ", "Damage_rgb_ja").."を与える。\n"
			.."\n"
			..Dot_green.." フラック装甲とカラペース装甲に有効。\n"
			..Dot_green.." 常に"..CKWord("弱点", "Weakspots_rgb_ja").."を狙う。\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			.."チャージ中の"..CNumb("97%", "pc_97_rgb").."以上の"..CKWord("危険", "Peril_rgb_ja").."で発動すると自爆する！",
		ko = "사이킥 파워를 충전하여 단일 적에게 높은 "..CKWord("피해", "Damage_rgb_ko").."를 줍니다.\n"
			.."\n"
			..Dot_green.." 플랙 및 카라페이스 방어구에 효과적입니다.\n"
			..Dot_green.." 항상 "..CKWord("약점", "Weakspots_rgb_ko").."을 맞춥니다.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}경고!{#reset()}\n"
			..CNumb("97%", "pc_97_rgb").." 이상의 "..CKWord("위험", "Peril_rgb_ko").."에서 시전 시 자폭합니다!",
		pl = "Naładuj moc psychiczna i uwolnij ją, aby zadać wysokie "..CKWord("Obrażenia", "Damage_rgb_pl").." pojedynczemu wrogowi.\n"
			.."\n"
			..Dot_green.." Skuteczny przeciw pancerzowi Flak i Karapaksowemu.\n"
			..Dot_green.." Zawsze celuje w "..CKWord("Słabe punkty", "Weakspots_rgb_pl")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Ostrzeżenie!{#reset()}\n"
			.."Rzucenie przy "..CNumb("97%", "pc_97_rgb").." lub więcej "..CKWord("Zagrożenia", "Peril_rgb_pl").." spowoduje samowybuch!",
		["pt-br"] = "Carregue o poder psíquico e libere-o para causar alto "..CKWord("Dano", "Damage_rgb_pt_br").." em um único inimigo.\n"
			.."\n"
			..Dot_green.." Eficaz contra armaduras Flak e Carapaça.\n"
			..Dot_green.." Sempre mira em "..CKWord("Pontos fracos", "Weakspots_rgb_pt_br")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Aviso!{#reset()}\n"
			.."Conjurar com "..CNumb("97%", "pc_97_rgb").." ou mais de "..CKWord("Perigo", "Peril_rgb_pt_br").." causa uma auto-explosão!",
		es = "Carga el poder psíquico y libéralo para infligir alto "..CKWord("Daño", "Damage_rgb_es").." a un solo enemigo.\n"
			.."\n"
			..Dot_green.." Eficaz contra blindaje Flak y Caparazón.\n"
			..Dot_green.." Siempre apunta a "..CKWord("Puntos débiles", "Weakspots_rgb_es")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}¡Advertencia!{#reset()}\n"
			.."Lanzar con "..CNumb("97%", "pc_97_rgb").." o más de "..CKWord("Peligro", "Peril_rgb_es").." provoca una autoexplosión.",
	},
	--[+ BLITZ 1 - Brain Rupture +]--	09.06.2026
	["loc_talent_psyker_brain_burst_improved_description"] = { -- talent_old: Brain Burst, damage: +50%, &->and, +colors
		en = "Charge up your psychic power and release it to deal immense "..CKWord("Damage", "Damage_rgb").." to a Single Enemy.\n"
			..Dot_green.." An augmented version of {talent_old:%s} that deals {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_green.." Effective against Flak and Carapace.\n"
			..Dot_green.." Always targets "..CKWord("Weakspots", "Weakspots_rgb")..".\n"
			..Dot_green.." Charging the main attack to "..CNumb("50%", "pc_50_rgb").." lightly "..CKWord("Staggers", "Staggers_rgb").." the target.\n"
			..Dot_green.." On impact, "..CKWord("Staggers", "Staggers_rgb").." almost all enemies.\n"
			..Dot_red.." Cannot "..CKWord("Stagger", "Stagger_rgb").." Mutants, Ogryns, Monstrosities or enemies with active Void shield.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Casting with "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." or higher will trigger a self-explosion!",
		ru = "Зарядите свою психическую мощь и высвободите её, чтобы нанести огромный "..CKWord("урон", "uron_rgb_ru").." одному врагу.\n" -- Разрыв мозга
			..Dot_green.." Это улучшенная версия таланта {talent_old:%s}, наносящая {damage:%s} "..CKWord("урона", "urona_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
			..Dot_green.." Всегда бьёт в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
			..Dot_green.." На уровне заряда "..CNumb("50%", "pc_50_rgb").." основная атака слегка "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." цель.\n"
			..Dot_red.." Не "..CKWord("ошеломляет", "oshelomlaet_rgb_ru")..": мутантов, огринов, чудовищ и врагов с активным пустотным щитом.\n"
			..Dot_green.." При полном заряде "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, кроме мутантов, чудовищ и врагов с активным пустотным щитом.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте при уровне "..CKWord("опасности", "opasnosti_rgb_ru").." "..CNumb("97%", "pc_97_rgb").." или выше иначе вы взорвётесь!",
		fr = "Chargez votre puissance psychique et relâchez-la pour infliger d'immenses "..CKWord("Dégâts", "Damage_rgb_fr").." à un seul ennemi.\n"
			..Dot_green.." Une version améliorée de {talent_old:%s} infligeant {damage:%s} "..CKWord("Dégâts", "Damage_rgb_fr")..".\n"
			.."\n"
			..Dot_green.." Efficace contre les armures Flak et Carapace.\n"
			..Dot_green.." Vise toujours les "..CKWord("Points faibles", "Weakspots_rgb_fr")..".\n"
			..Dot_green.." Charger l'attaque principale à "..CNumb("50%", "pc_50_rgb").." "..CKWord("Vacille", "Staggers_rgb_fr").." légèrement la cible.\n"
			..Dot_green.." À l'impact, "..CKWord("Vacille", "Staggers_rgb_fr").." presque tous les ennemis.\n"
			..Dot_red.." Ne peut pas "..CKWord("Vaciller", "Stagger_rgb_fr").." les Mutants, Ogryns, Monstruosités ou ennemis avec bouclier du Vide actif.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Attention !{#reset()}\n"
			.."Incantation à "..CNumb("97%", "pc_97_rgb").." de "..CKWord("Péril", "Peril_rgb_fr").." ou plus déclenche une auto-explosion !",
		["zh-tw"] = "蓄積靈能力量並釋放，對單一敵人造成巨量"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_green.." 此為 {talent_old:%s} 的強化版，"..CKWord("傷害", "Damage_rgb_tw").." 增加 {damage:%s}。\n"
			.."\n"
			..Dot_green.." 對防彈護甲和甲殼護甲敵人有效。\n"
			..Dot_green.." 必定命中"..CKWord("弱點", "Weakspots_rgb_tw").."。\n"
			..Dot_green.." 蓄力至 "..CNumb("50%", "pc_50_rgb").." 時，會使目標輕微"..CKWord("踉蹌", "Staggers_rgb_tw").."。\n"
			..Dot_green.." 命中時使幾乎所有敵人"..CKWord("踉蹌", "Staggers_rgb_tw").."。\n"
			..Dot_red.." 無法"..CKWord("踉蹌", "Stagger_rgb_tw").." 變種人、歐格林、巨獸或有虛空護盾的敵人。\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			..Dot_red.." 反噬達 "..CNumb("97%", "pc_97_rgb").." 或以上時施放將觸發自爆！",
		["zh-cn"] = "充能灵能并释放，对单个敌人造成巨额"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_green.." {talent_old:%s}的强化版本，造成{damage:%s}"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 对防弹甲与甲壳甲有效。\n"
			..Dot_green.." 总是命中"..CKWord("弱点", "Weakspot_rgb_zh_cn").."。\n"
			..Dot_green.." 主要攻击充能至"..CNumb("50%", "pc_50_rgb").."时轻微"..CKWord("踉跄", "Stagger_rgb_zh_cn").."目标。\n"
			..Dot_green.." 命中时"..CKWord("踉跄", "Stagger_rgb_zh_cn").."几乎所有敌人。\n"
			..Dot_red.." 无法"..CKWord("踉跄", "Stagger_rgb_zh_cn").."突变者、欧格林、巨兽或拥有主动虚空护盾的敌人。\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			.."在"..CNumb("97%", "pc_97_rgb").."或以上"..CKWord("危机值", "Peril_rgb_zh_cn").."时施放会引发自爆！",
		de = "Laden Sie psychische Energie auf und entladen Sie sie, um einem einzelnen Gegner enormen "..CKWord("Schaden", "Damage_rgb_de").." zuzufügen.\n"
			..Dot_green.." Eine verbesserte Version von {talent_old:%s}, die {damage:%s} "..CKWord("Schaden", "Damage_rgb_de").." verursacht.\n"
			.."\n"
			..Dot_green.." Effektiv gegen Flak- und Carapax-Rüstung.\n"
			..Dot_green.." Trifft immer "..CKWord("Schwachstellen", "Weakspots_rgb_de")..".\n"
			..Dot_green.." Aufladen der Hauptattacke auf "..CNumb("50%", "pc_50_rgb").." "..CKWord("taumelt", "Staggers_rgb_de").." das Ziel leicht.\n"
			..Dot_green.." Bei Einschlag "..CKWord("taumelt", "Staggers_rgb_de").." fast alle Gegner.\n"
			..Dot_red.." Kann keine Mutanten, Ogryns, Monstrositäten oder Gegner mit aktivem Leere-Schild "..CKWord("taumeln", "Stagger_rgb_de")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warnung!{#reset()}\n"
			.."Wirken bei "..CNumb("97%", "pc_97_rgb").." "..CKWord("Gefahr", "Peril_rgb_de").." oder mehr löst eine Selbstexplosion aus!",
		it = "Carica il potere psichico e rilascialo per infliggere enormi "..CKWord("Danni", "Damage_rgb_it").." a un singolo nemico.\n"
			..Dot_green.." Una versione avanzata di {talent_old:%s} che infligge {damage:%s} "..CKWord("Danni", "Damage_rgb_it")..".\n"
			.."\n"
			..Dot_green.." Efficace contro Flak e Carapace.\n"
			..Dot_green.." Colpisce sempre i "..CKWord("Punti deboli", "Weakspots_rgb_it")..".\n"
			..Dot_green.." Caricare l'attacco principale al "..CNumb("50%", "pc_50_rgb").." "..CKWord("barcolla", "Staggers_rgb_it").." leggermente il bersaglio.\n"
			..Dot_green.." All'impatto, "..CKWord("barcolla", "Staggers_rgb_it").." quasi tutti i nemici.\n"
			..Dot_red.." Non può "..CKWord("barcollare", "Stagger_rgb_it").." Mutanti, Ogryn, Mostruosità o nemici con scudo del Vuoto attivo.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Attenzione!{#reset()}\n"
			.."Incantesimo con "..CNumb("97%", "pc_97_rgb").." o più di "..CKWord("Pericolo", "Peril_rgb_it").." innesca un'autodetonazione!",
		ja = "精神力をチャージし放つことで、単体の敵に莫大な"..CKWord("ダメージ", "Damage_rgb_ja").."を与える。\n"
			..Dot_green.." {talent_old:%s}の強化版。{damage:%s}の"..CKWord("ダメージ", "Damage_rgb_ja").."を与える。\n"
			.."\n"
			..Dot_green.." フラック装甲とカラペース装甲に有効。\n"
			..Dot_green.." 常に"..CKWord("弱点", "Weakspots_rgb_ja").."を狙う。\n"
			..Dot_green.." メイン攻撃を"..CNumb("50%", "pc_50_rgb").."チャージすると対象を軽く"..CKWord("スタッガー", "Staggers_rgb_ja").."させる。\n"
			..Dot_green.." 命中時、ほとんど全ての敵を"..CKWord("スタッガー", "Staggers_rgb_ja").."させる。\n"
			..Dot_red.." ミュータント、オグリン、モンスター、またはアクティブなヴォイドシールドを持つ敵を"..CKWord("スタッガー", "Stagger_rgb_ja").."できない。\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			.."チャージ中の"..CNumb("97%", "pc_97_rgb").."以上の"..CKWord("危険", "Peril_rgb_ja").."で発動すると自爆する！",
		ko = "사이킥 파워를 충전하여 단일 적에게 막대한 "..CKWord("피해", "Damage_rgb_ko").."를 줍니다.\n"
			..Dot_green.." {talent_old:%s}의 강화 버전으로, {damage:%s}의 "..CKWord("피해", "Damage_rgb_ko").."를 줍니다.\n"
			.."\n"
			..Dot_green.." 플랙 및 카라페이스 방어구에 효과적입니다.\n"
			..Dot_green.." 항상 "..CKWord("약점", "Weakspots_rgb_ko").."을 맞춥니다.\n"
			..Dot_green.." 메인 공격을 "..CNumb("50%", "pc_50_rgb").." 충전 시 대상을 약하게 "..CKWord("스태거", "Staggers_rgb_ko").."시킵니다.\n"
			..Dot_green.." 적중 시 거의 모든 적을 "..CKWord("스태거", "Staggers_rgb_ko").."시킵니다.\n"
			..Dot_red.." 뮤턴트, 오그린, 괴수 또는 활성 보이드 실드가 있는 적은 "..CKWord("스태거", "Stagger_rgb_ko").."시킬 수 없습니다.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}경고!{#reset()}\n"
			..CNumb("97%", "pc_97_rgb").." 이상의 "..CKWord("위험", "Peril_rgb_ko").."에서 시전 시 자폭합니다!",
		pl = "Naładuj moc psychiczna i uwolnij ją, aby zadać ogromne "..CKWord("Obrażenia", "Damage_rgb_pl").." pojedynczemu wrogowi.\n"
			..Dot_green.." Ulepszona wersja {talent_old:%s}, zadająca {damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl")..".\n"
			.."\n"
			..Dot_green.." Skuteczny przeciw pancerzowi Flak i Karapaksowemu.\n"
			..Dot_green.." Zawsze celuje w "..CKWord("Słabe punkty", "Weakspots_rgb_pl")..".\n"
			..Dot_green.." Naładowanie głównego ataku do "..CNumb("50%", "pc_50_rgb").." lekko "..CKWord("ogłusza", "Staggers_rgb_pl").." cel.\n"
			..Dot_green.." Przy trafieniu "..CKWord("ogłusza", "Staggers_rgb_pl").." prawie wszystkich wrogów.\n"
			..Dot_red.." Nie może "..CKWord("ogłuszyć", "Stagger_rgb_pl").." mutantów, ogrynów, monstrualności ani wrogów z aktywną tarczą Void.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Ostrzeżenie!{#reset()}\n"
			.."Rzucenie przy "..CNumb("97%", "pc_97_rgb").." lub więcej "..CKWord("Zagrożenia", "Peril_rgb_pl").." spowoduje samowybuch!",
		["pt-br"] = "Carregue o poder psíquico e libere-o para causar dano imenso "..CKWord("Dano", "Damage_rgb_pt_br").." em um único inimigo.\n"
			..Dot_green.." Uma versão aumentada de {talent_old:%s} que causa {damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br")..".\n"
			.."\n"
			..Dot_green.." Eficaz contra armaduras Flak e Carapaça.\n"
			..Dot_green.." Sempre mira em "..CKWord("Pontos fracos", "Weakspots_rgb_pt_br")..".\n"
			..Dot_green.." Carregar o ataque principal até "..CNumb("50%", "pc_50_rgb").." "..CKWord("cambaleia", "Staggers_rgb_pt_br").." levemente o alvo.\n"
			..Dot_green.." No impacto, "..CKWord("cambaleia", "Staggers_rgb_pt_br").." quase todos os inimigos.\n"
			..Dot_red.." Não pode "..CKWord("cambalear", "Stagger_rgb_pt_br").." Mutantes, Ogryns, Monstruosidades ou inimigos com escudo do Vácuo ativo.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Aviso!{#reset()}\n"
			.."Conjurar com "..CNumb("97%", "pc_97_rgb").." ou mais de "..CKWord("Perigo", "Peril_rgb_pt_br").." causa uma auto-explosão!",
		es = "Carga el poder psíquico y libéralo para infligir daño inmenso "..CKWord("Daño", "Damage_rgb_es").." a un solo enemigo.\n"
			..Dot_green.." Una versión mejorada de {talent_old:%s} que inflige {damage:%s} de "..CKWord("Daño", "Damage_rgb_es")..".\n"
			.."\n"
			..Dot_green.." Eficaz contra blindaje Flak y Caparazón.\n"
			..Dot_green.." Siempre apunta a "..CKWord("Puntos débiles", "Weakspots_rgb_es")..".\n"
			..Dot_green.." Cargar el ataque principal al "..CNumb("50%", "pc_50_rgb").." "..CKWord("tambalea", "Staggers_rgb_es").." ligeramente al objetivo.\n"
			..Dot_green.." Al impactar, "..CKWord("tambalea", "Staggers_rgb_es").." a casi todos los enemigos.\n"
			..Dot_red.." No puede "..CKWord("tambalear", "Stagger_rgb_es").." a Mutantes, Ogryns, Monstruosidades o enemigos con escudo del Vacío activo.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}¡Advertencia!{#reset()}\n"
			.."Lanzar con "..CNumb("97%", "pc_97_rgb").." o más de "..CKWord("Peligro", "Peril_rgb_es").." provoca una autoexplosión.",
	},
	--[+ BLITZ 1-1 - Kinetic Resonance +]--	09.06.2026
	["loc_talent_psyker_ability_increase_brain_burst_speed_desc"] = { -- talent_name: Brain Rupture, smite_attack_speed: +75%, warp_charge_cost: 50%, duration: 10, s->seconds, +colors
		en = "Using your "..CKWord("Combat Ability", "Cmbt_abil_rgb").." buffs your {talent_name:%s} for {duration:%s} seconds:\n"
			..Dot_green.." {smite_attack_speed:%s} charge speed,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} "..CKWord("Peril", "Peril_rgb").." generation.\n"
			.."\n"
			..Dot_nc.." Affects both Primary and Secondary attacks.",
		ru = "При использовании вашей "..CKWord("боевой способности", "Cmbt_abil_rgb_ru").." усиливается ваш {talent_name:%s} на {duration:%s} секунд:\n" -- Кинетический резонанс
			..Dot_green.." {smite_attack_speed:%s} к скорости заряжания,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Влияет как на основную, так и на дополнительную атаку.",
		fr = "Utiliser votre "..CKWord("Capacité de combat", "Cmbt_abil_rgb_fr").." améliore votre {talent_name:%s} pendant {duration:%s} secondes :\n"
			..Dot_green.." {smite_attack_speed:%s} vitesse de charge,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} génération de "..CKWord("Péril", "Peril_rgb_fr")..".\n"
			.."\n"
			..Dot_nc.." Affecte les attaques principales et secondaires.",
		["zh-tw"] = "使用"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."後，你的 {talent_name:%s} 在 {duration:%s} 秒內獲得強化：\n"
			..Dot_green.." {smite_attack_speed:%s} 蓄力速度，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} "..CKWord("反噬", "Peril_rgb_tw").."產生量。\n"
			.."\n"
			..Dot_nc.." 同時影響主要和次要攻擊。",
		["zh-cn"] = "使用"..CKWord("作战技能", "Cmbt_abil_rgb_zh_cn").."后，在{duration:%s}秒内强化你的{talent_name:%s}：\n"
			..Dot_green.." {smite_attack_speed:%s} 充能速度，\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} "..CKWord("危机值", "Peril_rgb_zh_cn").."产生。\n"
			.."\n"
			..Dot_nc.." 影响主要与次要攻击。",
		de = "Die Verwendung Ihrer "..CKWord("Kampffähigkeit", "Cmbt_abil_rgb_de").." verbessert {talent_name:%s} für {duration:%s} Sekunden:\n"
			..Dot_green.." {smite_attack_speed:%s} Ladegeschwindigkeit,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} "..CKWord("Gefahr", "Peril_rgb_de").."-Erzeugung.\n"
			.."\n"
			..Dot_nc.." Betrifft Primär- und Sekundärangriffe.",
		it = "Usare la tua "..CKWord("Abilità di combattimento", "Cmbt_abil_rgb_it").." potenzia il tuo {talent_name:%s} per {duration:%s} secondi:\n"
			..Dot_green.." {smite_attack_speed:%s} velocità di carica,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} generazione di "..CKWord("Pericolo", "Peril_rgb_it")..".\n"
			.."\n"
			..Dot_nc.." Colpisce sia gli attacchi primari che secondari.",
		ja = "あなたの"..CKWord("戦闘アビリティ", "Cmbt_abil_rgb_ja").."を使用すると、{duration:%s}秒間{talent_name:%s}が強化される：\n"
			..Dot_green.." {smite_attack_speed:%s} チャージ速度、\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} "..CKWord("危険", "Peril_rgb_ja").."生成。\n"
			.."\n"
			..Dot_nc.." メイン攻撃とセカンダリ攻撃の両方に影響。",
		ko = "당신의 "..CKWord("전투 능력", "Cmbt_abil_rgb_ko").." 사용 시 {duration:%s}초 동안 {talent_name:%s}이(가) 강화됩니다:\n"
			..Dot_green.." {smite_attack_speed:%s} 충전 속도,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} "..CKWord("위험", "Peril_rgb_ko").." 생성.\n"
			.."\n"
			..Dot_nc.." 주 공격과 보조 공격 모두에 적용됩니다.",
		pl = "Użycie twojej "..CKWord("Umiejętności bojowej", "Cmbt_abil_rgb_pl").." wzmacnia {talent_name:%s} na {duration:%s} sekund:\n"
			..Dot_green.." {smite_attack_speed:%s} szybkość ładowania,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} generacja "..CKWord("Zagrożenia", "Peril_rgb_pl")..".\n"
			.."\n"
			..Dot_nc.." Wpływa na ataki podstawowe i dodatkowe.",
		["pt-br"] = "Usar sua "..CKWord("Habilidade de combate", "Cmbt_abil_rgb_pt_br").." buffa seu {talent_name:%s} por {duration:%s} segundos:\n"
			..Dot_green.." {smite_attack_speed:%s} velocidade de carga,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} geração de "..CKWord("Perigo", "Peril_rgb_pt_br")..".\n"
			.."\n"
			..Dot_nc.." Afeta ataques primários e secundários.",
		es = "Usar tu "..CKWord("Habilidad de combate", "Cmbt_abil_rgb_es").." mejora tu {talent_name:%s} durante {duration:%s} segundos:\n"
			..Dot_green.." {smite_attack_speed:%s} velocidad de carga,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} generación de "..CKWord("Peligro", "Peril_rgb_es")..".\n"
			.."\n"
			..Dot_nc.." Afecta tanto a ataques primarios como secundarios.",
	},
	--[+ BLITZ 1-2 - Kinetic Flayer +]--	09.06.2026
	["loc_talent_psyker_smite_on_hit_special_elite_desc"] = { -- smite_chance: 10%, talent_name: Brain Rupture, time: 15, s->seconds, +colors
		en = "Attacks vs Specials, Elites and Monstrosities, have a {smite_chance:%s} chance on Hit to inflict {talent_name:%s}.\n"
			..Dot_nc.." Cooldown {time:%s} seconds.",
		ru = "При атаке специалистов, элитных врагов или чудовищ, есть {smite_chance:%s} шанс на срабатывание блица {talent_name:%s}.\n" -- Кинетический живодёр -- руоф Кинетический истребитель
			..Dot_nc.." Восстановление {time:%s} секунд.",
		fr = "Les attaques contre les Spécialistes, Élites et Monstruosités ont {smite_chance:%s} de chance d'infliger {talent_name:%s} par Coup.\n"
			..Dot_nc.." Temps de recharge {time:%s} secondes.",
		["zh-tw"] = "攻擊專家、精英或巨獸時，每次命中有 {smite_chance:%s} 機率施加 {talent_name:%s}。\n"
			..Dot_nc.." 冷卻時間 {time:%s} 秒。",
		["zh-cn"] = "对专家和精英敌人的攻击有{smite_chance:%s}几率命中时触发{talent_name:%s}。\n"
			..Dot_nc.." 冷却时间{time:%s}秒。",
		de = "Angriffe gegen Spezialisten, Eliten und Monstrositäten haben eine {smite_chance:%s} Chance bei Treffer, {talent_name:%s} auszulösen.\n"
			..Dot_nc.." Abklingzeit {time:%s} Sekunden.",
		it = "Gli attacchi contro Specialisti, Elite e Mostruosità hanno {smite_chance:%s} probabilità di infliggere {talent_name:%s} al colpo.\n"
			..Dot_nc.." Ricarica {time:%s} secondi.",
		ja = "スペシャリスト、エリート、モンスターへの攻撃はヒット時に{smite_chance:%s}の確率で{talent_name:%s}を発動する。\n"
			..Dot_nc.." クールダウン{time:%s}秒。",
		ko = "전문가, 정예 및 괴수 공격 시 {smite_chance:%s} 확률로 타격 시 {talent_name:%s}을(를) 발동합니다.\n"
			..Dot_nc.." 재사용 대기시간 {time:%s}초.",
		pl = "Ataki przeciwko Specjalistom, Elitom i Monstrualnościom mają {smite_chance:%s} szansy przy trafieniu na zadanie {talent_name:%s}.\n"
			..Dot_nc.." Odnowienie {time:%s} sekund.",
		["pt-br"] = "Ataques contra Especialistas, Inimigos de Elite e Monstruosidades têm {smite_chance:%s} de chance ao acertar de causar {talent_name:%s}.\n"
			..Dot_nc.." Tempo de recarga {time:%s} segundos.",
		es = "Los ataques contra Especialistas, Élites y Monstruosidades tienen un {smite_chance:%s} de probabilidad al golpear de infligir {talent_name:%s}.\n"
			..Dot_nc.." Tiempo de reutilización {time:%s} segundos.",
	},
	--[+ BLITZ 2 - Smite - Сокрушение +]--	09.06.2026
	["loc_ability_psyker_chain_lightning_description"] = { -- +colors
		en = "Unleash a torrent of chain bio-lightning that arcs between enemies, dealing low "..CKWord("Electrocuting", "Electrcuting_rgb").." "..CKWord("Damage", "Damage_rgb").." over time and inflicting high "..CKWord("Stagger", "Stagger_rgb")..".\n"
			.."The secondary charged attack deals increased "..CKWord("Damage", "Damage_rgb").." and jumps faster.\n"
			.."\n"
			..Dot_nc.." Max range: "..CNumb("16", "n_16_rgb").." meters.\n"
			..Dot_nc.." Only targets torso hitzone.\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." Average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Low "..CKWord("Damage", "Damage_rgb").." vs Carapace.\n"
			..Dot_red.." Cannot "..CKWord("Stagger", "Stagger_rgb").." Monstrosities or enemies with an active Void shield.\n"
			.."\n"
			..Dot_nc.." Forces a brief Quelling action upon reaching "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", removing ~"..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("Peril", "Peril_rgb")..". If released below "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", it pushes enemies back.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Do not use a Primary attack while channeling a Secondary attack at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", or you will self-explode.",
		ru = "Вы выпускаете поток цепной биомолнии, которая медленно распространяется между врагами, нанося им низкий "..CKWord("урон", "uron_rgb_ru").." "..CKWord("электрошоком", "elektroshokom_rgb_ru").." с течением времени и высокое "..CKWord("ошеломление", "oshelomlenie_rgb_ru")..".\n"
			.."Вторичная заряженная атака наносит повышенный "..CKWord("урон", "uron_rgb_ru").." при высвобождении, а также быстрее распространяется.\n"
			.."\n"
			..Dot_nc.." Дальность: "..CNumb("16", "n_16_rgb").." метров.\n"
			..Dot_nc.." Бьёт только в зону туловища.\n"
			..Dot_nc.." При "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." запускается автоматическое подавление ~"..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..". Если отпустить атаку при уровне "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("100%", "pc_100_rgb")..", врагов отбросит назад.\n"
			..CPhrs("Cant_Crit")
			..Dot_red.." Средний "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.\n"
			..Dot_red.." Не "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." чудовищ и врагов с активным пустотным щитом.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте основную атаку пока держите дополнительную при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." или вы взорвётесь.",
		fr = "Libérez un torrent de bio-éclair en chaîne qui se propage entre les ennemis, infligeant de faibles "..CKWord("Dégâts", "Damage_rgb_fr").." "..CKWord("d'électrocution", "Electrcuting_rgb_fr").." dans le temps et infligeant un "..CKWord("Vacillement", "Stagger_rgb_fr").." élevé.\n"
			.."L'attaque chargée secondaire inflige des "..CKWord("Dégâts", "Damage_rgb_fr").." accrus et se propage plus rapidement.\n"
			.."\n"
			..Dot_nc.." Portée max : "..CNumb("16", "n_16_rgb").." mètres.\n"
			..Dot_nc.." Vise uniquement la zone du torse.\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." "..CKWord("Dégâts", "Damage_rgb_fr").." moyens contre armure.\n"
			..Dot_red.." Faibles "..CKWord("Dégâts", "Damage_rgb_fr").." contre Carapace.\n"
			..Dot_red.." Ne peut pas "..CKWord("Vaciller", "Stagger_rgb_fr").." les Monstruosités ou les ennemis avec bouclier du Vide actif.\n"
			.."\n"
			..Dot_nc.." Force une brève action d'Apaisement à "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Péril", "Peril_rgb_fr")..", éliminant ~"..CNumb("8.5%", "pc_8_5_rgb").." de "..CKWord("Péril", "Peril_rgb_fr")..". Si relâché en dessous de "..CNumb("100%", "pc_100_rgb")..", repousse les ennemis.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Attention !{#reset()}\n"
			.."N'utilisez pas d'attaque principale pendant une attaque secondaire canalisée à "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Péril", "Peril_rgb_fr")..", sinon vous exploserez.",
		["zh-tw"] = "釋放在敵人之間跳躍的鏈式生物閃電，造成低量持續"..CKWord("電擊", "Electrcuting_rgb_tw")..CKWord("傷害", "Damage_rgb_tw").."，並造成大量"..CKWord("踉蹌", "Stagger_rgb_tw").."。\n"
			.."次要蓄力攻擊造成更高"..CKWord("傷害", "Damage_rgb_tw").."，且跳躍速度更快。\n"
			.."\n"
			..Dot_nc.." 最大射程："..CNumb("16", "n_16_rgb").." 公尺。\n"
			..Dot_nc.." 僅命中軀幹部位。\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." 對護甲造成中等"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_red.." 對甲殼護甲造成低量"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_red.." 無法"..CKWord("踉蹌", "Stagger_rgb_tw").." 巨獸或有虛空護盾的敵人。\n"
			.."\n"
			..Dot_nc.." "..CKWord("反噬", "Peril_rgb_tw").."達 "..CNumb("100%", "pc_100_rgb").." 時會強制短暫平息，消除約 "..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("反噬", "Peril_rgb_tw").."。若在低於 "..CNumb("100%", "pc_100_rgb").." "..CKWord("反噬", "Peril_rgb_tw").."時停止施放，則會推開敵人。\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			..Dot_red.." 在 "..CNumb("100%", "pc_100_rgb").." "..CKWord("反噬", "Peril_rgb_tw").."下引導次要攻擊時，請勿使用主要攻擊，否則將觸發自爆！",
		["zh-cn"] = "释放一道链式生物闪电洪流，在敌人之间跳跃，随时间造成低"..CKWord("伤害", "Damage_rgb_zh_cn").."的"..CKWord("电击", "Electrcuting_rgb_zh_cn").."和高"..CKWord("踉跄", "Stagger_rgb_zh_cn").."。\n"
			.."次要充能攻击造成更高的"..CKWord("伤害", "Damage_rgb_zh_cn").."且跳跃更快。\n"
			.."\n"
			..Dot_nc.." 最大范围："..CNumb("16", "n_16_rgb").."米。\n"
			..Dot_nc.." 只会击中躯干区域。\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." 中等护甲"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_red.." 对甲壳甲"..CKWord("伤害", "Damage_rgb_zh_cn").."较低。\n"
			..Dot_red.." 无法"..CKWord("踉跄", "Stagger_rgb_zh_cn").."巨兽或拥有主动虚空护盾的敌人。\n"
			.."\n"
			..Dot_nc.." 达到"..CNumb("100%", "pc_100_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."时强制短暂镇静，移除约"..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."。若在"..CNumb("100%", "pc_100_rgb").."以下释放，会击退敌人。\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			.."不要在引导次要攻击时使用主要攻击，否则会自爆。",
		de = "Entfesseln Sie einen Strom kettenartiger Bio-Blitze, die zwischen Gegnern springen, geringen "..CKWord("Schaden", "Damage_rgb_de").." durch "..CKWord("Elektrisierung", "Electrcuting_rgb_de").." über Zeit verursachen und hohes "..CKWord("Taumeln", "Stagger_rgb_de").." zufügen.\n"
			.."Die sekundäre aufgeladene Attacke verursacht erhöhten "..CKWord("Schaden", "Damage_rgb_de").." und springt schneller.\n"
			.."\n"
			..Dot_nc.." Max. Reichweite: "..CNumb("16", "n_16_rgb").." Meter.\n"
			..Dot_nc.." Trifft nur die Rumpfzone.\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." Durchschnittlicher Rüstungs-"..CKWord("Schaden", "Damage_rgb_de")..".\n"
			..Dot_red.." Geringer "..CKWord("Schaden", "Damage_rgb_de").." gegen Carapax.\n"
			..Dot_red.." Kann keine Monstrositäten oder Gegner mit aktivem Leere-Schild "..CKWord("taumeln", "Stagger_rgb_de")..".\n"
			.."\n"
			..Dot_nc.." Erzwingt eine kurze Beruhigung bei "..CNumb("100%", "pc_100_rgb").." "..CKWord("Gefahr", "Peril_rgb_de")..", entfernt ~"..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("Gefahr", "Peril_rgb_de")..". Bei Loslassen unter "..CNumb("100%", "pc_100_rgb").." werden Gegner zurückgestoßen.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warnung!{#reset()}\n"
			.."Verwenden Sie keinen Primärangriff während eines Sekundärangriffs bei "..CNumb("100%", "pc_100_rgb").." "..CKWord("Gefahr", "Peril_rgb_de")..", sonst explodieren Sie.",
		it = "Scatena un torrente di bio-fulmine a catena che si propaga tra i nemici, infliggendo nel tempo bassi "..CKWord("Danni", "Damage_rgb_it").." da "..CKWord("Folgorazione", "Electrcuting_rgb_it").." e alto "..CKWord("Barcollamento", "Stagger_rgb_it")..".\n"
			.."L'attacco secondario carico infligge "..CKWord("Danni", "Damage_rgb_it").." aumentati e si propaga più velocemente.\n"
			.."\n"
			..Dot_nc.." Portata max: "..CNumb("16", "n_16_rgb").." metri.\n"
			..Dot_nc.." Colpisce solo la zona del torso.\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." "..CKWord("Danni", "Damage_rgb_it").." medi contro armatura.\n"
			..Dot_red.." Bassi "..CKWord("Danni", "Damage_rgb_it").." contro Carapace.\n"
			..Dot_red.." Non può "..CKWord("barcollare", "Stagger_rgb_it").." Mostruosità o nemici con scudo del Vuoto attivo.\n"
			.."\n"
			..Dot_nc.." Forza una breve azione di Quietudine al "..CNumb("100%", "pc_100_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it")..", rimuovendo ~"..CNumb("8.5%", "pc_8_5_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it")..". Se rilasciato sotto "..CNumb("100%", "pc_100_rgb")..", respinge i nemici.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Attenzione!{#reset()}\n"
			.."Non usare un attacco primario mentre canalizzi un attacco secondario al "..CNumb("100%", "pc_100_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it")..", o esploderai.",
		ja = "敵の間を連鎖するバイオライトニングの奔流を放ち、時間経過で低い"..CKWord("ダメージ", "Damage_rgb_ja").."の"..CKWord("感電", "Electrcuting_rgb_ja").."と高い"..CKWord("スタッガー", "Stagger_rgb_ja").."を与える。\n"
			.."セカンダリチャージ攻撃は"..CKWord("ダメージ", "Damage_rgb_ja").."が増加し、より速く跳躍する。\n"
			.."\n"
			..Dot_nc.." 最大範囲："..CNumb("16", "n_16_rgb").."メートル。\n"
			..Dot_nc.." 胴体ゾーンのみをターゲット。\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." 装甲への"..CKWord("ダメージ", "Damage_rgb_ja").."は中程度。\n"
			..Dot_red.." カラペース装甲への"..CKWord("ダメージ", "Damage_rgb_ja").."は低い。\n"
			..Dot_red.." モンスターまたはアクティブなヴォイドシールドを持つ敵を"..CKWord("スタッガー", "Stagger_rgb_ja").."できない。\n"
			.."\n"
			..Dot_nc.." "..CNumb("100%", "pc_100_rgb").."の"..CKWord("危険", "Peril_rgb_ja").."に達すると短いクエリング動作を強制され、約"..CNumb("8.5%", "pc_8_5_rgb").."の"..CKWord("危険", "Peril_rgb_ja").."を除去する。"..CNumb("100%", "pc_100_rgb").."未満で放つと敵をノックバックする。\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			.."セカンダリ攻撃をチャネリング中に"..CNumb("100%", "pc_100_rgb").."の"..CKWord("危険", "Peril_rgb_ja").."でプライマリ攻撃を使用しないこと。自爆する。",
		ko = "적 사이를 연쇄하는 생체 번개를 방출하여 시간이 지남에 따라 낮은 "..CKWord("피해", "Damage_rgb_ko").."의 "..CKWord("감전", "Electrcuting_rgb_ko").."과 높은 "..CKWord("스태거", "Stagger_rgb_ko").."를 줍니다.\n"
			.."보조 충전 공격은 증가된 "..CKWord("피해", "Damage_rgb_ko").."를 주고 더 빠르게 연쇄됩니다.\n"
			.."\n"
			..Dot_nc.." 최대 사거리: "..CNumb("16", "n_16_rgb").."미터.\n"
			..Dot_nc.." 몸통 부위만 타격합니다.\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." 평균 방어구 "..CKWord("피해", "Damage_rgb_ko")..".\n"
			..Dot_red.." 카라페이스 방어구에 "..CKWord("피해", "Damage_rgb_ko").."가 낮습니다.\n"
			..Dot_red.." 괴수 또는 활성 보이드 실드가 있는 적을 "..CKWord("스태거", "Stagger_rgb_ko").."시킬 수 없습니다.\n"
			.."\n"
			..Dot_nc.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("위험", "Peril_rgb_ko").." 도달 시 짧은 진정 동작을 강제로 수행하며 약 "..CNumb("8.5%", "pc_8_5_rgb").."의 "..CKWord("위험", "Peril_rgb_ko").."을 제거합니다."..CNumb("100%", "pc_100_rgb").." 미만에서 해제 시 적을 밀쳐냅니다.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}경고!{#reset()}\n"
			.."보조 공격을 유지하는 중 "..CNumb("100%", "pc_100_rgb").." "..CKWord("위험", "Peril_rgb_ko").."에서 주 공격을 사용하지 마십시오. 자폭합니다.",
		pl = "Uwolnij strumień łańcuchowego bio-błyskawicy, który przeskakuje między wrogami, zadając niskie "..CKWord("Obrażenia", "Damage_rgb_pl").." od "..CKWord("porażenia", "Electrcuting_rgb_pl").." w czasie i wysokie "..CKWord("ogłuszenie", "Stagger_rgb_pl")..".\n"
			.."Drugi ładowany atak zadaje zwiększone "..CKWord("Obrażenia", "Damage_rgb_pl").." i przeskakuje szybciej.\n"
			.."\n"
			..Dot_nc.." Maks. zasięg: "..CNumb("16", "n_16_rgb").." metrów.\n"
			..Dot_nc.." Celuje tylko w strefę tułowia.\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." Przeciętne "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciw pancerzowi.\n"
			..Dot_red.." Niskie "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciw Karapaksowi.\n"
			..Dot_red.." Nie może "..CKWord("ogłuszyć", "Stagger_rgb_pl").." monstrualności ani wrogów z aktywną tarczą Void.\n"
			.."\n"
			..Dot_nc.." Wymusza krótką akcję Uciszenia przy "..CNumb("100%", "pc_100_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl")..", usuwając ~"..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl")..". Jeśli zwolnione poniżej "..CNumb("100%", "pc_100_rgb")..", odrzuca wrogów.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Ostrzeżenie!{#reset()}\n"
			.."Nie używaj ataku podstawowego podczas kanałowania ataku dodatkowego przy "..CNumb("100%", "pc_100_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl")..", inaczej eksplodujesz.",
		["pt-br"] = "Libere um torrente de bio-relâmpago em cadeia que arca entre inimigos, causando baixo "..CKWord("Dano", "Damage_rgb_pt_br").." de "..CKWord("Eletrocussão", "Electrcuting_rgb_pt_br").." ao longo do tempo e alto "..CKWord("Cambaleamento", "Stagger_rgb_pt_br")..".\n"
			.."O ataque secundário carregado causa "..CKWord("Dano", "Damage_rgb_pt_br").." aumentado e arca mais rápido.\n"
			.."\n"
			..Dot_nc.." Alcance máximo: "..CNumb("16", "n_16_rgb").." metros.\n"
			..Dot_nc.." Mira apenas na zona do tronco.\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." "..CKWord("Dano", "Damage_rgb_pt_br").." médio contra armadura.\n"
			..Dot_red.." Baixo "..CKWord("Dano", "Damage_rgb_pt_br").." contra Carapaça.\n"
			..Dot_red.." Não pode "..CKWord("cambalear", "Stagger_rgb_pt_br").." Monstruosidades ou inimigos com escudo do Vácuo ativo.\n"
			.."\n"
			..Dot_nc.." Força uma breve ação de Aquietamento ao atingir "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br")..", removendo ~"..CNumb("8.5%", "pc_8_5_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br")..". Se liberado abaixo de "..CNumb("100%", "pc_100_rgb")..", empurra os inimigos.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Aviso!{#reset()}\n"
			.."Não use um ataque primário enquanto canaliza um ataque secundário com "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br")..", ou você explodirá.",
		es = "Libera un torrente de bio-rayo en cadena que salta entre enemigos, infligiendo bajo "..CKWord("Daño", "Damage_rgb_es").." de "..CKWord("Electrocución", "Electrcuting_rgb_es").." con el tiempo y alto "..CKWord("Tambaleo", "Stagger_rgb_es")..".\n"
			.."El ataque secundario cargado inflige "..CKWord("Daño", "Damage_rgb_es").." aumentado y salta más rápido.\n"
			.."\n"
			..Dot_nc.." Alcance máximo: "..CNumb("16", "n_16_rgb").." metros.\n"
			..Dot_nc.." Solo apunta a la zona del torso.\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." "..CKWord("Daño", "Damage_rgb_es").." medio contra blindaje.\n"
			..Dot_red.." Bajo "..CKWord("Daño", "Damage_rgb_es").." contra Caparazón.\n"
			..Dot_red.." No puede "..CKWord("tambalear", "Stagger_rgb_es").." a Monstruosidades o enemigos con escudo del Vacío activo.\n"
			.."\n"
			..Dot_nc.." Fuerza una breve acción de Apaciguamiento al alcanzar "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Peligro", "Peril_rgb_es")..", eliminando ~"..CNumb("8.5%", "pc_8_5_rgb").." de "..CKWord("Peligro", "Peril_rgb_es")..". Si se suelta por debajo de "..CNumb("100%", "pc_100_rgb")..", repele a los enemigos.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}¡Advertencia!{#reset()}\n"
			.."No uses un ataque principal mientras canalizas un ataque secundario con "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Peligro", "Peril_rgb_es")..", o explotarás.",
	},
	--[+ BLITZ 2-1 - Charged Strike +]--	09.06.2026
	["loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"] = { -- +colors
		en = "Your Heavy Melee Attacks "..CKWord("Electrocute", "Electrocute_rgb").." enemies, damaging them over time.\n"
			.."\n"
			..Dot_nc.." Deals up to "..CNumb("64", "n_64_rgb").." base "..CKWord("Damage", "Damage_rgb").." per tick at max charge.\n"
			..Dot_nc.." The "..CKWord("Damage", "Damage_rgb").." window lasts up to "..CNumb("2", "n_2_rgb").." seconds.\n"
			..Dot_nc.." The "..CKWord("Electrocuted", "Electrocuted_rgb").." state persists for "..CNumb("2", "n_2_rgb").." seconds after the last "..CKWord("Damage", "Damage_rgb").." tick.\n"
			.."\n"
			..Dot_green.." With "..CKWord("Enfeeble", "Enfeeble_rgb").." selected, "..CKWord("Electrocution", "Electrocution_rgb").." deals "..CKWord("Damage", "Damage_rgb").." twice as long and reaches max charge faster.",
		ru = "Ваши тяжёлые атаки ближнего боя накладывают на врагов эффект "..CKWord("электрошока", "elektroshoka_rgb_ru")..", наносящий им "..CKWord("урон", "uron_rgb_ru")..".\n" -- Заряженный удар
			.."\n"
			..Dot_nc.." Наносит до "..CNumb("64", "n_64_rgb").." единиц базового "..CKWord("урона", "urona_rgb_ru").." за срабатывание при максимальном уровне заряда.\n"
			..Dot_nc.." Окно "..CKWord("урона", "urona_rgb_ru").." длится "..CNumb("2", "n_2_rgb").." секунды.\n"
			..Dot_nc.." Эффект "..CKWord("электрошока", "elektroshoka_rgb_ru").." длится "..CNumb("2", "n_2_rgb").." секунды после последнего нанесения "..CKWord("урона", "urona_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." При выбранном модификаторе "..CKWord("Ослабление", "Enfeeble_rgb_ru")..", эффект "..CKWord("электрошока", "elektroshoka_rgb_ru").." наносит "..CKWord("урон", "uron_rgb_ru").." вдвое дольше и достигает максимального заряда быстрее.",
		fr = "Vos attaques de mêlée lourdes "..CKWord("Électrocutent", "Electrocute_rgb_fr").." les ennemis, leur infligeant des dégâts dans le temps.\n"
			.."\n"
			..Dot_nc.." Inflige jusqu'à "..CNumb("64", "n_64_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." de base par tick à charge maximale.\n"
			..Dot_nc.." La fenêtre de "..CKWord("Dégâts", "Damage_rgb_fr").." dure jusqu'à "..CNumb("2", "n_2_rgb").." secondes.\n"
			..Dot_nc.." L'état "..CKWord("Électrocuté", "Electrocuted_rgb_fr").." persiste "..CNumb("2", "n_2_rgb").." secondes après le dernier tick de "..CKWord("Dégâts", "Damage_rgb_fr")..".\n"
			.."\n"
			..Dot_green.." Avec "..CKWord("Enfeeble", "Enfeeble_rgb_fr").." sélectionné, l'"..CKWord("Électrocution", "Electrocution_rgb_fr").." inflige des "..CKWord("Dégâts", "Damage_rgb_fr").." deux fois plus longtemps et atteint sa charge maximale plus rapidement.",
		["zh-tw"] = "你的近戰重攻擊會"..CKWord("電擊", "Electrocute_rgb_tw").."敵人，造成持續"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 充能全滿時，每次觸發最多造成 "..CNumb("64", "n_64_rgb").." 基礎"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." "..CKWord("傷害", "Damage_rgb_tw").."持續時間最多為 "..CNumb("2", "n_2_rgb").." 秒。\n"
			..Dot_nc.." "..CKWord("電擊", "Electrocute_rgb_tw").."狀態會在最後一次"..CKWord("傷害", "Damage_rgb_tw").."觸發後持續 "..CNumb("2", "n_2_rgb").." 秒。\n"
			.."\n"
			..Dot_green.." 選擇"..CKWord("衰弱詛咒", "Enfeeble_rgb_tw").."時，"..CKWord("電擊", "Electrocute_rgb_tw").."造成"..CKWord("傷害", "Damage_rgb_tw").."的時間延長一倍，且更快達到最高充能。",
		["zh-cn"] = "你的近战重击会"..CKWord("电击", "Electrocute_rgb_zh_cn").."敌人，随时间造成伤害。\n"
			.."\n"
			..Dot_nc.." 最大充能时每次跳动最多造成 "..CNumb("64", "n_64_rgb").." 基础"..CKWord("伤害", "Damage_rgb_zh_cn")..".\n"
			..Dot_nc.." "..CKWord("伤害", "Damage_rgb_zh_cn").."窗口持续最多 "..CNumb("2", "n_2_rgb").." 秒。\n"
			..Dot_nc.." 最后一次"..CKWord("伤害", "Damage_rgb_zh_cn").."跳动后，"..CKWord("电击状态", "Electrocuted_rgb_zh_cn").."持续 "..CNumb("2", "n_2_rgb").." 秒。\n"
			.."\n"
			..Dot_green.." 选择"..CKWord("削弱", "Enfeeble_rgb_zh_cn").."时，"..CKWord("电击", "Electrocute_rgb_zh_cn").."的持续时间加倍，且更快达到最大充能。",
		de = "Ihre schweren Nahkampfangriffe "..CKWord("Elektrisieren", "Electrocute_rgb_de").." Gegner und fügen ihnen über Zeit Schaden zu.\n"
			.."\n"
			..Dot_nc.." Verursacht bis zu "..CNumb("64", "n_64_rgb").." Basisschaden pro Tick bei maximaler Ladung.\n"
			..Dot_nc.." Das Schadensfenster dauert bis zu "..CNumb("2", "n_2_rgb").." Sekunden.\n"
			..Dot_nc.." Der "..CKWord("Elektrisierte", "Electrocuted_rgb_de").."-Zustand hält "..CNumb("2", "n_2_rgb").." Sekunden nach dem letzten Schadens-Tick an.\n"
			.."\n"
			..Dot_green.." Mit ausgewähltem "..CKWord("Enfeeble", "Enfeeble_rgb_de").." verursacht "..CKWord("Elektrisierung", "Electrocution_rgb_de").." doppelt so lang Schaden und erreicht schneller volle Ladung.",
		it = "I tuoi attacchi corpo a corpo pesanti "..CKWord("Folgorano", "Electrocute_rgb_it").." i nemici, infliggendo loro danni nel tempo.\n"
			.."\n"
			..Dot_nc.." Infligge fino a "..CNumb("64", "n_64_rgb").." di "..CKWord("Danno", "Damage_rgb_it").." base per tick alla massima carica.\n"
			..Dot_nc.." La finestra di "..CKWord("Danno", "Damage_rgb_it").." dura fino a "..CNumb("2", "n_2_rgb").." secondi.\n"
			..Dot_nc.." Lo stato "..CKWord("Folgorato", "Electrocuted_rgb_it").." persiste per "..CNumb("2", "n_2_rgb").." secondi dopo l'ultimo tick di "..CKWord("Danno", "Damage_rgb_it")..".\n"
			.."\n"
			..Dot_green.." Con "..CKWord("Enfeeble", "Enfeeble_rgb_it").." selezionato, la "..CKWord("Folgorazione", "Electrocution_rgb_it").." infligge "..CKWord("Danno", "Damage_rgb_it").." per il doppio del tempo e raggiunge la carica massima più velocemente.",
		ja = "近接攻撃の強攻撃は敵を"..CKWord("感電", "Electrocute_rgb_ja").."させ、時間経過でダメージを与える。\n"
			.."\n"
			..Dot_nc.." 最大チャージ時、1ティックあたり最大"..CNumb("64", "n_64_rgb").."の基礎"..CKWord("ダメージ", "Damage_rgb_ja").."を与える。\n"
			..Dot_nc.." "..CKWord("ダメージ", "Damage_rgb_ja").."の持続時間は最大"..CNumb("2", "n_2_rgb").."秒。\n"
			..Dot_nc.." "..CKWord("感電状態", "Electrocuted_rgb_ja").."は最後のダメージティックから"..CNumb("2", "n_2_rgb").."秒間持続する。\n"
			.."\n"
			..Dot_green.." "..CKWord("Enfeeble", "Enfeeble_rgb_ja").."選択時、"..CKWord("感電", "Electrocution_rgb_ja").."のダメージ持続時間が2倍になり、最大チャージまでの時間が短縮される。",
		ko = "근접 공격의 강공격이 적을 "..CKWord("감전", "Electrocute_rgb_ko").."시켜 시간이 지남에 따라 피해를 줍니다.\n"
			.."\n"
			..Dot_nc.." 최대 충전 시 틱당 최대 "..CNumb("64", "n_64_rgb").."의 기본 "..CKWord("피해", "Damage_rgb_ko").."를 줍니다.\n"
			..Dot_nc.." "..CKWord("피해", "Damage_rgb_ko").." 지속 시간은 최대 "..CNumb("2", "n_2_rgb").."초입니다.\n"
			..Dot_nc.." 마지막 피해 틱 이후 "..CKWord("감전 상태", "Electrocuted_rgb_ko").."는 "..CNumb("2", "n_2_rgb").."초간 지속됩니다.\n"
			.."\n"
			..Dot_green.." "..CKWord("Enfeeble", "Enfeeble_rgb_ko").." 선택 시 "..CKWord("감전", "Electrocution_rgb_ko").." 피해 지속 시간이 2배로 길어지고 최대 충전이 더 빨라집니다.",
		pl = "Twoje ciężkie ataki wręcz "..CKWord("Porażają", "Electrocute_rgb_pl").." wrogów, zadając im obrażenia w czasie.\n"
			.."\n"
			..Dot_nc.." Przy maksymalnym naładowaniu zadaje do "..CNumb("64", "n_64_rgb").." bazowych "..CKWord("Obrażeń", "Damage_rgb_pl").." na tyk.\n"
			..Dot_nc.." Okno "..CKWord("Obrażeń", "Damage_rgb_pl").." trwa do "..CNumb("2", "n_2_rgb").." sekund.\n"
			..Dot_nc.." Stan "..CKWord("Porażenia", "Electrocuted_rgb_pl").." utrzymuje się przez "..CNumb("2", "n_2_rgb").." sekundy po ostatnim tyku "..CKWord("Obrażeń", "Damage_rgb_pl")..".\n"
			.."\n"
			..Dot_green.." Przy wybranym "..CKWord("Enfeeble", "Enfeeble_rgb_pl")..", "..CKWord("Porażenie", "Electrocution_rgb_pl").." zadaje obrażenia dwa razy dłużej i szybciej osiąga maksymalne naładowanie.",
		["pt-br"] = "Seus ataques corpo a corpo pesados "..CKWord("Eletrocutam", "Electrocute_rgb_pt_br").." inimigos, causando dano ao longo do tempo.\n"
			.."\n"
			..Dot_nc.." Causa até "..CNumb("64", "n_64_rgb").." de "..CKWord("Dano", "Damage_rgb_pt_br").." base por tique na carga máxima.\n"
			..Dot_nc.." A janela de "..CKWord("Dano", "Damage_rgb_pt_br").." dura até "..CNumb("2", "n_2_rgb").." segundos.\n"
			..Dot_nc.." O estado "..CKWord("Eletrocutado", "Electrocuted_rgb_pt_br").." persiste por "..CNumb("2", "n_2_rgb").." segundos após o último tique de "..CKWord("Dano", "Damage_rgb_pt_br")..".\n"
			.."\n"
			..Dot_green.." Com "..CKWord("Enfeeble", "Enfeeble_rgb_pt_br").." selecionado, a "..CKWord("Eletrocussão", "Electrocution_rgb_pt_br").." causa "..CKWord("Dano", "Damage_rgb_pt_br").." pelo dobro do tempo e atinge a carga máxima mais rápido.",
		es = "Tus ataques cuerpo a cuerpo pesados "..CKWord("Electrocutan", "Electrocute_rgb_es").." a los enemigos, infligiéndoles daño con el tiempo.\n"
			.."\n"
			..Dot_nc.." Inflige hasta "..CNumb("64", "n_64_rgb").." de "..CKWord("Daño", "Damage_rgb_es").." base por tick a máxima carga.\n"
			..Dot_nc.." La ventana de "..CKWord("Daño", "Damage_rgb_es").." dura hasta "..CNumb("2", "n_2_rgb").." segundos.\n"
			..Dot_nc.." El estado "..CKWord("Electrocutado", "Electrocuted_rgb_es").." persiste durante "..CNumb("2", "n_2_rgb").." segundos después del último tick de "..CKWord("Daño", "Damage_rgb_es")..".\n"
			.."\n"
			..Dot_green.." Con "..CKWord("Enfeeble", "Enfeeble_rgb_es").." seleccionado, la "..CKWord("Electrocución", "Electrocution_rgb_es").." inflige "..CKWord("Daño", "Damage_rgb_es").." durante el doble de tiempo y alcanza la carga máxima más rápido.",
	},
	--[+ BLITZ 2-2 - Enfeeble +]--	09.06.2026
	["loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"] = { -- damage: +10%, talent_name: Smite, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." Taken from all sources for enemies under your {talent_name:%s}'s "..CKWord("Electrocution", "Electrocution_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." от всех источников, получаемому врагами, которые находятся по действием "..CKWord("электрошока", "elektroshoka_rgb_ru").." таланта {talent_name:%s}.\n" -- Ослабление
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		fr = Dot_green.." {damage:%s} "..CKWord("Dégâts", "Damage_rgb_fr").." subis de toutes sources pour les ennemis sous l'"..CKWord("Électrocution", "Electrocution_rgb_fr").." de votre {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		["zh-tw"] = Dot_green.." 受 {talent_name:%s} "..CKWord("電擊", "Electrocute_rgb_tw").."影響的敵人，受到所有來源的"..CKWord("傷害", "Damage_rgb_tw").."增加 {damage:%s}。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		["zh-cn"] = Dot_green.." 受到你的{talent_name:%s}"..CKWord("电击", "Electrocute_rgb_zh_cn").."影响的敌人，承受所有来源的"..CKWord("伤害", "Damage_rgb_zh_cn").."提高{damage:%s}。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		de = Dot_green.." {damage:%s} mehr "..CKWord("Schaden", "Damage_rgb_de").." von allen Quellen für Gegner, die unter Ihrer {talent_name:%s}-"..CKWord("Elektrisierung", "Electrocution_rgb_de").." leiden.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		it = Dot_green.." {damage:%s} "..CKWord("Danni", "Damage_rgb_it").." subiti da tutte le fonti per i nemici sotto la tua {talent_name:%s} "..CKWord("Folgorazione", "Electrocution_rgb_it")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ja = Dot_green.." {talent_name:%s}による"..CKWord("感電", "Electrocution_rgb_ja").."状態の敵は、全てのソースから受ける"..CKWord("ダメージ", "Damage_rgb_ja").."が{damage:%s}増加する。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ko = Dot_green.." {talent_name:%s}의 "..CKWord("감전", "Electrocution_rgb_ko").." 상태인 적은 모든 원천으로부터 받는 "..CKWord("피해", "Damage_rgb_ko").."가 {damage:%s} 증가합니다.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		pl = Dot_green.." {damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl").." zadawanych przez wszystkie źródła wrogom objętym "..CKWord("Porażeniem", "Electrocution_rgb_pl").." twojego {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		["pt-br"] = Dot_green.." {damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." sofrido de todas as fontes para inimigos sob sua "..CKWord("Eletrocussão", "Electrocution_rgb_pt_br").." do {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		es = Dot_green.." {damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." recibido de todas las fuentes para enemigos bajo tu "..CKWord("Electrocución", "Electrocution_rgb_es").." de {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
	},
	--[+ BLITZ 3 - Assail +]--	09.06.2026
	["loc_ability_psyker_blitz_throwing_knives_description"] = { -- +colors
		en = "Primary attack:\n"
			..Dot_nc.." Throw swift, homing projectiles that track the nearest enemy for "..CNumb("2.5", "n_2_5_rgb").." seconds.\n"
			..Dot_nc.." Deals "..CNumb("225", "n_225_rgb").." Base "..CKWord("Damage", "Damage_rgb").." to the first target and costs "..CNumb("10%", "pc_10_rgb").." "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			.."Secondary attack:\n"
			..Dot_nc.." Launch a homing projectile that flies for "..CNumb("3", "n_3_rgb").." seconds, striking all enemies within a "..CNumb("50", "n_50_rgb").."-meter radius.\n"
			..Dot_nc.." Deals "..CNumb("380", "n_380_rgb").." Base "..CKWord("Damage", "Damage_rgb").." and costs "..CNumb("25%", "pc_25_rgb").." "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			..Dot_green.." Can "..CKWord("Crit", "Crit_rgb")..".\n"
			..Dot_nc.." Costs "..CNumb("1", "n_1_rgb").." ammo.\n"
			..Dot_nc.." Regenerates "..CNumb("1", "n_1_rgb").." ammo every "..CNumb("3", "n_3_rgb").." seconds.\n"
			..Dot_red.." Cannot "..CKWord("Cleave", "Cleave_rgb").." through Carapace armor by default.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Do not use at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", or you will self-explode.",
		ru = "Основная атака:\n" -- Нападение
			..Dot_nc.." Вы бросаете быстрые самонаводящиеся снаряды, которые отслеживают ближайших врагов в течение "..CNumb("2.5", "n_2_5_rgb").." секунд.\n"
			..Dot_nc.." Наносит "..CNumb("225", "n_225_rgb").." базового "..CKWord("урона", "urona_rgb_ru").." первой цели и стоит "..CNumb("10%", "pc_10_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			.."Вторичная атака:\n"
			..Dot_nc.." Запускает самонаводящийся снаряд, который летит в течение "..CNumb("3", "n_3_rgb").." секунд, поражая врагов в радиусе "..CNumb("50", "n_50_rgb").." метров.\n"
			..Dot_nc.." Наносит "..CNumb("380", "n_380_rgb").." базового "..CKWord("урона", "urona_rgb_ru").." и стоит "..CNumb("25%", "pc_25_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Наносит "..CKWord("критические удары", "krit_udary_rgb_ru")..".\n"
			..Dot_nc.." Тратит "..CNumb("1", "n_1_rgb").." заряд.\n"
			..Dot_nc.." "..CNumb("1", "n_1_rgb").." заряд восстанавливается каждые "..CNumb("3", "n_3_rgb").." секунды.\n"
			..Dot_red.." Не "..CKWord("простреливает", "prostrelivaet_rgb_ru").." врагов в панцирной броне.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." иначе вы взорвётесь.",
		fr = "Attaque primaire :\n"
			..Dot_nc.." Lance des projectiles rapides et autoguidés qui traquent l'ennemi le plus proche pendant "..CNumb("2.5", "n_2_5_rgb").." secondes.\n"
			..Dot_nc.." Inflige "..CNumb("225", "n_225_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." de base à la première cible et coûte "..CNumb("10%", "pc_10_rgb").." de "..CKWord("Péril", "Peril_rgb_fr")..".\n"
			.."\n"
			.."Attaque secondaire :\n"
			..Dot_nc.." Lance un projectile autoguidé qui vole pendant "..CNumb("3", "n_3_rgb").." secondes, frappant tous les ennemis dans un rayon de "..CNumb("50", "n_50_rgb").." mètres.\n"
			..Dot_nc.." Inflige "..CNumb("380", "n_380_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." de base et coûte "..CNumb("25%", "pc_25_rgb").." de "..CKWord("Péril", "Peril_rgb_fr")..".\n"
			.."\n"
			..Dot_green.." Peut faire un "..CKWord("Critique", "Crit_rgb_fr")..".\n"
			..Dot_nc.." Consomme "..CNumb("1", "n_1_rgb").." munition.\n"
			..Dot_nc.." Régénère "..CNumb("1", "n_1_rgb").." munition toutes les "..CNumb("3", "n_3_rgb").." secondes.\n"
			..Dot_red.." Ne peut pas "..CKWord("Transpercer", "Cleave_rgb_fr").." l'armure Carapace par défaut.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Attention !{#reset()}\n"
			.."Ne pas utiliser à "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Péril", "Peril_rgb_fr")..", sinon vous exploserez.",
		["zh-tw"] = "主要攻擊：\n"
			..Dot_nc.." 投擲快速自導射彈，追蹤最近的敵人 "..CNumb("2.5", "n_2_5_rgb").." 秒。\n"
			..Dot_nc.." 對首個目標造成 "..CNumb("225", "n_225_rgb").." 基礎"..CKWord("傷害", "Damage_rgb_tw").."，消耗 "..CNumb("10%", "pc_10_rgb").." "..CKWord("反噬", "Peril_rgb_tw").."。\n"
			.."\n"
			.."次要攻擊：\n"
			..Dot_nc.." 發射一枚自導射彈，飛行 "..CNumb("3", "n_3_rgb").." 秒，擊中 "..CNumb("50", "n_50_rgb").." 公尺半徑內的所有敵人。\n"
			..Dot_nc.." 造成 "..CNumb("380", "n_380_rgb").." 基礎"..CKWord("傷害", "Damage_rgb_tw").."，消耗 "..CNumb("25%", "pc_25_rgb").." "..CKWord("反噬", "Peril_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 可以造成"..CKWord("致命一擊", "Crit_rgb_tw").."。\n"
			..Dot_nc.." 消耗 "..CNumb("1", "n_1_rgb").." 枚彈藥。\n"
			..Dot_nc.." 每 "..CNumb("3", "n_3_rgb").." 秒恢復 "..CNumb("1", "n_1_rgb").." 枚彈藥。\n"
			..Dot_red.." 預設無法以"..CKWord("順劈攻擊", "Cleave_rgb_tw").."穿透甲殼護甲。\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			..Dot_red.." 反噬達 "..CNumb("100%", "pc_100_rgb").." 時施放將觸發自爆！",
		["zh-cn"] = "主要攻击：\n"
			..Dot_nc.." 投掷快速、自动追踪的投射物，追踪最近的敌人 "..CNumb("2.5", "n_2_5_rgb").." 秒。\n"
			..Dot_nc.." 对第一个目标造成 "..CNumb("225", "n_225_rgb").." 基础"..CKWord("伤害", "Damage_rgb_zh_cn").."，消耗 "..CNumb("10%", "pc_10_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."。\n"
			.."\n"
			.."次要攻击：\n"
			..Dot_nc.." 发射一个自动追踪投射物，飞行 "..CNumb("3", "n_3_rgb").." 秒，击中半径 "..CNumb("50", "n_50_rgb").." 米内的所有敌人。\n"
			..Dot_nc.." 造成 "..CNumb("380", "n_380_rgb").." 基础"..CKWord("伤害", "Damage_rgb_zh_cn").."，消耗 "..CNumb("25%", "pc_25_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 可以"..CKWord("暴击", "Crit_hit_rgb_zh_cn").."。\n"
			..Dot_nc.." 消耗 "..CNumb("1", "n_1_rgb").." 弹药。\n"
			..Dot_nc.." 每 "..CNumb("3", "n_3_rgb").." 秒恢复 "..CNumb("1", "n_1_rgb").." 弹药。\n"
			..Dot_red.." 默认情况下无法"..CKWord("劈裂", "Cleave_rgb_zh_cn").."甲壳甲。\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			.."不要在 "..CNumb("100%", "pc_100_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").." 时使用，否则会自爆。",
		de = "Primärangriff:\n"
			..Dot_nc.." Wirft schnelle, zielsuchende Geschosse, die "..CNumb("2.5", "n_2_5_rgb").." Sekunden lang den nächsten Gegner verfolgen.\n"
			..Dot_nc.." Verursacht "..CNumb("225", "n_225_rgb").." Basisschaden am ersten Ziel und kostet "..CNumb("10%", "pc_10_rgb").." "..CKWord("Gefahr", "Peril_rgb_de")..".\n"
			.."\n"
			.."Sekundärangriff:\n"
			..Dot_nc.." Startet ein zielsuchendes Geschoss, das "..CNumb("3", "n_3_rgb").." Sekunden fliegt und alle Gegner innerhalb eines Radius von "..CNumb("50", "n_50_rgb").." Metern trifft.\n"
			..Dot_nc.." Verursacht "..CNumb("380", "n_380_rgb").." Basisschaden und kostet "..CNumb("25%", "pc_25_rgb").." "..CKWord("Gefahr", "Peril_rgb_de")..".\n"
			.."\n"
			..Dot_green.." Kann "..CKWord("Kritisch", "Crit_rgb_de").." treffen.\n"
			..Dot_nc.." Verbraucht "..CNumb("1", "n_1_rgb").." Munition.\n"
			..Dot_nc.." Regeneriert alle "..CNumb("3", "n_3_rgb").." Sekunden "..CNumb("1", "n_1_rgb").." Munition.\n"
			..Dot_red.." Kann standardmäßig keine Carapax-Rüstung "..CKWord("spalten", "Cleave_rgb_de")..".\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warnung!{#reset()}\n"
			.."Nicht bei "..CNumb("100%", "pc_100_rgb").." "..CKWord("Gefahr", "Peril_rgb_de").." verwenden, sonst explodieren Sie.",
		it = "Attacco primario:\n"
			..Dot_nc.." Lancia proiettili veloci e autoguidati che inseguono il nemico più vicino per "..CNumb("2.5", "n_2_5_rgb").." secondi.\n"
			..Dot_nc.." Infligge "..CNumb("225", "n_225_rgb").." di "..CKWord("Danno", "Damage_rgb_it").." base al primo bersaglio e costa "..CNumb("10%", "pc_10_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it")..".\n"
			.."\n"
			.."Attacco secondario:\n"
			..Dot_nc.." Lancia un proiettile autoguidato che vola per "..CNumb("3", "n_3_rgb").." secondi, colpendo tutti i nemici in un raggio di "..CNumb("50", "n_50_rgb").." metri.\n"
			..Dot_nc.." Infligge "..CNumb("380", "n_380_rgb").." di "..CKWord("Danno", "Damage_rgb_it").." base e costa "..CNumb("25%", "pc_25_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it")..".\n"
			.."\n"
			..Dot_green.." Può "..CKWord("Criticare", "Crit_rgb_it")..".\n"
			..Dot_nc.." Costa "..CNumb("1", "n_1_rgb").." munizione.\n"
			..Dot_nc.." Rigenera "..CNumb("1", "n_1_rgb").." munizione ogni "..CNumb("3", "n_3_rgb").." secondi.\n"
			..Dot_red.." Non può "..CKWord("Tagliare", "Cleave_rgb_it").." l'armatura Carapace di default.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Attenzione!{#reset()}\n"
			.."Non usare al "..CNumb("100%", "pc_100_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it")..", o esploderai.",
		ja = "プライマリ攻撃:\n"
			..Dot_nc.." 素早くホーミングする投射物を投げ、"..CNumb("2.5", "n_2_5_rgb").."秒間最も近い敵を追跡する。\n"
			..Dot_nc.." 最初の標的に"..CNumb("225", "n_225_rgb").."の基礎"..CKWord("ダメージ", "Damage_rgb_ja").."を与え、"..CNumb("10%", "pc_10_rgb").."の"..CKWord("危険", "Peril_rgb_ja").."を消費する。\n"
			.."\n"
			.."セカンダリ攻撃:\n"
			..Dot_nc.." "..CNumb("3", "n_3_rgb").."秒間飛行するホーミング投射物を発射し、半径"..CNumb("50", "n_50_rgb").."メートル以内の全ての敵を撃つ。\n"
			..Dot_nc.." "..CNumb("380", "n_380_rgb").."の基礎"..CKWord("ダメージ", "Damage_rgb_ja").."を与え、"..CNumb("25%", "pc_25_rgb").."の"..CKWord("危険", "Peril_rgb_ja").."を消費する。\n"
			.."\n"
			..Dot_green.." "..CKWord("クリティカル", "Crit_rgb_ja").."が発生する。\n"
			..Dot_nc.." 弾薬を"..CNumb("1", "n_1_rgb").."消費する。\n"
			..Dot_nc.." "..CNumb("3", "n_3_rgb").."秒毎に弾薬を"..CNumb("1", "n_1_rgb").."回復する。\n"
			..Dot_red.." デフォルトではカラペース装甲を"..CKWord("薙ぎ払い", "Cleave_rgb_ja").."できない。\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}警告！{#reset()}\n"
			.." "..CNumb("100%", "pc_100_rgb").."の"..CKWord("危険", "Peril_rgb_ja").."で使用しないこと。自爆する。",
		ko = "주 공격:\n"
			..Dot_nc.." 빠르게 유도되는 투사체를 던져 "..CNumb("2.5", "n_2_5_rgb").."초간 가장 가까운 적을 추적합니다.\n"
			..Dot_nc.." 첫 번째 대상에게 "..CNumb("225", "n_225_rgb").."의 기본 "..CKWord("피해", "Damage_rgb_ko").."를 주고 "..CNumb("10%", "pc_10_rgb").."의 "..CKWord("위험", "Peril_rgb_ko").."를 소모합니다.\n"
			.."\n"
			.."보조 공격:\n"
			..Dot_nc.." "..CNumb("3", "n_3_rgb").."초간 비행하는 유도 투사체를 발사하여 반경 "..CNumb("50", "n_50_rgb").."미터 내의 모든 적을 타격합니다.\n"
			..Dot_nc.." "..CNumb("380", "n_380_rgb").."의 기본 "..CKWord("피해", "Damage_rgb_ko").."를 주고 "..CNumb("25%", "pc_25_rgb").."의 "..CKWord("위험", "Peril_rgb_ko").."를 소모합니다.\n"
			.."\n"
			..Dot_green.." "..CKWord("크리티컬", "Crit_rgb_ko").."가 발생할 수 있습니다.\n"
			..Dot_nc.." 탄약을 "..CNumb("1", "n_1_rgb").." 소모합니다.\n"
			..Dot_nc.." "..CNumb("3", "n_3_rgb").."초마다 탄약 "..CNumb("1", "n_1_rgb").."을 회복합니다.\n"
			..Dot_red.." 기본적으로 카라페이스 방어구를 "..CKWord("관통", "Cleave_rgb_ko").."할 수 없습니다.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}경고!{#reset()}\n"
			.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("위험", "Peril_rgb_ko").."에서 사용하지 마십시오. 자폭합니다.",
		pl = "Atak podstawowy:\n"
			..Dot_nc.." Rzuca szybkie, samonaprowadzające się pociski, które śledzą najbliższego wroga przez "..CNumb("2.5", "n_2_5_rgb").." sekund.\n"
			..Dot_nc.." Zadaje "..CNumb("225", "n_225_rgb").." bazowych "..CKWord("Obrażeń", "Damage_rgb_pl").." pierwszemu celowi i kosztuje "..CNumb("10%", "pc_10_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl")..".\n"
			.."\n"
			.."Atak dodatkowy:\n"
			..Dot_nc.." Wystrzeliwuje samonaprowadzający się pocisk, który leci przez "..CNumb("3", "n_3_rgb").." sekund, uderzając wszystkich wrogów w promieniu "..CNumb("50", "n_50_rgb").." metrów.\n"
			..Dot_nc.." Zadaje "..CNumb("380", "n_380_rgb").." bazowych "..CKWord("Obrażeń", "Damage_rgb_pl").." i kosztuje "..CNumb("25%", "pc_25_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl")..".\n"
			.."\n"
			..Dot_green.." Może zadać "..CKWord("Krytyk", "Crit_rgb_pl")..".\n"
			..Dot_nc.." Kosztuje "..CNumb("1", "n_1_rgb").." amunicji.\n"
			..Dot_nc.." Regeneruje "..CNumb("1", "n_1_rgb").." amunicji co "..CNumb("3", "n_3_rgb").." sekundy.\n"
			..Dot_red.." Nie może domyślnie "..CKWord("rozłupywać", "Cleave_rgb_pl").." pancerza karapaksowego.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Ostrzeżenie!{#reset()}\n"
			.."Nie używaj przy "..CNumb("100%", "pc_100_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl")..", inaczej eksplodujesz.",
		["pt-br"] = "Ataque primário:\n"
			..Dot_nc.." Lança projéteis rápidos e teleguiados que rastreiam o inimigo mais próximo por "..CNumb("2.5", "n_2_5_rgb").." segundos.\n"
			..Dot_nc.." Causa "..CNumb("225", "n_225_rgb").." de "..CKWord("Dano", "Damage_rgb_pt_br").." base no primeiro alvo e custa "..CNumb("10%", "pc_10_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br")..".\n"
			.."\n"
			.."Ataque secundário:\n"
			..Dot_nc.." Lança um projétil teleguiado que voa por "..CNumb("3", "n_3_rgb").." segundos, acertando todos os inimigos em um raio de "..CNumb("50", "n_50_rgb").." metros.\n"
			..Dot_nc.." Causa "..CNumb("380", "n_380_rgb").." de "..CKWord("Dano", "Damage_rgb_pt_br").." base e custa "..CNumb("25%", "pc_25_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br")..".\n"
			.."\n"
			..Dot_green.." Pode causar "..CKWord("Crítico", "Crit_rgb_pt_br")..".\n"
			..Dot_nc.." Consome "..CNumb("1", "n_1_rgb").." de munição.\n"
			..Dot_nc.." Regenera "..CNumb("1", "n_1_rgb").." de munição a cada "..CNumb("3", "n_3_rgb").." segundos.\n"
			..Dot_red.." Não pode "..CKWord("Fender", "Cleave_rgb_pt_br").." armadura Carapaça por padrão.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Aviso!{#reset()}\n"
			.."Não use com "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br")..", ou você explodirá.",
		es = "Ataque principal:\n"
			..Dot_nc.." Lanza proyectiles rápidos y teledirigidos que rastrean al enemigo más cercano durante "..CNumb("2.5", "n_2_5_rgb").." segundos.\n"
			..Dot_nc.." Inflige "..CNumb("225", "n_225_rgb").." de "..CKWord("Daño", "Damage_rgb_es").." base al primer objetivo y cuesta "..CNumb("10%", "pc_10_rgb").." de "..CKWord("Peligro", "Peril_rgb_es")..".\n"
			.."\n"
			.."Ataque secundario:\n"
			..Dot_nc.." Lanza un proyectil teledirigido que vuela durante "..CNumb("3", "n_3_rgb").." segundos, golpeando a todos los enemigos en un radio de "..CNumb("50", "n_50_rgb").." metros.\n"
			..Dot_nc.." Inflige "..CNumb("380", "n_380_rgb").." de "..CKWord("Daño", "Damage_rgb_es").." base y cuesta "..CNumb("25%", "pc_25_rgb").." de "..CKWord("Peligro", "Peril_rgb_es")..".\n"
			.."\n"
			..Dot_green.." Puede causar "..CKWord("Crítico", "Crit_rgb_es")..".\n"
			..Dot_nc.." Cuesta "..CNumb("1", "n_1_rgb").." de munición.\n"
			..Dot_nc.." Regenera "..CNumb("1", "n_1_rgb").." de munición cada "..CNumb("3", "n_3_rgb").." segundos.\n"
			..Dot_red.." No puede "..CKWord("Cortar", "Cleave_rgb_es").." armadura Caparazón por defecto.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}¡Advertencia!{#reset()}\n"
			.."No lo uses con "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Peligro", "Peril_rgb_es")..", o explotarás.",
	},
	--[+ BLITZ 3-1 - Ethereal Shards +]--	09.06.2026
	["loc_talent_psyker_throwing_knives_pierce_description"] = { -- talent_name: Assail, +colors
		en = Dot_green.." {talent_name:%s} projectiles now pierce through additional targets.",
		ru = Dot_green.." Снаряды теперь пробивают дополнительные цели.", -- Эфирные осколки -- руоф Эфирные частицы
		fr = Dot_green.." Les projectiles de {talent_name:%s} percent désormais des cibles supplémentaires.",
		["zh-tw"] = Dot_green.." {talent_name:%s} 的射彈現可穿透額外目標。",
		["zh-cn"] = Dot_green.." {talent_name:%s}的投射物现在能穿透额外目标。",
		de = Dot_green.." {talent_name:%s}-Geschosse durchdringen jetzt zusätzliche Ziele.",
		it = Dot_green.." I proiettili di {talent_name:%s} ora trafiggono bersagli aggiuntivi.",
		ja = Dot_green.." {talent_name:%s}の投射物が追加の標的を貫通するようになった。",
		ko = Dot_green.." {talent_name:%s}의 투사체가 추가 대상을 관통합니다.",
		pl = Dot_green.." Pociski {talent_name:%s} przebijają teraz dodatkowe cele.",
		["pt-br"] = Dot_green.." Os projéteis de {talent_name:%s} agora perfuram alvos adicionais.",
		es = Dot_green.." Los proyectiles de {talent_name:%s} ahora atraviesan objetivos adicionales.",
	},
	--[+ BLITZ 3-2 - Quick Shards +]--	09.06.2026
	["loc_talent_psyker_throwing_knives_cast_speed_description"] = { -- talent_name: Assail, recharge: 30%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} {talent_name:%s} charge replenish speed.\n"
			.."\n"
			..Dot_nc.." Reduces projectile recharge time from "..CNumb("3", "n_3_rgb").." to "..CNumb("2.1", "n_2_1_rgb").." seconds per projectile.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} к скорости восстановления зарядов.\n" -- Быстрые осколки -- руоф Быстрые частицы
			.."\n"
			..Dot_nc.." Сокращает время восстановления снарядов с "..CNumb("3", "n_3_rgb").." до "..CNumb("2.1", "n_2_1_rgb").." секунд на снаряд.",
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} vitesse de rechargement des charges de {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Réduit le temps de recharge des projectiles de "..CNumb("3", "n_3_rgb").." à "..CNumb("2.1", "n_2_1_rgb").." secondes par projectile.",
		["zh-tw"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} {talent_name:%s} 充能恢復速度。\n"
			.."\n"
			..Dot_nc.." 每枚射彈恢復時間由 "..CNumb("3", "n_3_rgb").." 秒縮短至 "..CNumb("2.1", "n_2_1_rgb").." 秒。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} {talent_name:%s}充能恢复速度。\n"
			.."\n"
			..Dot_nc.." 将投射物恢复时间从 "..CNumb("3", "n_3_rgb").." 秒减少至每投射物 "..CNumb("2.1", "n_2_1_rgb").." 秒。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} Nachladegeschwindigkeit der {talent_name:%s}-Ladungen.\n"
			.."\n"
			..Dot_nc.." Reduziert die Projektil-Nachladezeit von "..CNumb("3", "n_3_rgb").." auf "..CNumb("2.1", "n_2_1_rgb").." Sekunden pro Projektil.",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} velocità di ricarica delle cariche di {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Riduce il tempo di ricarica dei proiettili da "..CNumb("3", "n_3_rgb").." a "..CNumb("2.1", "n_2_1_rgb").." secondi per proiettile.",
		ja = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} {talent_name:%s}のチャージ回復速度。\n"
			.."\n"
			..Dot_nc.." 投射物の回復時間を"..CNumb("3", "n_3_rgb").."秒から投射物1つあたり"..CNumb("2.1", "n_2_1_rgb").."秒に短縮する。",
		ko = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} {talent_name:%s} 충전 회복 속도.\n"
			.."\n"
			..Dot_nc.." 투사체 재충전 시간을 "..CNumb("3", "n_3_rgb").."초에서 투사체당 "..CNumb("2.1", "n_2_1_rgb").."초로 감소시킵니다.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} szybkość uzupełniania ładunków {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Skraca czas odnowienia pocisków z "..CNumb("3", "n_3_rgb").." do "..CNumb("2.1", "n_2_1_rgb").." sekund na pocisk.",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} velocidade de recarga de {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Reduz o tempo de recarga do projétil de "..CNumb("3", "n_3_rgb").." para "..CNumb("2.1", "n_2_1_rgb").." segundos por projétil.",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} velocidad de recarga de cargas de {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Reduce el tiempo de recarga de proyectiles de "..CNumb("3", "n_3_rgb").." a "..CNumb("2.1", "n_2_1_rgb").." segundos por proyectil.",
	},
--[+ +AURA - АУРЫ+ +]--
	--[+ AURA 0 - The Quickening +]--	09.06.2026
	["loc_talent_psyker_aura_reduced_ability_cooldown_description"] = { -- cooldown_reduction: +7.5%, +colors
		en = Dot_green.." {cooldown_reduction:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Reduction for you and allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {cooldown_reduction:%s} к сокращению "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Ускорение
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		fr = Dot_green.." {cooldown_reduction:%s} de réduction du "..CKWord("Temps de recharge des capacités", "Ability_cd_rgb_fr").." pour vous et les alliés en "..CKWord("Syntonie", "Coherency_rgb_fr")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["zh-tw"] = Dot_green.." 你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的隊友，"..CKWord("技能冷卻", "Ability_cd_rgb_tw").."縮減 {cooldown_reduction:%s}。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["zh-cn"] = Dot_green.." 您与"..CKWord("连携", "Coherency_rgb_zh_cn").."中的盟友减少{cooldown_reduction:%s}"..CKWord("能力冷却", "Ability_cd_rgb_zh_cn").."。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		de = Dot_green.." {cooldown_reduction:%s} "..CKWord("Fähigkeitsabklingzeit", "Ability_cd_rgb_de").."-Reduzierung für Sie und Verbündete in "..CKWord("Kohärenz", "Coherency_rgb_de")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		it = Dot_green.." {cooldown_reduction:%s} di riduzione del "..CKWord("Tempo di recupero abilità", "Ability_cd_rgb_it").." per te e gli alleati in "..CKWord("Coerenza", "Coherency_rgb_it")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ja = Dot_green.." "..CKWord("結束", "Coherency_rgb_ja").."中の自分と味方の"..CKWord("アビリティクールダウン", "Ability_cd_rgb_ja").."を{cooldown_reduction:%s}短縮する。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ko = Dot_green.." "..CKWord("일체감", "Coherency_rgb_ko").." 내의 자신과 아군의 "..CKWord("능력 재사용 대기시간", "Ability_cd_rgb_ko").."이 {cooldown_reduction:%s} 감소합니다.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		pl = Dot_green.." {cooldown_reduction:%s} skrócenia "..CKWord("Czasu odnowienia umiejętności", "Ability_cd_rgb_pl").." dla ciebie i sojuszników w "..CKWord("Spójności", "Coherency_rgb_pl")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["pt-br"] = Dot_green.." {cooldown_reduction:%s} de redução de "..CKWord("Tempo de recarga de habilidade", "Ability_cd_rgb_pt_br").." para você e aliados em "..CKWord("Coerência", "Coherency_rgb_pt_br")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		es = Dot_green.." {cooldown_reduction:%s} de reducción del "..CKWord("Tiempo de recarga de habilidad", "Ability_cd_rgb_es").." para ti y aliados en "..CKWord("Coherencia", "Coherency_rgb_es")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
	--[+ AURA 1 - Kinetic Presence +]--	09.06.2026
	["loc_talent_psyker_base_3_description"] = { -- damage: +7.5%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." against Elite Enemies for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против элитных врагов для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Кинетическое присутствие
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		fr = Dot_green.." {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les Ennemis d'Élite pour vous et les alliés en "..CKWord("Syntonie", "Coherency_rgb_fr")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["zh-tw"] = Dot_green.." 你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的隊友，對精英敵人的"..CKWord("傷害", "Damage_rgb_tw").."增加 {damage:%s}。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["zh-cn"] = Dot_green.." 您与"..CKWord("连携", "Coherency_rgb_zh_cn").."中的盟友对精英敌人造成的"..CKWord("伤害", "Damage_rgb_zh_cn").."提高{damage:%s}。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		de = Dot_green.." {damage:%s} "..CKWord("Schaden", "Damage_rgb_de").." gegen Elite-Gegner für Sie und Verbündete in "..CKWord("Kohärenz", "Coherency_rgb_de")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		it = Dot_green.." {damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." contro i Nemici d'Élite per te e gli alleati in "..CKWord("Coerenza", "Coherency_rgb_it")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ja = Dot_green.." "..CKWord("結束", "Coherency_rgb_ja").."中の自分と味方のエリート敵への"..CKWord("ダメージ", "Damage_rgb_ja").."が{damage:%s}増加する。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ko = Dot_green.." "..CKWord("일체감", "Coherency_rgb_ko").." 내의 자신과 아군의 정예 적에 대한 "..CKWord("피해", "Damage_rgb_ko").."가 {damage:%s} 증가합니다.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		pl = Dot_green.." {damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl").." przeciwko Wrogom Elitarnym dla ciebie i sojuszników w "..CKWord("Spójności", "Coherency_rgb_pl")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["pt-br"] = Dot_green.." {damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." contra Inimigos de Elite para você e aliados em "..CKWord("Coerência", "Coherency_rgb_pt_br")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		es = Dot_green.." {damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." contra Enemigos Élite para ti y aliados en "..CKWord("Coherencia", "Coherency_rgb_es")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
	--[+ AURA 2 - Seer's Presence +]--	09.06.2026
	["loc_talent_psyker_cooldown_aura_improved_description"] = { -- cooldown_reduction: +10%, talent_name: The Quickening, +colors
		en = Dot_green.." {cooldown_reduction:%s} "..CKWord("Cooldown", "Cd_rgb").." Reduction on Abilities for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			..Dot_green.." An augmented version of {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {cooldown_reduction:%s} к сокращению "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Присутствие провидца
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		fr = Dot_green.." {cooldown_reduction:%s} de réduction du "..CKWord("Temps de recharge", "Cd_rgb_fr").." des capacités pour vous et les alliés en "..CKWord("Syntonie", "Coherency_rgb_fr")..".\n"
			..Dot_green.." Une version améliorée de {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["zh-tw"] = Dot_green.." 你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的隊友，技能"..CKWord("冷卻", "Cd_rgb_tw").."縮減 {cooldown_reduction:%s}。\n"
			..Dot_green.." 此為 {talent_name:%s} 的強化版本。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["zh-cn"] = Dot_green.." 您与"..CKWord("连携", "Coherency_rgb_zh_cn").."中的盟友减少{cooldown_reduction:%s}"..CKWord("冷却", "Cd_rgb_zh_cn").."。\n"
			..Dot_green.." {talent_name:%s}的强化版本。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		de = Dot_green.." {cooldown_reduction:%s} "..CKWord("Abklingzeit", "Cd_rgb_de").."-Reduzierung für Sie und Verbündete in "..CKWord("Kohärenz", "Coherency_rgb_de")..".\n"
			..Dot_green.." Eine verbesserte Version von {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		it = Dot_green.." {cooldown_reduction:%s} di riduzione del "..CKWord("Tempo di recupero", "Cd_rgb_it").." per te e gli alleati in "..CKWord("Coerenza", "Coherency_rgb_it")..".\n"
			..Dot_green.." Una versione avanzata di {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ja = Dot_green.." "..CKWord("結束", "Coherency_rgb_ja").."中の自分と味方のアビリティの"..CKWord("クールダウン", "Cd_rgb_ja").."を{cooldown_reduction:%s}短縮する。\n"
			..Dot_green.." {talent_name:%s}の強化版。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ko = Dot_green.." "..CKWord("일체감", "Coherency_rgb_ko").." 내의 자신과 아군의 "..CKWord("재사용 대기시간", "Cd_rgb_ko").."이 {cooldown_reduction:%s} 감소합니다.\n"
			..Dot_green.." {talent_name:%s}의 강화 버전입니다.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		pl = Dot_green.." {cooldown_reduction:%s} skrócenia "..CKWord("Czasu odnowienia", "Cd_rgb_pl").." dla ciebie i sojuszników w "..CKWord("Spójności", "Coherency_rgb_pl")..".\n"
			..Dot_green.." Ulepszona wersja {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["pt-br"] = Dot_green.." {cooldown_reduction:%s} de redução de "..CKWord("Tempo de recarga", "Cd_rgb_pt_br").." para você e aliados em "..CKWord("Coerência", "Coherency_rgb_pt_br")..".\n"
			..Dot_green.." Uma versão aumentada de {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		es = Dot_green.." {cooldown_reduction:%s} de reducción del "..CKWord("Tiempo de recarga", "Cd_rgb_es").." para ti y aliados en "..CKWord("Coherencia", "Coherency_rgb_es")..".\n"
			..Dot_green.." Una versión mejorada de {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
	--[+ AURA 3 - Prescience +]--	09.06.2026
	["loc_ability_psyker_gunslinger_aura_description"] = { -- critical_strike_chance: +5%, +colors
		en = Dot_green.." {critical_strike_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..Dot_nc.." Applies to all attacks that can "..CKWord("Crit", "Crit_rgb")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {critical_strike_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Предвидение
			.."\n"
			..Dot_nc.." Применяется ко всем атакам, наносящим "..CKWord("критический урон", "krit_uron_rgb_ru")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		fr = Dot_green.." {critical_strike_chance:%s} de "..CKWord("Chance de coup critique", "Crt_hit_chnc_rgb_fr").." pour vous et les alliés en "..CKWord("Syntonie", "Coherency_rgb_fr")..".\n"
			.."\n"
			..Dot_nc.." S'applique à toutes les attaques qui peuvent être "..CKWord("Critiques", "Crit_rgb_fr")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["zh-tw"] = Dot_green.." 你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的隊友，"..CKWord("爆擊率", "Crt_hit_chnc_rgb_tw").."增加 {critical_strike_chance:%s}。\n"
			.."\n"
			..Dot_nc.." 適用於所有可以造成"..CKWord("致命一擊", "Crit_rgb_tw").."的攻擊。\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["zh-cn"] = Dot_green.." 您与"..CKWord("连携", "Coherency_rgb_zh_cn").."中的盟友获得{critical_strike_chance:%s}"..CKWord("暴击命中几率", "Crt_hit_chnc_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 适用于所有可"..CKWord("暴击", "Crit_hit_rgb_zh_cn").."的攻击。\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		de = Dot_green.." {critical_strike_chance:%s} "..CKWord("Kritische Trefferchance", "Crt_hit_chnc_rgb_de").." für Sie und Verbündete in "..CKWord("Kohärenz", "Coherency_rgb_de")..".\n"
			.."\n"
			..Dot_nc.." Gilt für alle Angriffe, die "..CKWord("kritisch", "Crit_rgb_de").." sein können.\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		it = Dot_green.." {critical_strike_chance:%s} di "..CKWord("Probabilità colpo critico", "Crt_hit_chnc_rgb_it").." per te e gli alleati in "..CKWord("Coerenza", "Coherency_rgb_it")..".\n"
			.."\n"
			..Dot_nc.." Si applica a tutti gli attacchi che possono essere "..CKWord("Critici", "Crit_rgb_it")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ja = Dot_green.." "..CKWord("結束", "Coherency_rgb_ja").."中の自分と味方の"..CKWord("クリティカルヒット発生率", "Crt_hit_chnc_rgb_ja").."が{critical_strike_chance:%s}増加する。\n"
			.."\n"
			..Dot_nc.." "..CKWord("クリティカル", "Crit_rgb_ja").."が可能な全ての攻撃に適用される。\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ko = Dot_green.." "..CKWord("일체감", "Coherency_rgb_ko").." 내의 자신과 아군의 "..CKWord("크리티컬 히트 확률", "Crt_hit_chnc_rgb_ko").."이 {critical_strike_chance:%s} 증가합니다.\n"
			.."\n"
			..Dot_nc.." "..CKWord("크리티컬", "Crit_rgb_ko").."이 가능한 모든 공격에 적용됩니다.\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		pl = Dot_green.." {critical_strike_chance:%s} "..CKWord("Szansy na krytyczne trafienie", "Crt_hit_chnc_rgb_pl").." dla ciebie i sojuszników w "..CKWord("Spójności", "Coherency_rgb_pl")..".\n"
			.."\n"
			..Dot_nc.." Dotyczy wszystkich ataków, które mogą zadać "..CKWord("krytyka", "Crit_rgb_pl")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		["pt-br"] = Dot_green.." {critical_strike_chance:%s} de "..CKWord("Chance de golpe crítico", "Crt_hit_chnc_rgb_pt_br").." para você e aliados em "..CKWord("Coerência", "Coherency_rgb_pt_br")..".\n"
			.."\n"
			..Dot_nc.." Aplica-se a todos os ataques que podem causar "..CKWord("Crítico", "Crit_rgb_pt_br")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		es = Dot_green.." {critical_strike_chance:%s} de "..CKWord("Probabilidad de golpe crítico", "Crt_hit_chnc_rgb_es").." para ti y aliados en "..CKWord("Coherencia", "Coherency_rgb_es")..".\n"
			.."\n"
			..Dot_nc.." Se aplica a todos los ataques que pueden ser "..CKWord("Críticos", "Crit_rgb_es")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Psykinetic's Wrath +]--	09.06.2026
	["loc_talent_psyker_shout_ability_description"] = { -- warpcharge_vent: 10%, cooldown: 30, s->seconds, +colors
		en = "Quells {warpcharge_vent:%s} "..CKWord("Peril", "Peril_rgb").." while releasing a cone-shaped shout that "..CKWord("Staggers", "Staggers_rgb").." enemies in front of you.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..CKWord("Psyker", "cls_psy_rgb").." from exploding.\n"
			..Dot_nc.." The Warp wave travels through walls and spreads up to "..CNumb("30", "n_30_rgb").." meters, allowing you to "..CKWord("Stun", "Stun_rgb").." a Pox Hound attacking an ally through obstacles.\n"
			..Dot_nc.." "..CKWord("Stuns", "Stuns_rgb").." enemies within a "..CNumb("5", "n_5_rgb").."-meter radius in front of you.",
		ru = "Вы подавляете {warpcharge_vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." одновременно испуская конусообразный крик, который "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов перед вами.\n" -- Гнев психокинетика -- руоф Психокинетический гнев
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.\n"
			..Dot_nc.." Враги в "..CNumb("5", "n_5_rgb").."-метровом радиусе перед вами "..CKWord("ошеломляются", "oshelomlautsa_rgb_ru")..".\n"
			..Dot_nc.." Волна варпа проходит сквозь стены и распространяется на расстояние до "..CNumb("30", "n_30_rgb").." метров, позволяя вам "..CKWord("ошеломить", "oshelomit_rgb_ru").." сквозь препятствия Гончую, атакующую союзника.",
		fr = "Vous apaisez {warpcharge_vent:%s} de "..CKWord("Péril", "Peril_rgb_fr").." tout en libérant un cri en forme de cône qui "..CKWord("Vacille", "Staggers_rgb_fr").." les ennemis devant vous.\n"
			..Dot_nc.." Temps de recharge de base : {cooldown:%s} secondes.\n"
			.."\n"
			..Dot_nc.." Peut être utilisé pour empêcher le "..CKWord("Psyker", "cls_psy_rgb_fr").." d'exploser.\n"
			..Dot_nc.." L'onde de Warp traverse les murs et se propage jusqu'à "..CNumb("30", "n_30_rgb").." mètres, vous permettant de "..CKWord("Étourdir", "Stun_rgb_fr").." un Chien de la Peste attaquant un allié à travers les obstacles.\n"
			..Dot_nc.." "..CKWord("Étourdi", "Stuns_rgb_fr").." les ennemis dans un rayon de "..CNumb("5", "n_5_rgb").." mètres devant vous.",
		["zh-tw"] = "釋放錐形喊叫，消除 {warpcharge_vent:%s} "..CKWord("反噬", "Peril_rgb_tw").."，並使前方敵人"..CKWord("踉蹌", "Staggers_rgb_tw").."。\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 可用來防止"..CKWord("靈能者", "cls_psy_rgb_tw").."自爆。\n"
			..Dot_nc.." 亞空間波可穿透牆壁並擴散至 "..CNumb("30", "n_30_rgb").." 公尺，讓你能隔著障礙物"..CKWord("眩暈", "Stun_rgb_tw").."正在攻擊隊友的瘟疫獵犬。\n"
			..Dot_nc.." 使前方半徑 "..CNumb("5", "n_5_rgb").." 公尺內的敵人"..CKWord("眩暈", "Stuns_rgb_tw").."。",
		["zh-cn"] = "释放一个锥形呐喊，压制{warpcharge_vent:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."，并"..CKWord("踉跄", "Stagger_rgb_zh_cn").."前方的敌人。\n"
			..Dot_nc.." 基础冷却：{cooldown:%s}秒。\n"
			.."\n"
			..Dot_nc.." 可用于防止"..CKWord("灵能者", "cls_psy_rgb_zh_cn").."自爆。\n"
			..Dot_nc.." 亚空间波可穿墙，传播至多"..CNumb("30", "n_30_rgb").."米，让你穿过障碍物"..CKWord("眩晕", "Stun_rgb_zh_cn").."攻击盟友的瘟疫猎犬。\n"
			..Dot_nc.." "..CKWord("眩晕", "Stun_rgb_zh_cn").."前方"..CNumb("5", "n_5_rgb").."米半径内的敌人。",
		de = "Sie unterdrücken {warpcharge_vent:%s} "..CKWord("Gefahr", "Peril_rgb_de").." und stoßen einen kegelförmigen Schrei aus, der Gegner vor Ihnen "..CKWord("taumeln", "Staggers_rgb_de").." lässt.\n"
			..Dot_nc.." Basis-Abklingzeit: {cooldown:%s} Sekunden.\n"
			.."\n"
			..Dot_nc.." Kann verwendet werden, um die Explosion des "..CKWord("Psykers", "cls_psy_rgb_de").." zu verhindern.\n"
			..Dot_nc.." Die Warp-Welle durchdringt Wände und breitet sich bis zu "..CNumb("30", "n_30_rgb").." Meter aus, sodass Sie eine Seuchenbestie, die einen Verbündeten angreift, durch Hindernisse hindurch "..CKWord("betäuben", "Stun_rgb_de").." können.\n"
			..Dot_nc.." "..CKWord("Betäubt", "Stuns_rgb_de").." Gegner in einem Radius von "..CNumb("5", "n_5_rgb").." Metern vor Ihnen.",
		it = "Sottometti {warpcharge_vent:%s} di "..CKWord("Pericolo", "Peril_rgb_it").." mentre emetti un grido a cono che "..CKWord("barcolla", "Staggers_rgb_it").." i nemici di fronte a te.\n"
			..Dot_nc.." Ricarica base: {cooldown:%s} secondi.\n"
			.."\n"
			..Dot_nc.." Può essere usato per impedire al "..CKWord("Psichico", "cls_psy_rgb_it").." di esplodere.\n"
			..Dot_nc.." L'onda del Warp attraversa i muri e si diffonde fino a "..CNumb("30", "n_30_rgb").." metri, permettendoti di "..CKWord("Stordire", "Stun_rgb_it").." un Segugio della Peste che attacca un alleato attraverso gli ostacoli.\n"
			..Dot_nc.." "..CKWord("Stordisce", "Stuns_rgb_it").." i nemici in un raggio di "..CNumb("5", "n_5_rgb").." metri di fronte a te.",
		ja = "円錐状の叫びを放ち{warpcharge_vent:%s}の"..CKWord("危険", "Peril_rgb_ja").."を軽減し、前方の敵を"..CKWord("スタッガー", "Staggers_rgb_ja").."させる。\n"
			..Dot_nc.." 基本クールダウン：{cooldown:%s}秒。\n"
			.."\n"
			..Dot_nc.." "..CKWord("サイカー", "cls_psy_rgb_ja").."の爆発を防ぐために使用可能。\n"
			..Dot_nc.." ワープ波は壁を通過し、最大"..CNumb("30", "n_30_rgb").."メートルまで広がり、障害物越しに味方を攻撃するポックスハウンドを"..CKWord("スタン", "Stun_rgb_ja").."させることができる。\n"
			..Dot_nc.." 前方"..CNumb("5", "n_5_rgb").."メートル半径内の敵を"..CKWord("スタン", "Stuns_rgb_ja").."させる。",
		ko = "원뿔형 외침을 방출하여 {warpcharge_vent:%s}의 "..CKWord("위험", "Peril_rgb_ko").."을 진압하고, 전방의 적을 "..CKWord("스태거", "Staggers_rgb_ko").."시킵니다.\n"
			..Dot_nc.." 기본 재사용 대기시간: {cooldown:%s}초.\n"
			.."\n"
			..Dot_nc.." "..CKWord("사이커", "cls_psy_rgb_ko").."의 자폭을 방지하는 데 사용할 수 있습니다.\n"
			..Dot_nc.." 워프 파동은 벽을 통과하며 최대 "..CNumb("30", "n_30_rgb").."미터까지 퍼져나가 장애물 너머로 아군을 공격하는 역병 사냥개를 "..CKWord("기절", "Stun_rgb_ko").."시킬 수 있습니다.\n"
			..Dot_nc.." 전방 "..CNumb("5", "n_5_rgb").."미터 반경 내의 적을 "..CKWord("기절", "Stuns_rgb_ko").."시킵니다.",
		pl = "Tłumisz {warpcharge_vent:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl")..", wydając stożkowy okrzyk, który "..CKWord("ogłusza", "Staggers_rgb_pl").." wrogów przed tobą.\n"
			..Dot_nc.." Podstawowe odnowienie: {cooldown:%s} sekund.\n"
			.."\n"
			..Dot_nc.." Może być użyte, aby zapobiec eksplozji "..CKWord("Psykera", "cls_psy_rgb_pl")..".\n"
			..Dot_nc.." Fala Warpu przenika przez ściany i rozprzestrzenia się na odległość do "..CNumb("30", "n_30_rgb").." metrów, pozwalając ci "..CKWord("ogłuszyć", "Stun_rgb_pl").." Pox Hounda atakującego sojusznika przez przeszkody.\n"
			..Dot_nc.." "..CKWord("Ogłusza", "Stuns_rgb_pl").." wrogów w promieniu "..CNumb("5", "n_5_rgb").." metrów przed tobą.",
		["pt-br"] = "Aquieta {warpcharge_vent:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br").." enquanto libera um grito em forma de cone que "..CKWord("cambaleia", "Staggers_rgb_pt_br").." inimigos à sua frente.\n"
			..Dot_nc.." Tempo de recarga base: {cooldown:%s} segundos.\n"
			.."\n"
			..Dot_nc.." Pode ser usado para impedir que o "..CKWord("Psíquico", "cls_psy_rgb_pt_br").." exploda.\n"
			..Dot_nc.." A onda do Warp atravessa paredes e se espalha até "..CNumb("30", "n_30_rgb").." metros, permitindo que você "..CKWord("Atordoe", "Stun_rgb_pt_br").." um Cão Pestilento atacando um aliado através de obstáculos.\n"
			..Dot_nc.." "..CKWord("Atordoa", "Stuns_rgb_pt_br").." inimigos em um raio de "..CNumb("5", "n_5_rgb").." metros à sua frente.",
		es = "Aplacas {warpcharge_vent:%s} de "..CKWord("Peligro", "Peril_rgb_es").." mientras liberas un grito en forma de cono que "..CKWord("tambalea", "Staggers_rgb_es").." a los enemigos frente a ti.\n"
			..Dot_nc.." Tiempo de reutilización base: {cooldown:%s} segundos.\n"
			.."\n"
			..Dot_nc.." Se puede usar para evitar que el "..CKWord("Psíquico", "cls_psy_rgb_es").." explote.\n"
			..Dot_nc.." La onda disforme atraviesa paredes y se extiende hasta "..CNumb("30", "n_30_rgb").." metros, permitiéndote "..CKWord("Aturdir", "Stun_rgb_es").." a un Sabueso de la Peste que ataca a un aliado a través de obstáculos.\n"
			..Dot_nc.." "..CKWord("Aturde", "Stuns_rgb_es").." a los enemigos en un radio de "..CNumb("5", "n_5_rgb").." metros frente a ti.",
	},
	--[+ ABILITY 1 - Venting Shriek +]--	09.06.2026
	["loc_talent_psyker_shout_vent_warp_charge_description"] = { -- warpcharge_vent: 50%, cooldown: 30, talent_name: Psykinetic's Wrath, s->seconds, +colors
		en = "Quells {warpcharge_vent:%s} "..CKWord("Peril", "Peril_rgb").." while releasing a cone-shaped shout that "..CKWord("Staggers", "Staggers_rgb").." enemies in front of you.\n"
			..Dot_green.." An augmented version of {talent_name:%s}.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..CKWord("Psyker", "cls_psy_rgb").." from exploding.\n"
			..Dot_nc.." The Warp wave travels through walls and spreads up to "..CNumb("30", "n_30_rgb").." meters, allowing you to "..CKWord("Stun", "Stun_rgb").." a Pox Hound attacking an ally through obstacles.\n"
			..Dot_nc.." "..CKWord("Stuns", "Stuns_rgb").." enemies within a "..CNumb("5", "n_5_rgb").."-meter radius in front of you.\n"
			..Dot_nc.." Always targets Torso hitzone.",
		ru = "Вы подавляете {warpcharge_vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." одновременно испуская конусообразный крик, который "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов перед вами.\n" -- Сбрасывающий вопль -- руоф Вырвавшийся вопль
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.\n"
			..Dot_nc.." Враги в "..CNumb("5", "n_5_rgb").."-метровом радиусе перед вами "..CKWord("ошеломляются", "oshelomlautsa_rgb_ru")..".\n"
			..Dot_nc.." Волна варпа проходит сквозь стены и распространяется на расстояние до "..CNumb("30", "n_30_rgb").." метров, позволяя вам "..CKWord("ошеломить", "oshelomit_rgb_ru").." сквозь препятствия Гончую, атакующую союзника.\n"
			..Dot_nc.." Всегда поражает в зону торса.",
		fr = "Vous apaisez {warpcharge_vent:%s} de "..CKWord("Péril", "Peril_rgb_fr").." tout en libérant un cri en forme de cône qui "..CKWord("Vacille", "Staggers_rgb_fr").." les ennemis devant vous.\n"
			..Dot_green.." Une version améliorée de {talent_name:%s}.\n"
			..Dot_nc.." Temps de recharge de base : {cooldown:%s} secondes.\n"
			.."\n"
			..Dot_nc.." Peut être utilisé pour empêcher le "..CKWord("Psyker", "cls_psy_rgb_fr").." d'exploser.\n"
			..Dot_nc.." L'onde de Warp traverse les murs et se propage jusqu'à "..CNumb("30", "n_30_rgb").." mètres, vous permettant de "..CKWord("Étourdir", "Stun_rgb_fr").." un Chien de la Peste attaquant un allié à travers les obstacles.\n"
			..Dot_nc.." "..CKWord("Étourdi", "Stuns_rgb_fr").." les ennemis dans un rayon de "..CNumb("5", "n_5_rgb").." mètres devant vous.\n"
			..Dot_nc.." Vise toujours la zone du torse.",
		["zh-tw"] = "釋放錐形喊叫，消除 {warpcharge_vent:%s} "..CKWord("反噬", "Peril_rgb_tw").."，並使前方敵人"..CKWord("踉蹌", "Staggers_rgb_tw").."。\n"
			..Dot_green.." 此為 {talent_name:%s} 的強化版本。\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 可用來防止"..CKWord("靈能者", "cls_psy_rgb_tw").."自爆。\n"
			..Dot_nc.." 亞空間波可穿透牆壁並擴散至 "..CNumb("30", "n_30_rgb").." 公尺，讓你能隔著障礙物"..CKWord("眩暈", "Stun_rgb_tw").."正在攻擊隊友的瘟疫獵犬。\n"
			..Dot_nc.." 使前方半徑 "..CNumb("5", "n_5_rgb").." 公尺內的敵人"..CKWord("眩暈", "Stuns_rgb_tw").."。\n"
			..Dot_nc.." 必定命中軀幹部位。",
		["zh-cn"] = "释放一个锥形呐喊，压制{warpcharge_vent:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."，并"..CKWord("踉跄", "Stagger_rgb_zh_cn").."前方的敌人。\n"
			..Dot_green.." {talent_name:%s}的强化版本。\n"
			..Dot_nc.." 基础冷却：{cooldown:%s}秒。\n"
			.."\n"
			..Dot_nc.." 可用于防止"..CKWord("灵能者", "cls_psy_rgb_zh_cn").."自爆。\n"
			..Dot_nc.." 亚空间波可穿墙，传播至多"..CNumb("30", "n_30_rgb").."米，让你穿过障碍物"..CKWord("眩晕", "Stun_rgb_zh_cn").."攻击盟友的瘟疫猎犬。\n"
			..Dot_nc.." "..CKWord("眩晕", "Stun_rgb_zh_cn").."前方"..CNumb("5", "n_5_rgb").."米半径内的敌人。\n"
			..Dot_nc.." 总是击中躯干区域。",
		de = "Sie unterdrücken {warpcharge_vent:%s} "..CKWord("Gefahr", "Peril_rgb_de").." und stoßen einen kegelförmigen Schrei aus, der Gegner vor Ihnen "..CKWord("taumeln", "Staggers_rgb_de").." lässt.\n"
			..Dot_green.." Eine verbesserte Version von {talent_name:%s}.\n"
			..Dot_nc.." Basis-Abklingzeit: {cooldown:%s} Sekunden.\n"
			.."\n"
			..Dot_nc.." Kann verwendet werden, um die Explosion des "..CKWord("Psykers", "cls_psy_rgb_de").." zu verhindern.\n"
			..Dot_nc.." Die Warp-Welle durchdringt Wände und breitet sich bis zu "..CNumb("30", "n_30_rgb").." Meter aus, sodass Sie eine Seuchenbestie, die einen Verbündeten angreift, durch Hindernisse hindurch "..CKWord("betäuben", "Stun_rgb_de").." können.\n"
			..Dot_nc.." "..CKWord("Betäubt", "Stuns_rgb_de").." Gegner in einem Radius von "..CNumb("5", "n_5_rgb").." Metern vor Ihnen.\n"
			..Dot_nc.." Trifft immer die Rumpfzone.",
		it = "Sottometti {warpcharge_vent:%s} di "..CKWord("Pericolo", "Peril_rgb_it").." mentre emetti un grido a cono che "..CKWord("barcolla", "Staggers_rgb_it").." i nemici di fronte a te.\n"
			..Dot_green.." Una versione avanzata di {talent_name:%s}.\n"
			..Dot_nc.." Ricarica base: {cooldown:%s} secondi.\n"
			.."\n"
			..Dot_nc.." Può essere usato per impedire al "..CKWord("Psichico", "cls_psy_rgb_it").." di esplodere.\n"
			..Dot_nc.." L'onda del Warp attraversa i muri e si diffonde fino a "..CNumb("30", "n_30_rgb").." metri, permettendoti di "..CKWord("Stordire", "Stun_rgb_it").." un Segugio della Peste che attacca un alleato attraverso gli ostacoli.\n"
			..Dot_nc.." "..CKWord("Stordisce", "Stuns_rgb_it").." i nemici in un raggio di "..CNumb("5", "n_5_rgb").." metri di fronte a te.\n"
			..Dot_nc.." Colpisce sempre la zona del torso.",
		ja = "円錐状の叫びを放ち{warpcharge_vent:%s}の"..CKWord("危険", "Peril_rgb_ja").."を軽減し、前方の敵を"..CKWord("スタッガー", "Staggers_rgb_ja").."させる。\n"
			..Dot_green.." {talent_name:%s}の強化版。\n"
			..Dot_nc.." 基本クールダウン：{cooldown:%s}秒。\n"
			.."\n"
			..Dot_nc.." "..CKWord("サイカー", "cls_psy_rgb_ja").."の爆発を防ぐために使用可能。\n"
			..Dot_nc.." ワープ波は壁を通過し、最大"..CNumb("30", "n_30_rgb").."メートルまで広がり、障害物越しに味方を攻撃するポックスハウンドを"..CKWord("スタン", "Stun_rgb_ja").."させることができる。\n"
			..Dot_nc.." 前方"..CNumb("5", "n_5_rgb").."メートル半径内の敵を"..CKWord("スタン", "Stuns_rgb_ja").."させる。\n"
			..Dot_nc.." 常に胴体ゾーンを狙う。",
		ko = "원뿔형 외침을 방출하여 {warpcharge_vent:%s}의 "..CKWord("위험", "Peril_rgb_ko").."을 진압하고, 전방의 적을 "..CKWord("스태거", "Staggers_rgb_ko").."시킵니다.\n"
			..Dot_green.." {talent_name:%s}의 강화 버전입니다.\n"
			..Dot_nc.." 기본 재사용 대기시간: {cooldown:%s}초.\n"
			.."\n"
			..Dot_nc.." "..CKWord("사이커", "cls_psy_rgb_ko").."의 자폭을 방지하는 데 사용할 수 있습니다.\n"
			..Dot_nc.." 워프 파동은 벽을 통과하며 최대 "..CNumb("30", "n_30_rgb").."미터까지 퍼져나가 장애물 너머로 아군을 공격하는 역병 사냥개를 "..CKWord("기절", "Stun_rgb_ko").."시킬 수 있습니다.\n"
			..Dot_nc.." 전방 "..CNumb("5", "n_5_rgb").."미터 반경 내의 적을 "..CKWord("기절", "Stuns_rgb_ko").."시킵니다.\n"
			..Dot_nc.." 항상 몸통 부위를 타격합니다.",
		pl = "Tłumisz {warpcharge_vent:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl")..", wydając stożkowy okrzyk, który "..CKWord("ogłusza", "Staggers_rgb_pl").." wrogów przed tobą.\n"
			..Dot_green.." Ulepszona wersja {talent_name:%s}.\n"
			..Dot_nc.." Podstawowe odnowienie: {cooldown:%s} sekund.\n"
			.."\n"
			..Dot_nc.." Może być użyte, aby zapobiec eksplozji "..CKWord("Psykera", "cls_psy_rgb_pl")..".\n"
			..Dot_nc.." Fala Warpu przenika przez ściany i rozprzestrzenia się na odległość do "..CNumb("30", "n_30_rgb").." metrów, pozwalając ci "..CKWord("ogłuszyć", "Stun_rgb_pl").." Pox Hounda atakującego sojusznika przez przeszkody.\n"
			..Dot_nc.." "..CKWord("Ogłusza", "Stuns_rgb_pl").." wrogów w promieniu "..CNumb("5", "n_5_rgb").." metrów przed tobą.\n"
			..Dot_nc.." Zawsze celuje w strefę tułowia.",
		["pt-br"] = "Aquieta {warpcharge_vent:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br").." enquanto libera um grito em forma de cone que "..CKWord("cambaleia", "Staggers_rgb_pt_br").." inimigos à sua frente.\n"
			..Dot_green.." Uma versão aumentada de {talent_name:%s}.\n"
			..Dot_nc.." Tempo de recarga base: {cooldown:%s} segundos.\n"
			.."\n"
			..Dot_nc.." Pode ser usado para impedir que o "..CKWord("Psíquico", "cls_psy_rgb_pt_br").." exploda.\n"
			..Dot_nc.." A onda do Warp atravessa paredes e se espalha até "..CNumb("30", "n_30_rgb").." metros, permitindo que você "..CKWord("Atordoe", "Stun_rgb_pt_br").." um Cão Pestilento atacando um aliado através de obstáculos.\n"
			..Dot_nc.." "..CKWord("Atordoa", "Stuns_rgb_pt_br").." inimigos em um raio de "..CNumb("5", "n_5_rgb").." metros à sua frente.\n"
			..Dot_nc.." Sempre mira na zona do tronco.",
		es = "Aplacas {warpcharge_vent:%s} de "..CKWord("Peligro", "Peril_rgb_es").." mientras liberas un grito en forma de cono que "..CKWord("tambalea", "Staggers_rgb_es").." a los enemigos frente a ti.\n"
			..Dot_green.." Una versión mejorada de {talent_name:%s}.\n"
			..Dot_nc.." Tiempo de reutilización base: {cooldown:%s} segundos.\n"
			.."\n"
			..Dot_nc.." Se puede usar para evitar que el "..CKWord("Psíquico", "cls_psy_rgb_es").." explote.\n"
			..Dot_nc.." La onda disforme atraviesa paredes y se extiende hasta "..CNumb("30", "n_30_rgb").." metros, permitiéndote "..CKWord("Aturdir", "Stun_rgb_es").." a un Sabueso de la Peste que ataca a un aliado a través de obstáculos.\n"
			..Dot_nc.." "..CKWord("Aturde", "Stuns_rgb_es").." a los enemigos en un radio de "..CNumb("5", "n_5_rgb").." metros frente a ti.\n"
			..Dot_nc.." Siempre apunta a la zona del torso.",
	},
	--[+ ABILITY 1-1 - Warp Rupture +]--	09.06.2026
	["loc_talent_psyker_discharge_damage_debuff_description"] = { -- talent_name: Venting Shriek, damage_reduction: 10%, damage_taken: 10%, duration: 8, +colors
		en = "{talent_name:%s} applies a debuff to Enemies for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Dealt,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Taken.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ru = "{talent_name:%s} накладывает ослабление на врагов на {duration:%s} секунд:\n" -- Разрыв варпа -- руоф Варп-разрыв
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} к наносимому "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} к получаемому "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		fr = "{talent_name:%s} applique un débuff aux ennemis pendant {duration:%s} secondes :\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} "..CKWord("Dégâts", "Damage_rgb_fr").." infligés,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} "..CKWord("Dégâts", "Damage_rgb_fr").." subis.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		["zh-tw"] = "{talent_name:%s} 對敵人施加持續 {duration:%s} 秒的減益：\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} 造成的"..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} 受到的"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		["zh-cn"] = "{talent_name:%s}对敌人施加一个减益效果，持续{duration:%s}秒：\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} 造成的"..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} 受到的"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		de = "{talent_name:%s} wendet einen Debuff auf Gegner für {duration:%s} Sekunden an:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} verursachter "..CKWord("Schaden", "Damage_rgb_de")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} erlittener "..CKWord("Schaden", "Damage_rgb_de")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		it = "{talent_name:%s} applica un debuff ai nemici per {duration:%s} secondi:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} "..CKWord("Danni", "Damage_rgb_it").." inflitti,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} "..CKWord("Danni", "Damage_rgb_it").." subiti.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ja = "{talent_name:%s}は{duration:%s}秒間、敵にデバフを適用する：\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} 与える"..CKWord("ダメージ", "Damage_rgb_ja").."、\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} 受ける"..CKWord("ダメージ", "Damage_rgb_ja").."。\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ko = "{talent_name:%s}이(가) {duration:%s}초 동안 적에게 약화 효과를 적용합니다:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} 주는 "..CKWord("피해", "Damage_rgb_ko")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} 받는 "..CKWord("피해", "Damage_rgb_ko")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		pl = "{talent_name:%s} nakłada na wrogów debuff na {duration:%s} sekund:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} zadawanych "..CKWord("Obrażeń", "Damage_rgb_pl")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} otrzymywanych "..CKWord("Obrażeń", "Damage_rgb_pl")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		["pt-br"] = "{talent_name:%s} aplica um debuff nos inimigos por {duration:%s} segundos:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." causado,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." sofrido.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		es = "{talent_name:%s} aplica una desventaja a los enemigos durante {duration:%s} segundos:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} de "..CKWord("Daño", "Damage_rgb_es").." infligido,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} de "..CKWord("Daño", "Damage_rgb_es").." recibido.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
	},
	--[+ ABILITY 1-2 - Becalming Eruption +]--	09.06.2026
	["loc_talent_psyker_shout_reduces_warp_charge_generation_description"] = { -- talent_name: Venting Shriek, warp_generation: 1%, max_stacks: 25->25%, duration: 5, s->seconds, +colors
		en = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} "..CKWord("Peril", "Peril_rgb").." Generation for each Enemy hit by {talent_name:%s}.\n"
				..Dot_nc.." Up to "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." "..CKWord("Peril", "Peril_rgb").." Generation.\n"
				..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru").." за каждого врага поражённого вашим талантом {talent_name:%s}.\n" -- Успокаивающее извержение -- руоф Затихающее извержение
				..Dot_nc.." До "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
				..Dot_nc.." Длится {duration:%s} секунд.",
		fr = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} de génération de "..CKWord("Péril", "Peril_rgb_fr").." pour chaque ennemi touché par {talent_name:%s}.\n"
			..Dot_nc.." Jusqu'à "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." de génération de "..CKWord("Péril", "Peril_rgb_fr")..".\n"
			..Dot_nc.." Dure {duration:%s} secondes.",
		["zh-tw"] = Dot_green.." {talent_name:%s} 每命中一名敵人，"..CKWord("反噬", "Peril_rgb_tw").."產生量 "..CNumb("-", "n_minus_rgb").."{warp_generation:%s}。\n"
			..Dot_nc.." "..CKWord("反噬", "Peril_rgb_tw").."產生量最多 "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").."。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。",
		["zh-cn"] = Dot_green.." 每击中一个敌人，{talent_name:%s}使你"..CKWord("危机值", "Peril_rgb_zh_cn").."产生减少"..CNumb("-", "n_minus_rgb").."{warp_generation:%s}。\n"
			..Dot_nc.." 最多减少"..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."产生。\n"
			..Dot_nc.." 持续{duration:%s}秒。",
		de = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} "..CKWord("Gefahr", "Peril_rgb_de").."-Erzeugung für jeden von {talent_name:%s} getroffenen Gegner.\n"
			..Dot_nc.." Bis zu "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." "..CKWord("Gefahr", "Peril_rgb_de").."-Erzeugung.\n"
			..Dot_nc.." Hält {duration:%s} Sekunden an.",
		it = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} di generazione di "..CKWord("Pericolo", "Peril_rgb_it").." per ogni nemico colpito da {talent_name:%s}.\n"
			..Dot_nc.." Fino a "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." di generazione di "..CKWord("Pericolo", "Peril_rgb_it")..".\n"
			..Dot_nc.." Dura {duration:%s} secondi.",
		ja = Dot_green.." {talent_name:%s}がヒットした敵1体につき"..CNumb("-", "n_minus_rgb").."{warp_generation:%s}"..CKWord("危険", "Peril_rgb_ja").."生成。\n"
			..Dot_nc.." 最大"..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").."の"..CKWord("危険", "Peril_rgb_ja").."生成軽減。\n"
			..Dot_nc.." 持続時間{duration:%s}秒。",
		ko = Dot_green.." {talent_name:%s}에 적중된 적 하나당 "..CKWord("위험", "Peril_rgb_ko").." 생성량 "..CNumb("-", "n_minus_rgb").."{warp_generation:%s}.\n"
			..Dot_nc.." 최대 "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." "..CKWord("위험", "Peril_rgb_ko").." 생성 감소.\n"
			..Dot_nc.." {duration:%s}초간 지속됩니다.",
		pl = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} generacji "..CKWord("Zagrożenia", "Peril_rgb_pl").." za każdego wroga trafionego przez {talent_name:%s}.\n"
			..Dot_nc.." Do "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." generacji "..CKWord("Zagrożenia", "Peril_rgb_pl")..".\n"
			..Dot_nc.." Trwa {duration:%s} sekund.",
		["pt-br"] = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} de geração de "..CKWord("Perigo", "Peril_rgb_pt_br").." para cada inimigo atingido por {talent_name:%s}.\n"
			..Dot_nc.." Até "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." de geração de "..CKWord("Perigo", "Peril_rgb_pt_br")..".\n"
			..Dot_nc.." Dura {duration:%s} segundos.",
		es = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} de generación de "..CKWord("Peligro", "Peril_rgb_es").." por cada enemigo golpeado por {talent_name:%s}.\n"
			..Dot_nc.." Hasta "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." de generación de "..CKWord("Peligro", "Peril_rgb_es")..".\n"
			..Dot_nc.." Dura {duration:%s} segundos.",
	},
-- !!! Removed " -". Fix in the Enhanced_Descriptions.lua file !!! --
	--[+ ABILITY 1-3 - Creeping Flames +]--	09.06.2026
	["loc_talent_psyker_warpfire_on_shout_desc"] = { -- talent_name: Venting Shriek, min_stacks: 1 -, warpfire_stacks: 6, Stack(s)->Stacks, +colors
		en = "{talent_name:%s} applies {min_stacks:%s} - {warpfire_stacks:%s} Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." to targets Hit based on your current "..CKWord("Peril", "Peril_rgb")..".\n"
			.."_______________________________\n"
			..CKWord("Soulblaze", "Soulblaze_rgb")..":   "..CNumb("1", "n_1_rgb").." |    "..CNumb("2", "n_2_rgb").." |     "..CNumb("3", "n_3_rgb").." |      "..CNumb("4", "n_4_rgb").." |     "..CNumb("5", "n_5_rgb").." |     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Peril", "Peril_rgb").." ("..CNumb("%", "pc_rgb").."):     "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").." | "..CKWord("~33", "n__33_rgb").." | "..CKWord("~50", "n__50_rgb").." | "..CKWord("~67", "n__67_rgb").." | "..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			..Dot_nc.." Ticks every "..CNumb("0.75", "n_0_75_rgb").." seconds.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." vs Carapace.",
		ru = "{talent_name:%s} накладывает от "..CNumb("1", "n_1_rgb").." до {warpfire_stacks:%s} зарядов "..CKWord("горения души", "gorenia_dushi_rgb_ru").." на поражённые цели в зависимости от текущего процента "..CKWord("опасности", "opasnosti_rgb_ru")..":\n" -- Ползучее пламя -- руоф Раздувающееся пламя
			.."_______________________________\n"
			.."Заряды:              "..CNumb("1", "n_1_rgb").."|    "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."|"..CKWord("~17", "n__17_rgb").."|"..CKWord("~33", "n__33_rgb").."|"..CKWord("~50", "n__50_rgb").."|"..CKWord("~67", "n__67_rgb").."|"..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Срабатывает раз в "..CNumb("0.75", "n_0_75_rgb").." секунды.\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Большой "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
		fr = "{talent_name:%s} applique {min_stacks:%s} - {warpfire_stacks:%s} cumuls de "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr").." aux cibles touchées en fonction de votre "..CKWord("Péril", "Peril_rgb_fr").." actuel.\n"
			.."_______________________________\n"
			..CKWord("FdA", "Soulblaz_rgb_fr").." :            "..CNumb("1", "n_1_rgb").." |    "..CNumb("2", "n_2_rgb").." |     "..CNumb("3", "n_3_rgb").." |      "..CNumb("4", "n_4_rgb").." |     "..CNumb("5", "n_5_rgb").." |     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Péril", "Peril_rgb_fr").." ("..CNumb("%", "pc_rgb").."):     "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").." | "..CKWord("~33", "n__33_rgb").." | "..CKWord("~50", "n__50_rgb").." | "..CKWord("~67", "n__67_rgb").." | "..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Dure "..CNumb("8", "n_8_rgb").." secondes.\n"
			..Dot_nc.." Tick toutes les "..CNumb("0.75", "n_0_75_rgb").." secondes.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." "..CKWord("Dégâts", "Damage_rgb_fr").." très élevés contre armure.\n"
			..Dot_red.." "..CKWord("Dégâts", "Damage_rgb_fr").." très faibles contre Carapace.",
		["zh-tw"] = "{talent_name:%s} 依當前"..CKWord("反噬", "Peril_rgb_tw").." 對命中目標施加 {min_stacks:%s}～{warpfire_stacks:%s} 層"..CKWord("靈魂之火", "Soulblaze_rgb_tw").."：\n"
			.."_______________________________\n"
			..CKWord("靈魂之火", "Soulblaze_rgb_tw").."：       "..CNumb("1", "n_1_rgb").." | "..CNumb("2", "n_2_rgb").." | "..CNumb("3", "n_3_rgb").." | "..CNumb("4", "n_4_rgb").." | "..CNumb("5", "n_5_rgb").." | "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("反噬", "Peril_rgb_tw").."（"..CNumb("%", "pc_rgb").."）：     "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").." | "..CKWord("~33", "n__33_rgb").." | "..CKWord("~50", "n__50_rgb").." | "..CKWord("~67", "n__67_rgb").." | "..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." 持續 "..CNumb("8", "n_8_rgb").." 秒。\n"
			..Dot_nc.." 每 "..CNumb("0.75", "n_0_75_rgb").." 秒跳動一次。\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." 對一般護甲"..CKWord("傷害", "Damage_rgb_tw").." 極高。\n"
			..Dot_red.." 對甲殼護甲"..CKWord("傷害", "Damage_rgb_tw").." 極低。",
		["zh-cn"] = "{talent_name:%s}根据当前"..CKWord("危机值", "Peril_rgb_zh_cn").."对击中的目标施加{min_stacks:%s} - {warpfire_stacks:%s}层"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."：\n"
			.."_______________________________\n"
			..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."： "..CNumb("1", "n_1_rgb").."|   "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|    "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("危机值", "Peril_rgb_zh_cn").."("..CNumb("%", "pc_rgb")..")：    "..CNumb("0", "n_0_rgb").."|"..CKWord("~17", "n__17_rgb").."|"..CKWord("~33", "n__33_rgb").."|"..CKWord("~50", "n__50_rgb").."|"..CKWord("~67", "n__67_rgb").."|"..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." 持续 "..CNumb("8", "n_8_rgb").." 秒。\n"
			..Dot_nc.." 每 "..CNumb("0.75", "n_0_75_rgb").." 秒跳动一次。\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." 对护甲造成极高"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_red.." 对甲壳甲"..CKWord("伤害", "Damage_rgb_zh_cn").."极低。",
		de = "{talent_name:%s} wendet basierend auf Ihrer aktuellen "..CKWord("Gefahr", "Peril_rgb_de").." {min_stacks:%s} - {warpfire_stacks:%s} Stapel "..CKWord("Seelenbrand", "Soulblaze_rgb_de").." auf getroffene Ziele an:\n"
			.."_______________________________\n"
			..CKWord("Seelenbrand", "Soulblaze_rgb_de")..":  "..CNumb("1", "n_1_rgb").." |    "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|      "..CNumb("4", "n_4_rgb").."|     "..CNumb("5", "n_5_rgb").."|     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Gefahr", "Peril_rgb_de").." ("..CNumb("%", "pc_rgb").."):     "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").."| "..CKWord("~33", "n__33_rgb").."| "..CKWord("~50", "n__50_rgb").."| "..CKWord("~67", "n__67_rgb").."| "..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Hält "..CNumb("8", "n_8_rgb").." Sekunden an.\n"
			..Dot_nc.." Tickt alle "..CNumb("0.75", "n_0_75_rgb").." Sekunden.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Sehr hoher Rüstungs-"..CKWord("Schaden", "Damage_rgb_de")..".\n"
			..Dot_red.." Sehr geringer "..CKWord("Schaden", "Damage_rgb_de").." gegen Carapax.",
		it = "{talent_name:%s} applica {min_stacks:%s} - {warpfire_stacks:%s} accumuli di "..CKWord("Vampa d'anima", "Soulblaze_rgb_it").." ai bersagli colpiti in base al tuo "..CKWord("Pericolo", "Peril_rgb_it").." attuale:\n"
			.."_______________________________\n"
			..CKWord("VdA", "Soulblaz_rgb_it")..":                "..CNumb("1", "n_1_rgb").." |    "..CNumb("2", "n_2_rgb").." |    "..CNumb("3", "n_3_rgb").." |    "..CNumb("4", "n_4_rgb").." |    "..CNumb("5", "n_5_rgb").." |     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Pericolo", "Peril_rgb_it").." ("..CNumb("%", "pc_rgb").."):  "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").."| "..CKWord("~33", "n__33_rgb").."| "..CKWord("~50", "n__50_rgb").."| "..CKWord("~67", "n__67_rgb").."| "..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Dura "..CNumb("8", "n_8_rgb").." secondi.\n"
			..Dot_nc.." Ticchetta ogni "..CNumb("0.75", "n_0_75_rgb").." secondi.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." "..CKWord("Danno", "Damage_rgb_it").." molto alto contro armatura.\n"
			..Dot_red.." "..CKWord("Danno", "Damage_rgb_it").." molto basso contro Carapace.",
		ja = "{talent_name:%s}は現在の"..CKWord("危険", "Peril_rgb_ja").."に基づいて、ヒットした対象に{min_stacks:%s}～{warpfire_stacks:%s}の"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."を適用する：\n"
			.."_______________________________\n"
			..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."： "..CNumb("1", "n_1_rgb").."|   "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|    "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("危険", "Peril_rgb_ja").."("..CNumb("%", "pc_rgb")..")：    "..CNumb("0", "n_0_rgb").."|"..CKWord("~17", "n__17_rgb").."|"..CKWord("~33", "n__33_rgb").."|"..CKWord("~50", "n__50_rgb").."|"..CKWord("~67", "n__67_rgb").."|"..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." 持続時間"..CNumb("8", "n_8_rgb").."秒。\n"
			..Dot_nc.." "..CNumb("0.75", "n_0_75_rgb").."秒毎にダメージ。\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." 装甲への"..CKWord("ダメージ", "Damage_rgb_ja").."は非常に高い。\n"
			..Dot_red.." カラペース装甲への"..CKWord("ダメージ", "Damage_rgb_ja").."は非常に低い。",
		ko = "{talent_name:%s}이(가) 현재 "..CKWord("위험", "Peril_rgb_ko").." 수치에 따라 타격한 대상에게 {min_stacks:%s} ~ {warpfire_stacks:%s} 중첩의 "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").."을(를) 적용합니다:\n"
			.."_______________________________\n"
			..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").."： "..CNumb("1", "n_1_rgb").."|   "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|    "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("위험", "Peril_rgb_ko").."("..CNumb("%", "pc_rgb")..")：    "..CNumb("0", "n_0_rgb").."|"..CKWord("~17", "n__17_rgb").."|"..CKWord("~33", "n__33_rgb").."|"..CKWord("~50", "n__50_rgb").."|"..CKWord("~67", "n__67_rgb").."|"..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." "..CNumb("8", "n_8_rgb").."초간 지속됩니다.\n"
			..Dot_nc.." "..CNumb("0.75", "n_0_75_rgb").."초마다 피해를 줍니다.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." 방어구에 대한 "..CKWord("피해", "Damage_rgb_ko").."가 매우 높습니다.\n"
			..Dot_red.." 카라페이스 방어구에 대한 "..CKWord("피해", "Damage_rgb_ko").."가 매우 낮습니다.",
		pl = "{talent_name:%s} nakłada {min_stacks:%s} - {warpfire_stacks:%s} ładunków "..CKWord("Pożaru dusz", "Soulblaze_rgb_pl").." na trafione cele w zależności od twojego aktualnego "..CKWord("Zagrożenia", "Peril_rgb_pl")..":\n"
			.."_______________________________\n"
			..CKWord("Pożar dusz", "Soulblaze_rgb_pl")..":         "..CNumb("1", "n_1_rgb").." |    "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|    "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Zagrożenie", "Peril_rgb_pl").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").."|"..CKWord("~33", "n__33_rgb").."|"..CKWord("~50", "n__50_rgb").."|"..CKWord("~67", "n__67_rgb").."|"..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Trwa "..CNumb("8", "n_8_rgb").." sekund.\n"
			..Dot_nc.." Tyka co "..CNumb("0.75", "n_0_75_rgb").." sekundy.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Bardzo wysokie "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciw pancerzowi.\n"
			..Dot_red.." Bardzo niskie "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciw Karapaksowi.",
		["pt-br"] = "{talent_name:%s} aplica {min_stacks:%s} - {warpfire_stacks:%s} acúmulos de "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br").." aos alvos atingidos com base no seu "..CKWord("Perigo", "Peril_rgb_pt_br").." atual:\n"
			.."_______________________________\n"
			..CKWord("CdA", "Soulblaz_rgb_pt_br")..":            "..CNumb("1", "n_1_rgb").." |    "..CNumb("2", "n_2_rgb").." |     "..CNumb("3", "n_3_rgb").." |      "..CNumb("4", "n_4_rgb").." |     "..CNumb("5", "n_5_rgb").." |     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Perigo", "Peril_rgb_pt_br").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").." | "..CKWord("~33", "n__33_rgb").." | "..CKWord("~50", "n__50_rgb").." | "..CKWord("~67", "n__67_rgb").." | "..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Dura "..CNumb("8", "n_8_rgb").." segundos.\n"
			..Dot_nc.." Tique a cada "..CNumb("0.75", "n_0_75_rgb").." segundos.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." "..CKWord("Dano", "Damage_rgb_pt_br").." muito alto contra armadura.\n"
			..Dot_red.." "..CKWord("Dano", "Damage_rgb_pt_br").." muito baixo contra Carapaça.",
		es = "{talent_name:%s} aplica {min_stacks:%s} - {warpfire_stacks:%s} acumulaciones de "..CKWord("Llama del alma", "Soulblaze_rgb_es").." a los objetivos golpeados según tu "..CKWord("Peligro", "Peril_rgb_es").." actual:\n"
			.."_______________________________\n"
			..CKWord("LdA", "Soulblaz_rgb_es")..":              "..CNumb("1", "n_1_rgb").." |    "..CNumb("2", "n_2_rgb").." |     "..CNumb("3", "n_3_rgb").." |      "..CNumb("4", "n_4_rgb").." |     "..CNumb("5", "n_5_rgb").." |     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Peligro", "Peril_rgb_es").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").." | "..CKWord("~33", "n__33_rgb").." | "..CKWord("~50", "n__50_rgb").." | "..CKWord("~67", "n__67_rgb").." | "..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Dura "..CNumb("8", "n_8_rgb").." segundos.\n"
			..Dot_nc.." Tic cada "..CNumb("0.75", "n_0_75_rgb").." segundos.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." "..CKWord("Daño", "Damage_rgb_es").." muy alto contra blindaje.\n"
			..Dot_red.." "..CKWord("Daño", "Damage_rgb_es").." muy bajo contra Caparazón.",
	},
	--[+ ABILITY 2 - Telekine Shield +]--	09.06.2026
	["loc_talent_psyker_combat_ability_shield_description"] = { -- duration: 17.5, cooldown: 45, s->seconds
		en = "Spawns a {talent_name:%s} that blocking incoming enemy ranged attacks while allowing you and your allies to fire through it.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Shield Health: "..CNumb("20", "n_20_rgb")..".\n"
			..Dot_green.." Blocks:\n"
			.."   "..Dot_green.." Ranged hit scan attacks,\n"
			.."   "..Dot_green.." Projectiles (Bomber grenades),\n"
			.."   "..Dot_green.." Trapper's nets,\n"
			.."   "..Dot_green.." Flamethrower direct hits.\n"
			..Dot_red.." Does Not Block:\n"
			.."   "..Dot_red.." Ground fire patches,\n"
			.."   "..Dot_red.." Toxic gas clouds,\n"
			.."   "..Dot_red.." Poxburster explosions.\n"
			.."\n"
			..Dot_nc.." Hold the ability button to preview placement. Cancel by blocking.",
		ru = "Вы создаёте {talent_name:%s}, который блокирует вражеские дальние атаки, позволяя вам и вашим союзникам стрелять сквозь него.\n" -- Телекинетический щит
			..Dot_nc.." Длится {duration:%s} секунды.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Здоровье щита: "..CNumb("20", "n_20_rgb")..".\n"
			..Dot_green.." Блокирует:\n"
			.."   "..Dot_green.." Дальнобойные выстрелы,\n"
			.."   "..Dot_green.." Снаряды (гранаты Гренадёра),\n"
			.."   "..Dot_green.." Сетки Ловушечника,\n"
			.."   "..Dot_green.." Прямые попадания огнемёта.\n"
			..Dot_red.." Не блокирует:\n"
			.."   "..Dot_red.." Наземные пятна огня,\n"
			.."   "..Dot_red.." Облака токсичного газа,\n"
			.."   "..Dot_red.." Подрыв взрывника.\n"
			.."\n"
			..Dot_nc.." Удерживание кнопки активации способности показывает место размещения. Отменяется блоком.",
		fr = "Crée un {talent_name:%s} qui bloque les attaques à distance entrantes tout en permettant à vous et à vos alliés de tirer à travers.\n"
			..Dot_nc.." Dure {duration:%s} secondes.\n"
			..Dot_nc.." Temps de recharge de base : {cooldown:%s} secondes.\n"
			.."\n"
			..Dot_nc.." Santé du bouclier : "..CNumb("20", "n_20_rgb")..".\n"
			..Dot_green.." Bloque :\n"
			.."   "..Dot_green.." les tirs à distance,\n"
			.."   "..Dot_green.." les projectiles (grenades du Bomber),\n"
			.."   "..Dot_green.." les filets du Trappeur,\n"
			.."   "..Dot_green.." les impacts directs du lance-flammes.\n"
			..Dot_red.." Ne bloque pas :\n"
			.."   "..Dot_red.." les zones de feu au sol,\n"
			.."   "..Dot_red.." les nuages de gaz toxique,\n"
			.."   "..Dot_red.." les explosions de Poxburster.\n"
			.."\n"
			..Dot_nc.." Maintenez la touche de capacité pour prévisualiser l'emplacement. Annulez en bloquant.",
		["zh-tw"] = "生成 {talent_name:%s}，阻擋敵人的遠程攻擊，同時允許你和隊友隔著護盾射擊。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 護盾生命值："..CNumb("20", "n_20_rgb").."。\n"
			..Dot_green.." 可阻擋：\n"
			.."   "..Dot_green.." 遠程即時命中攻擊，\n"
			.."   "..Dot_green.." 投射物（轟炸者手榴彈），\n"
			.."   "..Dot_green.." 陷阱兵的網，\n"
			.."   "..Dot_green.." 火焰兵的直接命中。\n"
			..Dot_red.." 無法阻擋：\n"
			.."   "..Dot_red.." 地面火焰，\n"
			.."   "..Dot_red.." 毒氣雲，\n"
			.."   "..Dot_red.." 瘟疫爆者的爆炸。\n"
			.."\n"
			..Dot_nc.." 按住技能鍵可預覽放置位置；使用格擋即可取消。",
		["zh-cn"] = "生成一个{talent_name:%s}，阻挡来袭的远程攻击，同时让你和盟友可以透过它射击。\n"
			..Dot_nc.." 持续{duration:%s}秒。\n"
			..Dot_nc.." 基础冷却：{cooldown:%s}秒。\n"
			.."\n"
			..Dot_nc.." 护盾生命值："..CNumb("20", "n_20_rgb").."。\n"
			..Dot_green.." 阻挡：\n"
			.."   "..Dot_green.." 远程即时命中攻击，\n"
			.."   "..Dot_green.." 投射物（轰炸者手榴弹），\n"
			.."   "..Dot_green.." 捕网者的网，\n"
			.."   "..Dot_green.." 喷火器直接命中。\n"
			..Dot_red.." 无法阻挡：\n"
			.."   "..Dot_red.." 地面火焰区域，\n"
			.."   "..Dot_red.." 毒气云，\n"
			.."   "..Dot_red.." 瘟疫爆弹者爆炸。\n"
			.."\n"
			..Dot_nc.." 按住能力按键可预览放置位置。举盾取消。",
		de = "Erschafft ein {talent_name:%s}, das eingehende Fernangriffe blockiert, während Sie und Ihre Verbündeten hindurchschießen können.\n"
			..Dot_nc.." Hält {duration:%s} Sekunden an.\n"
			..Dot_nc.." Basis-Abklingzeit: {cooldown:%s} Sekunden.\n"
			.."\n"
			..Dot_nc.." Schild-Leben: "..CNumb("20", "n_20_rgb")..".\n"
			..Dot_green.." Blockiert:\n"
			.."   "..Dot_green.." Fernkampf-Trefferabfragen,\n"
			.."   "..Dot_green.." Projektile (Granaten des Bombers),\n"
			.."   "..Dot_green.." Netze des Fallenstellers,\n"
			.."   "..Dot_green.." direkte Flammenwerfer-Treffer.\n"
			..Dot_red.." Blockiert nicht:\n"
			.."   "..Dot_red.." Bodenfeuerflächen,\n"
			.."   "..Dot_red.." giftige Gaswolken,\n"
			.."   "..Dot_red.." Explosionen des Poxbursters.\n"
			.."\n"
			..Dot_nc.." Halten Sie die Fähigkeitstaste gedrückt, um die Platzierung vorzuschauen. Abbrechen durch Blocken.",
		it = "Genera un {talent_name:%s} che blocca gli attacchi a distanza in arrivo, permettendo a te e ai tuoi alleati di sparare attraverso di esso.\n"
			..Dot_nc.." Dura {duration:%s} secondi.\n"
			..Dot_nc.." Ricarica base: {cooldown:%s} secondi.\n"
			.."\n"
			..Dot_nc.." Salute dello scudo: "..CNumb("20", "n_20_rgb")..".\n"
			..Dot_green.." Blocca:\n"
			.."   "..Dot_green.." attacchi a distanza a scansione,\n"
			.."   "..Dot_green.." proiettili (granate del Bombardiere),\n"
			.."   "..Dot_green.." reti del Trapper,\n"
			.."   "..Dot_green.." colpi diretti del lanciafiamme.\n"
			..Dot_red.." Non blocca:\n"
			.."   "..Dot_red.." chiazze di fuoco a terra,\n"
			.."   "..Dot_red.." nuvole di gas tossico,\n"
			.."   "..Dot_red.." esplosioni dello Scoppiatoio.\n"
			.."\n"
			..Dot_nc.." Tieni premuto il pulsante dell'abilità per visualizzare in anteprima il posizionamento. Annulla bloccando.",
		ja = "遮蔽物{talent_name:%s}を生成し、敵の遠隔攻撃を防ぎながら味方は射撃可能。\n"
			..Dot_nc.." 持続時間{duration:%s}秒。\n"
			..Dot_nc.." 基本クールダウン：{cooldown:%s}秒。\n"
			.."\n"
			..Dot_nc.." シールド耐久："..CNumb("20", "n_20_rgb").."。\n"
			..Dot_green.." 防ぐもの：\n"
			.."   "..Dot_green.." 遠隔ヒットスキャン攻撃、\n"
			.."   "..Dot_green.." 投射物（ボンバーの手榴弾）、\n"
			.."   "..Dot_green.." トラッパーのネット、\n"
			.."   "..Dot_green.." 火炎放射器の直撃。\n"
			..Dot_red.." 防げないもの：\n"
			.."   "..Dot_red.." 地面の火炎エリア、\n"
			.."   "..Dot_red.." 有毒ガス雲、\n"
			.."   "..Dot_red.." ポックスバスターの爆発。\n"
			.."\n"
			..Dot_nc.." アビリティボタンを長押しで設置位置を確認。ブロックでキャンセル。",
		ko = "들어오는 적의 원거리 공격을 차단하면서 아군이 사격할 수 있는 {talent_name:%s}을(를) 생성합니다.\n"
			..Dot_nc.." {duration:%s}초간 지속됩니다.\n"
			..Dot_nc.." 기본 재사용 대기시간: {cooldown:%s}초.\n"
			.."\n"
			..Dot_nc.." 방패 체력: "..CNumb("20", "n_20_rgb")..".\n"
			..Dot_green.." 차단:\n"
			.."   "..Dot_green.." 원거리 즉시 명중 공격,\n"
			.."   "..Dot_green.." 투사체(폭격병 수류탄),\n"
			.."   "..Dot_green.." 포획꾼의 그물,\n"
			.."   "..Dot_green.." 화염방사기 직격탄.\n"
			..Dot_red.." 차단하지 못함:\n"
			.."   "..Dot_red.." 지상 화염 지대,\n"
			.."   "..Dot_red.." 유독 가스 구름,\n"
			.."   "..Dot_red.." 역병 폭파병 폭발.\n"
			.."\n"
			..Dot_nc.." 능력 키를 길게 누르면 배치 위치를 미리 볼 수 있습니다. 방패 막기로 취소합니다.",
		pl = "Przywołuje {talent_name:%s}, który blokuje nadchodzące ataki dystansowe, pozwalając tobie i sojusznikom strzelać przez niego.\n"
			..Dot_nc.." Trwa {duration:%s} sekund.\n"
			..Dot_nc.." Podstawowe odnowienie: {cooldown:%s} sekund.\n"
			.."\n"
			..Dot_nc.." Żywotność tarczy: "..CNumb("20", "n_20_rgb")..".\n"
			..Dot_green.." Blokuje:\n"
			.."   "..Dot_green.." dystansowe ataki natychmiastowe,\n"
			.."   "..Dot_green.." pociski (granaty Bombardiera),\n"
			.."   "..Dot_green.." sieci Trappera,\n"
			.."   "..Dot_green.." bezpośrednie trafienia miotacza ognia.\n"
			..Dot_red.." Nie blokuje:\n"
			.."   "..Dot_red.." ognia na ziemi,\n"
			.."   "..Dot_red.." chmur toksycznego gazu,\n"
			.."   "..Dot_red.." eksplozji Poxburster.\n"
			.."\n"
			..Dot_nc.." Przytrzymaj przycisk umiejętności, aby podglądnąć miejsce. Anuluj przez blok.",
		["pt-br"] = "Cria um {talent_name:%s} que bloqueia ataques à distância inimigos, permitindo que você e seus aliados atirem através dele.\n"
			..Dot_nc.." Dura {duration:%s} segundos.\n"
			..Dot_nc.." Tempo de recarga base: {cooldown:%s} segundos.\n"
			.."\n"
			..Dot_nc.." Saúde do escudo: "..CNumb("20", "n_20_rgb")..".\n"
			..Dot_green.." Bloqueia:\n"
			.."   "..Dot_green.." ataques à distância de varredura,\n"
			.."   "..Dot_green.." projéteis (granadas do Bombardeiro),\n"
			.."   "..Dot_green.." redes do Apanhador,\n"
			.."   "..Dot_green.." acertos diretos de lança-chamas.\n"
			..Dot_red.." Não bloqueia:\n"
			.."   "..Dot_red.." áreas de fogo no chão,\n"
			.."   "..Dot_red.." nuvens de gás tóxico,\n"
			.."   "..Dot_red.." explosões do Pestilento.\n"
			.."\n"
			..Dot_nc.." Segure o botão da habilidade para pré-visualizar o posicionamento. Cancelar bloqueando.",
		es = "Genera un {talent_name:%s} que bloquea los ataques a distancia enemigos mientras te permite a ti y a tus aliados disparar a través de él.\n"
			..Dot_nc.." Dura {duration:%s} segundos.\n"
			..Dot_nc.." Tiempo de reutilización base: {cooldown:%s} segundos.\n"
			.."\n"
			..Dot_nc.." Salud del escudo: "..CNumb("20", "n_20_rgb")..".\n"
			..Dot_green.." Bloquea:\n"
			.."   "..Dot_green.." ataques a distancia de escaneo de impacto,\n"
			.."   "..Dot_green.." proyectiles (granadas del Bombardero),\n"
			.."   "..Dot_green.." redes del Atrapador,\n"
			.."   "..Dot_green.." impactos directos de lanzallamas.\n"
			..Dot_red.." No bloquea:\n"
			.."   "..Dot_red.." zonas de fuego en el suelo,\n"
			.."   "..Dot_red.." nubes de gas tóxico,\n"
			.."   "..Dot_red.." explosiones del Pestilente.\n"
			.."\n"
			..Dot_nc.." Mantén presionado el botón de habilidad para previsualizar la ubicación. Cancela bloqueando.",
	},
	--[+ ABILITY 2-1 - Bolstered Shield +]--	09.06.2026
	["loc_talent_psyker_force_field_charges_description"] = { -- talent_name: Telekine Shield, max_charges: 2, cooldown: 35, +colors
		en = Dot_green.." {talent_name:%s} now holds up to {max_charges:%s} charges.\n"
			.."\n"
			..Dot_nc.." The second charge's "..CKWord("Cooldown", "Cd_rgb").." starts once the first one is ready.",
		ru = Dot_green.." {talent_name:%s} теперь имеет {max_charges:%s} заряда.\n" -- Усиленный щит
			.."\n"
			..Dot_nc.." Время восстановления второго заряда начинается после готовности первого.",
		fr = Dot_green.." {talent_name:%s} peut désormais contenir jusqu'à {max_charges:%s} charges.\n"
			.."\n"
			..Dot_nc.." Le "..CKWord("Temps de recharge", "Cd_rgb_fr").." de la deuxième charge commence dès que la première est prête.",
		["zh-tw"] = Dot_green.." {talent_name:%s} 現在最多可儲存 {max_charges:%s} 次充能。\n"
			.."\n"
			..Dot_nc.." 第一個充能就緒後，第二個充能的"..CKWord("冷卻", "Cd_rgb_tw").."才會開始。",
		["zh-cn"] = Dot_green.." {talent_name:%s}现在最多可储存{max_charges:%s}次使用次数。\n"
			.."\n"
			..Dot_nc.." 第二次使用次数的"..CKWord("冷却", "Cd_rgb_zh_cn").."在第一次冷却完成后开始计算。",
		de = Dot_green.." {talent_name:%s} kann jetzt bis zu {max_charges:%s} Ladungen speichern.\n"
			.."\n"
			..Dot_nc.." Die "..CKWord("Abklingzeit", "Cd_rgb_de").." der zweiten Ladung beginnt, sobald die erste bereit ist.",
		it = Dot_green.." {talent_name:%s} ora può contenere fino a {max_charges:%s} cariche.\n"
			.."\n"
			..Dot_nc.." Il "..CKWord("Tempo di recupero", "Cd_rgb_it").." della seconda carica inizia non appena la prima è pronta.",
		ja = Dot_green.." {talent_name:%s}の最大チャージ数が{max_charges:%s}に増加する。\n"
			.."\n"
			..Dot_nc.." 2回目のチャージの"..CKWord("クールダウン", "Cd_rgb_ja").."は1回目のチャージが完了した時点から開始される。",
		ko = Dot_green.." {talent_name:%s}은(는) 이제 최대 {max_charges:%s} 충전을 보유할 수 있습니다.\n"
			.."\n"
			..Dot_nc.." 두 번째 충전의 "..CKWord("재사용 대기시간", "Cd_rgb_ko").."은 첫 번째 충전이 준비된 후 시작됩니다.",
		pl = Dot_green.." {talent_name:%s} może teraz przechowywać do {max_charges:%s} ładunków.\n"
			.."\n"
			..Dot_nc.." "..CKWord("Czas odnowienia", "Cd_rgb_pl").." drugiego ładunku rozpoczyna się, gdy pierwszy jest gotowy.",
		["pt-br"] = Dot_green.." {talent_name:%s} agora pode armazenar até {max_charges:%s} cargas.\n"
			.."\n"
			..Dot_nc.." O "..CKWord("Tempo de recarga", "Cd_rgb_pt_br").." da segunda carga começa quando a primeira estiver pronta.",
		es = Dot_green.." {talent_name:%s} ahora puede contener hasta {max_charges:%s} cargas.\n"
			.."\n"
			..Dot_nc.." El "..CKWord("Tiempo de reutilización", "Cd_rgb_es").." de la segunda carga comienza una vez que la primera está lista.",
	},
	--[+ ABILITY 2-2 - Enervating Threshold +]--	09.06.2026
	["loc_talent_psyker_force_field_stun_increased_new_description"] = { -- ability: Telekine Shield, proc_chance: 20%, special_proc_chance: 100%, +colors
		en = "{ability:%s} has a {proc_chance:%s} chance to "..CKWord("Electrocute", "Electrocute_rgb").." enemies that pass through it. Specialists and Monstrosities have a {special_proc_chance:%s} chance to get "..CKWord("Electrocuted", "Electrocuted_rgb").." but also damage the {ability:%s}.\n"
			.."\n"
			..Dot_green.." Deals "..CNumb("250", "n_250_rgb").." Base "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_green.." Can "..CKWord("Stagger", "Stagger_rgb").." all enemies except Monstrosities and enemies with active Void shield.\n"
			..Dot_nc.." The "..CKWord("Electrocution", "Electrocution_rgb").." is always applied to Specialists and Monstrosities on contact.\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BUG{#reset()}\n"
			.."Specialists and Monstrosities only deal "..CNumb("1", "n_1_rgb").." "..CKWord("Damage", "Damage_rgb").." to the shield upon contact, instead of the intended "..CNumb("8", "n_8_rgb")..".",
		ru = "Враги, проходящие сквозь {ability:%s}, с {proc_chance:%s} шансом могут быть поражены "..CKWord("электрошоком", "elektroshokom_rgb_ru")..".\n" -- Порог ослабления
			.."Щит всегда поражает "..CKWord("электрошоком", "elektroshokom_rgb_ru").." специалистов, но при этом повреждается при контакте с ними.\n"
			.."\n"
			..Dot_green.." Наносит "..CNumb("250", "n_250_rgb").." базового "..CKWord("урона", "urona_rgb_ru")..".\n"
			..Dot_green.." Может "..CKWord("ошеломить", "oshelomit_rgb_ru").." всех врагов исключая чудовищ и врагов с активным пустотным щитом.\n"
			..Dot_nc.." "..CKWord("Ошеломление", "Oshelomlenie_rgb_ru").." всегда применяется к специалистам и чудовищам при контакте.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по броне.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}СЛОМАНО{#reset()}\n"
			.."Специалисты и чудовища наносят щиту при контакте только "..CNumb("1", "n_1_rgb").." "..CKWord("урона", "urona_rgb_ru").." вместо задуманных "..CNumb("8", "n_8_rgb")..".",
		fr = "{ability:%s} a {proc_chance:%s} de chance d'"..CKWord("Électrocuter", "Electrocute_rgb_fr").." les ennemis qui le traversent. Les spécialistes et monstruosités ont {special_proc_chance:%s} de chance d'être "..CKWord("Électrocutés", "Electrocuted_rgb_fr").." mais endommagent également {ability:%s}.\n"
			.."\n"
			..Dot_green.." Inflige "..CNumb("250", "n_250_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." de base.\n"
			..Dot_green.." Peut "..CKWord("Vaciller", "Stagger_rgb_fr").." tous les ennemis sauf les monstruosités et ceux avec un bouclier du Vide actif.\n"
			..Dot_nc.." L'"..CKWord("Électrocution", "Electrocution_rgb_fr").." est toujours appliquée aux spécialistes et monstruosités au contact.\n"
			..Dot_red.." "..CKWord("Dégâts", "Damage_rgb_fr").." très faibles contre armure.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BUG{#reset()}\n"
			.."Les spécialistes et monstruosités n'infligent que "..CNumb("1", "n_1_rgb").." "..CKWord("dégât", "Damage_rgb_fr").." au bouclier au contact, au lieu des "..CNumb("8", "n_8_rgb").." prévus.",
		["zh-tw"] = "穿過 {ability:%s} 的敵人有 {proc_chance:%s} 機率受到"..CKWord("電擊", "Electrocute_rgb_tw").."。\n"
			.."專家與巨獸有 {special_proc_chance:%s} 機率被"..CKWord("電擊", "Electrocute_rgb_tw").."，\n"
			.."但也會對 {ability:%s} 造成傷害。\n"
			..Dot_green.." 造成 "..CNumb("250", "n_250_rgb").." 基礎"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_green.." 可使所有敵人"..CKWord("踉蹌", "Stagger_rgb_tw").."，巨獸和有啟用中虛空護盾的敵人除外。\n"
			..Dot_nc.." "..CKWord("電擊", "Electrocute_rgb_tw").."在接觸時一定會套用於專家與巨獸。\n"
			..Dot_red.." 對護甲"..CKWord("傷害", "Damage_rgb_tw").."極低。\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BUG{#reset()}\n"
			.."專家和巨獸接觸時只對護盾造成 "..CNumb("1", "n_1_rgb").." 點"..CKWord("傷害", "Damage_rgb_tw").."，\n"
			.."而不是預期的 "..CNumb("8", "n_8_rgb").." 點。",
		["zh-cn"] = "{ability:%s}有{proc_chance:%s}几率"..CKWord("电击", "Electrocute_rgb_zh_cn").."穿过它的敌人。专家和巨兽有{special_proc_chance:%s}几率被"..CKWord("电击", "Electrocuted_rgb_zh_cn").."，但也会伤害{ability:%s}。\n"
			.."\n"
			..Dot_green.." 造成"..CNumb("250", "n_250_rgb").."基础"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_green.." 可"..CKWord("踉跄", "Stagger_rgb_zh_cn").."除巨兽和拥有主动虚空护盾外的所有敌人。\n"
			..Dot_nc.." 接触时，专家和巨兽必定会受到"..CKWord("电击", "Electrocute_rgb_zh_cn").."。\n"
			..Dot_red.." 对护甲"..CKWord("伤害", "Damage_rgb_zh_cn").."极低。\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}错误{#reset()}\n"
			.."专家和巨兽接触时仅对护盾造成"..CNumb("1", "n_1_rgb").."点"..CKWord("伤害", "Damage_rgb_zh_cn").."，而非预期的"..CNumb("8", "n_8_rgb").."点。",
		de = "{ability:%s} hat eine {proc_chance:%s} Chance, Gegner, die es durchqueren, zu "..CKWord("elektrisieren", "Electrocute_rgb_de")..". Spezialisten und Monstrositäten haben eine {special_proc_chance:%s} Chance, "..CKWord("elektrisiert", "Electrocuted_rgb_de").." zu werden, beschädigen aber auch {ability:%s}.\n"
			.."\n"
			..Dot_green.." Verursacht "..CNumb("250", "n_250_rgb").." Basisschaden.\n"
			..Dot_green.." Kann alle Gegner außer Monstrositäten und solchen mit aktivem Leere-Schild "..CKWord("taumeln", "Stagger_rgb_de")..".\n"
			..Dot_nc.." Die "..CKWord("Elektrisierung", "Electrocution_rgb_de").." wird bei Kontakt immer auf Spezialisten und Monstrositäten angewendet.\n"
			..Dot_red.." Sehr geringer Rüstungs-"..CKWord("Schaden", "Damage_rgb_de")..".\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}FEHLER{#reset()}\n"
			.."Spezialisten und Monstrositäten fügen dem Schild bei Kontakt nur "..CNumb("1", "n_1_rgb").." "..CKWord("Schaden", "Damage_rgb_de").." zu, anstatt der vorgesehenen "..CNumb("8", "n_8_rgb")..".",
		it = "{ability:%s} ha una probabilità del {proc_chance:%s} di "..CKWord("Folgorare", "Electrocute_rgb_it").." i nemici che lo attraversano. Specialisti e Mostruosità hanno una probabilità del {special_proc_chance:%s} di essere "..CKWord("Folgorati", "Electrocuted_rgb_it").." ma danneggiano anche {ability:%s}.\n"
			.."\n"
			..Dot_green.." Infligge "..CNumb("250", "n_250_rgb").." di "..CKWord("Danno", "Damage_rgb_it").." base.\n"
			..Dot_green.." Può "..CKWord("barcollare", "Stagger_rgb_it").." tutti i nemici tranne Mostruosità e nemici con scudo del Vuoto attivo.\n"
			..Dot_nc.." La "..CKWord("Folgorazione", "Electrocution_rgb_it").." viene sempre applicata a Specialisti e Mostruosità al contatto.\n"
			..Dot_red.." "..CKWord("Danni", "Damage_rgb_it").." molto bassi contro armatura.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BUG{#reset()}\n"
			.."Specialisti e Mostruosità infliggono solo "..CNumb("1", "n_1_rgb").." di "..CKWord("Danno", "Damage_rgb_it").." allo scudo al contatto, invece degli "..CNumb("8", "n_8_rgb").." previsti.",
		ja = "{ability:%s}は通過する敵を{proc_chance:%s}の確率で"..CKWord("感電", "Electrocute_rgb_ja").."させる。スペシャリストとモンスターは{special_proc_chance:%s}の確率で"..CKWord("感電", "Electrocuted_rgb_ja").."するが、{ability:%s}にもダメージを与える。\n"
			.."\n"
			..Dot_green.." "..CNumb("250", "n_250_rgb").."の基礎"..CKWord("ダメージ", "Damage_rgb_ja").."を与える。\n"
			..Dot_green.." モンスターとアクティブなヴォイドシールドを持つ敵を除く全ての敵を"..CKWord("スタッガー", "Stagger_rgb_ja").."させられる。\n"
			..Dot_nc.." 接触時、スペシャリストとモンスターには必ず"..CKWord("感電", "Electrocution_rgb_ja").."が適用される。\n"
			..Dot_red.." 装甲への"..CKWord("ダメージ", "Damage_rgb_ja").."は非常に低い。\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}バグ{#reset()}\n"
			.."スペシャリストとモンスターは接触時に意図された"..CNumb("8", "n_8_rgb").."ではなく、シールドに"..CNumb("1", "n_1_rgb").."の"..CKWord("ダメージ", "Damage_rgb_ja").."しか与えない。",
		ko = "{ability:%s}을(를) 통과하는 적을 {proc_chance:%s} 확률로 "..CKWord("감전", "Electrocute_rgb_ko").."시킵니다. 전문가와 괴수는 {special_proc_chance:%s} 확률로 "..CKWord("감전", "Electrocuted_rgb_ko").."되지만 {ability:%s}에도 피해를 줍니다.\n"
			.."\n"
			..Dot_green.." "..CNumb("250", "n_250_rgb").."의 기본 "..CKWord("피해", "Damage_rgb_ko").."를 줍니다.\n"
			..Dot_green.." 괴수와 활성 보이드 실드가 있는 적을 제외한 모든 적을 "..CKWord("스태거", "Stagger_rgb_ko").."시킬 수 있습니다.\n"
			..Dot_nc.." 접촉 시 전문가와 괴수는 항상 "..CKWord("감전", "Electrocution_rgb_ko").." 상태가 됩니다.\n"
			..Dot_red.." 방어구에 대한 "..CKWord("피해", "Damage_rgb_ko").."가 매우 낮습니다.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}버그{#reset()}\n"
			.."전문가와 괴수는 접촉 시 의도된 "..CNumb("8", "n_8_rgb").."이 아니라 방패에 "..CNumb("1", "n_1_rgb").."의 "..CKWord("피해", "Damage_rgb_ko").."만 줍니다.",
		pl = "{ability:%s} ma {proc_chance:%s} szansy na "..CKWord("porażenie", "Electrocute_rgb_pl").." wrogów, którzy przez niego przechodzą. Specjaliści i monstrualności mają {special_proc_chance:%s} szansy na "..CKWord("porażenie", "Electrocuted_rgb_pl")..", ale także uszkadzają {ability:%s}.\n"
			.."\n"
			..Dot_green.." Zadaje "..CNumb("250", "n_250_rgb").." bazowych "..CKWord("Obrażeń", "Damage_rgb_pl")..".\n"
			..Dot_green.." Może "..CKWord("ogłuszyć", "Stagger_rgb_pl").." wszystkich wrogów z wyjątkiem monstrualności i wrogów z aktywną tarczą Void.\n"
			..Dot_nc.." "..CKWord("Porażenie", "Electrocution_rgb_pl").." jest zawsze nakładane na specjalistów i monstrualności przy kontakcie.\n"
			..Dot_red.." Bardzo niskie "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciw pancerzowi.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BŁĄD{#reset()}\n"
			.."Specjaliści i monstrualności zadają tarczy przy kontakcie tylko "..CNumb("1", "n_1_rgb").." "..CKWord("obrażeń", "Damage_rgb_pl")..", zamiast zamierzonych "..CNumb("8", "n_8_rgb")..".",
		["pt-br"] = "{ability:%s} tem {proc_chance:%s} de chance de "..CKWord("Eletrocutar", "Electrocute_rgb_pt_br").." inimigos que passam por ele. Especialistas e Monstruosidades têm {special_proc_chance:%s} de chance de serem "..CKWord("Eletrocutados", "Electrocuted_rgb_pt_br")..", mas também danificam {ability:%s}.\n"
			.."\n"
			..Dot_green.." Causa "..CNumb("250", "n_250_rgb").." de "..CKWord("Dano", "Damage_rgb_pt_br").." base.\n"
			..Dot_green.." Pode "..CKWord("cambalear", "Stagger_rgb_pt_br").." todos os inimigos, exceto Monstruosidades e inimigos com escudo do Vácuo ativo.\n"
			..Dot_nc.." A "..CKWord("Eletrocussão", "Electrocution_rgb_pt_br").." é sempre aplicada a Especialistas e Monstruosidades ao contato.\n"
			..Dot_red.." "..CKWord("Dano", "Damage_rgb_pt_br").." muito baixo contra armadura.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BUG{#reset()}\n"
			.."Especialistas e Monstruosidades causam apenas "..CNumb("1", "n_1_rgb").." de "..CKWord("Dano", "Damage_rgb_pt_br").." ao escudo ao contato, em vez dos "..CNumb("8", "n_8_rgb").." pretendidos.",
		es = "{ability:%s} tiene un {proc_chance:%s} de probabilidad de "..CKWord("Electrocutar", "Electrocute_rgb_es").." a los enemigos que lo atraviesan. Los Especialistas y Monstruosidades tienen un {special_proc_chance:%s} de probabilidad de ser "..CKWord("Electrocutados", "Electrocuted_rgb_es")..", pero también dañan {ability:%s}.\n"
			.."\n"
			..Dot_green.." Inflige "..CNumb("250", "n_250_rgb").." de "..CKWord("Daño", "Damage_rgb_es").." base.\n"
			..Dot_green.." Puede "..CKWord("tambalear", "Stagger_rgb_es").." a todos los enemigos excepto Monstruosidades y enemigos con escudo del Vacío activo.\n"
			..Dot_nc.." La "..CKWord("Electrocución", "Electrocution_rgb_es").." siempre se aplica a Especialistas y Monstruosidades al contacto.\n"
			..Dot_red.." "..CKWord("Daño", "Damage_rgb_es").." muy bajo contra blindaje.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}ERROR{#reset()}\n"
			.."Los Especialistas y Monstruosidades solo infligen "..CNumb("1", "n_1_rgb").." de "..CKWord("Daño", "Damage_rgb_es").." al escudo al contacto, en lugar de los "..CNumb("8", "n_8_rgb").." previstos.",
	},
	--[+ ABILITY 2-3 - Telekine Dome +]--	09.06.2026
	["loc_talent_psyker_force_field_dome_increased_cd_desc"] = { -- talent_name: Telekine Shield, duration: 25, cooldown: 60, s->seconds
		en = "{talent_name:%s} now forms a spherical shield.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Sphere radius: "..CNumb("6", "n_6_rgb").." meters.\n"
			..Dot_nc.." Protects from enemy attacks from all angles.\n"
			.."\n"
			..Dot_red.." Cooldown is increased to {cooldown:%s} seconds.",
		ru = "{talent_name:%s} теперь формирует сферу.\n" -- Телекинетический купол
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Радиус сферы: "..CNumb("6", "n_6_rgb").." метров.\n"
			..Dot_nc.." Защищает от атак со всех сторон.\n"
			.."\n"
			..Dot_red.." Время восстановления увеличено до {cooldown:%s} секунд.",
		fr = "{talent_name:%s} forme désormais un bouclier sphérique.\n"
			..Dot_nc.." Dure {duration:%s} secondes.\n"
			.."\n"
			..Dot_nc.." Rayon de la sphère : "..CNumb("6", "n_6_rgb").." mètres.\n"
			..Dot_nc.." Protège contre les attaques ennemies de tous les angles.\n"
			.."\n"
			..Dot_red.." Le temps de recharge est augmenté à {cooldown:%s} secondes.",
		["zh-tw"] = "{talent_name:%s} 現在形成球形護盾。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。\n"
			.."\n"
			..Dot_nc.." 球形半徑："..CNumb("6", "n_6_rgb").." 公尺。\n"
			..Dot_nc.." 可抵擋來自所有方向的敵人攻擊。\n"
			.."\n"
			..Dot_red.." 冷卻時間增加至 {cooldown:%s} 秒。",
		["zh-cn"] = "{talent_name:%s}现在形成一个球形护盾。\n"
			..Dot_nc.." 持续{duration:%s}秒。\n"
			.."\n"
			..Dot_nc.." 球体半径："..CNumb("6", "n_6_rgb").."米。\n"
			..Dot_nc.." 全方位抵御敌人攻击。\n"
			.."\n"
			..Dot_red.." 冷却时间增加至{cooldown:%s}秒。",
		de = "{talent_name:%s} formt nun einen kugelförmigen Schild.\n"
			..Dot_nc.." Hält {duration:%s} Sekunden an.\n"
			.."\n"
			..Dot_nc.." Kugelradius: "..CNumb("6", "n_6_rgb").." Meter.\n"
			..Dot_nc.." Schützt vor feindlichen Angriffen aus allen Winkeln.\n"
			.."\n"
			..Dot_red.." Die Abklingzeit wird auf {cooldown:%s} Sekunden erhöht.",
		it = "{talent_name:%s} ora forma uno scudo sferico.\n"
			..Dot_nc.." Dura {duration:%s} secondi.\n"
			.."\n"
			..Dot_nc.." Raggio della sfera: "..CNumb("6", "n_6_rgb").." metri.\n"
			..Dot_nc.." Protegge dagli attacchi nemici da tutte le angolazioni.\n"
			.."\n"
			..Dot_red.." Il tempo di recupero è aumentato a {cooldown:%s} secondi.",
		ja = "{talent_name:%s}が球状のシールドを形成するようになる。\n"
			..Dot_nc.." 持続時間{duration:%s}秒。\n"
			.."\n"
			..Dot_nc.." 球体半径："..CNumb("6", "n_6_rgb").."メートル。\n"
			..Dot_nc.." 全ての角度からの敵の攻撃を防ぐ。\n"
			.."\n"
			..Dot_red.." クールダウンが{cooldown:%s}秒に増加する。",
		ko = "{talent_name:%s}이(가) 이제 구형 방패를 형성합니다.\n"
			..Dot_nc.." {duration:%s}초간 지속됩니다.\n"
			.."\n"
			..Dot_nc.." 구체 반경: "..CNumb("6", "n_6_rgb").."미터.\n"
			..Dot_nc.." 모든 각도에서 적의 공격을 막아냅니다.\n"
			.."\n"
			..Dot_red.." 재사용 대기시간이 {cooldown:%s}초로 증가합니다.",
		pl = "{talent_name:%s} tworzy teraz kulistą tarczę.\n"
			..Dot_nc.." Trwa {duration:%s} sekund.\n"
			.."\n"
			..Dot_nc.." Promień kuli: "..CNumb("6", "n_6_rgb").." metrów.\n"
			..Dot_nc.." Chroni przed atakami wrogów ze wszystkich stron.\n"
			.."\n"
			..Dot_red.." Czas odnowienia zwiększony do {cooldown:%s} sekund.",
		["pt-br"] = "{talent_name:%s} agora forma um escudo esférico.\n"
			..Dot_nc.." Dura {duration:%s} segundos.\n"
			.."\n"
			..Dot_nc.." Raio da esfera: "..CNumb("6", "n_6_rgb").." metros.\n"
			..Dot_nc.." Protege contra ataques inimigos de todos os ângulos.\n"
			.."\n"
			..Dot_red.." O tempo de recarga aumenta para {cooldown:%s} segundos.",
		es = "{talent_name:%s} ahora forma un escudo esférico.\n"
			..Dot_nc.." Dura {duration:%s} segundos.\n"
			.."\n"
			..Dot_nc.." Radio de la esfera: "..CNumb("6", "n_6_rgb").." metros.\n"
			..Dot_nc.." Protege contra ataques enemigos desde todos los ángulos.\n"
			.."\n"
			..Dot_red.." El tiempo de reutilización aumenta a {cooldown:%s} segundos.",
	},
	--[+ ABILITY 2-4 - Sanctuary +]--	09.06.2026
	["loc_talent_psyker_force_field_grants_toughness_desc"] = { -- talent_name: Telekine Shield, toughness: 10%, toughness_damage_reduction: +50%, duration: 5, s->seconds, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second replenishes for Allies inside your {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for {duration:%s} seconds for allies inside your {talent_name:%s} when it dissipates.\n"
			.."\n"
			..Dot_green.." This effects Stack if multiple spheres overlap.",
		ru = Dot_green.." {toughness:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду для союзников внутри купола вашего щита.\n" -- Убежище -- руоф Святилище
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." на {duration:%s} секунд для союзников, находящихся внутри купола вашего щита, после его рассеивания.\n"
			.."\n"
			..Dot_green.." Эффект суммируется, если перекрываются несколько сфер.",
		fr = Dot_green.." {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." par seconde sont restaurés aux alliés à l'intérieur de votre {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} de "..CKWord("Réduction des dégâts de robustesse", "Tghns_dmg_red_rgb_fr").." pendant {duration:%s} secondes pour les alliés à l'intérieur de votre {talent_name:%s} lorsqu'il se dissipe.\n"
			.."\n"
			..Dot_green.." Ces effets se cumulent si plusieurs sphères se chevauchent.",
		["zh-tw"] = Dot_green.." {talent_name:%s} 內的隊友每秒恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 護盾消散時，{talent_name:%s} 內的隊友獲得 {toughness_damage_reduction:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."，持續 {duration:%s} 秒。\n"
			.."\n"
			..Dot_green.." 多個球形重疊時效果可疊加。",
		["zh-cn"] = Dot_green.." 你的{talent_name:%s}内的盟友每秒恢复{toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 你的{talent_name:%s}消散时，内部的盟友获得{toughness_damage_reduction:%s}"..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."，持续{duration:%s}秒。\n"
			.."\n"
			..Dot_green.." 若多个球体重叠，此效果叠加。",
		de = Dot_green.." {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." pro Sekunde werden für Verbündete in Ihrem {talent_name:%s} wiederhergestellt.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Widerstandsschadensreduktion", "Tghns_dmg_red_rgb_de").." für {duration:%s} Sekunden für Verbündete in Ihrem {talent_name:%s}, wenn er sich auflöst.\n"
			.."\n"
			..Dot_green.." Diese Effekte stapeln sich, wenn mehrere Kugeln sich überlappen.",
		it = Dot_green.." {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." al secondo vengono ripristinati per gli Alleati all'interno del tuo {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} di "..CKWord("Riduzione danno robustezza", "Tghns_dmg_red_rgb_it").." per {duration:%s} secondi per gli alleati all'interno del tuo {talent_name:%s} quando si dissipa.\n"
			.."\n"
			..Dot_green.." Questi effetti si accumulano se più sfere si sovrappongono.",
		ja = Dot_green.." 自身の{talent_name:%s}内の味方は毎秒{toughness:%s}の"..CKWord("耐久", "Toughness_rgb_ja").."を回復する。\n"
			.."\n"
			..Dot_green.." 自身の{talent_name:%s}が消滅する際、内部にいた味方は{duration:%s}秒間{toughness_damage_reduction:%s}の"..CKWord("耐久ダメージ軽減", "Tghns_dmg_red_rgb_ja").."を得る。\n"
			.."\n"
			..Dot_green.." 複数の球体が重なった場合、この効果は重複する。",
		ko = Dot_green.." 당신의 {talent_name:%s} 내부에 있는 아군은 초당 {toughness:%s}의 "..CKWord("인내", "Toughness_rgb_ko").."를 회복합니다.\n"
			.."\n"
			..Dot_green.." 당신의 {talent_name:%s}이(가) 사라질 때 내부에 있던 아군은 {duration:%s}초 동안 {toughness_damage_reduction:%s}의 "..CKWord("인내 피해 감소", "Tghns_dmg_red_rgb_ko").."를 얻습니다.\n"
			.."\n"
			..Dot_green.." 여러 구체가 겹치면 이 효과가 중첩됩니다.",
		pl = Dot_green.." {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." na sekundę odnawia się dla sojuszników wewnątrz twojego {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Redukcji obrażeń od odporności", "Tghns_dmg_red_rgb_pl").." na {duration:%s} sekund dla sojuszników wewnątrz twojego {talent_name:%s}, gdy zanika.\n"
			.."\n"
			..Dot_green.." Efekty te kumulują się, jeśli wiele sfer nakłada się na siebie.",
		["pt-br"] = Dot_green.." {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." por segundo são recuperados para aliados dentro do seu {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} de "..CKWord("Redução de dano de resistência", "Tghns_dmg_red_rgb_pt_br").." por {duration:%s} segundos para aliados dentro do seu {talent_name:%s} quando ele se dissipa.\n"
			.."\n"
			..Dot_green.." Esses efeitos se acumulam se várias esferas se sobrepuserem.",
		es = Dot_green.." {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." por segundo se reponen para los Aliados dentro de tu {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} de "..CKWord("Reducción de daño de robustez", "Tghns_dmg_red_rgb_es").." durante {duration:%s} segundos para los aliados dentro de tu {talent_name:%s} cuando se disipa.\n"
			.."\n"
			..Dot_green.." Estos efectos se acumulan si varias esferas se superponen.",
	},
	--[+ ABILITY 3 - Scrier's Gaze +]--	09.06.2026
	["loc_talent_psyker_combat_ability_overcharge_stance_improved_description"] = { -- duration: 10, base_damage: +10%, weakspot_damage: +10%, crit_chance: +20%, max_peril: 100%, cooldown: 25, damage_per_stack: +1%, vent: 50%, tdr: +20%, toughness: 2.5%, max_damage: +30%, s->seconds, +colors
		en = "You enter "..CKWord("Scrier Gaze", "Scrier_gaze_rgb")..", Quell {vent:%s} "..CKWord("Peril", "Peril_rgb").." and gain:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb")..",\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..",\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second,\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..",\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			.."For every second in "..CKWord("Scrier Gaze", "Scrier_gaze_rgb").." you gain Stacks:\n"
			..Dot_green.." {damage_per_stack:%s} "..CKWord("Damage", "Damage_rgb")..", up to {max_damage:%s}. This effect lingers for {duration:%s} seconds after leaving "..CKWord("Scrier Gaze", "Scrier_gaze_rgb")..".\n"
			.."\n"
			.."While in "..CKWord("Scrier Gaze", "Scrier_gaze_rgb").." you build up "..CKWord("Peril", "Peril_rgb")..". Build-up is temporarily slowed down by enemy Kills.\n"
			.."At {max_peril:%s} "..CKWord("Peril", "Peril_rgb").." Ability ends.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.",
		ru = "Активировав "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru")..", вы сбрасываете {vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." и получаете:\n" -- Взор провидца -- руоф Взор Скрира
			..Dot_green.." {base_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..",\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..",\n"
			..Dot_green.." {toughness:%s} к "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду,\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..",\n"
			..Dot_green.." иммунитет к подавлению.\n"
			.."\n"
			.."За каждую секунду пока действует "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru").." вы получаете заряды:\n"
			..Dot_green.." {damage_per_stack:%s} к "..CKWord("урону", "uronu_rgb_ru")..", вплоть до максимальных {max_damage:%s}. Этот эффект продлевается на {duration:%s} секунд после того как "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru").." заканчивает своё действие.\n"
			.."\n"
			.."Пока действует "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru").." вы набираете "..CKWord("опасность", "opasnost_rgb_ru")..". Набор "..CKWord("опасности", "opasnosti_rgb_ru").." временно замедляется при убийстве врагов.\n"
			.."При {max_peril:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." способность выключается.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.",
		fr = "Vous entrez dans "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_fr")..", apaisez {vent:%s} de "..CKWord("Péril", "Peril_rgb_fr").." et gagnez :\n"
			..Dot_green.." {base_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr")..",\n"
			..Dot_green.." {crit_chance:%s} de "..CKWord("Chance de critique", "Crit_chance_rgb_fr")..",\n"
			..Dot_green.." {weakspot_damage:%s} de "..CKWord("Dégâts sur point faible", "Weakspot_dmg_rgb_fr")..",\n"
			..Dot_green.." {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." par seconde,\n"
			..Dot_green.." {tdr:%s} de "..CKWord("Réduction des dégâts de robustesse", "Tghns_dmg_red_rgb_fr")..",\n"
			..Dot_green.." Immunité à la suppression.\n"
			.."\n"
			.."Pour chaque seconde passée dans "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_fr")..", vous gagnez des cumuls :\n"
			..Dot_green.." {damage_per_stack:%s} de "..CKWord("Dégâts", "Damage_rgb_fr")..", jusqu'à {max_damage:%s}. Cet effet persiste {duration:%s} secondes après avoir quitté "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_fr")..".\n"
			.."\n"
			.."Pendant "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_fr")..", vous accumulez du "..CKWord("Péril", "Peril_rgb_fr")..". L'accumulation est temporairement ralentie par les éliminations d'ennemis.\n"
			.."À {max_peril:%s} de "..CKWord("Péril", "Peril_rgb_fr")..", la capacité prend fin.\n"
			..Dot_nc.." Temps de recharge de base : {cooldown:%s} secondes.",
		["zh-tw"] = "進入"..CKWord("占卜者的注視", "Scrier_gaze_rgb_tw").."，消除 {vent:%s} "..CKWord("反噬", "Peril_rgb_tw").."，並獲得：\n"
			..Dot_green.." {base_damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("爆擊率", "Crit_chance_rgb_tw").."，\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."，\n"
			..Dot_green.." 每秒恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，\n"
			..Dot_green.." {tdr:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."，\n"
			..Dot_green.." 壓制免疫。\n"
			.."\n"
			.."每秒在"..CKWord("占卜者的注視", "Scrier_gaze_rgb_tw").." 中獲得層數：\n"
			..Dot_green.." {damage_per_stack:%s} "..CKWord("傷害", "Damage_rgb_tw").."，最多 {max_damage:%s}。\n"
			.."離開後持續 {duration:%s} 秒。\n"
			.."\n"
			.."在"..CKWord("占卜者的注視", "Scrier_gaze_rgb_tw").." 中累積"..CKWord("反噬", "Peril_rgb_tw").."，\n"
			.."擊殺敵人會暫時減緩累積速度。\n"
			..CKWord("反噬", "Peril_rgb_tw").." 達 {max_peril:%s} 時技能結束。\n"
			..Dot_nc.." 基礎冷卻：{cooldown:%s} 秒。",
		["zh-cn"] = "进入"..CKWord("占卜师的凝视", "Scrier_gaze_rgb_zh_cn").."，压制{vent:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."并获得：\n"
			..Dot_green.." {base_damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."，\n"
			..Dot_green.." 每秒 {toughness:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."，\n"
			..Dot_green.." {tdr:%s} "..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."，\n"
			..Dot_green.." 压制免疫。\n"
			.."\n"
			.."处于"..CKWord("占卜师的凝视", "Scrier_gaze_rgb_zh_cn").."时，每秒获得层数：\n"
			..Dot_green.." {damage_per_stack:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."，最高{max_damage:%s}。离开"..CKWord("占卜师的凝视", "Scrier_gaze_rgb_zh_cn").."后，此效果持续{duration:%s}秒。\n"
			.."\n"
			.."处于"..CKWord("占卜师的凝视", "Scrier_gaze_rgb_zh_cn").."时，你会累积"..CKWord("危机值", "Peril_rgb_zh_cn").."。击杀敌人可暂时减缓累积速度。\n"
			.."达到{max_peril:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."时，能力结束。\n"
			..Dot_nc.." 基础冷却：{cooldown:%s}秒。",
		de = "Sie treten in den "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_de").." ein, unterdrücken {vent:%s} "..CKWord("Gefahr", "Peril_rgb_de").." und erhalten:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Schaden", "Damage_rgb_de")..",\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Kritische Trefferchance", "Crit_chance_rgb_de")..",\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de")..",\n"
			..Dot_green.." {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." pro Sekunde,\n"
			..Dot_green.." {tdr:%s} "..CKWord("Widerstandsschadensreduktion", "Tghns_dmg_red_rgb_de")..",\n"
			..Dot_green.." Unterdrückungsimmunität.\n"
			.."\n"
			.."Für jede Sekunde im "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_de").." erhalten Sie Stapel:\n"
			..Dot_green.." {damage_per_stack:%s} "..CKWord("Schaden", "Damage_rgb_de")..", bis zu {max_damage:%s}. Dieser Effekt hält {duration:%s} Sekunden nach Verlassen des "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_de").." an.\n"
			.."\n"
			.."Während des "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_de").." bauen Sie "..CKWord("Gefahr", "Peril_rgb_de").." auf. Die Aufbau wird durch Feindtötungen vorübergehend verlangsamt.\n"
			.."Bei {max_peril:%s} "..CKWord("Gefahr", "Peril_rgb_de").." endet die Fähigkeit.\n"
			..Dot_nc.." Basis-Abklingzeit: {cooldown:%s} Sekunden.",
		it = "Entri in "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_it")..", plachi {vent:%s} di "..CKWord("Pericolo", "Peril_rgb_it").." e ottieni:\n"
			..Dot_green.." {base_damage:%s} di "..CKWord("Danno", "Damage_rgb_it")..",\n"
			..Dot_green.." {crit_chance:%s} di "..CKWord("Probabilità critica", "Crit_chance_rgb_it")..",\n"
			..Dot_green.." {weakspot_damage:%s} di "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it")..",\n"
			..Dot_green.." {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." al secondo,\n"
			..Dot_green.." {tdr:%s} di "..CKWord("Riduzione danno robustezza", "Tghns_dmg_red_rgb_it")..",\n"
			..Dot_green.." Immunità alla soppressione.\n"
			.."\n"
			.."Per ogni secondo in "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_it").." ottieni accumuli:\n"
			..Dot_green.." {damage_per_stack:%s} di "..CKWord("Danno", "Damage_rgb_it")..", fino a {max_damage:%s}. Questo effetto persiste per {duration:%s} secondi dopo aver lasciato "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_it")..".\n"
			.."\n"
			.."Durante "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_it").." accumuli "..CKWord("Pericolo", "Peril_rgb_it")..". L'accumulo è temporaneamente rallentato dalle uccisioni di nemici.\n"
			.."A {max_peril:%s} di "..CKWord("Pericolo", "Peril_rgb_it")..", l'abilità termina.\n"
			..Dot_nc.." Ricarica base: {cooldown:%s} secondi.",
		ja = " "..CKWord("スクライヤーゲイズ", "Scrier_gaze_rgb_ja").."状態になり、{vent:%s}の"..CKWord("危険", "Peril_rgb_ja").."を軽減し、以下の効果を得る：\n"
			..Dot_green.." {base_damage:%s} "..CKWord("ダメージ", "Damage_rgb_ja").."増加、\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("クリティカル発生率", "Crit_chance_rgb_ja").."増加、\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."増加、\n"
			..Dot_green.." 毎秒{toughness:%s}の"..CKWord("耐久", "Toughness_rgb_ja").."回復、\n"
			..Dot_green.." {tdr:%s}の"..CKWord("耐久ダメージ軽減", "Tghns_dmg_red_rgb_ja").."、\n"
			..Dot_green.." 制圧耐性。\n"
			.."\n"
			.." "..CKWord("スクライヤーゲイズ", "Scrier_gaze_rgb_ja").."中、1秒毎に以下のスタックを得る：\n"
			..Dot_green.." {damage_per_stack:%s} "..CKWord("ダメージ", "Damage_rgb_ja").."増加、最大{max_damage:%s}。効果は"..CKWord("スクライヤーゲイズ", "Scrier_gaze_rgb_ja").."終了後{duration:%s}秒間持続する。\n"
			.."\n"
			.." "..CKWord("スクライヤーゲイズ", "Scrier_gaze_rgb_ja").."中は"..CKWord("危険", "Peril_rgb_ja").."が蓄積する。敵を倒すと一時的に蓄積速度が遅くなる。\n"
			.." "..CKWord("危険", "Peril_rgb_ja").."が{max_peril:%s}に達すると効果終了。\n"
			..Dot_nc.." 基本クールダウン：{cooldown:%s}秒。",
		ko = " "..CKWord("스크라이어 게이즈", "Scrier_gaze_rgb_ko").." 상태에 돌입하여 {vent:%s}의 "..CKWord("위험", "Peril_rgb_ko").."을 진압하고 다음 효과를 얻습니다:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("피해", "Damage_rgb_ko")..",\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("크리티컬 확률", "Crit_chance_rgb_ko")..",\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko")..",\n"
			..Dot_green.." 초당 {toughness:%s} "..CKWord("인내", "Toughness_rgb_ko")..",\n"
			..Dot_green.." {tdr:%s} "..CKWord("인내 피해 감소", "Tghns_dmg_red_rgb_ko")..",\n"
			..Dot_green.." 제압 면역.\n"
			.."\n"
			.." "..CKWord("스크라이어 게이즈", "Scrier_gaze_rgb_ko").." 상태에서 1초마다 중첩을 얻습니다:\n"
			..Dot_green.." {damage_per_stack:%s} "..CKWord("피해", "Damage_rgb_ko")..", 최대 {max_damage:%s}. 효과는 "..CKWord("스크라이어 게이즈", "Scrier_gaze_rgb_ko").." 종료 후 {duration:%s}초간 지속됩니다.\n"
			.."\n"
			.." "..CKWord("스크라이어 게이즈", "Scrier_gaze_rgb_ko").." 상태에서는 "..CKWord("위험", "Peril_rgb_ko").."이 누적됩니다. 적 처치 시 누적 속도가 일시적으로 느려집니다.\n"
			.." "..CKWord("위험", "Peril_rgb_ko").."이(가) {max_peril:%s}에 도달하면 능력이 종료됩니다.\n"
			..Dot_nc.." 기본 재사용 대기시간: {cooldown:%s}초.",
		pl = "Wchodzisz w "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_pl")..", tłumisz {vent:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl").." i zyskujesz:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl")..",\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Szansy na krytyka", "Crit_chance_rgb_pl")..",\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Obrażeń w słaby punkt", "Weakspot_dmg_rgb_pl")..",\n"
			..Dot_green.." {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." na sekundę,\n"
			..Dot_green.." {tdr:%s} "..CKWord("Redukcji obrażeń od odporności", "Tghns_dmg_red_rgb_pl")..",\n"
			..Dot_green.." Odporność na stłumienie.\n"
			.."\n"
			.."Za każdą sekundę w "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_pl").." zyskujesz ładunki:\n"
			..Dot_green.." {damage_per_stack:%s} "..CKWord("Obrażeń", "Damage_rgb_pl")..", do {max_damage:%s}. Efekt utrzymuje się przez {duration:%s} sekund po opuszczeniu "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_pl")..".\n"
			.."\n"
			.."Podczas "..CKWord("Scrier Gaze", "Scrier_gaze_rgb_pl").." gromadzisz "..CKWord("Zagrożenie", "Peril_rgb_pl")..". Zabijanie wrogów tymczasowo spowalnia jego gromadzenie.\n"
			.."Przy {max_peril:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl").." umiejętność kończy się.\n"
			..Dot_nc.." Podstawowe odnowienie: {cooldown:%s} sekund.",
		["pt-br"] = "Você entra em "..CKWord("Olhar do Vidente", "Scrier_gaze_rgb_pt_br")..", aquieta {vent:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br").." e ganha:\n"
			..Dot_green.." {base_damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br")..",\n"
			..Dot_green.." {crit_chance:%s} de "..CKWord("Chance de crítico", "Crit_chance_rgb_pt_br")..",\n"
			..Dot_green.." {weakspot_damage:%s} de "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br")..",\n"
			..Dot_green.." {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." por segundo,\n"
			..Dot_green.." {tdr:%s} de "..CKWord("Redução de dano de resistência", "Tghns_dmg_red_rgb_pt_br")..",\n"
			..Dot_green.." Imunidade a supressão.\n"
			.."\n"
			.."A cada segundo em "..CKWord("Olhar do Vidente", "Scrier_gaze_rgb_pt_br")..", você ganha acúmulos:\n"
			..Dot_green.." {damage_per_stack:%s} de "..CKWord("Dano", "Damage_rgb_pt_br")..", até {max_damage:%s}. Este efeito persiste por {duration:%s} segundos após sair de "..CKWord("Olhar do Vidente", "Scrier_gaze_rgb_pt_br")..".\n"
			.."\n"
			.."Enquanto em "..CKWord("Olhar do Vidente", "Scrier_gaze_rgb_pt_br")..", você acumula "..CKWord("Perigo", "Peril_rgb_pt_br")..". Abates de inimigos diminuem temporariamente a taxa de acúmulo.\n"
			.."Com {max_peril:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br")..", a habilidade termina.\n"
			..Dot_nc.." Tempo de recarga base: {cooldown:%s} segundos.",
		es = "Entras en "..CKWord("Mirada del Vidente", "Scrier_gaze_rgb_es")..", aplacas {vent:%s} de "..CKWord("Peligro", "Peril_rgb_es").." y ganas:\n"
			..Dot_green.." {base_damage:%s} de "..CKWord("Daño", "Damage_rgb_es")..",\n"
			..Dot_green.." {crit_chance:%s} de "..CKWord("Probabilidad de crítico", "Crit_chance_rgb_es")..",\n"
			..Dot_green.." {weakspot_damage:%s} de "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es")..",\n"
			..Dot_green.." {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." por segundo,\n"
			..Dot_green.." {tdr:%s} de "..CKWord("Reducción de daño de robustez", "Tghns_dmg_red_rgb_es")..",\n"
			..Dot_green.." Inmunidad a la supresión.\n"
			.."\n"
			.."Por cada segundo en "..CKWord("Mirada del Vidente", "Scrier_gaze_rgb_es")..", obtienes acumulaciones:\n"
			..Dot_green.." {damage_per_stack:%s} de "..CKWord("Daño", "Damage_rgb_es")..", hasta {max_damage:%s}. Este efecto persiste durante {duration:%s} segundos después de salir de "..CKWord("Mirada del Vidente", "Scrier_gaze_rgb_es")..".\n"
			.."\n"
			.."Mientras estás en "..CKWord("Mirada del Vidente", "Scrier_gaze_rgb_es")..", acumulas "..CKWord("Peligro", "Peril_rgb_es")..". Matar enemigos ralentiza temporalmente la acumulación.\n"
			.."Con {max_peril:%s} de "..CKWord("Peligro", "Peril_rgb_es")..", la habilidad termina.\n"
			..Dot_nc.." Tiempo de reutilización base: {cooldown:%s} segundos.",
	},
	--[+ ABILITY 3-1 - Precognition +]--	09.06.2026
	["loc_ability_psyker_overcharge_weakspot_description"] = { -- second: 1, talent_name: Scrier's Gaze, finesse_damage_per_stack: +1%, max_finesse_damage: +30%, duration: 10, s->seconds, +colors
		en = CKWord("Weakspot", "Weakspot_rgb").." kills generate {second:%s} additional Stack while {talent_name:%s} overcharging.\n"
			..Dot_green.." Can proc multiple times per attack when "..CKWord("Cleaving", "Cleaving_rgb")..".\n"
			.."\n"
			.."For each second spent in {talent_name:%s}, you now also gain:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} "..CKWord("Finesse Damage", "Finesse_dmg_rgb")..", up to {max_finesse_damage:%s} Max, which lingers for {duration:%s} seconds after leaving {talent_name:%s}.\n"
			.."\n"
			..CNote("Fns_note"),
		ru = "Пока действует {talent_name:%s}, убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." добавляют {second:%s} заряд.\n" -- Предвидение -- руоф Познание
			..Dot_green.." Может срабатывать несколько раз за атаку, если "..CKWord("рассекает", "rassekaet_rgb_ru").." несколько врагов.\n"
			.."\n"
			.."За каждую секунду, проведённую по действием способности, вы теперь также получаете:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} к "..CKWord("урону от ловкости", "lovkosti_uron_rgb_ru")..", до максимум {max_finesse_damage:%s}. Эффект продлевается на {duration:%s} секунд после действия способности {talent_name:%s}.",
		fr = "Les éliminations sur "..CKWord("Points faibles", "Weakspot_rgb_fr").." génèrent {second:%s} cumul supplémentaire pendant que {talent_name:%s} est en surcharge.\n"
			..Dot_green.." Peut se déclencher plusieurs fois par attaque lors d'un "..CKWord("Transpercement", "Cleaving_rgb_fr")..".\n"
			.."\n"
			.."Pour chaque seconde passée dans {talent_name:%s}, vous gagnez désormais aussi :\n"
			..Dot_green.." {finesse_damage_per_stack:%s} de "..CKWord("Dégâts de finesse", "Finesse_dmg_rgb_fr")..", jusqu'à {max_finesse_damage:%s} maximum, qui persiste {duration:%s} secondes après avoir quitté {talent_name:%s}.\n"
			.."\n"
			..CNote("Fns_note"),
		["zh-tw"] = "{talent_name:%s} 超載期間，以"..CKWord("弱點", "Weakspot_rgb_tw").."擊殺會額外獲得 {second:%s} 層。\n"
			..Dot_green.." "..CKWord("順劈攻擊", "Cleaving_rgb_tw").."時，每次攻擊可觸發多次。\n"
			.."\n"
			.."在 {talent_name:%s} 中每秒還額外獲得：\n"
			..Dot_green.." {finesse_damage_per_stack:%s} "..CKWord("靈巧傷害", "Finesse_dmg_rgb_tw").."，最多 {max_finesse_damage:%s}。\n"
			.."離開 {talent_name:%s} 後持續 {duration:%s} 秒。\n"
			.."\n"
			..CNote("Fns_note"),
		["zh-cn"] = "处于{talent_name:%s}超载时，"..CKWord("弱点", "Weakspot_rgb_zh_cn").."击杀会产生{second:%s}额外层数。\n"
			..Dot_green.." "..CKWord("劈裂", "Cleaving_rgb_zh_cn").."时，每次攻击可触发多次。\n"
			.."\n"
			.."在{talent_name:%s}中每秒还可获得：\n"
			..Dot_green.." {finesse_damage_per_stack:%s} "..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."，最高{max_finesse_damage:%s}，离开{talent_name:%s}后持续{duration:%s}秒。\n"
			.."\n"
			..CNote("Fns_note"),
		de = "Schwachstellentötungen generieren {second:%s} zusätzlichen Stapel, während {talent_name:%s} überlädt.\n"
			..Dot_green.." Kann bei jedem Angriff mehrmals ausgelöst werden, wenn "..CKWord("gespalten", "Cleaving_rgb_de").." wird.\n"
			.."\n"
			.."Für jede Sekunde in {talent_name:%s} erhalten Sie jetzt auch:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} "..CKWord("Finesseschaden", "Finesse_dmg_rgb_de")..", bis zu {max_finesse_damage:%s}, was {duration:%s} Sekunden nach Verlassen von {talent_name:%s} anhält.\n"
			.."\n"
			..CNote("Fns_note"),
		it = "Le uccisioni sui "..CKWord("Punti deboli", "Weakspot_rgb_it").." generano {second:%s} accumulo aggiuntivo mentre {talent_name:%s} è in sovraccarico.\n"
			..Dot_green.." Può attivarsi più volte per attacco quando si "..CKWord("Taglia", "Cleaving_rgb_it")..".\n"
			.."\n"
			.."Per ogni secondo in {talent_name:%s}, ora ottieni anche:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} di "..CKWord("Danno da finezza", "Finesse_dmg_rgb_it")..", fino a {max_finesse_damage:%s} massimo, che persiste per {duration:%s} secondi dopo aver lasciato {talent_name:%s}.\n"
			.."\n"
			..CNote("Fns_note"),
		ja = "{talent_name:%s}オーバーチャージ中、"..CKWord("弱点", "Weakspot_rgb_ja").."キルで{second:%s}追加スタックを得る。\n"
			..Dot_green.." "..CKWord("薙ぎ払い", "Cleaving_rgb_ja").."時、1回の攻撃で複数回発動可能。\n"
			.."\n"
			.."{talent_name:%s}中、毎秒以下の効果も得る：\n"
			..Dot_green.." {finesse_damage_per_stack:%s}の"..CKWord("フィネスダメージ", "Finesse_dmg_rgb_ja").."増加、最大{max_finesse_damage:%s}。効果は{talent_name:%s}終了後{duration:%s}秒間持続する。\n"
			.."\n"
			..CNote("Fns_note"),
		ko = "{talent_name:%s} 과충전 중 "..CKWord("약점", "Weakspot_rgb_ko").." 처치 시 {second:%s} 추가 중첩을 얻습니다.\n"
			..Dot_green.." "..CKWord("관통", "Cleaving_rgb_ko").." 시 한 번의 공격으로 여러 번 발동 가능합니다.\n"
			.."\n"
			.."{talent_name:%s} 상태에서 매초마다 다음 효과도 얻습니다:\n"
			..Dot_green.." {finesse_damage_per_stack:%s}의 "..CKWord("섬세함 피해", "Finesse_dmg_rgb_ko")..", 최대 {max_finesse_damage:%s}. 효과는 {talent_name:%s} 종료 후 {duration:%s}초간 지속됩니다.\n"
			.."\n"
			..CNote("Fns_note"),
		pl = "Zabicia w "..CKWord("Słabe punkty", "Weakspot_rgb_pl").." generują {second:%s} dodatkowy ładunek podczas przeciążenia {talent_name:%s}.\n"
			..Dot_green.." Może aktywować się wiele razy na atak podczas "..CKWord("rozłupywania", "Cleaving_rgb_pl")..".\n"
			.."\n"
			.."Za każdą sekundę w {talent_name:%s} zyskujesz również:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} "..CKWord("Obrażeń od finezji", "Finesse_dmg_rgb_pl")..", do {max_finesse_damage:%s}, które utrzymują się przez {duration:%s} sekund po opuszczeniu {talent_name:%s}.\n"
			.."\n"
			..CNote("Fns_note"),
		["pt-br"] = "Mortes em "..CKWord("Pontos fracos", "Weakspot_rgb_pt_br").." geram {second:%s} acúmulo adicional enquanto {talent_name:%s} está sobrecarregado.\n"
			..Dot_green.." Pode ativar várias vezes por ataque ao "..CKWord("Fender", "Cleaving_rgb_pt_br")..".\n"
			.."\n"
			.."Para cada segundo em {talent_name:%s}, você também ganha:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} de "..CKWord("Dano de fineza", "Finesse_dmg_rgb_pt_br")..", até {max_finesse_damage:%s} máximo, que persiste por {duration:%s} segundos após sair de {talent_name:%s}.\n"
			.."\n"
			..CNote("Fns_note"),
		es = "Las muertes en "..CKWord("Puntos débiles", "Weakspot_rgb_es").." generan {second:%s} acumulación adicional mientras {talent_name:%s} está sobrecargado.\n"
			..Dot_green.." Puede activarse múltiples veces por ataque al "..CKWord("Cortar", "Cleaving_rgb_es")..".\n"
			.."\n"
			.."Por cada segundo en {talent_name:%s}, también ganas:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} de "..CKWord("Daño de fineza", "Finesse_dmg_rgb_es")..", hasta un máximo de {max_finesse_damage:%s}, que persiste durante {duration:%s} segundos después de salir de {talent_name:%s}.\n"
			.."\n"
			..CNote("Fns_note"),
	},
	--[+ ABILITY 3-2 - Warp Speed +]--	09.06.2026
	["loc_ability_psyker_overcharge_movement_speed_description"] = { -- talent_name: Scrier's Gaze, movement_speed: +20%
		en = "While {talent_name:%s} overcharging:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed.\n"
			.."\n"
			..Dot_red.." Doesn't linger after overcharging phase.",
		ru = "Пока действует {talent_name:%s} вы получаете:\n" -- Варп-скорость
			..Dot_green.." {movement_speed:%s} к скорости движения.\n"
			.."\n"
			..Dot_red.." Не продлевается после окончания действия способности.",
		fr = "Pendant que {talent_name:%s} est en surcharge :\n"
			..Dot_green.." {movement_speed:%s} de vitesse de déplacement.\n"
			.."\n"
			..Dot_red.." Ne persiste pas après la phase de surcharge.",
		["zh-tw"] = "{talent_name:%s} 超載期間：\n"
			..Dot_green.." {movement_speed:%s} 移動速度。\n"
			.."\n"
			..Dot_red.." 超載階段結束後不持續。",
		["zh-cn"] = "{talent_name:%s}超载期间：\n"
			..Dot_green.." {movement_speed:%s} 移动速度。\n"
			.."\n"
			..Dot_red.." 超载阶段结束后不持续。",
		de = "Während {talent_name:%s} überlädt:\n"
			..Dot_green.." {movement_speed:%s} Bewegungsgeschwindigkeit.\n"
			.."\n"
			..Dot_red.." Hält nach der Überladungsphase nicht an.",
		it = "Mentre {talent_name:%s} è in sovraccarico:\n"
			..Dot_green.." {movement_speed:%s} velocità di movimento.\n"
			.."\n"
			..Dot_red.." Non persiste dopo la fase di sovraccarico.",
		ja = "{talent_name:%s}オーバーチャージ中：\n"
			..Dot_green.." {movement_speed:%s} 移動速度。\n"
			.."\n"
			..Dot_red.." オーバーチャージ終了後は持続しない。",
		ko = "{talent_name:%s} 과충전 중:\n"
			..Dot_green.." {movement_speed:%s} 이동 속도.\n"
			.."\n"
			..Dot_red.." 과충전 단계 이후에는 지속되지 않습니다.",
		pl = "Podczas przeciążenia {talent_name:%s}:\n"
			..Dot_green.." {movement_speed:%s} prędkości ruchu.\n"
			.."\n"
			..Dot_red.." Nie utrzymuje się po fazie przeciążenia.",
		["pt-br"] = "Enquanto {talent_name:%s} está sobrecarregado:\n"
			..Dot_green.." {movement_speed:%s} de velocidade de movimento.\n"
			.."\n"
			..Dot_red.." Não persiste após a fase de sobrecarga.",
		es = "Mientras {talent_name:%s} está sobrecargado:\n"
			..Dot_green.." {movement_speed:%s} de velocidad de movimiento.\n"
			.."\n"
			..Dot_red.." No persiste después de la fase de sobrecarga.",
	},
	--[+ ABILITY 3-3 - Reality Anchor +]--	09.06.2026
	["loc_ability_psyker_overcharge_reduced_warp_charge_vent_speed_description"] = { -- talent_name: Scrier's Gaze, warp_charge: -20%, venting: , +colors
		en = "While {talent_name:%s} overcharging:\n"
			..Dot_green.." {warp_charge:%s} "..CKWord("Peril", "Peril_rgb").." Generated,\n"
			..Dot_green.." {venting:%s} Active Quelling.\n"
			.."\n"
			..Dot_red.." Doesn't linger after overcharging phase.",
		ru = "Пока действует {talent_name:%s} вы получаете:\n" -- Якорь реальности
			..Dot_green.." {warp_charge:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..",\n"
			..Dot_green.." {venting:%s} к подавлению  "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_red.." Не продлевается после окончания действия способности.",
		fr = "Pendant que {talent_name:%s} est en surcharge :\n"
			..Dot_green.." {warp_charge:%s} de "..CKWord("Péril", "Peril_rgb_fr").." généré,\n"
			..Dot_green.." {venting:%s} d'apaisement actif.\n"
			.."\n"
			..Dot_red.." Ne persiste pas après la phase de surcharge.",
		["zh-tw"] = "{talent_name:%s} 超載期間：\n"
			..Dot_green.." {warp_charge:%s} "..CKWord("反噬", "Peril_rgb_tw").."生成，\n"
			..Dot_green.." {venting:%s} 主動平息速度。\n"
			.."\n"
			..Dot_red.." 超載階段結束後不持續。",
		["zh-cn"] = "{talent_name:%s}超载期间：\n"
			..Dot_green.." {warp_charge:%s} "..CKWord("危机值", "Peril_rgb_zh_cn").."生成，\n"
			..Dot_green.." {venting:%s} 主动镇静。\n"
			.."\n"
			..Dot_red.." 超载阶段结束后不持续。",
		de = "Während {talent_name:%s} überlädt:\n"
			..Dot_green.." {warp_charge:%s} "..CKWord("Gefahr", "Peril_rgb_de").." erzeugt,\n"
			..Dot_green.." {venting:%s} aktives Beruhigen.\n"
			.."\n"
			..Dot_red.." Hält nach der Überladungsphase nicht an.",
		it = "Mentre {talent_name:%s} è in sovraccarico:\n"
			..Dot_green.." {warp_charge:%s} di "..CKWord("Pericolo", "Peril_rgb_it").." generato,\n"
			..Dot_green.." {venting:%s} di quietudine attiva.\n"
			.."\n"
			..Dot_red.." Non persiste dopo la fase di sovraccarico.",
		ja = "{talent_name:%s}オーバーチャージ中：\n"
			..Dot_green.." {warp_charge:%s} "..CKWord("危険", "Peril_rgb_ja").."生成、\n"
			..Dot_green.." {venting:%s} アクティブクエリング。\n"
			.."\n"
			..Dot_red.." オーバーチャージ終了後は持続しない。",
		ko = "{talent_name:%s} 과충전 중:\n"
			..Dot_green.." {warp_charge:%s} "..CKWord("위험", "Peril_rgb_ko").." 생성,\n"
			..Dot_green.." {venting:%s} 능동 진정.\n"
			.."\n"
			..Dot_red.." 과충전 단계 이후에는 지속되지 않습니다.",
		pl = "Podczas przeciążenia {talent_name:%s}:\n"
			..Dot_green.." {warp_charge:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl").." generowane,\n"
			..Dot_green.." {venting:%s} aktywnego uciszenia.\n"
			.."\n"
			..Dot_red.." Nie utrzymuje się po fazie przeciążenia.",
		["pt-br"] = "Enquanto {talent_name:%s} está sobrecarregado:\n"
			..Dot_green.." {warp_charge:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br").." gerado,\n"
			..Dot_green.." {venting:%s} de Aquietamento ativo.\n"
			.."\n"
			..Dot_red.." Não persiste após a fase de sobrecarga.",
		es = "Mientras {talent_name:%s} está sobrecargado:\n"
			..Dot_green.." {warp_charge:%s} de "..CKWord("Peligro", "Peril_rgb_es").." generado,\n"
			..Dot_green.." {venting:%s} de apaciguamiento activo.\n"
			.."\n"
			..Dot_red.." No persiste después de la fase de sobrecarga.",
	},
	--[+ ABILITY 3-4 - Warp Unbound +]--	09.06.2026
	["loc_talent_psyker_overcharge_infinite_casting_desc"] = { -- talent_name: Scrier's Gaze
		en = "{talent_name:%s} now also prevents overloading from "..CKWord("Perils of the Warp", "PerilsozWarp_rgb")..", during its lingering effect.\n"
			.."\n"
			..Dot_nc.." After overcharging has ended, allows "..CKWord("Psyker", "cls_psy_rgb").." to execute "..CKWord("Peril", "Peril_rgb").."-generating actions while at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb").." for "..CNumb("10", "n_10_rgb").." seconds without triggering the self-explosion.\n"
			.."\n"
			..Dot_nc.." When "..CNumb("10", "n_10_rgb").." seconds duration ends, {talent_name:%s} base grace period still applies, providing another "..CNumb("1.5", "n_1_5_rgb").." seconds of the same effect.",
		ru = "{talent_name:%s} также предотвращает перегрев от "..CKWord("Опасностей варпа", "Opasnostei_warpa_rgb_ru").." в течение "..CNumb("10", "n_10_rgb").." секунд после окончания действия способности.\n" -- Высвобождение варпа -- руоф Искажение варпа
			.."\n"
			..Dot_nc.." В течение этого времени вы можете выполнять действия, генерирующие "..CKWord("опасность", "opasnost_rgb_ru")..", не вызывая самоподрыва даже при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			..Dot_nc.." Этот модификатор имеет скрытый эффект: по истечении "..CNumb("10", "n_10_rgb").." секунд вы получите ещё "..CNumb("1.5", "n_1_5_rgb").." секунды этого же эффекта.",
		fr = "{talent_name:%s} empêche désormais également la surcharge due aux "..CKWord("Périls du Warp", "PerilsozWarp_rgb_fr").." pendant son effet persistant.\n"
			.."\n"
			..Dot_nc.." Après la fin de la surcharge, permet au "..CKWord("Psyker", "cls_psy_rgb_fr").." d'exécuter des actions générant du "..CKWord("Péril", "Peril_rgb_fr").." tout en étant à "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Péril", "Peril_rgb_fr").." pendant "..CNumb("10", "n_10_rgb").." secondes sans déclencher d'auto-explosion.\n"
			.."\n"
			..Dot_nc.." Lorsque la durée de "..CNumb("10", "n_10_rgb").." secondes se termine, la période de grâce de base de {talent_name:%s} s'applique toujours, offrant "..CNumb("1.5", "n_1_5_rgb").." secondes supplémentaires du même effet.",
		["zh-tw"] = "{talent_name:%s} 的延續效果現在也能防止"..CKWord("亞空間反噬", "PerilsozWarp_rgb_tw").."造成過載。\n"
			.."\n"
			..Dot_nc.." 超載結束後，允許"..CKWord("靈能者", "cls_psy_rgb_tw").."在 "..CNumb("100%", "pc_100_rgb").." "..CKWord("反噬", "Peril_rgb_tw").."下執行會產生"..CKWord("反噬", "Peril_rgb_tw").."的行動，持續 "..CNumb("10", "n_10_rgb").." 秒且不會觸發自爆。\n"
			.."\n"
			..Dot_nc.." 這 "..CNumb("10", "n_10_rgb").." 秒結束後，{talent_name:%s} 的基礎寬限時間仍會生效，再提供 "..CNumb("1.5", "n_1_5_rgb").." 秒的相同效果。",
		["zh-cn"] = "{talent_name:%s}现在在其持续效果期间，也能防止因"..CKWord("亚空间危机", "PerilsozWarp_rgb_zh_cn").."而超载。\n"
			.."\n"
			..Dot_nc.." 超载结束后，允许"..CKWord("灵能者", "cls_psy_rgb_zh_cn").."在"..CNumb("10", "n_10_rgb").."秒内，即使处于"..CNumb("100%", "pc_100_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."，仍可执行产生"..CKWord("危机值", "Peril_rgb_zh_cn").."的动作而不引发自爆。\n"
			.."\n"
			..Dot_nc.." 当"..CNumb("10", "n_10_rgb").."秒结束后，{talent_name:%s}的基础宽限期仍然适用，提供额外"..CNumb("1.5", "n_1_5_rgb").."秒的相同效果。",
		de = "{talent_name:%s} verhindert jetzt außerdem während seines anhaltenden Effekts die Überladung durch "..CKWord("Gefahren des Warps", "PerilsozWarp_rgb_de")..".\n"
			.."\n"
			..Dot_nc.." Nach dem Ende der Überladung kann der "..CKWord("Psyker", "cls_psy_rgb_de").." für "..CNumb("10", "n_10_rgb").." Sekunden Aktionen ausführen, die "..CKWord("Gefahr", "Peril_rgb_de").." erzeugen, selbst bei "..CNumb("100%", "pc_100_rgb").." "..CKWord("Gefahr", "Peril_rgb_de")..", ohne eine Selbstexplosion auszulösen.\n"
			.."\n"
			..Dot_nc.." Wenn die "..CNumb("10", "n_10_rgb").." Sekunden enden, gilt die Basis-Schonfrist von {talent_name:%s} weiterhin und bietet weitere "..CNumb("1.5", "n_1_5_rgb").." Sekunden desselben Effekts.",
		it = "{talent_name:%s} ora previene anche il sovraccarico da "..CKWord("Pericoli del Warp", "PerilsozWarp_rgb_it").." durante il suo effetto persistente.\n"
			.."\n"
			..Dot_nc.." Dopo la fine del sovraccarico, consente al "..CKWord("Psichico", "cls_psy_rgb_it").." di eseguire azioni che generano "..CKWord("Pericolo", "Peril_rgb_it").." anche quando al "..CNumb("100%", "pc_100_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it").." per "..CNumb("10", "n_10_rgb").." secondi senza innescare autodetonazione.\n"
			.."\n"
			..Dot_nc.." Quando i "..CNumb("10", "n_10_rgb").." secondi terminano, il periodo di grazia base di {talent_name:%s} si applica ancora, fornendo altri "..CNumb("1.5", "n_1_5_rgb").." secondi dello stesso effetto.",
		ja = "{talent_name:%s}は持続効果中、"..CKWord("ワープの危険", "PerilsozWarp_rgb_ja").."によるオーバーロードも防ぐようになった。\n"
			.."\n"
			..Dot_nc.." オーバーチャージ終了後、"..CNumb("10", "n_10_rgb").."秒間、"..CNumb("100%", "pc_100_rgb").."の"..CKWord("危険", "Peril_rgb_ja").."でも自爆せずに"..CKWord("危険", "Peril_rgb_ja").."を生成するアクションを実行できる。\n"
			.."\n"
			..Dot_nc.." "..CNumb("10", "n_10_rgb").."秒の持続時間が終了すると、{talent_name:%s}の基本猶予期間が適用され、さらに"..CNumb("1.5", "n_1_5_rgb").."秒間同じ効果が続く。",
		ko = "{talent_name:%s}은(는) 이제 지속 효과 중 "..CKWord("워프의 위험", "PerilsozWarp_rgb_ko").."으로 인한 과부하도 방지합니다.\n"
			.."\n"
			..Dot_nc.." 과충전 종료 후, "..CNumb("10", "n_10_rgb").."초 동안 "..CNumb("100%", "pc_100_rgb").." "..CKWord("위험", "Peril_rgb_ko").." 상태에서도 자폭 없이 "..CKWord("위험", "Peril_rgb_ko").."을 생성하는 행동을 할 수 있습니다.\n"
			.."\n"
			..Dot_nc.." "..CNumb("10", "n_10_rgb").."초가 끝나면 {talent_name:%s}의 기본 유예 기간이 적용되어 같은 효과가 "..CNumb("1.5", "n_1_5_rgb").."초간 더 지속됩니다.",
		pl = "{talent_name:%s} zapobiega teraz również przeciążeniu spowodowanemu "..CKWord("Zagrożeniami Warpu", "PerilsozWarp_rgb_pl").." podczas jego utrzymującego się efektu.\n"
			.."\n"
			..Dot_nc.." Po zakończeniu przeciążenia, pozwala "..CKWord("Psykerowi", "cls_psy_rgb_pl").." wykonywać czynności generujące "..CKWord("Zagrożenie", "Peril_rgb_pl").." nawet przy "..CNumb("100%", "pc_100_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl").." przez "..CNumb("10", "n_10_rgb").." sekund bez samowybuchu.\n"
			.."\n"
			..Dot_nc.." Gdy "..CNumb("10", "n_10_rgb").." sekund się kończy, podstawowy okres łaski {talent_name:%s} nadal obowiązuje, zapewniając kolejne "..CNumb("1.5", "n_1_5_rgb").." sekund tego samego efektu.",
		["pt-br"] = "{talent_name:%s} agora também previne sobrecarga dos "..CKWord("Perigos do Warp", "PerilsozWarp_rgb_pt_br").." durante seu efeito persistente.\n"
			.."\n"
			..Dot_nc.." Após o fim da sobrecarga, permite que o "..CKWord("Psíquico", "cls_psy_rgb_pt_br").." execute ações geradoras de "..CKWord("Perigo", "Peril_rgb_pt_br").." mesmo com "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br").." por "..CNumb("10", "n_10_rgb").." segundos sem causar auto-explosão.\n"
			.."\n"
			..Dot_nc.." Quando os "..CNumb("10", "n_10_rgb").." segundos terminam, o período de carência base de {talent_name:%s} ainda se aplica, fornecendo mais "..CNumb("1.5", "n_1_5_rgb").." segundos do mesmo efeito.",
		es = "{talent_name:%s} ahora también evita la sobrecarga por "..CKWord("Peligros del Vacío", "PerilsozWarp_rgb_es").." durante su efecto persistente.\n"
			.."\n"
			..Dot_nc.." Después de que termine la sobrecarga, permite que el "..CKWord("Psíquico", "cls_psy_rgb_es").." ejecute acciones que generan "..CKWord("Peligro", "Peril_rgb_es").." incluso al "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Peligro", "Peril_rgb_es").." durante "..CNumb("10", "n_10_rgb").." segundos sin provocar una autoexplosión.\n"
			.."\n"
			..Dot_nc.." Cuando terminan los "..CNumb("10", "n_10_rgb").." segundos, el período de gracia base de {talent_name:%s} todavía se aplica, proporcionando otros "..CNumb("1.5", "n_1_5_rgb").." segundos del mismo efecto.",
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Warp Siphon +]--	09.06.2026
	["loc_talent_psyker_souls_new_desc"] = { -- duration: 25, stack: 4, damage: +4, cooldown_reduction: 7.5%, time(s)->times, +colors
		en = "Killing an Elite or Specialist Enemy gains you a Warp Charge for {duration:%s} seconds.\n"
			..Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb").." per Stack.\n"
			..Dot_nc.." Stack {stack:%s} times.\n"
			.."\n"
			.."Your next "..CKWord("Combat Ability", "Cmbt_abil_rgb").." spends all available Warp Charges to reduce the cooldown of that "..CKWord("Combat Ability", "Cmbt_abil_rgb").." by {cooldown_reduction:%s} per Warp Charge.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "Убийство элитного врага или специалиста даёт вам варп-заряд на {duration:%s} секунд.\n" -- Переливание варпа -- руоф Варп-сифон
			..Dot_green.." {damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." за заряд.\n"
			..Dot_nc.." Суммируется {stack:%s} раза.\n"
			.."\n"
			.."Следующая применённая "..CKWord("боевая способность", "boeva_sposobnost_rgb_ru").." потратит все доступные варп-заряды и уменьшит время "..CKWord("восстановления", "vosstanovlenia_rgb_ru").." на {cooldown_reduction:%s} за каждый варп-заряд.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		fr = "Tuer un ennemi d'élite ou un spécialiste vous donne une Charge Warp pendant {duration:%s} secondes.\n"
			..Dot_green.." {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." de base par cumul.\n"
			..Dot_nc.." Se cumule {stack:%s} fois.\n"
			.."\n"
			.."Votre prochaine "..CKWord("Capacité de combat", "Cmbt_abil_rgb_fr").." dépense toutes les Charges Warp disponibles pour réduire son temps de recharge de {cooldown_reduction:%s} par Charge Warp.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = "擊殺精英或專家可獲得一個亞空間充能，持續 {duration:%s} 秒。\n"
			..Dot_green.." 每層 {damage:%s} 基礎"..CKWord("傷害", "Damage_rgb_tw").."。\n"
			..Dot_nc.." 最多 {stack:%s} 層。\n"
			.."\n"
			.."下次使用的"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."將消耗所有亞空間充能，每層充能使該"..CKWord("戰鬥技能", "Cmbt_abil_rgb_tw").."的冷卻時間縮短 {cooldown_reduction:%s}。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = "杀死精英或专家敌人可获得一个亚空间充能，持续{duration:%s}秒。\n"
			..Dot_green.." 每层获得{damage:%s}基础"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 叠加{stack:%s}次。\n"
			.."\n"
			.."下一次"..CKWord("作战技能", "Cmbt_abil_rgb_zh_cn").."会消耗所有亚空间充能，每个充能减少该"..CKWord("作战技能", "Cmbt_abil_rgb_zh_cn").."冷却时间{cooldown_reduction:%s}。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		de = "Das Töten eines Elite- oder Spezialisten-Gegners gewährt Ihnen eine Warp-Ladung für {duration:%s} Sekunden.\n"
			..Dot_green.." {damage:%s} Basisschaden pro Stapel.\n"
			..Dot_nc.." Stapelt {stack:%s} Mal.\n"
			.."\n"
			.."Ihre nächste "..CKWord("Kampffähigkeit", "Cmbt_abil_rgb_de").." verbraucht alle verfügbaren Warp-Ladungen, um deren Abklingzeit um {cooldown_reduction:%s} pro Warp-Ladung zu reduzieren.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		it = "Uccidere un nemico Elite o Specialista ti dà una Carica Warp per {duration:%s} secondi.\n"
			..Dot_green.." {damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." base per accumulo.\n"
			..Dot_nc.." Si accumula {stack:%s} volte.\n"
			.."\n"
			.."La tua prossima "..CKWord("Abilità di combattimento", "Cmbt_abil_rgb_it").." spende tutte le Cariche Warp disponibili per ridurre il suo tempo di recupero di {cooldown_reduction:%s} per Carica Warp.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ja = "エリートまたはスペシャリストを倒すと、{duration:%s}秒間ワープチャージを得る。\n"
			..Dot_green.." スタック毎に{damage:%s}の基礎"..CKWord("ダメージ", "Damage_rgb_ja").."。\n"
			..Dot_nc.." {stack:%s}スタックまで。\n"
			.."\n"
			.."次に使用する"..CKWord("戦闘アビリティ", "Cmbt_abil_rgb_ja").."は全てのワープチャージを消費し、チャージ1つ毎にクールダウンを{cooldown_reduction:%s}短縮する。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ko = "정예 또는 전문가 적 처치 시 {duration:%s}초간 지속되는 워프 충전을 얻습니다.\n"
			..Dot_green.." 중첩당 {damage:%s} 기본 "..CKWord("피해", "Damage_rgb_ko")..".\n"
			..Dot_nc.." {stack:%s}회 중첩 가능.\n"
			.."\n"
			.."다음 "..CKWord("전투 능력", "Cmbt_abil_rgb_ko").." 사용 시 모든 워프 충전을 소모하여 충전당 {cooldown_reduction:%s}씩 재사용 대기시간을 감소시킵니다.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		pl = "Zabicie Elitarnego wroga lub Specjalisty daje ci Ładunek Warpu na {duration:%s} sekund.\n"
			..Dot_green.." {damage:%s} bazowych "..CKWord("Obrażeń", "Damage_rgb_pl").." na ładunek.\n"
			..Dot_nc.." Kumuluje się {stack:%s} razy.\n"
			.."\n"
			.."Twoja następna "..CKWord("Umiejętność bojowa", "Cmbt_abil_rgb_pl").." wydaje wszystkie dostępne Ładunki Warpu, aby skrócić jej czas odnowienia o {cooldown_reduction:%s} za każdy Ładunek Warpu.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["pt-br"] = "Matar um inimigo de Elite ou Especialista concede uma Carga Warp por {duration:%s} segundos.\n"
			..Dot_green.." {damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." base por acúmulo.\n"
			..Dot_nc.." Acumula {stack:%s} vezes.\n"
			.."\n"
			.."Sua próxima "..CKWord("Habilidade de combate", "Cmbt_abil_rgb_pt_br").." gasta todas as Cargas Warp disponíveis para reduzir o tempo de recarga dessa "..CKWord("Habilidade de combate", "Cmbt_abil_rgb_pt_br").." em {cooldown_reduction:%s} por Carga Warp.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		es = "Matar a un enemigo Élite o Especialista te otorga una Carga Disforme durante {duration:%s} segundos.\n"
			..Dot_green.." {damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." base por acumulación.\n"
			..Dot_nc.." Se acumula {stack:%s} veces.\n"
			.."\n"
			.."Tu próxima "..CKWord("Habilidad de combate", "Cmbt_abil_rgb_es").." gasta todas las Cargas Disformes disponibles para reducir el tiempo de reutilización de esa "..CKWord("Habilidad de combate", "Cmbt_abil_rgb_es").." en {cooldown_reduction:%s} por Carga Disforme.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ KEYSTONE 1-1 - Inner Tranquility +]--	09.06.2026
	["loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"] = { -- warp_charge_amount: -6%, +colors
		en = Dot_green.." {warp_charge_amount:%s} "..CKWord("Peril", "Peril_rgb").." Generation Reduction for each Warp Charge.",
		ru = Dot_green.." {warp_charge_amount:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru").." за каждый варп-заряд.", -- Внутреннее спокойствие
		fr = Dot_green.." {warp_charge_amount:%s} de réduction de génération de "..CKWord("Péril", "Peril_rgb_fr").." par Charge Warp.",
		["zh-tw"] = Dot_green.." 每層亞空間充能使"..CKWord("反噬", "Peril_rgb_tw").."產生量降低 {warp_charge_amount:%s}。",
		["zh-cn"] = Dot_green.." 每个亚空间充能使"..CKWord("危机值", "Peril_rgb_zh_cn").."产生减少{warp_charge_amount:%s}。",
		de = Dot_green.." {warp_charge_amount:%s} "..CKWord("Gefahr", "Peril_rgb_de").."-Erzeugungsreduzierung pro Warp-Ladung.",
		it = Dot_green.." {warp_charge_amount:%s} di riduzione della generazione di "..CKWord("Pericolo", "Peril_rgb_it").." per ogni Carica Warp.",
		ja = Dot_green.." ワープチャージ1つにつき"..CKWord("危険", "Peril_rgb_ja").."生成量を{warp_charge_amount:%s}軽減。",
		ko = Dot_green.." 워프 충전당 "..CKWord("위험", "Peril_rgb_ko").." 생성량 {warp_charge_amount:%s} 감소.",
		pl = Dot_green.." {warp_charge_amount:%s} redukcji generacji "..CKWord("Zagrożenia", "Peril_rgb_pl").." na każdy Ładunek Warpu.",
		["pt-br"] = Dot_green.." {warp_charge_amount:%s} de redução de geração de "..CKWord("Perigo", "Peril_rgb_pt_br").." por Carga Warp.",
		es = Dot_green.." {warp_charge_amount:%s} de reducción de generación de "..CKWord("Peligro", "Peril_rgb_es").." por cada Carga Disforme.",
	},
	--[+ KEYSTONE 1-2 - Essence Harvest +]--	09.06.2026
	["loc_talent_psyker_toughness_regen_on_soul_desc"] = { -- toughness: 30%, time: 5, s->seconds, +colors
		en = Dot_green.." "..CNumb("6%", "pc_6_rgb").." "..CKWord("Toughness", "Toughness_rgb").." is replenished per second for {time:%s} seconds after gaining Warp Charge, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			..Dot_green.." Can be refreshed during active duration.\n"
			..Dot_nc.." Doesn't increase the amount of "..CKWord("Toughness", "Toughness_rgb").." replenished.",
		ru = Dot_green.." "..CNumb("6%", "pc_6_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду восстанавливается в течение {time:%s} секунд после получения варп-заряда, вплоть до максимальных {toughness:%s}.\n" -- Сбор сущностей -- руоф Сбор сущности
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_nc.." Не увеличивает количество восстанавливаемой "..CKWord("стойкости", "stoikosti_rgb_ru")..".",
		fr = Dot_green.." "..CNumb("6%", "pc_6_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." sont restaurés par seconde pendant {time:%s} secondes après avoir gagné une Charge Warp, jusqu'à {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr")..".\n"
			.."\n"
			..CPhrs("Can_be_refr")
			..Dot_nc.." N'augmente pas la quantité de "..CKWord("Robustesse", "Toughness_rgb_fr").." restaurée.",
		["zh-tw"] = Dot_green.." 獲得亞空間充能後，每秒恢復 "..CNumb("6%", "pc_6_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，持續 {time:%s} 秒，最多恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_nc.." 不會提高恢復的"..CKWord("韌性", "Toughness_rgb_tw").."總量。",
		["zh-cn"] = Dot_green.." 获得亚空间充能后，每秒恢复"..CNumb("6%", "pc_6_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."，持续{time:%s}秒，最多恢复{toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..CPhrs("Can_be_refr")
			..Dot_nc.." 不增加"..CKWord("韧性", "Toughness_rgb_zh_cn").."恢复量。",
		de = Dot_green.." "..CNumb("6%", "pc_6_rgb").." "..CKWord("Widerstand", "Toughness_rgb_de").." werden pro Sekunde für {time:%s} Sekunden nach Erhalt einer Warp-Ladung wiederhergestellt, bis zu {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de")..".\n"
			.."\n"
			..CPhrs("Can_be_refr")
			..Dot_nc.." Erhöht nicht die wiederhergestellte Menge an "..CKWord("Widerstand", "Toughness_rgb_de")..".",
		it = Dot_green.." "..CNumb("6%", "pc_6_rgb").." di "..CKWord("Robustezza", "Toughness_rgb_it").." vengono ripristinati al secondo per {time:%s} secondi dopo aver guadagnato una Carica Warp, fino a {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it")..".\n"
			.."\n"
			..CPhrs("Can_be_refr")
			..Dot_nc.." Non aumenta la quantità di "..CKWord("Robustezza", "Toughness_rgb_it").." ripristinata.",
		ja = Dot_green.." ワープチャージ獲得後、{time:%s}秒間毎秒"..CNumb("6%", "pc_6_rgb").."の"..CKWord("耐久", "Toughness_rgb_ja").."を回復する。最大{toughness:%s}"..CKWord("耐久", "Toughness_rgb_ja").."まで。\n"
			.."\n"
			..CPhrs("Can_be_refr")
			..Dot_nc.." 回復する"..CKWord("耐久", "Toughness_rgb_ja").."量は増加しない。",
		ko = Dot_green.." 워프 충전 획득 후 {time:%s}초 동안 초당 "..CNumb("6%", "pc_6_rgb").."의 "..CKWord("인내", "Toughness_rgb_ko").."를 회복합니다. 최대 {toughness:%s} "..CKWord("인내", "Toughness_rgb_ko")..".\n"
			.."\n"
			..CPhrs("Can_be_refr")
			..Dot_nc.." 회복되는 "..CKWord("인내", "Toughness_rgb_ko").."량은 증가하지 않습니다.",
		pl = Dot_green.." "..CNumb("6%", "pc_6_rgb").." "..CKWord("Odporności", "Toughness_rgb_pl").." odnawia się na sekundę przez {time:%s} sekund po zdobyciu Ładunku Warpu, do {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl")..".\n"
			.."\n"
			..CPhrs("Can_be_refr")
			..Dot_nc.." Nie zwiększa ilości odnawianej "..CKWord("Odporności", "Toughness_rgb_pl")..".",
		["pt-br"] = Dot_green.." "..CNumb("6%", "pc_6_rgb").." de "..CKWord("Resistência", "Toughness_rgb_pt_br").." são recuperados por segundo por {time:%s} segundos após ganhar uma Carga Warp, até {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br")..".\n"
			.."\n"
			..CPhrs("Can_be_refr")
			..Dot_nc.." Não aumenta a quantidade de "..CKWord("Resistência", "Toughness_rgb_pt_br").." recuperada.",
		es = Dot_green.." "..CNumb("6%", "pc_6_rgb").." de "..CKWord("Robustez", "Toughness_rgb_es").." se reponen por segundo durante {time:%s} segundos después de obtener una Carga Disforme, hasta {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es")..".\n"
			.."\n"
			..CPhrs("Can_be_refr")
			..Dot_nc.." No aumenta la cantidad de "..CKWord("Robustez", "Toughness_rgb_es").." repuesta.",
	},
	--[+ KEYSTONE 1-3 - Warp Battery +]--	09.06.2026
	["loc_talent_psyker_increased_souls_desc"] = { -- soul_amount: 6
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." Maximum Warp Charges. Increases from "..CNumb("4", "n_4_rgb").." to {soul_amount:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." к максимуму варп-зарядов. Увеличивается с "..CNumb("4", "n_4_rgb").." до {soul_amount:%s} варп-зарядов.", -- Варп-аккумулятор
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." maximum de Charges Warp. Augmente de "..CNumb("4", "n_4_rgb").." à {soul_amount:%s}.",
		["zh-tw"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." 亞空間充能上限。從 "..CNumb("4", "n_4_rgb").." 提高至 {soul_amount:%s}。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." 最大亚空间充能。从 "..CNumb("4", "n_4_rgb").." 提高至 {soul_amount:%s}。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." maximale Warp-Ladungen. Erhöht von "..CNumb("4", "n_4_rgb").." auf {soul_amount:%s}.",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." Cariche Warp massime. Aumenta da "..CNumb("4", "n_4_rgb").." a {soul_amount:%s}.",
		ja = Dot_green.." 最大ワープチャージが"..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").."増加。"..CNumb("4", "n_4_rgb").."から{soul_amount:%s}に増加。",
		ko = Dot_green.." 최대 워프 충전량 "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." 증가. "..CNumb("4", "n_4_rgb").."에서 {soul_amount:%s}(으)로 증가합니다.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." do maksymalnych Ładunków Warpu. Zwiększa z "..CNumb("4", "n_4_rgb").." do {soul_amount:%s}.",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." ao máximo de Cargas Warp. Aumenta de "..CNumb("4", "n_4_rgb").." para {soul_amount:%s}.",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." a las Cargas Disformes máximas. Aumenta de "..CNumb("4", "n_4_rgb").." a {soul_amount:%s}.",
	},
	--[+ KEYSTONE 1-4 - In Fire Reborn +]--	09.06.2026
	["loc_talent_psyker_warpfire_generates_souls_desc"] = { -- chance: 10%, +colors
		en = Dot_green.." {chance:%s} chance to gain a Warp Charge when you or an Ally kill an enemy who is currently affected by "..CKWord("Soulblaze", "Soulblaze_rgb")..".\n"
			.."\n"
			..Dot_nc.." This effect has no range limit and benefits all "..CKWord("Psykers", "cls_psys_rgb").." who have this Talent equipped.",
		ru = Dot_green.." {chance:%s} шанс получить варп-заряд, когда вы или ваш союзник убиваете врага, на которого в данный момент действует эффект "..CKWord("горения души", "gorenia_dushi_rgb_ru")..".\n" -- Возрождение в огне -- руоф В огне восстану
			.."\n"
			..Dot_green.." Эффект не имеет ограничения по дальности.\n"
			..Dot_green.." Этот эффект влияет на всех "..CKWord("псайкеров", "cls_psyov_rgb").." у которых выбран этот талант.",
		fr = Dot_green.." {chance:%s} de chance d'obtenir une Charge Warp lorsque vous ou un allié tuez un ennemi actuellement affecté par "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr")..".\n"
			.."\n"
			..Dot_nc.." Cet effet n'a pas de limite de portée et bénéficie à tous les "..CKWord("Psykers", "cls_psys_rgb_fr").." qui ont ce talent équipé.",
		["zh-tw"] = Dot_green.." 你或隊友擊殺受"..CKWord("靈魂之火", "Soulblaze_rgb_tw").."影響的敵人時，有 {chance:%s} 機率獲得一層亞空間充能。\n"
			.."\n"
			..Dot_nc.." 此效果沒有距離限制，所有裝備此天賦的"..CKWord("靈能者", "cls_psy_rgb_tw").."都能受益。",
		["zh-cn"] = Dot_green.." 当你或盟友杀死正受到"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."影响的敌人时，{chance:%s}几率获得一个亚空间充能。\n"
			.."\n"
			..Dot_nc.." 此效果没有距离限制，并会影响所有装备此天赋的"..CKWord("灵能者", "cls_psys_rgb_zh_cn").."。",
		de = Dot_green.." {chance:%s} Chance, eine Warp-Ladung zu erhalten, wenn Sie oder ein Verbündeter einen Gegner töten, der derzeit von "..CKWord("Seelenbrand", "Soulblaze_rgb_de").." betroffen ist.\n"
			.."\n"
			..Dot_nc.." Dieser Effekt hat keine Reichweitenbegrenzung und kommt allen "..CKWord("Psykern", "cls_psys_rgb_de").." zugute, die dieses Talent ausgerüstet haben.",
		it = Dot_green.." {chance:%s} probabilità di ottenere una Carica Warp quando tu o un alleato uccidete un nemico attualmente affetto da "..CKWord("Vampa d'anima", "Soulblaze_rgb_it")..".\n"
			.."\n"
			..Dot_nc.." Questo effetto non ha limiti di portata e avvantaggia tutti i "..CKWord("Psichici", "cls_psys_rgb_it").." che hanno equipaggiato questo talento.",
		ja = Dot_green.." あなたか味方が"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."の影響下にある敵を倒すと、{chance:%s}の確率でワープチャージを得る。\n"
			.."\n"
			..Dot_nc.." この効果に範囲制限はなく、このタレントを装備した全ての"..CKWord("サイカー", "cls_psys_rgb_ja").."に影響する。",
		ko = Dot_green.." 자신이나 아군이 "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").." 상태의 적을 처치하면 {chance:%s} 확률로 워프 충전을 얻습니다.\n"
			.."\n"
			..Dot_nc.." 이 효과는 거리 제한이 없으며, 이 특성을 장착한 모든 "..CKWord("사이커", "cls_psys_rgb_ko").."에게 적용됩니다.",
		pl = Dot_green.." {chance:%s} szansy na uzyskanie Ładunku Warpu, gdy ty lub sojusznik zabijecie wroga obecnie objętego "..CKWord("Pożarem dusz", "Soulblaze_rgb_pl")..".\n"
			.."\n"
			..Dot_nc.." Efekt ten nie ma ograniczeń zasięgu i dotyczy wszystkich "..CKWord("Psykerów", "cls_psys_rgb_pl")..", którzy mają ten talent.",
		["pt-br"] = Dot_green.." {chance:%s} de chance de ganhar uma Carga Warp quando você ou um aliado matar um inimigo atualmente afetado por "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br")..".\n"
			.."\n"
			..Dot_nc.." Este efeito não tem limite de alcance e beneficia todos os "..CKWord("Psíquicos", "cls_psys_rgb_pt_br").." que têm este Talento equipado.",
		es = Dot_green.." {chance:%s} de probabilidad de obtener una Carga Disforme cuando tú o un aliado matáis a un enemigo afectado actualmente por "..CKWord("Llama del alma", "Soulblaze_rgb_es")..".\n"
			.."\n"
			..Dot_nc.." Este efecto no tiene límite de alcance y beneficia a todos los "..CKWord("Psíquicos", "cls_psys_rgb_es").." que tienen este talento equipado.",
	},
	--[+ KEYSTONE 1-5 - Psychic Vampire +]--	09.06.2026
	["loc_talent_psyker_souls_on_kill_coop_desc"] = { -- soul_chance: 4%
		en = Dot_green.." {soul_chance:%s} chance to gain a Warp Charge whenever you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an enemy.\n"
			.."\n"
			..Dot_nc.." This Talent's effect is shared with all allied "..CKWord("Psykers", "cls_psys_rgb").." in "..CKWord("Coherency", "Coherency_rgb").." who also have it.",
		ru = Dot_green.." {soul_chance:%s} шанс получить варп-заряд, когда вы или ваш союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." убиваете врага.\n" -- Психический вампир
			.."\n"
			..Dot_green.." Этот эффект влияет на всех "..CKWord("псайкеров", "cls_psyov_rgb").." у которых выбран этот талант.",
		fr = Dot_green.." {soul_chance:%s} de chance d'obtenir une Charge Warp chaque fois que vous ou un allié en "..CKWord("Syntonie", "Coherency_rgb_fr").." tuez un ennemi.\n"
			.."\n"
			..Dot_nc.." L'effet de ce talent est partagé avec tous les "..CKWord("Psykers", "cls_psys_rgb_fr").." alliés en "..CKWord("Syntonie", "Coherency_rgb_fr").." qui l'ont également.",
		["zh-tw"] = Dot_green.." 你或"..CKWord("協同", "Coherency_rgb_tw").."範圍內的隊友擊殺敵人時，有 {soul_chance:%s} 機率獲得一層亞空間充能。\n"
			.."\n"
			..Dot_nc.." 此天賦的效果會與"..CKWord("協同", "Coherency_rgb_tw").."範圍內同樣裝備此天賦的所有"..CKWord("靈能者", "cls_psy_rgb_tw").."隊友共享。",
		["zh-cn"] = Dot_green.." 每当您或"..CKWord("连携", "Coherency_rgb_zh_cn").."中的盟友杀死敌人时，{soul_chance:%s}几率获得一个亚空间充能。\n"
			.."\n"
			..Dot_nc.." 此天赋的效果会与"..CKWord("连携", "Coherency_rgb_zh_cn").."中同样装备此天赋的盟友"..CKWord("灵能者", "cls_psys_rgb_zh_cn").."共享。",
		de = Dot_green.." {soul_chance:%s} Chance, eine Warp-Ladung zu erhalten, wenn Sie oder ein Verbündeter in "..CKWord("Kohärenz", "Coherency_rgb_de").." einen Gegner töten.\n"
			.."\n"
			..Dot_nc.." Dieser Talent-Effekt wird mit allen verbündeten "..CKWord("Psykern", "cls_psys_rgb_de").." in "..CKWord("Kohärenz", "Coherency_rgb_de").." geteilt, die ihn ebenfalls haben.",
		it = Dot_green.." {soul_chance:%s} probabilità di ottenere una Carica Warp ogni volta che tu o un alleato in "..CKWord("Coerenza", "Coherency_rgb_it").." uccidete un nemico.\n"
			.."\n"
			..Dot_nc.." L'effetto di questo talento è condiviso con tutti i "..CKWord("Psichici", "cls_psys_rgb_it").." alleati in "..CKWord("Coerenza", "Coherency_rgb_it").." che lo hanno equipaggiato.",
		ja = Dot_green.." 自分または"..CKWord("結束", "Coherency_rgb_ja").."内の味方が敵を倒す度に、{soul_chance:%s}の確率でワープチャージを得る。\n"
			.."\n"
			..Dot_nc.." このタレント効果は、同じくこれを装備している"..CKWord("結束", "Coherency_rgb_ja").."内の味方"..CKWord("サイカー", "cls_psys_rgb_ja").."と共有される。",
		ko = Dot_green.." 자신 또는 "..CKWord("일체감", "Coherency_rgb_ko").." 내의 아군이 적을 처치할 때마다 {soul_chance:%s} 확률로 워프 충전을 얻습니다.\n"
			.."\n"
			..Dot_nc.." 이 특성 효과는 "..CKWord("일체감", "Coherency_rgb_ko").." 내에서 이 특성을 장착한 모든 아군 "..CKWord("사이커", "cls_psys_rgb_ko").."와 공유됩니다.",
		pl = Dot_green.." {soul_chance:%s} szansy na uzyskanie Ładunku Warpu, gdy ty lub sojusznik w "..CKWord("Spójności", "Coherency_rgb_pl").." zabijecie wroga.\n"
			.."\n"
			..Dot_nc.." Efekt tego talentu jest dzielony ze wszystkimi sprzymierzonymi "..CKWord("Psykerami", "cls_psys_rgb_pl").." w "..CKWord("Spójności", "Coherency_rgb_pl")..", którzy również go mają.",
		["pt-br"] = Dot_green.." {soul_chance:%s} de chance de ganhar uma Carga Warp sempre que você ou um aliado em "..CKWord("Coerência", "Coherency_rgb_pt_br").." matar um inimigo.\n"
			.."\n"
			..Dot_nc.." O efeito deste Talento é compartilhado com todos os "..CKWord("Psíquicos", "cls_psys_rgb_pt_br").." aliados em "..CKWord("Coerência", "Coherency_rgb_pt_br").." que também o possuem.",
		es = Dot_green.." {soul_chance:%s} de probabilidad de obtener una Carga Disforme cada vez que tú o un aliado en "..CKWord("Coherencia", "Coherency_rgb_es").." matáis a un enemigo.\n"
			.."\n"
			..Dot_nc.." El efecto de este talento se comparte con todos los "..CKWord("Psíquicos", "cls_psys_rgb_es").." aliados en "..CKWord("Coherencia", "Coherency_rgb_es").." que también lo tienen equipado.",
	},
	--[+ KEYSTONE 2 - Empowered Psionics +]--	09.06.2026
	["loc_talent_psyker_empowered_ability_description"] = { -- chance: 7.5%, blitz_one: Brain Rupture, smite_cost: 100%, smite_attack_speed: 50%, smite_damage: +50%, blitz_two: Smite, chain_lightning_damage: +200%, chain_lightning_jump_time_multiplier: 50%, blitz_three: Assail, throwing_knives_cost: 100%, throwing_knives_old_damage: 100, throwing_knives_new_damage: 150, +colors
		en = "Kills have a {chance:%s} chance to Empower your next Blitz.\n"
			.."\n"
			.."Empowered {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {smite_cost:%s} "..CKWord("Peril", "Peril_rgb").." Cost Reduction,\n"
			..Dot_green.." {smite_attack_speed:%s} Cast time Reduction.\n"
			.."\n"
			.."Empowered {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} faster spread between Enemies.\n"
			.."\n"
			.."Empowered {blitz_three:%s}:\n"
			..Dot_green.." {throwing_knives_cost:%s} "..CKWord("Peril", "Peril_rgb").." Cost Reduction,\n"
			..Dot_green.." "..CKWord("Damage", "Damage_rgb").." increase from {throwing_knives_old_damage:%s} to {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." Does not consume any charges.\n"
			..Dot_green.." Allows casting at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..".",
		ru = "Убийства имеют {chance:%s} шанс усилить ваш следующий блиц.\n" -- Усиленные псионики
			.."\n"
			.."Усиленный {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} к "..CKWord("урон", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{smite_cost:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{smite_attack_speed:%s} к времени заряжания.\n"
			.."\n"
			.."Усиленное {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} к "..CKWord("урон", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{chain_lightning_jump_time_multiplier:%s} к скорости распространения между врагами.\n"
			.."\n"
			.."Усиленное {blitz_three:%s}:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{throwing_knives_cost:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..",\n"
			..Dot_green.." С {throwing_knives_old_damage:%s} до {throwing_knives_new_damage:%s} увеличивается "..CKWord("урон", "uron_rgb_ru")..".\n"
			..Dot_green.." Не тратит снаряды.\n"
			..Dot_green.." Можно использовать даже при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".",
		fr = "Les éliminations ont {chance:%s} de chance d'améliorer votre prochain Blitz.\n"
			.."\n"
			.."Blitz amélioré {blitz_one:%s} :\n"
			..Dot_green.." {smite_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr")..",\n"
			..Dot_green.." {smite_cost:%s} de réduction du coût en "..CKWord("Péril", "Peril_rgb_fr")..",\n"
			..Dot_green.." {smite_attack_speed:%s} de réduction du temps d'incantation.\n"
			.."\n"
			.."Blitz amélioré {blitz_two:%s} :\n"
			..Dot_green.." {chain_lightning_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} de propagation plus rapide entre les ennemis.\n"
			.."\n"
			.."Blitz amélioré {blitz_three:%s} :\n"
			..Dot_green.." {throwing_knives_cost:%s} de réduction du coût en "..CKWord("Péril", "Peril_rgb_fr")..",\n"
			..Dot_green.." augmentation des "..CKWord("Dégâts", "Damage_rgb_fr").." de {throwing_knives_old_damage:%s} à {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." Ne consomme aucune charge.\n"
			..Dot_green.." Permet d'incanter à "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Péril", "Peril_rgb_fr")..".",
		["zh-tw"] = "擊殺有 {chance:%s} 機率強化你的下一次閃擊。\n"
			.."\n"
			.."強化{blitz_one:%s}：\n"
			..Dot_green.." {smite_damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {smite_cost:%s} "..CKWord("反噬", "Peril_rgb_tw").." 消耗減少，\n"
			..Dot_green.." {smite_attack_speed:%s} 施放時間減少。\n"
			.."\n"
			.."強化{blitz_two:%s}：\n"
			..Dot_green.." {chain_lightning_damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} 在敵人之間的散布速度加快。\n"
			.."\n"
			.."強化{blitz_three:%s}：\n"
			..Dot_green.." {throwing_knives_cost:%s} "..CKWord("反噬", "Peril_rgb_tw").." 消耗減少，\n"
			..Dot_green.." "..CKWord("傷害", "Damage_rgb_tw").."從 {throwing_knives_old_damage:%s} 提高至 {throwing_knives_new_damage:%s}。\n"
			..Dot_green.." 不消耗任何充能。\n"
			..Dot_green.." 可在 "..CNumb("100%", "pc_100_rgb").." "..CKWord("反噬", "Peril_rgb_tw").." 時使用。",
		["zh-cn"] = "击杀有{chance:%s}几率强化你的下一次闪电。\n"
			.."\n"
			.."强化{blitz_one:%s}：\n"
			..Dot_green.." {smite_damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {smite_cost:%s} "..CKWord("危机值", "Peril_rgb_zh_cn").."消耗减少，\n"
			..Dot_green.." {smite_attack_speed:%s} 施法时间减少。\n"
			.."\n"
			.."强化{blitz_two:%s}：\n"
			..Dot_green.." {chain_lightning_damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} 敌人之间传播更快。\n"
			.."\n"
			.."强化{blitz_three:%s}：\n"
			..Dot_green.." {throwing_knives_cost:%s} "..CKWord("危机值", "Peril_rgb_zh_cn").."消耗减少，\n"
			..Dot_green.." "..CKWord("伤害", "Damage_rgb_zh_cn").."从{throwing_knives_old_damage:%s}提高至{throwing_knives_new_damage:%s}。\n"
			..Dot_green.." 不消耗充能。\n"
			..Dot_green.." 可在"..CNumb("100%", "pc_100_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."时施放。",
		de = "Tötungen haben eine {chance:%s} Chance, Ihren nächsten Blitz zu verbessern.\n"
			.."\n"
			.."Verbesserter {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} "..CKWord("Schaden", "Damage_rgb_de")..",\n"
			..Dot_green.." {smite_cost:%s} Reduzierung der "..CKWord("Gefahr", "Peril_rgb_de").."-Kosten,\n"
			..Dot_green.." {smite_attack_speed:%s} Reduzierung der Wirkzeit.\n"
			.."\n"
			.."Verbesserter {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} "..CKWord("Schaden", "Damage_rgb_de")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} schnellere Ausbreitung zwischen Gegnern.\n"
			.."\n"
			.."Verbesserter {blitz_three:%s}:\n"
			..Dot_green.." {throwing_knives_cost:%s} Reduzierung der "..CKWord("Gefahr", "Peril_rgb_de").."-Kosten,\n"
			..Dot_green.." "..CKWord("Schaden", "Damage_rgb_de").." steigt von {throwing_knives_old_damage:%s} auf {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." Verbraucht keine Ladungen.\n"
			..Dot_green.." Ermöglicht Wirken bei "..CNumb("100%", "pc_100_rgb").." "..CKWord("Gefahr", "Peril_rgb_de")..".",
		it = "Le uccisioni hanno {chance:%s} probabilità di potenziare il tuo prossimo Blitz.\n"
			.."\n"
			.."{blitz_one:%s} potenziato:\n"
			..Dot_green.." {smite_damage:%s} di "..CKWord("Danno", "Damage_rgb_it")..",\n"
			..Dot_green.." {smite_cost:%s} di riduzione del costo in "..CKWord("Pericolo", "Peril_rgb_it")..",\n"
			..Dot_green.." {smite_attack_speed:%s} di riduzione del tempo di lancio.\n"
			.."\n"
			.."{blitz_two:%s} potenziato:\n"
			..Dot_green.." {chain_lightning_damage:%s} di "..CKWord("Danno", "Damage_rgb_it")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} di propagazione più veloce tra i nemici.\n"
			.."\n"
			.."{blitz_three:%s} potenziato:\n"
			..Dot_green.." {throwing_knives_cost:%s} di riduzione del costo in "..CKWord("Pericolo", "Peril_rgb_it")..",\n"
			..Dot_green.." aumento del "..CKWord("Danno", "Damage_rgb_it").." da {throwing_knives_old_damage:%s} a {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." Non consuma cariche.\n"
			..Dot_green.." Permette di lanciare al "..CNumb("100%", "pc_100_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it")..".",
		ja = "キル時に{chance:%s}の確率で次のブリッツが強化される。\n"
			.."\n"
			.."強化された{blitz_one:%s}：\n"
			..Dot_green.." {smite_damage:%s} "..CKWord("ダメージ", "Damage_rgb_ja").."増加、\n"
			..Dot_green.." {smite_cost:%s} "..CKWord("危険", "Peril_rgb_ja").."コスト軽減、\n"
			..Dot_green.." {smite_attack_speed:%s} 詠唱時間短縮。\n"
			.."\n"
			.."強化された{blitz_two:%s}：\n"
			..Dot_green.." {chain_lightning_damage:%s} "..CKWord("ダメージ", "Damage_rgb_ja").."増加、\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} 敵間の伝播速度上昇。\n"
			.."\n"
			.."強化された{blitz_three:%s}：\n"
			..Dot_green.." {throwing_knives_cost:%s} "..CKWord("危険", "Peril_rgb_ja").."コスト軽減、\n"
			..Dot_green.." "..CKWord("ダメージ", "Damage_rgb_ja").."が{throwing_knives_old_damage:%s}から{throwing_knives_new_damage:%s}に増加。\n"
			..Dot_green.." チャージを消費しない。\n"
			..Dot_green.." "..CNumb("100%", "pc_100_rgb").."の"..CKWord("危険", "Peril_rgb_ja").."でも発動可能。",
		ko = "처치 시 {chance:%s} 확률로 다음 블리츠가 강화됩니다.\n"
			.."\n"
			.."강화된 {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} "..CKWord("피해", "Damage_rgb_ko")..",\n"
			..Dot_green.." {smite_cost:%s} "..CKWord("위험", "Peril_rgb_ko").." 소모량 감소,\n"
			..Dot_green.." {smite_attack_speed:%s} 시전 시간 감소.\n"
			.."\n"
			.."강화된 {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} "..CKWord("피해", "Damage_rgb_ko")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} 적 간 전파 속도 증가.\n"
			.."\n"
			.."강화된 {blitz_three:%s}:\n"
			..Dot_green.." {throwing_knives_cost:%s} "..CKWord("위험", "Peril_rgb_ko").." 소모량 감소,\n"
			..Dot_green.." "..CKWord("피해", "Damage_rgb_ko").."가 {throwing_knives_old_damage:%s}에서 {throwing_knives_new_damage:%s}(으)로 증가.\n"
			..Dot_green.." 충전을 소모하지 않습니다.\n"
			..Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("위험", "Peril_rgb_ko").."에서도 시전 가능.",
		pl = "Zabójstwa mają {chance:%s} szansy na wzmocnienie twojego następnego Blitz.\n"
			.."\n"
			.."Wzmocniony {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl")..",\n"
			..Dot_green.." {smite_cost:%s} redukcji kosztu "..CKWord("Zagrożenia", "Peril_rgb_pl")..",\n"
			..Dot_green.." {smite_attack_speed:%s} skrócenia czasu rzucania.\n"
			.."\n"
			.."Wzmocniony {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} szybszego rozprzestrzeniania się między wrogami.\n"
			.."\n"
			.."Wzmocniony {blitz_three:%s}:\n"
			..Dot_green.." {throwing_knives_cost:%s} redukcji kosztu "..CKWord("Zagrożenia", "Peril_rgb_pl")..",\n"
			..Dot_green.." wzrost "..CKWord("Obrażeń", "Damage_rgb_pl").." z {throwing_knives_old_damage:%s} do {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." Nie zużywa ładunków.\n"
			..Dot_green.." Pozwala na rzucanie przy "..CNumb("100%", "pc_100_rgb").." "..CKWord("Zagrożenia", "Peril_rgb_pl")..".",
		["pt-br"] = "Mortes têm {chance:%s} de chance de fortalecer seu próximo Blitz.\n"
			.."\n"
			.."{blitz_one:%s} fortalecido:\n"
			..Dot_green.." {smite_damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br")..",\n"
			..Dot_green.." {smite_cost:%s} de redução de custo de "..CKWord("Perigo", "Peril_rgb_pt_br")..",\n"
			..Dot_green.." {smite_attack_speed:%s} de redução do tempo de conjuração.\n"
			.."\n"
			.."{blitz_two:%s} fortalecido:\n"
			..Dot_green.." {chain_lightning_damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} de propagação mais rápida entre inimigos.\n"
			.."\n"
			.."{blitz_three:%s} fortalecido:\n"
			..Dot_green.." {throwing_knives_cost:%s} de redução de custo de "..CKWord("Perigo", "Peril_rgb_pt_br")..",\n"
			..Dot_green.." aumento de "..CKWord("Dano", "Damage_rgb_pt_br").." de {throwing_knives_old_damage:%s} para {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." Não consome cargas.\n"
			..Dot_green.." Permite conjurar com "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br")..".",
		es = "Las muertes tienen un {chance:%s} de probabilidad de potenciar tu siguiente Blitz.\n"
			.."\n"
			.."{blitz_one:%s} potenciado:\n"
			..Dot_green.." {smite_damage:%s} de "..CKWord("Daño", "Damage_rgb_es")..",\n"
			..Dot_green.." {smite_cost:%s} de reducción de coste de "..CKWord("Peligro", "Peril_rgb_es")..",\n"
			..Dot_green.." {smite_attack_speed:%s} de reducción del tiempo de lanzamiento.\n"
			.."\n"
			.."{blitz_two:%s} potenciado:\n"
			..Dot_green.." {chain_lightning_damage:%s} de "..CKWord("Daño", "Damage_rgb_es")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} de propagación más rápida entre enemigos.\n"
			.."\n"
			.."{blitz_three:%s} potenciado:\n"
			..Dot_green.." {throwing_knives_cost:%s} de reducción de coste de "..CKWord("Peligro", "Peril_rgb_es")..",\n"
			..Dot_green.." aumento del "..CKWord("Daño", "Damage_rgb_es").." de {throwing_knives_old_damage:%s} a {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." No consume cargas.\n"
			..Dot_green.." Permite lanzar con "..CNumb("100%", "pc_100_rgb").." de "..CKWord("Peligro", "Peril_rgb_es")..".",
	},
	--[+ KEYSTONE 2-1 - Bio-Lodestone +]--	09.06.2026
	["loc_talent_psyker_increase_empower_chain_lighting_chance_description"] = { -- talent_name: Empowered Psionics, proc_chance_before: 7.5%, proc_chance_after: 12.5%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." chance to gain {talent_name:%s} on Kill. Increases from {proc_chance_before:%s} to {proc_chance_after:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." к шансу получить заряд таланта {talent_name:%s} при убийстве. Увеличивается с {proc_chance_before:%s} до {proc_chance_after:%s}.", -- Биопритяжение
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." de chance d'obtenir {talent_name:%s} par élimination. Augmente de {proc_chance_before:%s} à {proc_chance_after:%s}.",
		["zh-tw"] = Dot_green.." 擊殺時獲得 {talent_name:%s} 的機率 "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").."，從 {proc_chance_before:%s} 提高至 {proc_chance_after:%s}。",
		["zh-cn"] = Dot_green.." 击杀时获得{talent_name:%s}的几率"..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." 。从{proc_chance_before:%s}提高至{proc_chance_after:%s}。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." Chance, {talent_name:%s} bei einer Tötung zu erhalten. Erhöht von {proc_chance_before:%s} auf {proc_chance_after:%s}.",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." probabilità di ottenere {talent_name:%s} con un'uccisione. Aumenta da {proc_chance_before:%s} a {proc_chance_after:%s}.",
		ja = Dot_green.." キル時に{talent_name:%s}を得る確率が"..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").."増加。{proc_chance_before:%s}から{proc_chance_after:%s}に上昇。",
		ko = Dot_green.." 처치 시 {talent_name:%s} 획득 확률 "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." 증가. {proc_chance_before:%s}에서 {proc_chance_after:%s}(으)로 증가합니다.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." szansy na uzyskanie {talent_name:%s} przy zabójstwie. Zwiększa z {proc_chance_before:%s} do {proc_chance_after:%s}.",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." de chance de ganhar {talent_name:%s} ao matar. Aumenta de {proc_chance_before:%s} para {proc_chance_after:%s}.",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." de probabilidad de obtener {talent_name:%s} al matar. Aumenta de {proc_chance_before:%s} a {proc_chance_after:%s}.",
	},
	--[+ KEYSTONE 2-2 - Psychic Leeching +]--	09.06.2026
	["loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"] = { -- talent_name: Empowered Psionics, toughness: 15%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." on using your Blitz while {talent_name:%s} is active.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восполняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").." при использовании вашего блица, пока активны {talent_name:%s}.", -- Психическое высасывание -- руоф Психическая пиявка
		fr = Dot_green.." {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." sont restaurés pour vous et les alliés en "..CKWord("Syntonie", "Coherency_rgb_fr").." lors de l'utilisation de votre Blitz tandis que {talent_name:%s} est actif.",
		["zh-tw"] = Dot_green.." {talent_name:%s} 啟用時使用閃擊，會使你與"..CKWord("協同", "Coherency_rgb_tw").."範圍內的隊友恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 当{talent_name:%s}启动时，使用闪电为你和"..CKWord("连携", "Coherency_rgb_zh_cn").."中的盟友恢复{toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
		de = Dot_green.." {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." werden für Sie und Verbündete in "..CKWord("Kohärenz", "Coherency_rgb_de").." wiederhergestellt, wenn Sie Ihren Blitz verwenden, während {talent_name:%s} aktiv ist.",
		it = Dot_green.." {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." vengono ripristinati per te e gli alleati in "..CKWord("Coerenza", "Coherency_rgb_it").." quando usi il tuo Blitz mentre {talent_name:%s} è attivo.",
		ja = Dot_green.." {talent_name:%s}がアクティブな間、ブリッツ使用時に自分と"..CKWord("結束", "Coherency_rgb_ja").."内の味方の"..CKWord("耐久", "Toughness_rgb_ja").."が{toughness:%s}回復する。",
		ko = Dot_green.." {talent_name:%s} 활성화 중 블리츠 사용 시 자신과 "..CKWord("일체감", "Coherency_rgb_ko").." 내의 아군이 {toughness:%s}의 "..CKWord("인내", "Toughness_rgb_ko").."를 회복합니다.",
		pl = Dot_green.." {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." odnawia się dla ciebie i sojuszników w "..CKWord("Spójności", "Coherency_rgb_pl").." podczas używania twojego Blitz, gdy {talent_name:%s} jest aktywny.",
		["pt-br"] = Dot_green.." {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." são recuperados para você e aliados em "..CKWord("Coerência", "Coherency_rgb_pt_br").." ao usar seu Blitz enquanto {talent_name:%s} está ativo.",
		es = Dot_green.." {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." se reponen para ti y aliados en "..CKWord("Coherencia", "Coherency_rgb_es").." al usar tu Blitz mientras {talent_name:%s} está activo.",
	},
	--[+ KEYSTONE 2-3 - Overpowering Souls +]--	09.06.2026
	["loc_talent_psyker_empowered_ability_on_elite_kills_description"] = { -- talent_name: Empowered Psionics
		en = Dot_green.." Guaranteed chance to gain {talent_name:%s} on Elite Kills.",
		ru = Dot_green.." Вы гарантированно получаете заряд таланта {talent_name:%s} при убийстве элитного врага.", -- Могучие души
		fr = Dot_green.." Chance garantie d'obtenir {talent_name:%s} lors des éliminations d'élite.",
		["zh-tw"] = Dot_green.." 擊殺精英敵人保證獲得 {talent_name:%s}。",
		["zh-cn"] = Dot_green.." 击杀精英敌人时，保证获得{talent_name:%s}。",
		de = Dot_green.." Garantierte Chance, {talent_name:%s} bei Elite-Tötungen zu erhalten.",
		it = Dot_green.." Probabilità garantita di ottenere {talent_name:%s} con uccisioni Elite.",
		ja = Dot_green.." エリートキル時に{talent_name:%s}を確実に得る。",
		ko = Dot_green.." 정예 처치 시 {talent_name:%s}을(를) 확정적으로 획득합니다.",
		pl = Dot_green.." Gwarantowana szansa na uzyskanie {talent_name:%s} przy zabójstwach elitarnych.",
		["pt-br"] = Dot_green.." Chance garantida de ganhar {talent_name:%s} ao matar Inimigos de Elite.",
		es = Dot_green.." Probabilidad garantizada de obtener {talent_name:%s} al matar Élites.",
	},
	--[+ KEYSTONE 2-4 - Charged Up +]--	09.06.2026
	["loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"] = { -- max_stacks: 3, talent_name: Empowered Psionics
		en = Dot_green.." You can now hold up to {max_stacks:%s} Stacks of {talent_name:%s}.",
		ru = Dot_green.." Вы теперь можете набирать до {max_stacks:%s} зарядов таланта {talent_name:%s}.", -- Заряженный -- руоф Зарядка
		fr = Dot_green.." Vous pouvez désormais conserver jusqu'à {max_stacks:%s} cumuls de {talent_name:%s}.",
		["zh-tw"] = Dot_green.." 現在最多可持有 {max_stacks:%s} 層 {talent_name:%s}。",
		["zh-cn"] = Dot_green.." 现在最多可储存{max_stacks:%s}层{talent_name:%s}。",
		de = Dot_green.." Sie können jetzt bis zu {max_stacks:%s} Stapel von {talent_name:%s} halten.",
		it = Dot_green.." Ora puoi conservare fino a {max_stacks:%s} accumuli di {talent_name:%s}.",
		ja = Dot_green.." {talent_name:%s}を最大{max_stacks:%s}スタックまで保持できるようになった。",
		ko = Dot_green.." 이제 {talent_name:%s}을(를) 최대 {max_stacks:%s}중첩까지 보유할 수 있습니다.",
		pl = Dot_green.." Możesz teraz przechowywać do {max_stacks:%s} ładunków {talent_name:%s}.",
		["pt-br"] = Dot_green.." Agora você pode armazenar até {max_stacks:%s} acúmulos de {talent_name:%s}.",
		es = Dot_green.." Ahora puedes almacenar hasta {max_stacks:%s} acumulaciones de {talent_name:%s}.",
	},
	--[+ KEYSTONE 3 - Disrupt Destiny +]--	12.04.2026
	["loc_talent_psyker_marked_enemies_passive_updated_desc"] = { -- radius: 40, toughness: 10%, move_speed: +20%, move_speed_duration: 2.5, bonus_duration 4, base_damage: +1%, crit_damage: +2%, weakspot_damage: +2.5%, bonus_stacks: 15 -- m->meters, s->seconds, +colors
		en = "Every second, Enemies within {radius:%s} meters have a chance of being "..CKWord("Marked", "Psy_Mark_rgb")..".\n"
			.."\n"
			.."On Killing a "..CKWord("Marked", "Psy_Mark_rgb").." Enemy:\n"
			..Dot_green.." "..CNumb("10%", "pc_10_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored per second, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {move_speed_duration:%s} seconds,\n"
			..Dot_green.." {move_speed:%s} Movement Speed is granted for {move_speed_duration:%s} seconds,\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." Stack of "..CKWord("Precision", "Precision_rgb").." is added for {bonus_duration} seconds.\n"
			.."\n"
			.."Each "..CKWord("Precision", "Precision_rgb").." Stack grants:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("Critical Damage", "Crit_dmg_r_rgb").." and\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..".\n"
			.."\n"
			..CKWord("Precision", "Precision_rgb").." Bonus Stacks {bonus_stacks:%s} times and when the duration ends, one Stack is removed and the duration is refreshed.\n"
			.."\n"
			..Dot_green.." Dealing "..CKWord("Damage", "Damage_rgb").." to "..CKWord("Marked", "Psy_Mark_rgb").." enemies refreshes the Talent's duration.\n"
			..Dot_nc.." Valid targets are: Bruisers, Ritualist, Stalkers, Scab Shooter, Ragers, Gunners, Shotgunners, Plasma Gunner, and Mauler.",
		ru = "Каждую секунду враги в радиусе {radius:%s} метров могут быть "..CKWord("отмечены", "Psy_Mark_rgb_ru")..".\n" -- Прерывание судьбы -- руоф Разрушенная судьба
			.."\n"
			.."При убийстве "..CKWord("отмеченного", "Psy_Mark_ogo_rgb_ru").." врага вы получаете:\n"
			..Dot_green.." "..CNumb("10%", "pc_10_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду, вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за {move_speed_duration:%s} секунды,\n"
			..Dot_green.." {move_speed:%s} к скорости передвижения на {move_speed_duration:%s} секунды и\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." заряд "..CKWord("меткости", "Precision_rgb_ru").." на {bonus_duration} секунд.\n"
			.."\n"
			.."Каждый заряд "..CKWord("меткости", "Precision_rgb_ru").." даёт:\n"
			..Dot_green.." {base_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {crit_damage:%s} к "..CKWord("критическому урону", "krit_uronu_rgb_ru").." и\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..".\n"
			.."\n"
			.."Заряды "..CKWord("меткости", "Precision_rgb_ru").." накапливаются до {bonus_stacks:%s} раз. Раз в {bonus_duration} секунд снимается "..CNumb("1", "n_1_rgb").." заряд, а длительность оставшихся зарядов обновляется.\n"
			.."\n"
			..Dot_green.." Нанесение "..CKWord("урона", "urona_rgb_ru").." "..CKWord("отмеченным", "Psy_Mark_ym_rgb_ru").." врагам обновляет длительность зарядов.\n"
			..Dot_nc.." Допустимые цели: громила, ритуалист, охотник, скаб-стрелок, берсерк, пулемётчик, скаб с дробовиком, плазмомётчик и палач.",
		fr = "Chaque seconde, les ennemis dans un rayon de {radius:%s} mètres ont une chance d'être "..CKWord("Marqués", "Psy_Mark_rgb_fr")..".\n"
			.."\n"
			.."En tuant un ennemi "..CKWord("Marqué", "Psy_Mark_rgb_fr").." :\n"
			..Dot_green.." "..CNumb("10%", "pc_10_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." restaurée par seconde, jusqu'à {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." sur {move_speed_duration:%s} secondes,\n"
			..Dot_green.." {move_speed:%s} de vitesse de déplacement pendant {move_speed_duration:%s} secondes,\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." cumul de "..CKWord("Précision", "Precision_rgb_fr").." est ajouté pendant {bonus_duration} secondes.\n"
			.."\n"
			.."Chaque cumul de "..CKWord("Précision", "Precision_rgb_fr").." octroie :\n"
			..Dot_green.." {base_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr")..",\n"
			..Dot_green.." {crit_damage:%s} de "..CKWord("Dégâts critiques", "Crit_dmg_r_rgb_fr").." et\n"
			..Dot_green.." {weakspot_damage:%s} de "..CKWord("Dégâts sur point faible", "Weakspot_dmg_rgb_fr")..".\n"
			.."\n"
			.."Les bonus de "..CKWord("Précision", "Precision_rgb_fr").." se cumulent {bonus_stacks:%s} fois et lorsque la durée prend fin, un cumul est retiré et la durée est rafraîchie.\n"
			.."\n"
			..Dot_green.." Infliger des "..CKWord("Dégâts", "Damage_rgb_fr").." aux ennemis "..CKWord("Marqués", "Psy_Mark_rgb_fr").." rafraîchit la durée du talent.\n"
			..Dot_nc.." Cibles valides : Brutes, Ritualiste, Traqueurs, Tireur Scab, Ragers, Mitrailleurs, Tireurs au fusil à pompe, Mitrailleur à plasma et Mauler.",
		["zh-tw"] = "每秒對 {radius:%s} 公尺內的敵人有機率施加"..CKWord("標記", "Psy_Mark_rgb_tw").."。\n"
			.."\n"
			.."擊殺"..CKWord("標記", "Psy_Mark_rgb_tw").." 敵人會獲得：\n"
			..Dot_green.." 每秒恢復 "..CNumb("10%", "pc_10_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，持續 {move_speed_duration:%s} 秒，最多恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."，\n"
			..Dot_green.." {move_speed:%s} 移動速度持續 {move_speed_duration:%s} 秒，\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." 層"..CKWord("精準", "Precision_rgb_tw").." 持續 {bonus_duration} 秒。\n"
			.."\n"
			.."每層"..CKWord("精準", "Precision_rgb_tw").." 提供：\n"
			..Dot_green.." {base_damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."，\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("暴擊傷害", "Crit_dmg_r_rgb_tw").." 和\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。\n"
			.."\n"
			..CKWord("精準", "Precision_rgb_tw").." 最多堆疊 {bonus_stacks:%s} 層。持續時間結束時移除一層並刷新剩餘層的持續時間。\n"
			.."\n"
			..Dot_green.." 對"..CKWord("標記", "Psy_Mark_rgb_tw").."敵人造成"..CKWord("傷害", "Damage_rgb_tw").."時，刷新天賦持續時間。\n"
			..Dot_nc.." 有效目標：格鬥兵、渣滓祭司、潛行者、血痂射手、狂怒者、砲手、霰彈槍手、電漿槍手和重錘兵。",
		["zh-cn"] = "每秒，{radius:%s}米内的敌人有几率被"..CKWord("标记", "Psy_Mark_rgb_zh_cn").."。\n"
			.."\n"
			.."击杀"..CKWord("标记", "Psy_Mark_rgb_zh_cn").."敌人时：\n"
			..Dot_green.." 每秒恢复"..CNumb("10%", "pc_10_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."，在{move_speed_duration:%s}秒内最多恢复{toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."，\n"
			..Dot_green.." 获得{move_speed:%s}移动速度，持续{move_speed_duration:%s}秒，\n"
			..Dot_green.." 获得"..CNumb("1", "n_1_rgb").."层"..CKWord("精准", "Precision_rgb_zh_cn").."，持续{bonus_duration}秒。\n"
			.."\n"
			.."每层"..CKWord("精准", "Precision_rgb_zh_cn").."提供：\n"
			..Dot_green.." {base_damage:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."，\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("暴击伤害", "Crit_dmg_r_rgb_zh_cn").."和\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。\n"
			.."\n"
			.." "..CKWord("精准", "Precision_rgb_zh_cn").."奖励叠加{bonus_stacks:%s}次，持续时间结束时，移除一层并刷新剩余层数的持续时间。\n"
			.."\n"
			..Dot_green.." 对"..CKWord("标记", "Psy_Mark_rgb_zh_cn").."敌人造成"..CKWord("伤害", "Damage_rgb_zh_cn").."会刷新此天赋的持续时间。\n"
			..Dot_nc.." 有效目标：壮汉、仪式者、猎手、斯卡布射手、狂战士、枪手、霰弹枪手、等离子枪手和行刑者。",
		de = "Jede Sekunde haben Gegner innerhalb von {radius:%s} Metern eine Chance, "..CKWord("markiert", "Psy_Mark_rgb_de").." zu werden.\n"
			.."\n"
			.."Beim Töten eines "..CKWord("markierten", "Psy_Mark_rgb_de").." Gegners:\n"
			..Dot_green.." "..CNumb("10%", "pc_10_rgb").." "..CKWord("Widerstand", "Toughness_rgb_de").." pro Sekunde wiederhergestellt, bis zu {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." über {move_speed_duration:%s} Sekunden,\n"
			..Dot_green.." {move_speed:%s} Bewegungsgeschwindigkeit für {move_speed_duration:%s} Sekunden gewährt,\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." Stapel "..CKWord("Präzision", "Precision_rgb_de").." für {bonus_duration} Sekunden hinzugefügt.\n"
			.."\n"
			.."Jeder "..CKWord("Präzision", "Precision_rgb_de").."-Stapel gewährt:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Schaden", "Damage_rgb_de")..",\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("Kritischer Schaden", "Crit_dmg_r_rgb_de").." und\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Schwachstellen-Schaden", "Weakspot_dmg_rgb_de")..".\n"
			.."\n"
			.." "..CKWord("Präzision", "Precision_rgb_de").."-Boni stapeln {bonus_stacks:%s} Mal. Wenn die Dauer endet, wird ein Stapel entfernt und die Dauer der verbleibenden Stapel aufgefrischt.\n"
			.."\n"
			..Dot_green.." Das Zufügen von "..CKWord("Schaden", "Damage_rgb_de").." an "..CKWord("markierte", "Psy_Mark_rgb_de").." Gegner frischt die Talentdauer auf.\n"
			..Dot_nc.." Gültige Ziele: Schläger, Ritualist, Späher, Scab-Schütze, Rager, Schützen, Schrotflintenschützen, Plasmawerfer und Folterer.",
		it = "Ogni secondo, i nemici entro {radius:%s} metri hanno una possibilità di essere "..CKWord("Segnati", "Psy_Mark_rgb_it")..".\n"
			.."\n"
			.."Uccidendo un nemico "..CKWord("Segnato", "Psy_Mark_rgb_it")..":\n"
			..Dot_green.." "..CNumb("10%", "pc_10_rgb").." di "..CKWord("Robustezza", "Toughness_rgb_it").." ripristinata al secondo, fino a {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." in {move_speed_duration:%s} secondi,\n"
			..Dot_green.." {move_speed:%s} di velocità di movimento concessa per {move_speed_duration:%s} secondi,\n"
			..Dot_green.." viene aggiunto "..CNumb("1", "n_1_rgb").." accumulo di "..CKWord("Precisione", "Precision_rgb_it").." per {bonus_duration} secondi.\n"
			.."\n"
			.."Ogni accumulo di "..CKWord("Precisione", "Precision_rgb_it").." concede:\n"
			..Dot_green.." {base_damage:%s} di "..CKWord("Danno", "Damage_rgb_it")..",\n"
			..Dot_green.." {crit_damage:%s} di "..CKWord("Danno critico", "Crit_dmg_r_rgb_it").." e\n"
			..Dot_green.." {weakspot_damage:%s} di "..CKWord("Danno a punto debole", "Weakspot_dmg_rgb_it")..".\n"
			.."\n"
			.."I bonus di "..CKWord("Precisione", "Precision_rgb_it").." si accumulano {bonus_stacks:%s} volte. Quando la durata termina, un accumulo viene rimosso e la durata di quelli rimanenti viene rinfrescata.\n"
			.."\n"
			..Dot_green.." Infliggere "..CKWord("Danno", "Damage_rgb_it").." ai nemici "..CKWord("Segnati", "Psy_Mark_rgb_it").." rinfresca la durata del talento.\n"
			..Dot_nc.." Bersagli validi: Bruti, Ritualista, Inseguitore, Tiratore Scab, Rager, Mitraglieri, Fucilieri a pompa, Lanciatore al plasma e Mauler.",
		ja = "半径{radius:%s}メートル以内の敵は毎秒、"..CKWord("マーク", "Psy_Mark_rgb_ja").."される確率がある。\n"
			.."\n"
			.."マークされた敵を倒すと：\n"
			..Dot_green.." 毎秒"..CNumb("10%", "pc_10_rgb").."の"..CKWord("耐久", "Toughness_rgb_ja").."を回復、{move_speed_duration:%s}秒間で最大{toughness:%s}"..CKWord("耐久", "Toughness_rgb_ja").."まで、\n"
			..Dot_green.." {move_speed:%s}の移動速度を{move_speed_duration:%s}秒間獲得、\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").."スタックの"..CKWord("精密", "Precision_rgb_ja").."を{bonus_duration}秒間追加。\n"
			.."\n"
			.." "..CKWord("精密", "Precision_rgb_ja").."スタック毎に：\n"
			..Dot_green.." {base_damage:%s} "..CKWord("ダメージ", "Damage_rgb_ja").."増加、\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("クリティカルダメージ", "Crit_dmg_r_rgb_ja").."増加、\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."増加。\n"
			.."\n"
			.." "..CKWord("精密", "Precision_rgb_ja").."ボーナスは{bonus_stacks:%s}スタックまで。持続時間終了時、1スタック消費され、残りのスタックの持続時間がリフレッシュされる。\n"
			.."\n"
			..Dot_green.." マークされた敵に"..CKWord("ダメージ", "Damage_rgb_ja").."を与えるとタレントの持続時間がリフレッシュされる。\n"
			..Dot_nc.." 有効な対象：ブルーザー、リチュアリスト、ストーカー、スカブ・シューター、レイジャー、ガンナー、ショットガンナー、プラズマガンナー、モーラー。",
		ko = "매초 반경 {radius:%s}미터 내의 적이 "..CKWord("표식", "Psy_Mark_rgb_ko").."될 확률이 있습니다.\n"
			.."\n"
			.." "..CKWord("표식", "Psy_Mark_rgb_ko").."된 적 처치 시:\n"
			..Dot_green.." 초당 "..CNumb("10%", "pc_10_rgb").."의 "..CKWord("인내", "Toughness_rgb_ko").." 회복, {move_speed_duration:%s}초 동안 최대 {toughness:%s} "..CKWord("인내", "Toughness_rgb_ko").."까지,\n"
			..Dot_green.." {move_speed:%s} 이동 속도를 {move_speed_duration:%s}초간 획득,\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." 중첩의 "..CKWord("정밀도", "Precision_rgb_ko").."를 {bonus_duration}초간 획득.\n"
			.."\n"
			.."각 "..CKWord("정밀도", "Precision_rgb_ko").." 중첩은 다음을 제공합니다:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("피해", "Damage_rgb_ko")..",\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("크리티컬 피해", "Crit_dmg_r_rgb_ko").." 및\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko")..".\n"
			.."\n"
			.." "..CKWord("정밀도", "Precision_rgb_ko").." 보너스는 {bonus_stacks:%s}회 중첩되며, 지속 시간이 끝나면 중첩이 하나 제거되고 나머지 중첩의 지속 시간이 갱신됩니다.\n"
			.."\n"
			..Dot_green.." "..CKWord("표식", "Psy_Mark_rgb_ko").."된 적에게 "..CKWord("피해", "Damage_rgb_ko").."를 주면 특성의 지속 시간이 갱신됩니다.\n"
			..Dot_nc.." 유효 대상: 브루저, 리추얼리스트, 스토커, 스캡 슈터, 레이저, 거너, 샷거너, 플라즈마 거너, 몰러.",
		pl = "Co sekundę, wrogowie w promieniu {radius:%s} metrów mają szansę zostać "..CKWord("Oznaczonymi", "Psy_Mark_rgb_pl")..".\n"
			.."\n"
			.."Po zabiciu "..CKWord("Oznaczonego", "Psy_Mark_rgb_pl").." wroga:\n"
			..Dot_green.." "..CNumb("10%", "pc_10_rgb").." "..CKWord("Odporności", "Toughness_rgb_pl").." przywracane na sekundę, do {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." przez {move_speed_duration:%s} sekund,\n"
			..Dot_green.." {move_speed:%s} prędkości ruchu na {move_speed_duration:%s} sekund,\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." ładunek "..CKWord("Precyzji", "Precision_rgb_pl").." dodawany na {bonus_duration} sekund.\n"
			.."\n"
			.."Każdy ładunek "..CKWord("Precyzji", "Precision_rgb_pl").." daje:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl")..",\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("Obrażeń krytycznych", "Crit_dmg_r_rgb_pl").." i\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Obrażeń w słaby punkt", "Weakspot_dmg_rgb_pl")..".\n"
			.."\n"
			.."Bonusy "..CKWord("Precyzji", "Precision_rgb_pl").." kumulują się {bonus_stacks:%s} razy. Gdy czas trwania minie, jeden ładunek jest usuwany, a czas trwania pozostałych jest odświeżany.\n"
			.."\n"
			..Dot_green.." Zadawanie "..CKWord("Obrażeń", "Damage_rgb_pl").." "..CKWord("Oznaczonym", "Psy_Mark_rgb_pl").." wrogom odświeża czas trwania talentu.\n"
			..Dot_nc.." Prawidłowe cele: Brutes, Ritualist, Stalkers, Scab Shooter, Ragers, Gunners, Shotgunners, Plasma Gunner i Mauler.",
		["pt-br"] = "A cada segundo, inimigos em um raio de {radius:%s} metros têm uma chance de serem "..CKWord("Marcados", "Psy_Mark_rgb_pt_br")..".\n"
			.."\n"
			.."Ao matar um inimigo "..CKWord("Marcado", "Psy_Mark_rgb_pt_br")..":\n"
			..Dot_green.." "..CNumb("10%", "pc_10_rgb").." de "..CKWord("Resistência", "Toughness_rgb_pt_br").." recuperado por segundo, até {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." ao longo de {move_speed_duration:%s} segundos,\n"
			..Dot_green.." {move_speed:%s} de Velocidade de Movimento concedida por {move_speed_duration:%s} segundos,\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." acúmulo de "..CKWord("Precisão", "Precision_rgb_pt_br").." é adicionado por {bonus_duration} segundos.\n"
			.."\n"
			.."Cada acúmulo de "..CKWord("Precisão", "Precision_rgb_pt_br").." concede:\n"
			..Dot_green.." {base_damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br")..",\n"
			..Dot_green.." {crit_damage:%s} de "..CKWord("Dano crítico", "Crit_dmg_r_rgb_pt_br").." e\n"
			..Dot_green.." {weakspot_damage:%s} de "..CKWord("Dano em ponto fraco", "Weakspot_dmg_rgb_pt_br")..".\n"
			.."\n"
			.."Os bônus de "..CKWord("Precisão", "Precision_rgb_pt_br").." acumulam {bonus_stacks:%s} vezes. Quando a duração termina, um acúmulo é removido e a duração dos restantes é atualizada.\n"
			.."\n"
			..Dot_green.." Causar "..CKWord("Dano", "Damage_rgb_pt_br").." a inimigos "..CKWord("Marcados", "Psy_Mark_rgb_pt_br").." atualiza a duração do Talento.\n"
			..Dot_nc.." Alvos válidos: Brigões, Ritualista, Espreitadores, Atirador Scab, Enfurecidos, Atiradores, Escopeteiros, Atirador de Plasma e Esfolador.",
		es = "Cada segundo, los enemigos en un radio de {radius:%s} metros tienen una probabilidad de ser "..CKWord("Marcados", "Psy_Mark_rgb_es")..".\n"
			.."\n"
			.."Al matar a un enemigo "..CKWord("Marcado", "Psy_Mark_rgb_es")..":\n"
			..Dot_green.." "..CNumb("10%", "pc_10_rgb").." de "..CKWord("Robustez", "Toughness_rgb_es").." restaurado por segundo, hasta {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." durante {move_speed_duration:%s} segundos,\n"
			..Dot_green.." {move_speed:%s} de Velocidad de Movimiento durante {move_speed_duration:%s} segundos,\n"
			..Dot_green.." se añade "..CNumb("1", "n_1_rgb").." acumulación de "..CKWord("Precisión", "Precision_rgb_es").." durante {bonus_duration} segundos.\n"
			.."\n"
			.."Cada acumulación de "..CKWord("Precisión", "Precision_rgb_es").." otorga:\n"
			..Dot_green.." {base_damage:%s} de "..CKWord("Daño", "Damage_rgb_es")..",\n"
			..Dot_green.." {crit_damage:%s} de "..CKWord("Daño crítico", "Crit_dmg_r_rgb_es").." y\n"
			..Dot_green.." {weakspot_damage:%s} de "..CKWord("Daño en punto débil", "Weakspot_dmg_rgb_es")..".\n"
			.."\n"
			.."Los bonificaciones de "..CKWord("Precisión", "Precision_rgb_es").." se acumulan {bonus_stacks:%s} veces. Cuando la duración termina, se elimina una acumulación y se refresca la duración de las restantes.\n"
			.."\n"
			..Dot_green.." Infligir "..CKWord("Daño", "Damage_rgb_es").." a enemigos "..CKWord("Marcados", "Psy_Mark_rgb_es").." refresca la duración del talento.\n"
			..Dot_nc.." Objetivos válidos: Brutos, Ritualista, Acechadores, Tirador Scab, Ragers, Artilleros, Escopeteros, Cañón de plasma y Atormentador.",
	},
	--[+ KEYSTONE 3-1 - Perfectionism +]--	09.06.2026
	["loc_talent_psyker_mark_increased_max_stacks_description"] = { -- stacks_previous: 15, stacks_after: 25, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." to Maximum "..CKWord("Precision", "Precision_rgb").." Bonus Stacks. Increases from {stacks_previous:%s} to {stacks_after:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." к максимуму зарядов "..CKWord("меткости", "Precision_rgb_ru")..". Увеличивается с {stacks_previous:%s} до {stacks_after:%s}.", -- Перфекционизм
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." au maximum des bonus de "..CKWord("Précision", "Precision_rgb_fr")..". Passe de {stacks_previous:%s} à {stacks_after:%s}.",
		["zh-tw"] = Dot_green.." "..CKWord("精準", "Precision_rgb_tw").."最大層數 "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").."，從 {stacks_previous:%s} 提高至 {stacks_after:%s}。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." 最大"..CKWord("精准", "Precision_rgb_zh_cn").."奖励层数。从{stacks_previous:%s}提高至{stacks_after:%s}。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." zum Maximum der "..CKWord("Präzision", "Precision_rgb_de").."-Boni. Erhöht von {stacks_previous:%s} auf {stacks_after:%s}.",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." al massimo dei bonus di "..CKWord("Precisione", "Precision_rgb_it")..". Aumenta da {stacks_previous:%s} a {stacks_after:%s}.",
		ja = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." "..CKWord("精密", "Precision_rgb_ja").."ボーナスの最大スタック数。{stacks_previous:%s}から{stacks_after:%s}に増加。",
		ko = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." 최대 "..CKWord("정밀도", "Precision_rgb_ko").." 보너스 중첩. {stacks_previous:%s}에서 {stacks_after:%s}(으)로 증가합니다.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." do maksymalnych bonusów "..CKWord("Precyzji", "Precision_rgb_pl")..". Zwiększa z {stacks_previous:%s} do {stacks_after:%s}.",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." ao máximo de acúmulos de bônus de "..CKWord("Precisão", "Precision_rgb_pt_br")..". Aumenta de {stacks_previous:%s} para {stacks_after:%s}.",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." a las acumulaciones máximas de bonificación de "..CKWord("Precisión", "Precision_rgb_es")..". Aumenta de {stacks_previous:%s} a {stacks_after:%s}.",
	},
	--[+ KEYSTONE 3-2 - Purloin Providence +]--	09.06.2026
	["loc_talent_psyker_mark_kills_can_vent_description"] = { -- talent_name: Disrupt Destiny, chance: 20%, warp_charge_percentage: 15%, +colors
		en = Dot_green.." {chance:%s} chance to instantly Quell {warp_charge_percentage:%s} of your "..CKWord("Peril", "Peril_rgb").." on killing enemies "..CKWord("Marked", "Psy_Mark_rgb").." {talent_name:%s}.",
		ru = Dot_green.." {chance:%s} шанс, что вы моментально подавите {warp_charge_percentage:%s} вашей "..CKWord("опасности", "opasnosti_rgb_ru").." при убийстве врага, "..CKWord("отмеченного", "Psy_Mark_ogo_rgb_ru").." талантом {talent_name:%s}.", -- Похищение провидения -- руоф Похищенное провидение
		fr = Dot_green.." {chance:%s} de chance d'apaiser instantanément {warp_charge_percentage:%s} de votre "..CKWord("Péril", "Peril_rgb_fr").." en tuant des ennemis "..CKWord("Marqués", "Psy_Mark_rgb_fr").." par {talent_name:%s}.",
		["zh-tw"] = Dot_green.." 擊殺受 {talent_name:%s} "..CKWord("標記", "Psy_Mark_rgb_tw").."的敵人時，有 {chance:%s} 機率立即平息 {warp_charge_percentage:%s} "..CKWord("反噬", "Peril_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 击杀被{talent_name:%s}"..CKWord("标记", "Psy_Mark_rgb_zh_cn").."的敌人时，有{chance:%s}几率立即压制{warp_charge_percentage:%s}的"..CKWord("危机值", "Peril_rgb_zh_cn").."。",
		de = Dot_green.." {chance:%s} Chance, sofort {warp_charge_percentage:%s} Ihrer "..CKWord("Gefahr", "Peril_rgb_de").." zu unterdrücken, wenn Sie Gegner töten, die von {talent_name:%s} "..CKWord("markiert", "Psy_Mark_rgb_de").." sind.",
		it = Dot_green.." {chance:%s} probabilità di placare istantaneamente {warp_charge_percentage:%s} del tuo "..CKWord("Pericolo", "Peril_rgb_it").." uccidendo nemici "..CKWord("Segnati", "Psy_Mark_rgb_it").." da {talent_name:%s}.",
		ja = Dot_green.." {talent_name:%s}により"..CKWord("マーク", "Psy_Mark_rgb_ja").."された敵を倒すと、{chance:%s}の確率で即座に"..CKWord("危険", "Peril_rgb_ja").."を{warp_charge_percentage:%s}軽減する。",
		ko = Dot_green.." {talent_name:%s}에 의해 "..CKWord("표식", "Psy_Mark_rgb_ko").."된 적 처치 시 {chance:%s} 확률로 "..CKWord("위험", "Peril_rgb_ko").."의 {warp_charge_percentage:%s}을(를) 즉시 진압합니다.",
		pl = Dot_green.." {chance:%s} szansy na natychmiastowe stłumienie {warp_charge_percentage:%s} twojego "..CKWord("Zagrożenia", "Peril_rgb_pl").." przy zabijaniu wrogów "..CKWord("Oznaczonych", "Psy_Mark_rgb_pl").." przez {talent_name:%s}.",
		["pt-br"] = Dot_green.." {chance:%s} de chance de aquietar instantaneamente {warp_charge_percentage:%s} do seu "..CKWord("Perigo", "Peril_rgb_pt_br").." ao matar inimigos "..CKWord("Marcados", "Psy_Mark_rgb_pt_br").." por {talent_name:%s}.",
		es = Dot_green.." {chance:%s} de probabilidad de apaciguar instantáneamente {warp_charge_percentage:%s} de tu "..CKWord("Peligro", "Peril_rgb_es").." al matar enemigos "..CKWord("Marcados", "Psy_Mark_rgb_es").." por {talent_name:%s}.",
	},
	--[+ KEYSTONE 3-3 - Lingering Influence +]--	09.06.2026
	["loc_talent_psyker_mark_increased_duration_description"] = { -- talent_name: Disrupt Destiny, duration_previous: 15, duration_after: 10, s->seconds
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." seconds to the duration of "..CKWord("Precision", "Precision_rgb").." Stacks. Increases from {duration_previous:%s} to {duration_after:%s} seconds.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." секунд к длительности зарядов "..CKWord("меткости", "Precision_rgb_ru")..". Увеличивается с {duration_previous:%s} до {duration_after:%s} секунд.", -- Длительное влияние -- руоф Длящееся влияние
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." secondes à la durée des cumuls de "..CKWord("Précision", "Precision_rgb_fr")..". Passe de {duration_previous:%s} à {duration_after:%s} secondes.",
		["zh-tw"] = Dot_green.." "..CKWord("精準", "Precision_rgb_tw").."層數持續時間 "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." 秒，從 {duration_previous:%s} 提高至 {duration_after:%s} 秒。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").."秒"..CKWord("精准", "Precision_rgb_zh_cn").."层数的持续时间。从{duration_previous:%s}秒提高至{duration_after:%s}秒。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." Sekunden zur Dauer der "..CKWord("Präzision", "Precision_rgb_de").."-Stapel. Erhöht von {duration_previous:%s} auf {duration_after:%s} Sekunden.",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." secondi alla durata degli accumuli di "..CKWord("Precisione", "Precision_rgb_it")..". Aumenta da {duration_previous:%s} a {duration_after:%s} secondi.",
		ja = Dot_green.." "..CKWord("精密", "Precision_rgb_ja").."スタックの持続時間が"..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").."秒延長。{duration_previous:%s}秒から{duration_after:%s}秒に増加。",
		ko = Dot_green.." "..CKWord("정밀도", "Precision_rgb_ko").." 중첩 지속 시간이 "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").."초 증가합니다. {duration_previous:%s}초에서 {duration_after:%s}초로 증가합니다.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." sekund do czasu trwania ładunków "..CKWord("Precyzji", "Precision_rgb_pl")..". Zwiększa z {duration_previous:%s} do {duration_after:%s} sekund.",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." segundos à duração dos acúmulos de "..CKWord("Precisão", "Precision_rgb_pt_br")..". Aumenta de {duration_previous:%s} para {duration_after:%s} segundos.",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." segundos a la duración de las acumulaciones de "..CKWord("Precisión", "Precision_rgb_es")..". Aumenta de {duration_previous:%s} a {duration_after:%s} segundos.",
	},
	--[+ KEYSTONE 3-4 - Cruel Fortune +]--	09.06.2026
	["loc_talent_psyker_mark_weakspot_stacks_description"] = { -- stacks: 2 talent_name: Disrupt Destiny, +colors
		en = Dot_green.." "..CKWord("Weakspot", "Weakspot_rgb").." Kills grant {stacks:%s} additional Stacks of {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Procs on Melee, Ranged, "..CKWord("Assail", "Assail_rgb").." or "..CKWord("Brain Rupture", "Brain_rupture_rgb").." attacks.",
		ru = Dot_green.." Убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." дают {stacks:%s} дополнительных заряда таланта {talent_name:%s}.\n" -- Жестокая судьба
			.."\n"
			..Dot_nc.." Срабатывает от атак ближнего и дальнего боя, от блица "..CKWord("Нападение", "Assail_rgb_ru").." и "..CKWord("Разрыв мозга", "Brain_rupture_rgb_ru")..".",
		fr = Dot_green.." Les éliminations sur "..CKWord("Points faibles", "Weakspot_rgb_fr").." accordent {stacks:%s} cumuls supplémentaires de {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Se déclenche sur les attaques de mêlée, à distance, "..CKWord("Assail", "Assail_rgb_fr").." ou "..CKWord("Brain Rupture", "Brain_rupture_rgb_fr")..".",
		["zh-tw"] = Dot_green.." "..CKWord("弱點", "Weakspot_rgb_tw").." 擊殺額外獲得 {stacks:%s} 層 {talent_name:%s}。\n"
			.."\n"
			..Dot_nc.." 可由近戰、遠程、"..CKWord("靈能攻擊", "Assail_rgb_tw").."或"..CKWord("顱腦崩裂", "Brain_rupture_rgb_tw").."觸發。",
		["zh-cn"] = Dot_green.." "..CKWord("弱点", "Weakspot_rgb_zh_cn").."击杀给予{stacks:%s}额外{talent_name:%s}层数。\n"
			.."\n"
			..Dot_nc.." 触发近战、远程、"..CKWord("攻击", "Assail_rgb_zh_cn").."或"..CKWord("脑部破裂", "Brain_rupture_rgb_zh_cn").."攻击。",
		de = Dot_green.." "..CKWord("Schwachstellen", "Weakspot_rgb_de").."-Tötungen gewähren {stacks:%s} zusätzliche Stapel von {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Procs bei Nahkampf-, Fernkampf-, "..CKWord("Assail", "Assail_rgb_de").."- oder "..CKWord("Brain Rupture", "Brain_rupture_rgb_de").."-Angriffen.",
		it = Dot_green.." Le uccisioni sui "..CKWord("Punti deboli", "Weakspot_rgb_it").." concedono {stacks:%s} accumuli aggiuntivi di {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Si attiva con attacchi corpo a corpo, a distanza, "..CKWord("Assail", "Assail_rgb_it").." o "..CKWord("Brain Rupture", "Brain_rupture_rgb_it")..".",
		ja = Dot_green.." "..CKWord("弱点", "Weakspot_rgb_ja").."キルで追加で{stacks:%s}の{talent_name:%s}スタックを得る。\n"
			.."\n"
			..Dot_nc.." 近接、遠隔、"..CKWord("アセイル", "Assail_rgb_ja").."、"..CKWord("ブレインラプチャー", "Brain_rupture_rgb_ja").."攻撃で発動。",
		ko = Dot_green.." "..CKWord("약점", "Weakspot_rgb_ko").." 처치 시 {stacks:%s} 추가 {talent_name:%s} 중첩을 얻습니다.\n"
			.."\n"
			..Dot_nc.." 근접, 원거리, "..CKWord("어세일", "Assail_rgb_ko")..", "..CKWord("브레인 랩쳐", "Brain_rupture_rgb_ko").." 공격으로 발동합니다.",
		pl = Dot_green.." Zabicia w "..CKWord("Słabe punkty", "Weakspot_rgb_pl").." dają {stacks:%s} dodatkowych ładunków {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Działa przy atakach wręcz, dystansowych, "..CKWord("Assail", "Assail_rgb_pl").." lub "..CKWord("Brain Rupture", "Brain_rupture_rgb_pl")..".",
		["pt-br"] = Dot_green.." Mortes em "..CKWord("Pontos fracos", "Weakspot_rgb_pt_br").." concedem {stacks:%s} acúmulos adicionais de {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Ativa com ataques corpo a corpo, à distância, "..CKWord("Assail", "Assail_rgb_pt_br").." ou "..CKWord("Brain Rupture", "Brain_rupture_rgb_pt_br")..".",
		es = Dot_green.." Las muertes en "..CKWord("Puntos débiles", "Weakspot_rgb_es").." otorgan {stacks:%s} acumulaciones adicionales de {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Se activa con ataques cuerpo a cuerpo, a distancia, "..CKWord("Assail", "Assail_rgb_es").." o "..CKWord("Brain Rupture", "Brain_rupture_rgb_es")..".",
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Soulstealer +]--	09.06.2026
	["loc_talent_psyker_toughness_on_warp_kill_desc"] = { -- toughness: 7.5%., +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes on Warp Attack Kill.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при убийстве врага варп-атакой.", -- Похититель душ -- руоф Похититель души
		fr = Dot_green.." {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." restaurée par élimination avec une attaque Warp.",
		["zh-tw"] = Dot_green.." 以亞空間攻擊擊殺時恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 以亚空间攻击击杀敌人时，恢复{toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
		de = Dot_green.." {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." wird bei Tötungen mit Warp-Angriffen wiederhergestellt.",
		it = Dot_green.." {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." ripristinata uccidendo con attacchi Warp.",
		ja = Dot_green.." ワープ攻撃で敵を倒すと{toughness:%s}の"..CKWord("耐久", "Toughness_rgb_ja").."を回復。",
		ko = Dot_green.." 워프 공격으로 적 처치 시 {toughness:%s}의 "..CKWord("인내", "Toughness_rgb_ko").."를 회복합니다.",
		pl = Dot_green.." {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." odnawiane przy zabiciu wroga atakiem Warpu.",
		["pt-br"] = Dot_green.." {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." recuperado ao matar com ataque Warp.",
		es = Dot_green.." {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." restaurada al matar con un ataque disforme.",
	},
	--[+ Passive 2 - Mettle +]--	09.06.2026
	["loc_talent_psyker_crits_regen_toughness_speed_description"] = { -- toughness: 10%, movement_speed: +5%, seconds: 4, stacks: 3, s->seconds, +colors
		en = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored per second on "..CKWord("Critical Hits", "Crit_hits_rgb")..", up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {seconds:%s} seconds.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} Movement Speed for {seconds:%s} seconds on "..CKWord("Critical Hits", "Crit_hits_rgb")..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			..Dot_green.." Can generate multiple Stacks per "..CKWord("Critical Attack", "Crit_Attk_rgb").." when "..CKWord("Cleaving", "Cleaving_rgb")..".\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..", вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за {seconds:%s} секунды.\n" -- Ретивость
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} к скорости движения на {seconds:%s} секунды при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..".\n"
			..Dot_nc.." Суммируется {stacks:%s} раза.\n"
			..Dot_green.." Можно получить несколько зарядов за "..CKWord("критический удар", "krit_udar_rgb_ru").." при пробивании нескольких врагов.\n"
			..CPhrs("Can_be_refr"),
		fr = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." restaurée par seconde sur les "..CKWord("Coups critiques", "Crit_hits_rgb_fr")..", jusqu'à {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." sur {seconds:%s} secondes.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} de vitesse de déplacement pendant {seconds:%s} secondes sur les "..CKWord("Coups critiques", "Crit_hits_rgb_fr")..".\n"
			..Dot_nc.." Se cumule {stacks:%s} fois.\n"
			..Dot_green.." Peut générer plusieurs cumuls par "..CKWord("Attaque critique", "Crit_Attk_rgb_fr").." lors d'un "..CKWord("Transpercement", "Cleaving_rgb_fr")..".\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = Dot_green.." "..CKWord("暴擊", "Crit_hits_rgb_tw").."時，每秒恢復 "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，在 {seconds:%s} 秒內最多恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." "..CKWord("暴擊", "Crit_hits_rgb_tw").."時獲得 {movement_speed:%s} 移動速度，持續 {seconds:%s} 秒。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			..Dot_green.." 以"..CKWord("致命一擊", "Crit_Attk_rgb_tw").."進行"..CKWord("順劈攻擊", "Cleaving_rgb_tw").."時，每次攻擊可產生多層。\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = Dot_green.." "..CKWord("暴击命中", "Crit_hits_rgb_zh_cn").."时，每秒恢复"..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."，在{seconds:%s}秒内最多恢复{toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." "..CKWord("暴击命中", "Crit_hits_rgb_zh_cn").."时，获得{movement_speed:%s}移动速度，持续{seconds:%s}秒。\n"
			..Dot_nc.." 叠加{stacks:%s}次。\n"
			..Dot_green.." "..CKWord("劈裂", "Cleaving_rgb_zh_cn").."时，每次"..CKWord("暴击攻击", "Crit_Attk_rgb_zh_cn").."可生成多个层数。\n"
			..CPhrs("Can_be_refr"),
		de = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Widerstand", "Toughness_rgb_de").." pro Sekunde bei "..CKWord("Kritischen Treffern", "Crit_hits_rgb_de").." wiederhergestellt, bis zu {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." über {seconds:%s} Sekunden.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} Bewegungsgeschwindigkeit für {seconds:%s} Sekunden bei "..CKWord("Kritischen Treffern", "Crit_hits_rgb_de")..".\n"
			..Dot_nc.." Stapelt {stacks:%s} Mal.\n"
			..Dot_green.." Kann mehrere Stapel pro "..CKWord("Kritischen Angriff", "Crit_Attk_rgb_de").." beim "..CKWord("Spalten", "Cleaving_rgb_de").." erzeugen.\n"
			..CPhrs("Can_be_refr"),
		it = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." di "..CKWord("Robustezza", "Toughness_rgb_it").." ripristinata al secondo sui "..CKWord("Colpi critici", "Crit_hits_rgb_it")..", fino a {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." in {seconds:%s} secondi.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} di velocità di movimento per {seconds:%s} secondi sui "..CKWord("Colpi critici", "Crit_hits_rgb_it")..".\n"
			..Dot_nc.." Si accumula {stacks:%s} volte.\n"
			..Dot_green.." Può generare accumuli multipli per "..CKWord("Attacco critico", "Crit_Attk_rgb_it").." quando si "..CKWord("Taglia", "Cleaving_rgb_it")..".\n"
			..CPhrs("Can_be_refr"),
		ja = Dot_green.." "..CKWord("クリティカルヒット", "Crit_hits_rgb_ja").."時、毎秒"..CNumb("2.5%", "pc_2_5_rgb").."の"..CKWord("耐久", "Toughness_rgb_ja").."を回復、{seconds:%s}秒間で最大{toughness:%s}"..CKWord("耐久", "Toughness_rgb_ja").."まで。\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." "..CKWord("クリティカルヒット", "Crit_hits_rgb_ja").."時、{movement_speed:%s}の移動速度を{seconds:%s}秒間獲得。\n"
			..Dot_nc.." {stacks:%s}スタックまで。\n"
			..Dot_green.." "..CKWord("薙ぎ払い", "Cleaving_rgb_ja").."時、"..CKWord("クリティカル攻撃", "Crit_Attk_rgb_ja").."毎に複数スタック生成可能。\n"
			..CPhrs("Can_be_refr"),
		ko = Dot_green.." "..CKWord("크리티컬 히트", "Crit_hits_rgb_ko").." 시 초당 "..CNumb("2.5%", "pc_2_5_rgb").."의 "..CKWord("인내", "Toughness_rgb_ko").."를 회복, {seconds:%s}초 동안 최대 {toughness:%s} "..CKWord("인내", "Toughness_rgb_ko").."까지.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." "..CKWord("크리티컬 히트", "Crit_hits_rgb_ko").." 시 {movement_speed:%s} 이동 속도를 {seconds:%s}초간 획득.\n"
			..Dot_nc.." {stacks:%s}회 중첩.\n"
			..Dot_green.." "..CKWord("관통", "Cleaving_rgb_ko").." 시 "..CKWord("크리티컬 공격", "Crit_Attk_rgb_ko").."당 여러 중첩 생성 가능.\n"
			..CPhrs("Can_be_refr"),
		pl = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Odporności", "Toughness_rgb_pl").." przywracane na sekundę przy "..CKWord("Krytycznych trafieniach", "Crit_hits_rgb_pl")..", do {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." przez {seconds:%s} sekund.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} prędkości ruchu na {seconds:%s} sekund przy "..CKWord("Krytycznych trafieniach", "Crit_hits_rgb_pl")..".\n"
			..Dot_nc.." Kumuluje się {stacks:%s} razy.\n"
			..Dot_green.." Może generować wiele ładunków na "..CKWord("Krytyczny atak", "Crit_Attk_rgb_pl").." podczas "..CKWord("rozłupywania", "Cleaving_rgb_pl")..".\n"
			..CPhrs("Can_be_refr"),
		["pt-br"] = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." de "..CKWord("Resistência", "Toughness_rgb_pt_br").." recuperado por segundo em "..CKWord("Golpes críticos", "Crit_hits_rgb_pt_br")..", até {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." ao longo de {seconds:%s} segundos.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} de Velocidade de Movimento por {seconds:%s} segundos em "..CKWord("Golpes críticos", "Crit_hits_rgb_pt_br")..".\n"
			..Dot_nc.." Acumula {stacks:%s} vezes.\n"
			..Dot_green.." Pode gerar múltiplos acúmulos por "..CKWord("Ataque crítico", "Crit_Attk_rgb_pt_br").." ao "..CKWord("Fender", "Cleaving_rgb_pt_br")..".\n"
			..CPhrs("Can_be_refr"),
		es = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." de "..CKWord("Robustez", "Toughness_rgb_es").." restaurado por segundo en "..CKWord("Golpes críticos", "Crit_hits_rgb_es")..", hasta {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." durante {seconds:%s} segundos.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} de Velocidad de Movimiento durante {seconds:%s} segundos en "..CKWord("Golpes críticos", "Crit_hits_rgb_es")..".\n"
			..Dot_nc.." Se acumula {stacks:%s} veces.\n"
			..Dot_green.." Puede generar múltiples acumulaciones por "..CKWord("Ataque crítico", "Crit_Attk_rgb_es").." al "..CKWord("Cortar", "Cleaving_rgb_es")..".\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 3 - Quietude +]--	09.06.2026
	["loc_talent_psyker_toughness_from_vent_and_gen_desc"] = { -- toughness: 5%, warp_charge: 10%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes for each {warp_charge:%s} of "..CKWord("Peril", "Peril_rgb").." Quelled or Generated.",
		ru = "{toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за каждые {warp_charge:%s} подавленной и набранной "..CKWord("опасности", "opasnosti_rgb_ru")..".", -- Спокойствие -- руоф Тишина
		fr = Dot_green.." {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." restaurée pour chaque {warp_charge:%s} de "..CKWord("Péril", "Peril_rgb_fr").." apaisé ou généré.",
		["zh-tw"] = Dot_green.." 每平息或產生 {warp_charge:%s} "..CKWord("反噬", "Peril_rgb_tw").."，恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 每压制或产生{warp_charge:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."，恢复{toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."。",
		de = Dot_green.." {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." für jeweils {warp_charge:%s} unterdrückte oder erzeugte "..CKWord("Gefahr", "Peril_rgb_de").." wiederhergestellt.",
		it = Dot_green.." {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." ripristinata per ogni {warp_charge:%s} di "..CKWord("Pericolo", "Peril_rgb_it").." placato o generato.",
		ja = Dot_green.." {warp_charge:%s}"..CKWord("危険", "Peril_rgb_ja").."を軽減または生成する毎に{toughness:%s}の"..CKWord("耐久", "Toughness_rgb_ja").."を回復。",
		ko = Dot_green.." {warp_charge:%s}의 "..CKWord("위험", "Peril_rgb_ko").."을 진압하거나 생성할 때마다 {toughness:%s}의 "..CKWord("인내", "Toughness_rgb_ko").."를 회복합니다.",
		pl = Dot_green.." {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." przywracane za każde {warp_charge:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl").." stłumionego lub wygenerowanego.",
		["pt-br"] = Dot_green.." {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." recuperado para cada {warp_charge:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br").." aquietado ou gerado.",
		es = Dot_green.." {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." restaurado por cada {warp_charge:%s} de "..CKWord("Peligro", "Peril_rgb_es").." apaciguado o generado.",
	},
	--[+ Passive 4 - Warp Expenditure +]--	09.06.2026
	["loc_talent_psyker_toughness_on_melee_description"] = { -- toughness: 15%, duration: 3, instant_toughness: 2.5%, +colors
		en = Dot_green.." "..CNumb("5", "pc_5_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored per second on Melee "..CKWord("Weakspot", "Weakspot_rgb").." Kills, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." restores instantly on successful Melee Attacks.\n"
			..Dot_red.." Procs once per Attack regardless of how many enemies have been hit.",
		ru = Dot_green.." "..CNumb("5%", "pc_5_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою, вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за {duration:%s} секунды.\n" -- Затраты варпа -- руоф Варп-затраты
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается моментально при успешной атаке в ближнем бою.\n"
			..Dot_red.." Срабатывает один раз за атаку, независимо от количества поражённых врагов.",
		fr = Dot_green.." "..CNumb("5%", "pc_5_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." restaurée par seconde sur les éliminations en mêlée sur "..CKWord("Points faibles", "Weakspot_rgb_fr")..", jusqu'à {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." sur {duration:%s} secondes.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." restaurée instantanément lors d'attaques de mêlée réussies.\n"
			..Dot_red.." Se déclenche une fois par attaque, quel que soit le nombre d'ennemis touchés.",
		["zh-tw"] = Dot_green.." 近戰"..CKWord("弱點", "Weakspot_rgb_tw").."擊殺時，每秒恢復 "..CNumb("5", "pc_5_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，在 {duration:%s} 秒內最多恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").." 在近戰攻擊命中時立即恢復。\n"
			..Dot_red.." 每次攻擊只觸發一次，無論擊中多少敵人。",
		["zh-cn"] = Dot_green.." 近战"..CKWord("弱点", "Weakspot_rgb_zh_cn").."击杀时，每秒恢复"..CNumb("5%", "pc_5_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."，在{duration:%s}秒内最多恢复{toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." 成功的近战攻击立即恢复{instant_toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			..Dot_red.." 每次攻击仅触发一次，无论击中多少敌人。",
		de = Dot_green.." "..CNumb("5%", "pc_5_rgb").." "..CKWord("Widerstand", "Toughness_rgb_de").." pro Sekunde bei Nahkampf-"..CKWord("Schwachstellen", "Weakspot_rgb_de").."-Tötungen, bis zu {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." über {duration:%s} Sekunden.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." wird sofort bei erfolgreichen Nahkampfangriffen wiederhergestellt.\n"
			..Dot_red.." Wird einmal pro Angriff ausgelöst, unabhängig davon, wie viele Gegner getroffen wurden.",
		it = Dot_green.." "..CNumb("5%", "pc_5_rgb").." di "..CKWord("Robustezza", "Toughness_rgb_it").." ripristinata al secondo sulle uccisioni corpo a corpo sui "..CKWord("Punti deboli", "Weakspot_rgb_it")..", fino a {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." in {duration:%s} secondi.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." ripristinata istantaneamente con attacchi corpo a corpo riusciti.\n"
			..Dot_red.." Si attiva una volta per attacco, indipendentemente dal numero di nemici colpiti.",
		ja = Dot_green.." 近接"..CKWord("弱点", "Weakspot_rgb_ja").."キル時、毎秒"..CNumb("5%", "pc_5_rgb").."の"..CKWord("耐久", "Toughness_rgb_ja").."を回復、{duration:%s}秒間で最大{toughness:%s}"..CKWord("耐久", "Toughness_rgb_ja").."まで。\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." 成功した近接攻撃で即座に{instant_toughness:%s}の"..CKWord("耐久", "Toughness_rgb_ja").."を回復。\n"
			..Dot_red.." 攻撃1回につき1回のみ発動。ヒットした敵の数に関わらない。",
		ko = Dot_green.." 근접 "..CKWord("약점", "Weakspot_rgb_ko").." 처치 시 초당 "..CNumb("5%", "pc_5_rgb").."의 "..CKWord("인내", "Toughness_rgb_ko").."를 회복, {duration:%s}초 동안 최대 {toughness:%s} "..CKWord("인내", "Toughness_rgb_ko").."까지.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." 성공적인 근접 공격 시 즉시 {instant_toughness:%s}의 "..CKWord("인내", "Toughness_rgb_ko").."를 회복합니다.\n"
			..Dot_red.." 공격당 한 번만 발동하며, 타격한 적 수에 관계없습니다.",
		pl = Dot_green.." "..CNumb("5%", "pc_5_rgb").." "..CKWord("Odporności", "Toughness_rgb_pl").." przywracane na sekundę przy zabójstwach wręcz w "..CKWord("Słabe punkty", "Weakspot_rgb_pl")..", do {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." przez {duration:%s} sekund.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." przywracane natychmiast przy udanych atakach wręcz.\n"
			..Dot_red.." Aktywuje się raz na atak, niezależnie od liczby trafionych wrogów.",
		["pt-br"] = Dot_green.." "..CNumb("5%", "pc_5_rgb").." de "..CKWord("Resistência", "Toughness_rgb_pt_br").." recuperado por segundo em mortes corpo a corpo em "..CKWord("Pontos fracos", "Weakspot_rgb_pt_br")..", até {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." ao longo de {duration:%s} segundos.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." recuperado instantaneamente em ataques corpo a corpo bem-sucedidos.\n"
			..Dot_red.." Ativa uma vez por ataque, independentemente de quantos inimigos foram atingidos.",
		es = Dot_green.." "..CNumb("5%", "pc_5_rgb").." de "..CKWord("Robustez", "Toughness_rgb_es").." restaurado por segundo en muertes cuerpo a cuerpo en "..CKWord("Puntos débiles", "Weakspot_rgb_es")..", hasta {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." durante {duration:%s} segundos.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." restaurado instantáneamente en ataques cuerpo a cuerpo exitosos.\n"
			..Dot_red.." Se activa una vez por ataque, independientemente de cuántos enemigos sean golpeados.",
	},
	--[+ Passive 5 - Perilous Combustion +]--	09.06.2026
	["loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"] = { -- stacks: 3, stack(s)->Stacks, +colors
		en = "Killing an Elite or a Specialist applies {stacks:%s} Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." to all enemies within a "..CNumb("4", "n_4_rgb").."-meter radius. Up to "..CNumb("31", "n_31_rgb").." Stacks on a target.\n"
			.."\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			..Dot_nc.." Ticks every "..CNumb("0.75", "n_0_75_rgb").." seconds.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Does proc on Elites or Specials killed by "..CKWord("Soulblaze", "Soulblaze_rgb")..", "..CKWord("Burn", "Burn_rgb").." or "..CKWord("Bleed", "Bleed_rgb").." ticks.\n"
			..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." vs Carapace.",
		ru = "Убийство элитного врага или специалиста накладывает {stacks:%s} заряда "..CKWord("горения души", "gorenia_dushi_rgb_ru").." на всех врагов в радиусе "..CNumb("4", "n_4_rgb").." метров от убитого. До "..CNumb("31", "n_31_rgb").." заряда на цель.\n" -- Опасное возгорание -- руоф Пагубное воспламенение
			.."\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			..Dot_nc.." Срабатывает каждые "..CNumb("0.75", "n_0_75_rgb").." секунды.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Может сработать при убийстве элитного врага или специалиста с помощью "..CKWord("горения души", "gorenia_dushi_rgb_ru")..", "..CKWord("горения", "gorenia_rgb_ru").." или "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".\n"
			..Dot_green.." Большой "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
		fr = "Tuer un Élite ou un Spécialiste applique {stacks:%s} cumuls de "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr").." à tous les ennemis dans un rayon de "..CNumb("4", "n_4_rgb").." mètres. Jusqu'à "..CNumb("31", "n_31_rgb").." cumuls sur une cible.\n"
			.."\n"
			..Dot_nc.." Dure "..CNumb("8", "n_8_rgb").." secondes.\n"
			..Dot_nc.." Tick toutes les "..CNumb("0.75", "n_0_75_rgb").." secondes.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Se déclenche sur les Élites ou Spécialistes tués par les ticks de "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr")..", de "..CKWord("Brûlure", "Burn_rgb_fr").." ou de "..CKWord("Saignement", "Bleed_rgb_fr")..".\n"
			..Dot_green.." "..CKWord("Dégâts", "Damage_rgb_fr").." très élevés contre armure.\n"
			..Dot_red.." "..CKWord("Dégâts", "Damage_rgb_fr").." très faibles contre Carapace.",
		["zh-tw"] = "擊殺精英或專家時，對其周圍 "..CNumb("4", "n_4_rgb").." 公尺內所有敵人施加 {stacks:%s} 層"..CKWord("靈魂之火", "Soulblaze_rgb_tw").."。每個目標最多 "..CNumb("31", "n_31_rgb").." 層。\n"
			.."\n"
			..Dot_nc.." 持續 "..CNumb("8", "n_8_rgb").." 秒。\n"
			..Dot_nc.." 每 "..CNumb("0.75", "n_0_75_rgb").." 秒跳動一次。\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." "..CKWord("靈魂之火", "Soulblaze_rgb_tw").."、"..CKWord("燃燒", "Burn_rgb_tw").."或"..CKWord("流血", "Bleed_rgb_tw").."的持續傷害擊殺精英或專家時也可觸發。\n"
			..Dot_green.." 對一般護甲"..CKWord("傷害", "Damage_rgb_tw").." 極高。\n"
			..Dot_red.." 對甲殼護甲造成的"..CKWord("傷害", "Damage_rgb_tw").."極低。",
		["zh-cn"] = "击杀精英或专家敌人时，对半径"..CNumb("4", "n_4_rgb").."米内所有敌人施加{stacks:%s}层"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."。单一目标最多"..CNumb("31", "n_31_rgb").."层。\n"
			.."\n"
			..Dot_nc.." 持续"..CNumb("8", "n_8_rgb").."秒。\n"
			..Dot_nc.." 每"..CNumb("0.75", "n_0_75_rgb").."秒跳动一次。\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." 若精英或专家死于"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."、"..CKWord("燃烧", "Burn_rgb_zh_cn").."或"..CKWord("流血", "Bleed_rgb_zh_cn").."的跳动，也会触发。\n"
			..Dot_green.." 对护甲造成极高"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_red.." 对甲壳甲"..CKWord("伤害", "Damage_rgb_zh_cn").."极低。",
		de = "Das Töten eines Elites oder Spezialisten wendet {stacks:%s} Stapel "..CKWord("Seelenbrand", "Soulblaze_rgb_de").." auf alle Gegner in einem Radius von "..CNumb("4", "n_4_rgb").." Metern an. Bis zu "..CNumb("31", "n_31_rgb").." Stapel auf einem Ziel.\n"
			.."\n"
			..Dot_nc.." Hält "..CNumb("8", "n_8_rgb").." Sekunden an.\n"
			..Dot_nc.." Tickt alle "..CNumb("0.75", "n_0_75_rgb").." Sekunden.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Wird durch Ticks von "..CKWord("Seelenbrand", "Soulblaze_rgb_de")..", "..CKWord("Verbrennung", "Burn_rgb_de").." oder "..CKWord("Blutung", "Bleed_rgb_de").." bei Eliten oder Spezialisten ausgelöst.\n"
			..Dot_green.." Sehr hoher Rüstungs-"..CKWord("Schaden", "Damage_rgb_de")..".\n"
			..Dot_red.." Sehr geringer "..CKWord("Schaden", "Damage_rgb_de").." gegen Carapax.",
		it = "Uccidere un Elite o uno Specialista applica {stacks:%s} accumuli di "..CKWord("Vampa d'anima", "Soulblaze_rgb_it").." a tutti i nemici in un raggio di "..CNumb("4", "n_4_rgb").." metri. Fino a "..CNumb("31", "n_31_rgb").." accumuli su un bersaglio.\n"
			.."\n"
			..Dot_nc.." Dura "..CNumb("8", "n_8_rgb").." secondi.\n"
			..Dot_nc.." Ticchetta ogni "..CNumb("0.75", "n_0_75_rgb").." secondi.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Si attiva su Elite o Specialisti uccisi da tick di "..CKWord("Vampa d'anima", "Soulblaze_rgb_it")..", "..CKWord("Ustione", "Burn_rgb_it").." o "..CKWord("Sanguinamento", "Bleed_rgb_it")..".\n"
			..Dot_green.." "..CKWord("Danno", "Damage_rgb_it").." molto alto contro armatura.\n"
			..Dot_red.." "..CKWord("Danno", "Damage_rgb_it").." molto basso contro Carapace.",
		ja = "エリートまたはスペシャリストを倒すと、半径"..CNumb("4", "n_4_rgb").."メートル以内の全ての敵に{stacks:%s}スタックの"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."を適用する。対象1体につき最大"..CNumb("31", "n_31_rgb").."スタック。\n"
			.."\n"
			..Dot_nc.." 持続時間"..CNumb("8", "n_8_rgb").."秒。\n"
			..Dot_nc.." "..CNumb("0.75", "n_0_75_rgb").."秒毎にダメージ。\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." "..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."、"..CKWord("燃焼", "Burn_rgb_ja").."、"..CKWord("出血", "Bleed_rgb_ja").."の継続ダメージでエリートまたはスペシャリストを倒した場合も発動。\n"
			..Dot_green.." 装甲への"..CKWord("ダメージ", "Damage_rgb_ja").."は非常に高い。\n"
			..Dot_red.." カラペース装甲への"..CKWord("ダメージ", "Damage_rgb_ja").."は非常に低い。",
		ko = "정예 또는 전문가 적 처치 시 반경 "..CNumb("4", "n_4_rgb").."미터 내 모든 적에게 {stacks:%s} 중첩의 "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").."을 적용합니다. 대상당 최대 "..CNumb("31", "n_31_rgb").." 중첩.\n"
			.."\n"
			..Dot_nc.." "..CNumb("8", "n_8_rgb").."초간 지속됩니다.\n"
			..Dot_nc.." "..CNumb("0.75", "n_0_75_rgb").."초마다 피해를 줍니다.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko")..", "..CKWord("화상", "Burn_rgb_ko")..", "..CKWord("출혈", "Bleed_rgb_ko").." 틱으로 정예 또는 전문가가 죽어도 발동합니다.\n"
			..Dot_green.." 방어구에 대한 "..CKWord("피해", "Damage_rgb_ko").."가 매우 높습니다.\n"
			..Dot_red.." 카라페이스 방어구에 대한 "..CKWord("피해", "Damage_rgb_ko").."가 매우 낮습니다.",
		pl = "Zabicie Elity lub Specjalisty nakłada {stacks:%s} ładunków "..CKWord("Pożaru dusz", "Soulblaze_rgb_pl").." na wszystkich wrogów w promieniu "..CNumb("4", "n_4_rgb").." metrów. Do "..CNumb("31", "n_31_rgb").." ładunków na celu.\n"
			.."\n"
			..Dot_nc.." Trwa "..CNumb("8", "n_8_rgb").." sekund.\n"
			..Dot_nc.." Tyka co "..CNumb("0.75", "n_0_75_rgb").." sekundy.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Działa, gdy Elita lub Specjalista zostanie zabity przez tykanie "..CKWord("Pożaru dusz", "Soulblaze_rgb_pl")..", "..CKWord("Oparzenia", "Burn_rgb_pl").." lub "..CKWord("Krwawienia", "Bleed_rgb_pl")..".\n"
			..Dot_green.." Bardzo wysokie "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciw pancerzowi.\n"
			..Dot_red.." Bardzo niskie "..CKWord("Obrażenia", "Damage_rgb_pl").." przeciw Karapaksowi.",
		["pt-br"] = "Matar um Elite ou Especialista aplica {stacks:%s} acúmulos de "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br").." a todos os inimigos em um raio de "..CNumb("4", "n_4_rgb").." metros. Até "..CNumb("31", "n_31_rgb").." acúmulos em um alvo.\n"
			.."\n"
			..Dot_nc.." Dura "..CNumb("8", "n_8_rgb").." segundos.\n"
			..Dot_nc.." Tique a cada "..CNumb("0.75", "n_0_75_rgb").." segundos.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Ativa em Elites ou Especialistas mortos por tiques de "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br")..", "..CKWord("Queimadura", "Burn_rgb_pt_br").." ou "..CKWord("Sangramento", "Bleed_rgb_pt_br")..".\n"
			..Dot_green.." "..CKWord("Dano", "Damage_rgb_pt_br").." muito alto contra armadura.\n"
			..Dot_red.." "..CKWord("Dano", "Damage_rgb_pt_br").." muito baixo contra Carapaça.",
		es = "Matar a un Élite o Especialista aplica {stacks:%s} acumulaciones de "..CKWord("Llama del alma", "Soulblaze_rgb_es").." a todos los enemigos en un radio de "..CNumb("4", "n_4_rgb").." metros. Hasta "..CNumb("31", "n_31_rgb").." acumulaciones en un objetivo.\n"
			.."\n"
			..Dot_nc.." Dura "..CNumb("8", "n_8_rgb").." segundos.\n"
			..Dot_nc.." Tic cada "..CNumb("0.75", "n_0_75_rgb").." segundos.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Se activa en Élites o Especialistas muertos por tics de "..CKWord("Llama del alma", "Soulblaze_rgb_es")..", "..CKWord("Quemadura", "Burn_rgb_es").." o "..CKWord("Sangrado", "Bleed_rgb_es")..".\n"
			..Dot_green.." "..CKWord("Daño", "Damage_rgb_es").." muy alto contra blindaje.\n"
			..Dot_red.." "..CKWord("Daño", "Damage_rgb_es").." muy bajo contra Caparazón.",
	},
	--[+ Passive 6 - Battle Meditation +]--	09.06.2026
	["loc_talent_psyker_quell_on_kill_and_reduction_desc"] = { -- warp_charge_reduction: 10%, chance: 10%, warp_charge_percent: 10%, +colors
		en = Dot_green.." {warp_charge_reduction:%s} "..CKWord("Peril", "Peril_rgb").." Generation.\n"
			.."\n"
			..Dot_green.." {chance:%s} chance to Quell {warp_charge_percent:%s} "..CKWord("Peril", "Peril_rgb").." on Kill.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..CKWord("Psyker", "cls_psy_rgb").." from exploding.",
		ru = Dot_green.." {warp_charge_reduction:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Боевая медитация
			.."\n"
			..Dot_green.." {chance:%s} шанс подавить {warp_charge_percent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." при убийстве.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.",
		fr = Dot_green.." {warp_charge_reduction:%s} de génération de "..CKWord("Péril", "Peril_rgb_fr")..".\n"
			.."\n"
			..Dot_green.." {chance:%s} de chance d'apaiser {warp_charge_percent:%s} de "..CKWord("Péril", "Peril_rgb_fr").." par élimination.\n"
			.."\n"
			..Dot_nc.." Peut être utilisé pour empêcher le "..CKWord("Psyker", "cls_psy_rgb_fr").." d'exploser.",
		["zh-tw"] = Dot_green.." "..CKWord("反噬", "Peril_rgb_tw").."產生量降低 {warp_charge_reduction:%s}。\n"
			.."\n"
			..Dot_green.." {chance:%s} 機率在擊殺時平息 {warp_charge_percent:%s} "..CKWord("反噬", "Peril_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 可用於防止"..CKWord("靈能者", "cls_psy_rgb_tw").." 自爆。",
		["zh-cn"] = Dot_green.." {warp_charge_reduction:%s} "..CKWord("危机值", "Peril_rgb_zh_cn").."产生。\n"
			.."\n"
			..Dot_green.." 击杀时有{chance:%s}几率压制{warp_charge_percent:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 可用于防止"..CKWord("灵能者", "cls_psy_rgb_zh_cn").."自爆。",
		de = Dot_green.." {warp_charge_reduction:%s} "..CKWord("Gefahr", "Peril_rgb_de").."-Erzeugung.\n"
			.."\n"
			..Dot_green.." {chance:%s} Chance, bei Tötung {warp_charge_percent:%s} "..CKWord("Gefahr", "Peril_rgb_de").." zu unterdrücken.\n"
			.."\n"
			..Dot_nc.." Kann verwendet werden, um die Explosion des "..CKWord("Psykers", "cls_psy_rgb_de").." zu verhindern.",
		it = Dot_green.." {warp_charge_reduction:%s} di generazione di "..CKWord("Pericolo", "Peril_rgb_it")..".\n"
			.."\n"
			..Dot_green.." {chance:%s} probabilità di placare {warp_charge_percent:%s} di "..CKWord("Pericolo", "Peril_rgb_it").." all'uccisione.\n"
			.."\n"
			..Dot_nc.." Può essere usato per impedire al "..CKWord("Psichico", "cls_psy_rgb_it").." di esplodere.",
		ja = Dot_green.." {warp_charge_reduction:%s} "..CKWord("危険", "Peril_rgb_ja").."生成軽減。\n"
			.."\n"
			..Dot_green.." キル時に{chance:%s}の確率で{warp_charge_percent:%s}の"..CKWord("危険", "Peril_rgb_ja").."を軽減。\n"
			.."\n"
			..Dot_nc.." "..CKWord("サイカー", "cls_psy_rgb_ja").."の爆発防止に使用可能。",
		ko = Dot_green.." {warp_charge_reduction:%s} "..CKWord("위험", "Peril_rgb_ko").." 생성 감소.\n"
			.."\n"
			..Dot_green.." 처치 시 {chance:%s} 확률로 {warp_charge_percent:%s}의 "..CKWord("위험", "Peril_rgb_ko").."을 진압합니다.\n"
			.."\n"
			..Dot_nc.." "..CKWord("사이커", "cls_psy_rgb_ko").."의 자폭을 방지하는 데 사용할 수 있습니다.",
		pl = Dot_green.." {warp_charge_reduction:%s} generacji "..CKWord("Zagrożenia", "Peril_rgb_pl")..".\n"
			.."\n"
			..Dot_green.." {chance:%s} szansy na stłumienie {warp_charge_percent:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl").." przy zabiciu.\n"
			.."\n"
			..Dot_nc.." Może być użyte, aby zapobiec eksplozji "..CKWord("Psykera", "cls_psy_rgb_pl")..".",
		["pt-br"] = Dot_green.." {warp_charge_reduction:%s} de geração de "..CKWord("Perigo", "Peril_rgb_pt_br")..".\n"
			.."\n"
			..Dot_green.." {chance:%s} de chance de aquietar {warp_charge_percent:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br").." ao matar.\n"
			.."\n"
			..Dot_nc.." Pode ser usado para impedir que o "..CKWord("Psíquico", "cls_psy_rgb_pt_br").." exploda.",
		es = Dot_green.." {warp_charge_reduction:%s} de generación de "..CKWord("Peligro", "Peril_rgb_es")..".\n"
			.."\n"
			..Dot_green.." {chance:%s} de probabilidad de apaciguar {warp_charge_percent:%s} de "..CKWord("Peligro", "Peril_rgb_es").." al matar.\n"
			.."\n"
			..Dot_nc.." Se puede usar para evitar que el "..CKWord("Psíquico", "cls_psy_rgb_es").." explote.",
	},
	--[+ Passive 7 - Perfect Timing +]--	09.06.2026
	["loc_talent_psyker_damage_on_crit_stacking_desc"] = { -- damage: +3%, duration: 10, stacks: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on "..CKWord("Critical Attack", "Crit_Attk_rgb")..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Generates "..CNumb("1", "n_1_rgb").." stack per "..CKWord("Critical Attack", "Crit_Attk_rgb").." regardless of how many enemies have been hit.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..".\n" -- Идеальный момент -- руоф Безупречное чувство времени
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Даёт "..CNumb("1", "n_1_rgb").." заряд за "..CKWord("критический удар", "krit_udar_rgb_ru")..", независимо от количества поражённых целей.",
		fr = Dot_green.." {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." pendant {duration:%s} secondes lors d'un "..CKWord("Attaque critique", "Crit_Attk_rgb_fr")..".\n"
			..Dot_nc.." Se cumule {stacks:%s} fois.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Génère "..CNumb("1", "n_1_rgb").." cumul par "..CKWord("Attaque critique", "Crit_Attk_rgb_fr")..", quel que soit le nombre d'ennemis touchés.",
		["zh-tw"] = Dot_green.." {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").." 持續 {duration:%s} 秒，"..CKWord("致命一擊", "Crit_Attk_rgb_tw").."時觸發。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." 每次"..CKWord("致命一擊", "Crit_Attk_rgb_tw").."只觸發一層，無論擊中多少敵人。",
		["zh-cn"] = Dot_green.." "..CKWord("暴击攻击", "Crit_Attk_rgb_zh_cn").."时，获得{damage:%s}"..CKWord("伤害", "Damage_rgb_zh_cn").."，持续{duration:%s}秒。\n"
			..Dot_nc.." 叠加{stacks:%s}次。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." 每次"..CKWord("暴击攻击", "Crit_Attk_rgb_zh_cn").."产生"..CNumb("1", "n_1_rgb").."层，无论击中多少敌人。",
		de = Dot_green.." {damage:%s} "..CKWord("Schaden", "Damage_rgb_de").." für {duration:%s} Sekunden bei einem "..CKWord("Kritischen Angriff", "Crit_Attk_rgb_de")..".\n"
			..Dot_nc.." Stapelt {stacks:%s} Mal.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Generiert "..CNumb("1", "n_1_rgb").." Stapel pro "..CKWord("Kritischen Angriff", "Crit_Attk_rgb_de")..", unabhängig von der Anzahl getroffener Gegner.",
		it = Dot_green.." {damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." per {duration:%s} secondi su "..CKWord("Attacco critico", "Crit_Attk_rgb_it")..".\n"
			..Dot_nc.." Si accumula {stacks:%s} volte.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Genera "..CNumb("1", "n_1_rgb").." accumulo per "..CKWord("Attacco critico", "Crit_Attk_rgb_it")..", indipendentemente dal numero di nemici colpiti.",
		ja = Dot_green.." "..CKWord("クリティカル攻撃", "Crit_Attk_rgb_ja").."時、{duration:%s}秒間{damage:%s}の"..CKWord("ダメージ", "Damage_rgb_ja").."増加。\n"
			..Dot_nc.." {stacks:%s}スタックまで。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." "..CKWord("クリティカル攻撃", "Crit_Attk_rgb_ja").."1回につき"..CNumb("1", "n_1_rgb").."スタックを生成。ヒットした敵の数には依存しない。",
		ko = Dot_green.." "..CKWord("크리티컬 공격", "Crit_Attk_rgb_ko").." 시 {duration:%s}초 동안 {damage:%s}의 "..CKWord("피해", "Damage_rgb_ko").." 증가.\n"
			..Dot_nc.." {stacks:%s}회 중첩.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." "..CKWord("크리티컬 공격", "Crit_Attk_rgb_ko").."당 "..CNumb("1", "n_1_rgb").." 중첩 생성. 타격한 적 수와 무관합니다.",
		pl = Dot_green.." {damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl").." na {duration:%s} sekund przy "..CKWord("Krytycznym ataku", "Crit_Attk_rgb_pl")..".\n"
			..Dot_nc.." Kumuluje się {stacks:%s} razy.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Generuje "..CNumb("1", "n_1_rgb").." ładunek na "..CKWord("Krytyczny atak", "Crit_Attk_rgb_pl")..", niezależnie od liczby trafionych wrogów.",
		["pt-br"] = Dot_green.." {damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." por {duration:%s} segundos em "..CKWord("Ataque crítico", "Crit_Attk_rgb_pt_br")..".\n"
			..Dot_nc.." Acumula {stacks:%s} vezes.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Gera "..CNumb("1", "n_1_rgb").." acúmulo por "..CKWord("Ataque crítico", "Crit_Attk_rgb_pt_br")..", independentemente de quantos inimigos foram atingidos.",
		es = Dot_green.." {damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." durante {duration:%s} segundos en "..CKWord("Ataque crítico", "Crit_Attk_rgb_es")..".\n"
			..Dot_nc.." Se acumula {stacks:%s} veces.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Genera "..CNumb("1", "n_1_rgb").." acumulación por "..CKWord("Ataque crítico", "Crit_Attk_rgb_es")..", independientemente de cuántos enemigos sean golpeados.",
	},
	--[+ Passive 8 - Channeled Force +]--	09.06.2026
	["loc_talent_psyker_force_staff_both_bonus_desc"] = { -- damage: +20%, time: 5, secondary_damage: +10%, secondary_time: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Force Staff's Primary Attacks after Fully Charged Force Staff Secondary Attacks.\n"
			..Dot_nc.." Lasts {time:%s} seconds.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} "..CKWord("Damage", "Damage_rgb").." to Force Staff's Secondary Attacks after Force Staff Primary Attack.\n"
			..Dot_nc.." Lasts {secondary_time:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." For Inferno Staff, both of this Talent's buffs only increase the "..CKWord("Damage", "Damage_rgb").." of the flame direct hit, "..CKWord("Soulblaze", "Soulblaze_rgb").." damage is unaffected.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для основной атаки психосилового посоха после полностью заряженной вторичной атаки.\n" -- Направленная сила
			..Dot_nc.." Длится {time:%s} секунд.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для вторичной атаки психосилового посоха после основной атаки.\n"
			..Dot_nc.." Длится {secondary_time:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Для посоха Инферно, оба усиления увеличивают только "..CKWord("урон", "uron_rgb_ru").." от прямых попаданий огнём, урон от "..CKWord("горения души", "gorenia_dushi_rgb_ru").." не затрагивается.",
		fr = Dot_green.." {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." pour les attaques primaires du Bâton de Force après une attaque secondaire complètement chargée.\n"
			..Dot_nc.." Dure {time:%s} secondes.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." pour les attaques secondaires du Bâton de Force après une attaque primaire.\n"
			..Dot_nc.." Dure {secondary_time:%s} secondes.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Pour le Bâton Inferno, les deux bonus de ce talent n'augmentent que les "..CKWord("Dégâts", "Damage_rgb_fr").." de l'impact direct de la flamme, les "..CKWord("Dégâts", "Damage_rgb_fr").." de "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr").." ne sont pas affectés.",
		["zh-tw"] = Dot_green.." 法力杖次要攻擊充能全滿後，法力杖主要攻擊的"..CKWord("傷害", "Damage_rgb_tw").."增加 {damage:%s}。\n"
			..Dot_nc.." 持續 {time:%s} 秒。\n"
			.."\n"
			..Dot_green.." 使用法力杖主要攻擊後，法力杖次要攻擊的"..CKWord("傷害", "Damage_rgb_tw").."增加 {secondary_damage:%s}。\n"
			..Dot_nc.." 持續 {secondary_time:%s} 秒。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." 對烈焰力場法杖，兩個加成僅增加火焰直擊"..CKWord("傷害", "Damage_rgb_tw").."，"..CKWord("靈魂之火", "Soulblaze_rgb_tw").." 傷害不受影響。",
		["zh-cn"] = Dot_green.." 完全充能的次要攻击后，下一次灵能杖的主要攻击获得{damage:%s}"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续{time:%s}秒。\n"
			.."\n"
			..Dot_green.." 主要攻击后，灵能杖的次要攻击获得{secondary_damage:%s}"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 持续{secondary_time:%s}秒。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." 对炼狱杖而言，此天赋的两种增益仅增加火焰直接命中的"..CKWord("伤害", "Damage_rgb_zh_cn").."，"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."伤害不受影响。",
		de = Dot_green.." {damage:%s} "..CKWord("Schaden", "Damage_rgb_de").." für Primärangriffe des Machtstabs nach voll aufgeladenen Sekundärangriffen.\n"
			..Dot_nc.." Hält {time:%s} Sekunden an.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} "..CKWord("Schaden", "Damage_rgb_de").." für Sekundärangriffe des Machtstabs nach Primärangriffen.\n"
			..Dot_nc.." Hält {secondary_time:%s} Sekunden an.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Beim Inferno-Stab erhöhen beide Boni dieses Talents nur den Direkttreffer-Schaden der Flamme, der "..CKWord("Seelenbrand", "Soulblaze_rgb_de").."-Schaden bleibt unverändert.",
		it = Dot_green.." {damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." per gli attacchi primari del Bastone della Forza dopo attacchi secondari completamente caricati.\n"
			..Dot_nc.." Dura {time:%s} secondi.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." per gli attacchi secondari del Bastone della Forza dopo attacchi primari.\n"
			..Dot_nc.." Dura {secondary_time:%s} secondi.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Per il Bastone dell'Inferno, entrambi i potenziamenti di questo talento aumentano solo i "..CKWord("Danni", "Damage_rgb_it").." dell'impatto diretto della fiamma, i "..CKWord("Danni", "Damage_rgb_it").." da "..CKWord("Vampa d'anima", "Soulblaze_rgb_it").." non sono influenzati.",
		ja = Dot_green.." フォーススタッフのセカンダリ攻撃を完全チャージした後、次に行うプライマリ攻撃の"..CKWord("ダメージ", "Damage_rgb_ja").."が{damage:%s}増加。\n"
			..Dot_nc.." 持続時間{time:%s}秒。\n"
			.."\n"
			..Dot_green.." プライマリ攻撃後、フォーススタッフのセカンダリ攻撃の"..CKWord("ダメージ", "Damage_rgb_ja").."が{secondary_damage:%s}増加。\n"
			..Dot_nc.." 持続時間{secondary_time:%s}秒。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." インフェルノスタフの場合、このタレントの両方のボーナスは炎の直撃ダメージのみを増加させ、"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."ダメージには影響しない。",
		ko = Dot_green.." 포스 스태프의 보조 공격 완전 충전 후, 다음 주 공격의 "..CKWord("피해", "Damage_rgb_ko").."가 {damage:%s} 증가합니다.\n"
			..Dot_nc.." {time:%s}초간 지속됩니다.\n"
			.."\n"
			..Dot_green.." 주 공격 후, 포스 스태프의 보조 공격의 "..CKWord("피해", "Damage_rgb_ko").."가 {secondary_damage:%s} 증가합니다.\n"
			..Dot_nc.." {secondary_time:%s}초간 지속됩니다.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." 인페르노 스태프의 경우, 이 특성의 두 버프 모두 화염 직접 명중 "..CKWord("피해", "Damage_rgb_ko").."만 증가시키며, "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").." 피해는 영향을 받지 않습니다.",
		pl = Dot_green.." {damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl").." dla ataków podstawowych Laski Mocy po w pełni naładowanych atakach dodatkowych.\n"
			..Dot_nc.." Trwa {time:%s} sekund.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl").." dla ataków dodatkowych Laski Mocy po ataku podstawowym.\n"
			..Dot_nc.." Trwa {secondary_time:%s} sekund.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." W przypadku Laski Inferno, oba wzmocnienia tego talentu zwiększają tylko "..CKWord("Obrażenia", "Damage_rgb_pl").." bezpośredniego trafienia płomieniem, "..CKWord("Obrażenia", "Damage_rgb_pl").." od "..CKWord("Pożaru dusz", "Soulblaze_rgb_pl").." pozostają niezmienione.",
		["pt-br"] = Dot_green.." {damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." para ataques primários do Cajado da Força após ataques secundários totalmente carregados.\n"
			..Dot_nc.." Dura {time:%s} segundos.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." para ataques secundários do Cajado da Força após ataques primários.\n"
			..Dot_nc.." Dura {secondary_time:%s} segundos.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Para o Cajado Inferno, ambos os buffs deste Talento aumentam apenas o "..CKWord("Dano", "Damage_rgb_pt_br").." do impacto direto da chama, o "..CKWord("Dano", "Damage_rgb_pt_br").." da "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br").." não é afetado.",
		es = Dot_green.." {damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." para ataques principales del Bastón de Fuerza después de ataques secundarios completamente cargados.\n"
			..Dot_nc.." Dura {time:%s} segundos.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." para ataques secundarios del Bastón de Fuerza después de ataques principales.\n"
			..Dot_nc.." Dura {secondary_time:%s} segundos.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Para el Bastón Inferno, ambas mejoras de este talento solo aumentan el "..CKWord("Daño", "Damage_rgb_es").." del impacto directo de la llama, el "..CKWord("Daño", "Damage_rgb_es").." de "..CKWord("Llama del alma", "Soulblaze_rgb_es").." no se ve afectado.",
	},
	--[+ Passive 9 - Mind in Motion +]--	09.06.2026
	["loc_talent_psyker_no_movement_penalty_quell_reload_desc"] = { -- +colors
		en = "Your Movement Speed is not reduced while Quelling "..CKWord("Peril", "Peril_rgb").." or Reloading.\n"
			.."\n"
			..Dot_red.." Does not interact with movement speed buffs.",
		ru = "Ваша скорость передвижения не снижается во время подавления "..CKWord("опасности", "opasnosti_rgb_ru").." или перезарядки оружия.\n" -- Разум в движении -- руоф Движущийся разум
			.."\n"
			..Dot_red.." Не взаимодействует с усилениями скорости передвижения.",
		fr = "Votre vitesse de déplacement n'est pas réduite en apaisant le "..CKWord("Péril", "Peril_rgb_fr").." ou en rechargeant.\n"
			.."\n"
			..Dot_red.." N'interagit pas avec les bonus de vitesse de déplacement.",
		["zh-tw"] = "平息"..CKWord("反噬", "Peril_rgb_tw").." 或裝填時，移動速度不降低。\n"
			.."\n"
			..Dot_red.." 不與移動速度增益互動。",
		["zh-cn"] = "压制"..CKWord("危机值", "Peril_rgb_zh_cn").."或重新装填时，你的移动速度不会降低。\n"
			.."\n"
			..Dot_red.." 不与移动速度增益互动。",
		de = "Ihre Bewegungsgeschwindigkeit wird beim Unterdrücken von "..CKWord("Gefahr", "Peril_rgb_de").." oder beim Nachladen nicht reduziert.\n"
			.."\n"
			..Dot_red.." Interagiert nicht mit Bewegungsgeschwindigkeits-Boni.",
		it = "La tua velocità di movimento non viene ridotta mentre plachi il "..CKWord("Pericolo", "Peril_rgb_it").." o ricarichi.\n"
			.."\n"
			..Dot_red.." Non interagisce con i potenziamenti della velocità di movimento.",
		ja = " "..CKWord("危険", "Peril_rgb_ja").."軽減またはリロード中の移動速度ペナルティが無効になる。\n"
			.."\n"
			..Dot_red.." 移動速度バフとは相互作用しない。",
		ko = " "..CKWord("위험", "Peril_rgb_ko").." 진압 또는 재장전 중 이동 속도가 감소하지 않습니다.\n"
			.."\n"
			..Dot_red.." 이동 속도 버프와 상호작용하지 않습니다.",
		pl = "Twoja prędkość ruchu nie jest zmniejszana podczas tłumienia "..CKWord("Zagrożenia", "Peril_rgb_pl").." lub przeładowywania.\n"
			.."\n"
			..Dot_red.." Nie oddziałuje z bonusami do prędkości ruchu.",
		["pt-br"] = "Sua Velocidade de Movimento não é reduzida enquanto aquieta o "..CKWord("Perigo", "Peril_rgb_pt_br").." ou recarrega.\n"
			.."\n"
			..Dot_red.." Não interage com buffs de velocidade de movimento.",
		es = "Tu velocidad de movimiento no se reduce mientras apaciguas el "..CKWord("Peligro", "Peril_rgb_es").." o recargas.\n"
			.."\n"
			..Dot_red.." No interactúa con bonificaciones de velocidad de movimiento.",
	},
	--[+ Passive 10 - Souldrinker +]--	09.06.2026
	["loc_talent_psyker_killing_enemy_with_warpfire_boosts_duration_desc"] = { -- toughness: 15%, crit_chance: 5%, duration: 5, s->seconds, +colors
		en = "Killing an enemy with "..CKWord("Soulblaze", "Soulblaze_rgb").." grants the following for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." "..CKWord("Toughness", "Toughness_rgb").." per second, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." total.\n"
			.."\n"
			..Dot_green.." Can be refreshed during active duration.\n"
			..Dot_green.." This Talent's effects have no range limit and can be procced at any distance to the dying enemy.",
		ru = "Убийство врага с помощью "..CKWord("горения души", "gorenia_dushi_rgb_ru").." даёт на {duration:%s} секунд:\n" -- Поглотитель душ -- руоф Поглощение душ
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." восстановления "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду, вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." Эффект этого таланта не имеет ограничений по дальности и может применяться на любом расстоянии от умирающего врага.",
		fr = "Tuer un ennemi avec "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr").." octroie les effets suivants pendant {duration:%s} secondes :\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} de "..CKWord("Chance de coup critique", "Crt_hit_chnc_rgb_fr")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." par seconde, jusqu'à {toughness:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." au total.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." Les effets de ce talent n'ont pas de limite de portée et peuvent se déclencher à n'importe quelle distance de l'ennemi mourant.",
		["zh-tw"] = "以"..CKWord("靈魂之火", "Soulblaze_rgb_tw").." 擊殺敵人，獲得 {duration:%s} 秒效果：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("爆擊率", "Crt_hit_chnc_rgb_tw").."，\n"
			..Dot_green.." 每秒恢復 "..CNumb("3%", "pc_3_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，最多恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." 無距離限制，可在任意距離觸發。",
		["zh-cn"] = "以"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."击杀敌人时，在{duration:%s}秒内获得以下效果：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("暴击命中几率", "Crt_hit_chnc_rgb_zh_cn").."，\n"
			..Dot_green.." 每秒恢复"..CNumb("3%", "pc_3_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."，总共最多恢复{toughness:%s}"..CKWord("韧性", "Toughness_rgb_zh_cn").."。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." 此天赋的效果没有距离限制，可在任何距离触发。",
		de = "Das Töten eines Gegners mit "..CKWord("Seelenbrand", "Soulblaze_rgb_de").." gewährt für {duration:%s} Sekunden die folgenden Effekte:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("Kritische Trefferchance", "Crt_hit_chnc_rgb_de")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." "..CKWord("Widerstand", "Toughness_rgb_de").." pro Sekunde, bis zu {toughness:%s} "..CKWord("Widerstand", "Toughness_rgb_de").." insgesamt.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." Die Effekte dieses Talents haben keine Reichweitenbegrenzung und können in jeder Entfernung zum sterbenden Gegner ausgelöst werden.",
		it = "Uccidere un nemico con "..CKWord("Vampa d'anima", "Soulblaze_rgb_it").." concede i seguenti effetti per {duration:%s} secondi:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} di "..CKWord("Probabilità colpo critico", "Crt_hit_chnc_rgb_it")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." di "..CKWord("Robustezza", "Toughness_rgb_it").." al secondo, fino a {toughness:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." totali.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." Gli effetti di questo talento non hanno limiti di portata e possono essere attivati a qualsiasi distanza dal nemico morente.",
		ja = " "..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."で敵を倒すと、{duration:%s}秒間以下の効果を得る：\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("クリティカルヒット発生率", "Crt_hit_chnc_rgb_ja").."増加、\n"
			..Dot_green.." 毎秒"..CNumb("3%", "pc_3_rgb").."の"..CKWord("耐久", "Toughness_rgb_ja").."を回復、最大合計{toughness:%s}"..CKWord("耐久", "Toughness_rgb_ja").."まで。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." このタレントの効果に範囲制限はなく、倒れる敵からの距離に関係なく発動する。",
		ko = " "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").."으로 적 처치 시 {duration:%s}초간 다음 효과를 얻습니다:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("크리티컬 히트 확률", "Crt_hit_chnc_rgb_ko")..",\n"
			..Dot_green.." 초당 "..CNumb("3%", "pc_3_rgb").."의 "..CKWord("인내", "Toughness_rgb_ko").." 회복, 총 최대 {toughness:%s} "..CKWord("인내", "Toughness_rgb_ko").."까지.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." 이 특성의 효과는 거리 제한이 없으며, 죽어가는 적으로부터의 거리에 관계없이 발동할 수 있습니다.",
		pl = "Zabicie wroga za pomocą "..CKWord("Pożaru dusz", "Soulblaze_rgb_pl").." daje następujące efekty na {duration:%s} sekund:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("Szansy na krytyczne trafienie", "Crt_hit_chnc_rgb_pl")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." "..CKWord("Odporności", "Toughness_rgb_pl").." na sekundę, do {toughness:%s} "..CKWord("Odporności", "Toughness_rgb_pl").." łącznie.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." Efekty tego talentu nie mają ograniczeń zasięgu i mogą zostać aktywowane w dowolnej odległości od umierającego wroga.",
		["pt-br"] = "Matar um inimigo com "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br").." concede os seguintes efeitos por {duration:%s} segundos:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} de "..CKWord("Chance de golpe crítico", "Crt_hit_chnc_rgb_pt_br")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." de "..CKWord("Resistência", "Toughness_rgb_pt_br").." por segundo, até {toughness:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." no total.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." Os efeitos deste Talento não têm limite de alcance e podem ser ativados a qualquer distância do inimigo moribundo.",
		es = "Matar a un enemigo con "..CKWord("Llama del alma", "Soulblaze_rgb_es").." otorga los siguientes efectos durante {duration:%s} segundos:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} de "..CKWord("Probabilidad de golpe crítico", "Crt_hit_chnc_rgb_es")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." de "..CKWord("Robustez", "Toughness_rgb_es").." por segundo, hasta {toughness:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." en total.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." Los efectos de este talento no tienen límite de alcance y pueden activarse a cualquier distancia del enemigo moribundo.",
	},
	--[+ Passive 11 - Malefic Momentum +]--	09.06.2026
	["loc_talent_psyker_kills_stack_other_weapon_damage_both_description"] = { -- warp_damage/non_warp_damage: +5%, duration: 10, stacks: 5, s->seconds, +colors
		en = Dot_green.." {warp_damage:%s} "..CKWord("Damage", "Damage_rgb").." to Warp Attacks for {duration:%s} seconds after a non-Warp based Kill.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} "..CKWord("Damage", "Damage_rgb").." to non-Warp Attacks for {duration:%s} seconds after a Warp based Kill.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {warp_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." варп-атак на {duration:%s} секунд после убийства не варп-атакой.\n" -- Пагубный импульс -- руоф Пагубный моментум
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." не варп-атак на {duration:%s} секунд после убийства варп-атакой.\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		fr = Dot_green.." {warp_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." pour les attaques Warp pendant {duration:%s} secondes après une élimination non-Warp.\n"
			..Dot_nc.." Se cumule {stacks:%s} fois.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." pour les attaques non-Warp pendant {duration:%s} secondes après une élimination Warp.\n"
			..Dot_nc.." Se cumule {stacks:%s} fois.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = Dot_green.." {warp_damage:%s} "..CKWord("傷害", "Damage_rgb_tw").." 強化亞空間攻擊，持續 {duration:%s} 秒（非亞空間擊殺後）。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} "..CKWord("傷害", "Damage_rgb_tw").." 強化非亞空間攻擊，持續 {duration:%s} 秒（亞空間擊殺後）。\n"
			..Dot_nc.." 最多 {stacks:%s} 層。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = Dot_green.." 非亚空间击杀后，在{duration:%s}秒内，亚空间攻击获得{warp_damage:%s}"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 叠加{stacks:%s}次。\n"
			.."\n"
			..Dot_green.." 亚空间击杀后，在{duration:%s}秒内，非亚空间攻击获得{non_warp_damage:%s}"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n"
			..Dot_nc.." 叠加{stacks:%s}次。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		de = Dot_green.." {warp_damage:%s} "..CKWord("Schaden", "Damage_rgb_de").." für Warp-Angriffe für {duration:%s} Sekunden nach einer Nicht-Warp-Tötung.\n"
			..Dot_nc.." Stapelt {stacks:%s} Mal.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} "..CKWord("Schaden", "Damage_rgb_de").." für Nicht-Warp-Angriffe für {duration:%s} Sekunden nach einer Warp-Tötung.\n"
			..Dot_nc.." Stapelt {stacks:%s} Mal.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		it = Dot_green.." {warp_damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." per gli attacchi Warp per {duration:%s} secondi dopo un'uccisione non-Warp.\n"
			..Dot_nc.." Si accumula {stacks:%s} volte.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." per gli attacchi non-Warp per {duration:%s} secondi dopo un'uccisione Warp.\n"
			..Dot_nc.." Si accumula {stacks:%s} volte.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ja = Dot_green.." 非ワープキル後、{duration:%s}秒間ワープ攻撃の"..CKWord("ダメージ", "Damage_rgb_ja").."が{warp_damage:%s}増加。\n"
			..Dot_nc.." {stacks:%s}スタックまで。\n"
			.."\n"
			..Dot_green.." ワープキル後、{duration:%s}秒間非ワープ攻撃の"..CKWord("ダメージ", "Damage_rgb_ja").."が{non_warp_damage:%s}増加。\n"
			..Dot_nc.." {stacks:%s}スタックまで。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ko = Dot_green.." 비워프 처치 후 {duration:%s}초간 워프 공격의 "..CKWord("피해", "Damage_rgb_ko").."가 {warp_damage:%s} 증가합니다.\n"
			..Dot_nc.." {stacks:%s}회 중첩.\n"
			.."\n"
			..Dot_green.." 워프 처치 후 {duration:%s}초간 비워프 공격의 "..CKWord("피해", "Damage_rgb_ko").."가 {non_warp_damage:%s} 증가합니다.\n"
			..Dot_nc.." {stacks:%s}회 중첩.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		pl = Dot_green.." {warp_damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl").." dla ataków Warpu przez {duration:%s} sekund po zabiciu nie-Warp.\n"
			..Dot_nc.." Kumuluje się {stacks:%s} razy.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl").." dla ataków nie-Warp przez {duration:%s} sekund po zabiciu Warpem.\n"
			..Dot_nc.." Kumuluje się {stacks:%s} razy.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["pt-br"] = Dot_green.." {warp_damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." para ataques Warp por {duration:%s} segundos após uma morte não-Warp.\n"
			..Dot_nc.." Acumula {stacks:%s} vezes.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." para ataques não-Warp por {duration:%s} segundos após uma morte Warp.\n"
			..Dot_nc.." Acumula {stacks:%s} vezes.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		es = Dot_green.." {warp_damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." para ataques disformes durante {duration:%s} segundos después de una muerte no disforme.\n"
			..Dot_nc.." Se acumula {stacks:%s} veces.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." para ataques no disformes durante {duration:%s} segundos después de una muerte disforme.\n"
			..Dot_nc.." Se acumula {stacks:%s} veces.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 12 - Lightning Speed +]--	09.06.2026
	["loc_talent_psyker_melee_attack_speed_desc"] = { -- melee_attack_speed: 10%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} Attack Speed.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} к скорости атак.", -- Молниеносная скорость
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} de vitesse d'attaque.",
		["zh-tw"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} 攻擊速度。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} 攻击速度。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} Angriffsgeschwindigkeit.",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} di velocità d'attacco.",
		ja = Dot_green.." 攻撃速度が"..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s}増加。",
		ko = Dot_green.." 공격 속도 "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} 증가.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} prędkości ataku.",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} de Velocidade de Ataque.",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} de Velocidad de Ataque.",
	},
	--[+ Passive 13 - Empyric Shock +]--	09.06.2026
	["loc_talent_psyker_force_staff_quick_attack_bonus_desc"] = { -- damage_taken: 6%, max_stacks: 5, duration: 10, s->seconds, +colors
		en = Dot_green.." {damage_taken:%s} "..CKWord("Warp-Damage", "Damagewrp_rgb").." Taken by victims of your Force Staff's Primary Attack.\n"
			..Dot_nc.." Maximum {max_stacks:%s} Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		ru = Dot_green.." {damage_taken:%s} к "..CKWord("варп-урону", "uronu_warp_rgb_ru")..", получаемому врагами, от ваших основных атак психосиловых посохов.\n" -- Эмпирический шок
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		fr = Dot_green.." {damage_taken:%s} de "..CKWord("Dégâts Warp", "Damagewrp_rgb_fr").." subis par les victimes de l'attaque primaire de votre Bâton de Force.\n"
			..Dot_nc.." Maximum {max_stacks:%s} cumuls.\n"
			..Dot_nc.." Dure {duration:%s} secondes.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		["zh-tw"] = Dot_green.." 被法力杖主要攻擊命中的敵人，受到的"..CKWord("靈能傷害", "Damagewrp_rgb_tw").."增加 {damage_taken:%s}。\n"
			..Dot_nc.." 最多 {max_stacks:%s} 層。\n"
			..Dot_nc.." 持續 {duration:%s} 秒。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		["zh-cn"] = Dot_green.." 被你的灵能杖主要攻击击中的目标，受到的"..CKWord("亚空间伤害", "Damagewrp_rgb_zh_cn").."提高{damage_taken:%s}。\n"
			..Dot_nc.." 最多{max_stacks:%s}层。\n"
			..Dot_nc.." 持续{duration:%s}秒。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		de = Dot_green.." {damage_taken:%s} mehr "..CKWord("Warpschaden", "Damagewrp_rgb_de").." für Opfer Ihres Primärangriffs mit dem Machtstab.\n"
			..Dot_nc.." Maximal {max_stacks:%s} Stapel.\n"
			..Dot_nc.." Hält {duration:%s} Sekunden an.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		it = Dot_green.." {damage_taken:%s} di "..CKWord("Danno Warp", "Damagewrp_rgb_it").." subito dalle vittime del tuo attacco primario del Bastone della Forza.\n"
			..Dot_nc.." Massimo {max_stacks:%s} accumuli.\n"
			..Dot_nc.." Dura {duration:%s} secondi.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		ja = Dot_green.." フォーススタッフのプライマリ攻撃を受けた対象が受ける"..CKWord("ワープダメージ", "Damagewrp_rgb_ja").."が{damage_taken:%s}増加。\n"
			..Dot_nc.." 最大{max_stacks:%s}スタック。\n"
			..Dot_nc.." 持続時間{duration:%s}秒。\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		ko = Dot_green.." 포스 스태프의 주 공격에 맞은 대상이 받는 "..CKWord("워프 피해", "Damagewrp_rgb_ko").."가 {damage_taken:%s} 증가합니다.\n"
			..Dot_nc.." 최대 {max_stacks:%s} 중첩.\n"
			..Dot_nc.." {duration:%s}초간 지속됩니다.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		pl = Dot_green.." {damage_taken:%s} "..CKWord("Obrażeń Warpu", "Damagewrp_rgb_pl").." otrzymywanych przez ofiary twojego podstawowego ataku Laski Mocy.\n"
			..Dot_nc.." Maksymalnie {max_stacks:%s} ładunków.\n"
			..Dot_nc.." Trwa {duration:%s} sekund.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		["pt-br"] = Dot_green.." {damage_taken:%s} de "..CKWord("Dano Warp", "Damagewrp_rgb_pt_br").." sofrido por vítimas do seu ataque primário do Cajado da Força.\n"
			..Dot_nc.." Máximo de {max_stacks:%s} acúmulos.\n"
			..Dot_nc.." Dura {duration:%s} segundos.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		es = Dot_green.." {damage_taken:%s} de "..CKWord("Daño Disforme", "Damagewrp_rgb_es").." recibido por las víctimas de tu ataque principal del Bastón de Fuerza.\n"
			..Dot_nc.." Máximo {max_stacks:%s} acumulaciones.\n"
			..Dot_nc.." Dura {duration:%s} segundos.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
	},
	--[+ Passive 14 - Wildfire +]--	09.06.2026
	["loc_talent_psyker_warpfire_spread_desc"] = { -- stacks: 4, +colors
		en = "When an Enemy dies while affected by your "..CKWord("Soulblaze", "Soulblaze_rgb")..", nearby Enemies each gain up to {stacks:%s} Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb")..". They cannot gain more Stacks than the dying Enemy had.\n"
			.."\n"
			..Dot_nc.." The amount of "..CKWord("Soulblaze", "Soulblaze_rgb").." Stacks that spread depends on the amount of "..CKWord("Soulblaze", "Soulblaze_rgb").." Stacks on the dying enemy:\n"
			.."_______________________________\n"
			.."Stacks:      "..CNumb("1", "n_1_rgb").."|         "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|         "..CNumb("4", "n_4_rgb").."|        >"..CNumb("4", "n_4_rgb").."\n"
			.."Spreads:  "..CNumb("0", "n_0_rgb").."|         "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|         "..CNumb("4", "n_4_rgb").."|          "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Targets do not receive "..CKWord("Soulblaze", "Soulblaze_rgb").." Stacks caused by the Talent if they already have "..CNumb("4", "n_4_rgb").." Stacks or more on them.\n"
			..Dot_nc.." Daemonhosts are not valid targets.",
		ru = "Когда умирает враг, находящийся под действием вашего "..CKWord("горения души", "gorenia_dushi_rgb_ru")..", все ближайшие враги также получают до {stacks:%s} зарядов "..CKWord("горения души", "gorenia_dushi_rgb_ru")..". Они не могут получить больше зарядов, чем было у умирающего врага.\n" -- Неконтролируемый пожар -- руоф Гремучая смесь
			.."\n"
			..Dot_nc.." Количество распространяемых зарядов "..CKWord("горения души", "gorenia_dushi_rgb_ru").." зависит от количества зарядов на умирающем враге:\n"
			.."_______________________________\n"
			.."Заряды на враге:   "..CNumb("1", "n_1_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|   >"..CNumb("4", "n_4_rgb").."\n"
			.."Распространения: "..CNumb("0", "n_0_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|     "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Цели не получают заряды "..CKWord("горения души", "gorenia_dushi_rgb_ru")..", если на них уже наложено {stacks:%s} заряда или более.\n"
			..Dot_green.." Не накладывается на демонхостов.",
		fr = "Quand un ennemi meurt sous l'effet de votre "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr")..", les ennemis proches gagnent chacun jusqu'à {stacks:%s} cumuls de "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr")..". Ils ne peuvent pas gagner plus de cumuls que l'ennemi mourant n'en avait.\n"
			.."\n"
			..Dot_nc.." Le nombre de cumuls de "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr").." qui se propagent dépend du nombre de cumuls sur l'ennemi mourant :\n"
			.."_______________________________\n"
			.."Cumuls :           "..CNumb("1", "n_1_rgb").."|       "..CNumb("2", "n_2_rgb").."|       "..CNumb("3", "n_3_rgb").."|       "..CNumb("4", "n_4_rgb").."|     >"..CNumb("4", "n_4_rgb").."\n"
			.."Propagation :  "..CNumb("0", "n_0_rgb").."|       "..CNumb("2", "n_2_rgb").."|       "..CNumb("3", "n_3_rgb").."|       "..CNumb("4", "n_4_rgb").."|       "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Les cibles ne reçoivent pas de cumuls de "..CKWord("Flamme de l'âme", "Soulblaze_rgb_fr").." si elles en ont déjà {stacks:%s} ou plus.\n"
			..Dot_nc.." Les Hôtes Démoniaques ne sont pas des cibles valides.",
		["zh-tw"] = "當受你"..CKWord("靈魂之火", "Soulblaze_rgb_tw").." 影響的敵人死亡時，\n"
			.."周圍每個敵人最多獲得 {stacks:%s} 層"..CKWord("靈魂之火", "Soulblaze_rgb_tw").."，\n"
			.."且不超過死亡敵人的層數。\n"
			.."\n"
			..Dot_nc.." 擴散層數取決於死亡敵人的"..CKWord("靈魂之火", "Soulblaze_rgb_tw").."層數：\n"
			.."_______________________________\n"
			.."層數：       "..CNumb("1", "n_1_rgb").." | "..CNumb("2", "n_2_rgb").." | "..CNumb("3", "n_3_rgb").." | "..CNumb("4", "n_4_rgb").." | >"..CNumb("4", "n_4_rgb").."\n"
			.."擴散：       "..CNumb("0", "n_0_rgb").." | "..CNumb("2", "n_2_rgb").." | "..CNumb("3", "n_3_rgb").." | "..CNumb("4", "n_4_rgb").." | "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." 若目標已有 "..CNumb("4", "n_4_rgb").." 層或以上，不再獲得該天賦造成的"..CKWord("靈魂之火", "Soulblaze_rgb_tw").." 層。\n"
			..Dot_nc.." 惡魔宿主不是有效目標。",
		["zh-cn"] = "当敌人死于你的"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."时，附近的每个敌人获得最多{stacks:%s}层"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."。它们获得的层数不会超过死去敌人原有的层数。\n"
			.."\n"
			..Dot_nc.." 传播的"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."层数取决于死去敌人身上的层数：\n"
			.."_______________________________\n"
			.."层数：        "..CNumb("1", "n_1_rgb").."|        "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|        "..CNumb("4", "n_4_rgb").."|        >"..CNumb("4", "n_4_rgb").."\n"
			.."传播：        "..CNumb("0", "n_0_rgb").."|        "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|        "..CNumb("4", "n_4_rgb").."|         "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." 若目标身上已有{stacks:%s}层或更多"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."，则不会获得传播的层数。\n"
			..Dot_nc.." 恶魔宿主不是有效目标。",
		de = "Wenn ein Gegner unter Ihrem "..CKWord("Seelenbrand", "Soulblaze_rgb_de").." stirbt, erhalten nahe Gegner jeweils bis zu {stacks:%s} Stapel "..CKWord("Seelenbrand", "Soulblaze_rgb_de")..". Sie können nicht mehr Stapel erhalten, als der sterbende Gegner hatte.\n"
			.."\n"
			..Dot_nc.." Die Anzahl der "..CKWord("Seelenbrand", "Soulblaze_rgb_de").."-Stapel, die sich ausbreiten, hängt von der Anzahl der Stapel auf dem sterbenden Gegner ab:\n"
			.."_______________________________\n"
			.."Stapel:             "..CNumb("1", "n_1_rgb").."|       "..CNumb("2", "n_2_rgb").."|      "..CNumb("3", "n_3_rgb").."|       "..CNumb("4", "n_4_rgb").."|      >"..CNumb("4", "n_4_rgb").."\n"
			.."Ausbreitung:  "..CNumb("0", "n_0_rgb").."|       "..CNumb("2", "n_2_rgb").."|      "..CNumb("3", "n_3_rgb").."|       "..CNumb("4", "n_4_rgb").."|        "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Ziele erhalten keine "..CKWord("Seelenbrand", "Soulblaze_rgb_de").."-Stapel, wenn sie bereits {stacks:%s} oder mehr Stapel haben.\n"
			..Dot_nc.." Dämonenwirte sind keine gültigen Ziele.",
		it = "Quando un nemico muore mentre è sotto l'effetto del tuo "..CKWord("Soulblaze", "Soulblaze_rgb_it")..", i nemici vicini guadagnano fino a {stacks:%s} accumuli di "..CKWord("Soulblaze", "Soulblaze_rgb_it")..". Non possono guadagnare più accumuli di quanti ne avesse il nemico morente.\n"
			.."\n"
			..Dot_nc.." Il numero di accumuli di "..CKWord("Soulblaze", "Soulblaze_rgb_it").." che si diffondono dipende dal numero di accumuli sul nemico morente:\n"
			.."_______________________________\n"
			.."Accumuli:     "..CNumb("1", "n_1_rgb").."|        "..CNumb("2", "n_2_rgb").."|       "..CNumb("3", "n_3_rgb").."|        "..CNumb("4", "n_4_rgb").."|       >"..CNumb("4", "n_4_rgb").."\n"
			.."Diffusione:   "..CNumb("0", "n_0_rgb").."|        "..CNumb("2", "n_2_rgb").."|       "..CNumb("3", "n_3_rgb").."|        "..CNumb("4", "n_4_rgb").."|        "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." I bersagli non ricevono accumuli di "..CKWord("Soulblaze", "Soulblaze_rgb_it").." se ne hanno già {stacks:%s} o più.\n"
			..Dot_nc.." Gli Ospiti Demoniaci non sono bersagli validi.",
		ja = "あなたの"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."の影響下で敵が死亡すると、近くの敵はそれぞれ最大{stacks:%s}スタックの"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."を得る。死亡した敵が持っていたスタック数よりも多くを得ることはない。\n"
			.."\n"
			..Dot_nc.." 伝播する"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."のスタック数は、死亡した敵のスタック数に依存する：\n"
			.."_______________________________\n"
			.."スタック：    "..CNumb("1", "n_1_rgb").."|        "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|        "..CNumb("4", "n_4_rgb").."|        >"..CNumb("4", "n_4_rgb").."\n"
			.."伝播：        "..CNumb("0", "n_0_rgb").."|        "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|        "..CNumb("4", "n_4_rgb").."|         "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." 対象が既に{stacks:%s}スタック以上の"..CKWord("ソウルブレイズ", "Soulblaze_rgb_ja").."を持っている場合、伝播を受けない。\n"
			..Dot_nc.." デーモンホストは有効な対象ではない。",
		ko = "당신의 "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").."의 영향을 받은 적이 죽으면, 근처의 적들은 각각 최대 {stacks:%s} 중첩의 "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").."을 얻습니다. 죽은 적이 가졌던 중첩보다 더 많이 얻을 수는 없습니다.\n"
			.."\n"
			..Dot_nc.." 전파되는 "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").." 중첩 수는 죽은 적의 중첩 수에 따라 달라집니다:\n"
			.."_______________________________\n"
			.."중첩：       "..CNumb("1", "n_1_rgb").."|        "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|        "..CNumb("4", "n_4_rgb").."|        >"..CNumb("4", "n_4_rgb").."\n"
			.."전파：        "..CNumb("0", "n_0_rgb").."|        "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|        "..CNumb("4", "n_4_rgb").."|         "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." 대상이 이미 {stacks:%s} 중첩 이상의 "..CKWord("영혼 불꽃", "Soulblaze_rgb_ko").."을 가지고 있으면 전파를 받지 않습니다.\n"
			..Dot_nc.." 데몬호스트는 유효한 대상이 아닙니다.",
		pl = "Gdy wróg umiera pod wpływem twojego "..CKWord("Pożaru dusz", "Soulblaze_rgb_pl")..", pobliskie wrogowie otrzymują do {stacks:%s} ładunków "..CKWord("Pożaru dusz", "Soulblaze_rgb_pl")..". Nie mogą otrzymać więcej ładunków, niż miał umierający wróg.\n"
			.."\n"
			..Dot_nc.." Liczba rozprzestrzeniających się ładunków "..CKWord("Pożaru dusz", "Soulblaze_rgb_pl").." zależy od liczby ładunków na umierającym wrogu:\n"
			.."_______________________________\n"
			.."Ładunki:                     "..CNumb("1", "n_1_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|  >"..CNumb("4", "n_4_rgb").."\n"
			.."Rozprzestrzenianie: "..CNumb("0", "n_0_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|    "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Cele nie otrzymują ładunków "..CKWord("Pożaru dusz", "Soulblaze_rgb_pl")..", jeśli mają już {stacks:%s} lub więcej ładunków.\n"
			..Dot_nc.." Demoniczni gospodarze nie są prawidłowymi celami.",
		["pt-br"] = "Quando um inimigo morre sob efeito do seu "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br")..", os inimigos próximos ganham até {stacks:%s} acúmulos de "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br")..". Eles não podem ganhar mais acúmulos do que o inimigo moribundo tinha.\n"
			.."\n"
			..Dot_nc.." O número de acúmulos de "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br").." que se espalham depende do número de acúmulos no inimigo moribundo:\n"
			.."_______________________________\n"
			.."Acúmulos:      "..CNumb("1", "n_1_rgb").."|      "..CNumb("2", "n_2_rgb").."|      "..CNumb("3", "n_3_rgb").."|      "..CNumb("4", "n_4_rgb").."|     >"..CNumb("4", "n_4_rgb").."\n"
			.."Propagação:  "..CNumb("0", "n_0_rgb").."|      "..CNumb("2", "n_2_rgb").."|      "..CNumb("3", "n_3_rgb").."|      "..CNumb("4", "n_4_rgb").."|       "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Os alvos não recebem acúmulos de "..CKWord("Chama da Alma", "Soulblaze_rgb_pt_br").." se já tiverem {stacks:%s} ou mais acúmulos.\n"
			..Dot_nc.." Hospedeiros Demoníacos não são alvos válidos.",
		es = "Cuando un enemigo muere bajo el efecto de tu "..CKWord("Llama del alma", "Soulblaze_rgb_es")..", los enemigos cercanos ganan hasta {stacks:%s} acumulaciones de "..CKWord("Llama del alma", "Soulblaze_rgb_es")..". No pueden ganar más acumulaciones de las que tenía el enemigo moribundo.\n"
			.."\n"
			..Dot_nc.." El número de acumulaciones de "..CKWord("Llama del alma", "Soulblaze_rgb_es").." que se propagan depende del número de acumulaciones en el enemigo moribundo:\n"
			.."_______________________________\n"
			.."Acumulaciones:    "..CNumb("1", "n_1_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|    >"..CNumb("4", "n_4_rgb").."\n"
			.."Propagación:        "..CNumb("0", "n_0_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|      "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Los objetivos no reciben acumulaciones de "..CKWord("Llama del alma", "Soulblaze_rgb_es").." si ya tienen {stacks:%s} o más acumulaciones.\n"
			..Dot_nc.." Los Anfitriones Demoníacos no son objetivos válidos.",
	},
	--[+ Passive 15 - Warp Splitting +]--	09.06.2026
	["loc_talent_psyker_cleave_from_peril_desc"] = { -- max_cleave: +100%, +colors
		en = Dot_green.." Up to {max_cleave:%s} "..CKWord("Cleave", "Cleave_rgb")..", based on "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		ru = Dot_green.." До {max_cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru")..", в зависимости от уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Расщепление варпа
			.."\n"
			..CPhrs("Carap_cant_clv"),
		fr = Dot_green.." Jusqu'à {max_cleave:%s} de "..CKWord("Transpercement", "Cleave_rgb_fr")..", en fonction de votre "..CKWord("Péril", "Peril_rgb_fr")..".\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		["zh-tw"] = Dot_green.." 依"..CKWord("反噬", "Peril_rgb_tw").." 等級，最多 {max_cleave:%s} "..CKWord("順劈攻擊", "Cleave_rgb_tw").."。\n"
			.."\n"
			..CPhrs("Carap_cant_clv"),
		["zh-cn"] = Dot_green.." 根据当前"..CKWord("危机值", "Peril_rgb_zh_cn").."，最多获得{max_cleave:%s}"..CKWord("劈裂值", "Cleave_rgb_zh_cn").."。\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		de = Dot_green.." Bis zu {max_cleave:%s} "..CKWord("Spalten", "Cleave_rgb_de")..", basierend auf Ihrer "..CKWord("Gefahr", "Peril_rgb_de")..".\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		it = Dot_green.." Fino a {max_cleave:%s} di "..CKWord("Taglio", "Cleave_rgb_it")..", in base al tuo "..CKWord("Pericolo", "Peril_rgb_it")..".\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		ja = Dot_green.." "..CKWord("危険", "Peril_rgb_ja").."に応じて、最大{max_cleave:%s}の"..CKWord("薙ぎ払い", "Cleave_rgb_ja").."を得る。\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		ko = Dot_green.." 현재 "..CKWord("위험", "Peril_rgb_ko").."에 따라 최대 {max_cleave:%s}의 "..CKWord("관통", "Cleave_rgb_ko").."을 얻습니다.\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		pl = Dot_green.." Do {max_cleave:%s} "..CKWord("Rozłupywania", "Cleave_rgb_pl")..", w zależności od twojego "..CKWord("Zagrożenia", "Peril_rgb_pl")..".\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		["pt-br"] = Dot_green.." Até {max_cleave:%s} de "..CKWord("Fender", "Cleave_rgb_pt_br")..", baseado no seu "..CKWord("Perigo", "Peril_rgb_pt_br")..".\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		es = Dot_green.." Hasta {max_cleave:%s} de "..CKWord("Corte", "Cleave_rgb_es")..", según tu "..CKWord("Peligro", "Peril_rgb_es")..".\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
	},
	--[+ Passive 16 - By Crack of Bone +]--	09.06.2026
	["loc_talent_psyker_melee_weaving_desc"] = { -- vent: 10%, warp_generation: 20%, duration: 4, s->seconds, +colors
		en = Dot_green.." {vent:%s} "..CKWord("Peril", "Peril_rgb").." Quelled on Melee "..CKWord("Weakspot", "Weakspot_rgb").." kills.\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} "..CKWord("Peril", "Peril_rgb").." Generation for {duration:%s} seconds on Melee "..CKWord("Weakspot", "Weakspot_rgb").." kills.\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою.\n" -- Треск костей
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru").." на {duration:%s} секунды при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою.\n"
			..CPhrs("Can_be_refr"),
		fr = Dot_green.." {vent:%s} de "..CKWord("Péril", "Peril_rgb_fr").." apaisé par élimination en mêlée sur "..CKWord("Points faibles", "Weakspot_rgb_fr")..".\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} de génération de "..CKWord("Péril", "Peril_rgb_fr").." pendant {duration:%s} secondes par élimination en mêlée sur "..CKWord("Points faibles", "Weakspot_rgb_fr")..".\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = Dot_green.." 近戰"..CKWord("弱點", "Weakspot_rgb_tw").."擊殺時平息 {vent:%s} "..CKWord("反噬", "Peril_rgb_tw").."。\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." 近戰"..CKWord("弱點", "Weakspot_rgb_tw").."擊殺時，"..CKWord("反噬", "Peril_rgb_tw").."產生量 "..CNumb("-", "n_minus_rgb").."{warp_generation:%s}，持續 {duration:%s} 秒。\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = Dot_green.." 近战"..CKWord("弱点", "Weakspot_rgb_zh_cn").."击杀时，压制{vent:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."。\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." 近战"..CKWord("弱点", "Weakspot_rgb_zh_cn").."击杀时，"..CKWord("危机值", "Peril_rgb_zh_cn").."产生减少"..CNumb("-", "n_minus_rgb").."{warp_generation:%s}，持续{duration:%s}秒。\n"
			..CPhrs("Can_be_refr"),
		de = Dot_green.." {vent:%s} "..CKWord("Gefahr", "Peril_rgb_de").." wird bei Nahkampf-"..CKWord("Schwachstellen", "Weakspot_rgb_de").."-Tötungen unterdrückt.\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} "..CKWord("Gefahr", "Peril_rgb_de").."-Erzeugung für {duration:%s} Sekunden bei Nahkampf-"..CKWord("Schwachstellen", "Weakspot_rgb_de").."-Tötungen.\n"
			..CPhrs("Can_be_refr"),
		it = Dot_green.." {vent:%s} di "..CKWord("Pericolo", "Peril_rgb_it").." placato uccidendo corpo a corpo sui "..CKWord("Punti deboli", "Weakspot_rgb_it")..".\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} di generazione di "..CKWord("Pericolo", "Peril_rgb_it").." per {duration:%s} secondi uccidendo corpo a corpo sui "..CKWord("Punti deboli", "Weakspot_rgb_it")..".\n"
			..CPhrs("Can_be_refr"),
		ja = Dot_green.." 近接"..CKWord("弱点", "Weakspot_rgb_ja").."キル時に{vent:%s}の"..CKWord("危険", "Peril_rgb_ja").."を軽減。\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." 近接"..CKWord("弱点", "Weakspot_rgb_ja").."キル時、{duration:%s}秒間"..CKWord("危険", "Peril_rgb_ja").."生成量が"..CNumb("-", "n_minus_rgb").."{warp_generation:%s}軽減。\n"
			..CPhrs("Can_be_refr"),
		ko = Dot_green.." 근접 "..CKWord("약점", "Weakspot_rgb_ko").." 처치 시 {vent:%s}의 "..CKWord("위험", "Peril_rgb_ko").."을 진압합니다.\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." 근접 "..CKWord("약점", "Weakspot_rgb_ko").." 처치 시 {duration:%s}초간 "..CKWord("위험", "Peril_rgb_ko").." 생성량 "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} 감소.\n"
			..CPhrs("Can_be_refr"),
		pl = Dot_green.." {vent:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl").." stłumione przy zabójstwie wręcz w "..CKWord("Słaby punkt", "Weakspot_rgb_pl")..".\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} generacji "..CKWord("Zagrożenia", "Peril_rgb_pl").." na {duration:%s} sekund przy zabójstwie wręcz w "..CKWord("Słaby punkt", "Weakspot_rgb_pl")..".\n"
			..CPhrs("Can_be_refr"),
		["pt-br"] = Dot_green.." {vent:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br").." aquietado ao matar corpo a corpo em "..CKWord("Pontos fracos", "Weakspot_rgb_pt_br")..".\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} de geração de "..CKWord("Perigo", "Peril_rgb_pt_br").." por {duration:%s} segundos ao matar corpo a corpo em "..CKWord("Pontos fracos", "Weakspot_rgb_pt_br")..".\n"
			..CPhrs("Can_be_refr"),
		es = Dot_green.." {vent:%s} de "..CKWord("Peligro", "Peril_rgb_es").." apaciguado al matar cuerpo a cuerpo en "..CKWord("Puntos débiles", "Weakspot_rgb_es")..".\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} de generación de "..CKWord("Peligro", "Peril_rgb_es").." durante {duration:%s} segundos al matar cuerpo a cuerpo en "..CKWord("Puntos débiles", "Weakspot_rgb_es")..".\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 17 - Immaterial Focus +]--	09.06.2026
	["loc_talent_psyker_damage_resistance_stun_immunity_desc"] = { -- dr: +10%, duration: 4, s->seconds, +colors
		en = Dot_green.." {dr:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.\n"
			.."\n"
			.."While at or above "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." and for {duration:%s} seconds after dropping below "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb")..", grants Immunity to "..CKWord("Stuns", "Stuns_rgb").." from both Melee and Ranged Attacks.\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {dr:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\n" -- Нематериальная концентрация
			.."\n"
			.."При "..CNumb("97%", "pc_97_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." или более и на {duration:%s} секунды после снижения уровня "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("97%", "pc_97_rgb")..", вы получаете иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." от атак ближнего и дальнего боя.\n"
			..CPhrs("Can_be_refr"),
		fr = Dot_green.." {dr:%s} de résistance aux "..CKWord("Dégâts", "Damage_rgb_fr")..".\n"
			.."\n"
			.."À "..CNumb("97%", "pc_97_rgb").." ou plus de "..CKWord("Péril", "Peril_rgb_fr").." et pendant {duration:%s} secondes après être passé sous ce seuil, octroie l'immunité aux "..CKWord("Étourdissements", "Stuns_rgb_fr").." des attaques de mêlée et à distance.\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = Dot_green.." {dr:%s} "..CKWord("傷害", "Damage_rgb_tw").."抗性。\n"
			.."\n"
			.."在"..CKWord("反噬", "Peril_rgb_tw").."達 "..CNumb("97%", "pc_97_rgb").." 或以上時，以及降至 "..CNumb("97%", "pc_97_rgb").." 以下後的 {duration:%s} 秒內，\n"
			.."免疫近戰和遠程攻擊的"..CKWord("眩暈", "Stuns_rgb_tw").."。\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = Dot_green.." {dr:%s} "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性。\n"
			.."\n"
			.."当"..CKWord("危机值", "Peril_rgb_zh_cn").."达到"..CNumb("97%", "pc_97_rgb").."或以上时，以及在低于阈值后的{duration:%s}秒内，免疫来自近战和远程攻击的"..CKWord("眩晕", "Stun_rgb_zh_cn").."。\n"
			..CPhrs("Can_be_refr"),
		de = Dot_green.." {dr:%s} "..CKWord("Schadens", "Damage_rgb_de").."-Widerstand.\n"
			.."\n"
			.."Bei "..CNumb("97%", "pc_97_rgb").." oder mehr "..CKWord("Gefahr", "Peril_rgb_de").." und für {duration:%s} Sekunden nach Unterschreiten dieses Schwellenwerts, gewährt Immunität gegen "..CKWord("Betäubungen", "Stuns_rgb_de").." durch Nahkampf- und Fernkampfangriffe.\n"
			..CPhrs("Can_be_refr"),
		it = Dot_green.." {dr:%s} di resistenza al "..CKWord("Danno", "Damage_rgb_it")..".\n"
			.."\n"
			.."Con "..CNumb("97%", "pc_97_rgb").." o più di "..CKWord("Pericolo", "Peril_rgb_it").." e per {duration:%s} secondi dopo essere scesi sotto tale soglia, concede immunità agli "..CKWord("Stordimenti", "Stuns_rgb_it").." da attacchi corpo a corpo e a distanza.\n"
			..CPhrs("Can_be_refr"),
		ja = Dot_green.." {dr:%s}の"..CKWord("ダメージ", "Damage_rgb_ja").."耐性。\n"
			.."\n"
			.." "..CKWord("危険", "Peril_rgb_ja").."が"..CNumb("97%", "pc_97_rgb").."以上の時、および閾値を下回った後{duration:%s}秒間、近接・遠隔攻撃による"..CKWord("スタン", "Stuns_rgb_ja").."を無効化する。\n"
			..CPhrs("Can_be_refr"),
		ko = Dot_green.." {dr:%s}의 "..CKWord("피해", "Damage_rgb_ko").." 저항.\n"
			.."\n"
			.." "..CKWord("위험", "Peril_rgb_ko").."이 "..CNumb("97%", "pc_97_rgb").." 이상일 때, 그리고 임계치 아래로 내려간 후 {duration:%s}초 동안 근접 및 원거리 공격의 "..CKWord("기절", "Stuns_rgb_ko").."에 면역이 됩니다.\n"
			..CPhrs("Can_be_refr"),
		pl = Dot_green.." {dr:%s} odporności na "..CKWord("Obrażenia", "Damage_rgb_pl")..".\n"
			.."\n"
			.."Przy "..CNumb("97%", "pc_97_rgb").." lub więcej "..CKWord("Zagrożenia", "Peril_rgb_pl").." i przez {duration:%s} sekund po spadku poniżej tego progu, zapewnia odporność na "..CKWord("Ogłuszenia", "Stuns_rgb_pl").." od ataków wręcz i dystansowych.\n"
			..CPhrs("Can_be_refr"),
		["pt-br"] = Dot_green.." {dr:%s} de resistência a "..CKWord("Dano", "Damage_rgb_pt_br")..".\n"
			.."\n"
			.."Com "..CNumb("97%", "pc_97_rgb").." ou mais de "..CKWord("Perigo", "Peril_rgb_pt_br").." e por {duration:%s} segundos após cair abaixo desse limite, concede imunidade a "..CKWord("Atordoamentos", "Stuns_rgb_pt_br").." de ataques corpo a corpo e à distância.\n"
			..CPhrs("Can_be_refr"),
		es = Dot_green.." {dr:%s} de resistencia al "..CKWord("Daño", "Damage_rgb_es")..".\n"
			.."\n"
			.."Con "..CNumb("97%", "pc_97_rgb").." o más de "..CKWord("Peligro", "Peril_rgb_es").." y durante {duration:%s} segundos después de caer por debajo de ese umbral, otorga inmunidad a los "..CKWord("Aturdimientos", "Stuns_rgb_es").." de ataques cuerpo a cuerpo y a distancia.\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 18 - Psykinetic's Aura +]--	09.06.2026
	["loc_talent_psyker_cooldown_on_allied_elite_kills_fixed_desc"] = { -- cooldown: 50%, time: 5, +colors
		en = Dot_green.." {cooldown:%s} "..CKWord("Cooldown", "Cd_rgb").." Regeneration for {time:%s} seconds when you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an Elite or Specialist enemy.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." На {cooldown:%s} сокращается время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." в течение {time:%s} секунд, если вы или ваш союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." убиваете элитного врага или специалиста.\n" -- Аура психокинетика
			.."\n"
			..CPhrs("Can_be_refr"),
		fr = Dot_green.." {cooldown:%s} de régénération du "..CKWord("Temps de recharge", "Cd_rgb_fr").." pendant {time:%s} secondes lorsque vous ou un allié en "..CKWord("Syntonie", "Coherency_rgb_fr").." tuez un ennemi d'élite ou un spécialiste.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = Dot_green.." 你或"..CKWord("協同", "Coherency_rgb_tw").." 範圍內盟友擊殺精英或專家時，\n"
			..CKWord("冷卻", "Cd_rgb_tw").." 恢復速度 {cooldown:%s}，持續 {time:%s} 秒。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = Dot_green.." 当你或"..CKWord("连携", "Coherency_rgb_zh_cn").."中的盟友击杀精英或专家敌人时，在{time:%s}秒内，"..CKWord("冷却", "Cd_rgb_zh_cn").."恢复速度提高{cooldown:%s}。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		de = Dot_green.." {cooldown:%s} "..CKWord("Abklingzeit", "Cd_rgb_de").."-Regeneration für {time:%s} Sekunden, wenn Sie oder ein Verbündeter in "..CKWord("Kohärenz", "Coherency_rgb_de").." einen Elite- oder Spezialisten-Gegner töten.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		it = Dot_green.." {cooldown:%s} di rigenerazione del "..CKWord("Tempo di recupero", "Cd_rgb_it").." per {time:%s} secondi quando tu o un alleato in "..CKWord("Coerenza", "Coherency_rgb_it").." uccidete un nemico Elite o Specialista.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ja = Dot_green.." 自分または"..CKWord("結束", "Coherency_rgb_ja").."内の味方がエリートまたはスペシャリストを倒すと、{time:%s}秒間"..CKWord("クールダウン", "Cd_rgb_ja").."の回復速度が{cooldown:%s}増加する。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ko = Dot_green.." 자신 또는 "..CKWord("일체감", "Coherency_rgb_ko").." 내의 아군이 정예 또는 전문가 적 처치 시 {time:%s}초간 "..CKWord("재사용 대기시간", "Cd_rgb_ko").." 회복 속도가 {cooldown:%s} 증가합니다.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		pl = Dot_green.." {cooldown:%s} regeneracji "..CKWord("Czasu odnowienia", "Cd_rgb_pl").." przez {time:%s} sekund, gdy ty lub sojusznik w "..CKWord("Spójności", "Coherency_rgb_pl").." zabijecie Elitarnego wroga lub Specjalistę.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["pt-br"] = Dot_green.." {cooldown:%s} de regeneração de "..CKWord("Tempo de recarga", "Cd_rgb_pt_br").." por {time:%s} segundos quando você ou um aliado em "..CKWord("Coerência", "Coherency_rgb_pt_br").." matar um inimigo de Elite ou Especialista.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		es = Dot_green.." {cooldown:%s} de regeneración del "..CKWord("Tiempo de reutilización", "Cd_rgb_es").." durante {time:%s} segundos cuando tú o un aliado en "..CKWord("Coherencia", "Coherency_rgb_es").." matáis a un enemigo Élite o Especialista.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 19 - Empathic Evasion +]--	09.06.2026
	["loc_talent_psyker_dodge_after_crits_description"] = { -- duration: 1, s->second, +colors
		en = Dot_green.." A "..CKWord("Critical Hit", "Crit_hit_rgb").." makes you count as Dodging against Ranged Attacks for {duration:%s} second.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "При "..CKWord("критическом ударе", "krit_udare_rgb_ru").." вы переходите в режим уклонения от дальнобойных атак на {duration:%s} секунду.\n" -- Эмпатическое уклонение
			.."\n"
			..CPhrs("Can_be_refr"),
		fr = Dot_green.." Un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." vous fait compter comme Esquivant contre les attaques à distance pendant {duration:%s} seconde.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-tw"] = Dot_green.." "..CKWord("致命一擊", "Crit_hit_rgb_tw").."會使你在 {duration:%s} 秒內，面對遠程攻擊時視為正在閃避。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["zh-cn"] = Dot_green.." "..CKWord("暴击命中", "Crit_hit_rgb_zh_cn").."使你在{duration:%s}秒内视为正在闪避远程攻击。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		de = Dot_green.." Ein "..CKWord("Kritischer Treffer", "Crit_hit_rgb_de").." lässt Sie für {duration:%s} Sekunde als Ausweichend gegen Fernangriffe gelten.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		it = Dot_green.." Un "..CKWord("Colpo critico", "Crit_hit_rgb_it").." ti fa contare come Schivante contro gli attacchi a distanza per {duration:%s} secondo.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ja = Dot_green.." "..CKWord("クリティカルヒット", "Crit_hit_rgb_ja").."時、{duration:%s}秒間遠隔攻撃に対して回避状態と見なされる。\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ko = Dot_green.." "..CKWord("크리티컬 히트", "Crit_hit_rgb_ko").." 시 {duration:%s}초간 원거리 공격에 대해 회피 상태로 간주됩니다.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		pl = Dot_green.." "..CKWord("Krytyczne trafienie", "Crit_hit_rgb_pl").." sprawia, że przez {duration:%s} sekundy jesteś liczony jako Unikający przed atakami dystansowymi.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		["pt-br"] = Dot_green.." Um "..CKWord("Golpe crítico", "Crit_hit_rgb_pt_br").." faz com que você seja considerado como Esquiva contra ataques à distância por {duration:%s} segundo.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		es = Dot_green.." Un "..CKWord("Golpe crítico", "Crit_hit_rgb_es").." hace que cuentes como Esquivando contra ataques a distancia durante {duration:%s} segundo.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 20 - One with the Warp +]--	09.06.2026
	["loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"] = { -- min_damage: +10%, max_damage: +33%, +colors
		en = Dot_green.." {min_damage:%s} to {max_damage:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." based on your current "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			..Dot_green.." Always grants a minimum of {min_damage:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." regardless of current "..CKWord("Peril", "Peril_rgb").." amount and scales linearly:\n"
			.."_______________________________\n"
			..CKWord("Peril", "Peril_rgb")..":       "..CNumb("0", "n_0_rgb").."|   "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."|   "..CNumb("50", "n_50_rgb").."|   "..CNumb("60", "n_60_rgb").."|   "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("TDR", "TDR_rgb").."("..CNumb("%", "pc_rgb").."): "..CNumb("10", "n_10_rgb").."| "..CKWord("~15", "n__15_rgb").."| "..CKWord("~19", "n__19_rgb").."| "..CKWord("~22", "n__22_rgb").."| "..CKWord("~24", "n__24_rgb").."| "..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		ru = Dot_green.." От {min_damage:%s} до {max_damage:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." в зависимости от вашего текущего уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Единство с варпом
			.."\n"
			..Dot_green.." Всегда даёт минимум {min_damage:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." независимо от текущего уровня "..CKWord("опасности", "opasnosti_rgb_ru").." и увеличивается линейно:\n"
			.."_______________________________\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."|   "..CNumb("60", "n_60_rgb").."|   "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("СУС", "TDR_rgb_ru").."("..CNumb("%", "pc_rgb").."):           "..CNumb("10", "n_10_rgb").."| "..CKWord("~15", "n__15_rgb").."| "..CKWord("~19", "n__19_rgb").."| "..CKWord("~24", "n__24_rgb").."| "..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		fr = Dot_green.." {min_damage:%s} à {max_damage:%s} de "..CKWord("Réduction des dégâts de robustesse", "Tghns_dmg_red_rgb_fr").." en fonction de votre "..CKWord("Péril", "Peril_rgb_fr").." actuel.\n"
			.."\n"
			..Dot_green.." Accorde toujours un minimum de {min_damage:%s} de "..CKWord("Réduction des dégâts de robustesse", "Tghns_dmg_red_rgb_fr").." quel que soit le niveau de "..CKWord("Péril", "Peril_rgb_fr").." et évolue linéairement :\n"
			.."_______________________________\n"
			..CKWord("Péril", "Peril_rgb_fr").." :        "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."|   "..CNumb("50", "n_50_rgb").."|   "..CNumb("60", "n_60_rgb").."|   "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("TDR", "TDR_rgb_fr").."("..CNumb("%", "pc_rgb")..") : "..CNumb("10", "n_10_rgb").."| "..CKWord("~15", "n__15_rgb").."| "..CKWord("~19", "n__19_rgb").."| "..CKWord("~22", "n__22_rgb").."| "..CKWord("~24", "n__24_rgb").."| "..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		["zh-tw"] = Dot_green.." 依當前"..CKWord("反噬", "Peril_rgb_tw").."，獲得 {min_damage:%s} 至 {max_damage:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 無論當前"..CKWord("反噬", "Peril_rgb_tw").."多少，至少獲得 {min_damage:%s} "..CKWord("韌性減傷", "Tghns_dmg_red_rgb_tw").."，並依比例線性提升：\n"
			.."_______________________________\n"
			..CKWord("反噬", "Peril_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("0", "n_0_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("40", "n_40_rgb").." | "..CNumb("50", "n_50_rgb").." | "..CNumb("60", "n_60_rgb").." | "..CNumb("80", "n_80_rgb").." | "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("韌性減傷", "TDR_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("10", "n_10_rgb").." | "..CKWord("~15", "n__15_rgb").." | "..CKWord("~19", "n__19_rgb").." | "..CKWord("~22", "n__22_rgb").." | "..CKWord("~24", "n__24_rgb").." | "..CKWord("~28", "n__28_rgb").." | "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		["zh-cn"] = Dot_green.." 根据当前"..CKWord("危机值", "Peril_rgb_zh_cn").."获得{min_damage:%s}至{max_damage:%s}的"..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 无论当前"..CKWord("危机值", "Peril_rgb_zh_cn").."数值为何，始终提供至少{min_damage:%s}的"..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."，并线性增长：\n"
			.."_______________________________\n"
			..CKWord("危机值", "Peril_rgb_zh_cn").."：             "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."|"..CNumb("100", "n_100_rgb").."\n"
			..CKWord("韧性伤害减免", "Tghns_dmg_red_rgb_zh_cn").."："..CNumb("10", "n_10_rgb").."|"..CKWord("~15", "n__15_rgb").."|"..CKWord("~19", "n__19_rgb").."|"..CKWord("~24", "n__24_rgb").."|"..CKWord("~28", "n__28_rgb").."|  "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		de = Dot_green.." {min_damage:%s} bis {max_damage:%s} "..CKWord("Widerstandsschadensreduktion", "Tghns_dmg_red_rgb_de")..", basierend auf Ihrer aktuellen "..CKWord("Gefahr", "Peril_rgb_de")..".\n"
			.."\n"
			..Dot_green.." Gewährt immer mindestens {min_damage:%s} "..CKWord("Widerstandsschadensreduktion", "Tghns_dmg_red_rgb_de")..", unabhängig von der aktuellen "..CKWord("Gefahr", "Peril_rgb_de")..", und skaliert linear:\n"
			.."_______________________________\n"
			..CKWord("Gefahr", "Peril_rgb_de")..":      "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."|  "..CNumb("50", "n_50_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."|"..CNumb("100", "n_100_rgb").."\n"
			..CKWord("TDR", "TDR_rgb_de").." ("..CNumb("%", "pc_rgb").."): "..CNumb("10", "n_10_rgb").."|"..CKWord("~15", "n__15_rgb").."|"..CKWord("~19", "n__19_rgb").."|"..CKWord("~22", "n__22_rgb").."|"..CKWord("~24", "n__24_rgb").."|"..CKWord("~28", "n__28_rgb").."|  "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		it = Dot_green.." Dal {min_damage:%s} al {max_damage:%s} di "..CKWord("Riduzione danno robustezza", "Tghns_dmg_red_rgb_it").." in base al tuo "..CKWord("Pericolo", "Peril_rgb_it").." attuale.\n"
			.."\n"
			..Dot_green.." Concede sempre almeno {min_damage:%s} di "..CKWord("Riduzione danno robustezza", "Tghns_dmg_red_rgb_it")..", indipendentemente dal livello di "..CKWord("Pericolo", "Peril_rgb_it")..", e scala linearmente:\n"
			.."_______________________________\n"
			..CKWord("Pericolo", "Peril_rgb_it")..":     "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."|  "..CNumb("50", "n_50_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("RDR", "TDR_rgb_it").." ("..CNumb("%", "pc_rgb").."):    "..CNumb("10", "n_10_rgb").."|"..CKWord("~15", "n__15_rgb").."|"..CKWord("~19", "n__19_rgb").."|"..CKWord("~22", "n__22_rgb").."|"..CKWord("~24", "n__24_rgb").."|"..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		ja = Dot_green.." 現在の"..CKWord("危険", "Peril_rgb_ja").."に応じて、{min_damage:%s}～{max_damage:%s}の"..CKWord("耐久ダメージ軽減", "Tghns_dmg_red_rgb_ja").."を得る。\n"
			.."\n"
			..Dot_green.." 現在の"..CKWord("危険", "Peril_rgb_ja").."に関わらず常に最低{min_damage:%s}の軽減を提供し、直線的に増加する：\n"
			.."_______________________________\n"
			..CKWord("危険", "Peril_rgb_ja").."：     "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."|  "..CNumb("50", "n_50_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."|"..CNumb("100", "n_100_rgb").."\n"
			..CKWord("耐久ダメージ軽減", "TDR_rgb_ja").."("..CNumb("%", "pc_rgb")..")："..CNumb("10", "n_10_rgb").."|"..CKWord("~15", "n__15_rgb").."|"..CKWord("~19", "n__19_rgb").."|"..CKWord("~22", "n__22_rgb").."|"..CKWord("~24", "n__24_rgb").."|"..CKWord("~28", "n__28_rgb").."|  "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		ko = Dot_green.." 현재 "..CKWord("위험", "Peril_rgb_ko").."에 따라 {min_damage:%s}에서 {max_damage:%s}까지의 "..CKWord("인내 피해 감소", "Tghns_dmg_red_rgb_ko").."를 얻습니다.\n"
			.."\n"
			..Dot_green.." 현재 "..CKWord("위험", "Peril_rgb_ko").." 수치에 관계없이 항상 최소 {min_damage:%s}의 "..CKWord("인내 피해 감소", "Tghns_dmg_red_rgb_ko").."를 제공하며 선형적으로 증가합니다:\n"
			.."_______________________________\n"
			..CKWord("위험", "Peril_rgb_ko").."：      "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."|  "..CNumb("50", "n_50_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."|"..CNumb("100", "n_100_rgb").."\n"
			..CKWord("인내 피해 감소", "TDR_rgb_ko").."("..CNumb("%", "pc_rgb")..")："..CNumb("10", "n_10_rgb").."|"..CKWord("~15", "n__15_rgb").."|"..CKWord("~19", "n__19_rgb").."|"..CKWord("~22", "n__22_rgb").."|"..CKWord("~24", "n__24_rgb").."|"..CKWord("~28", "n__28_rgb").."|  "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		pl = Dot_green.." Od {min_damage:%s} do {max_damage:%s} "..CKWord("Redukcji obrażeń od odporności", "Tghns_dmg_red_rgb_pl")..", w zależności od twojego aktualnego "..CKWord("Zagrożenia", "Peril_rgb_pl")..".\n"
			.."\n"
			..Dot_green.." Zawsze zapewnia co najmniej {min_damage:%s} "..CKWord("Redukcji obrażeń od odporności", "Tghns_dmg_red_rgb_pl")..", niezależnie od poziomu "..CKWord("Zagrożenia", "Peril_rgb_pl")..", i skaluje się liniowo:\n"
			.."_______________________________\n"
			..CKWord("Zagrożenie", "Peril_rgb_pl")..": "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."|  "..CNumb("50", "n_50_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("TDR", "TDR_rgb_pl").." ("..CNumb("%", "pc_rgb").."):      "..CNumb("10", "n_10_rgb").."|"..CKWord("~15", "n__15_rgb").."|"..CKWord("~19", "n__19_rgb").."|"..CKWord("~22", "n__22_rgb").."|"..CKWord("~24", "n__24_rgb").."|"..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		["pt-br"] = Dot_green.." De {min_damage:%s} a {max_damage:%s} de "..CKWord("Redução de dano de resistência", "Tghns_dmg_red_rgb_pt_br").." com base no seu "..CKWord("Perigo", "Peril_rgb_pt_br").." atual.\n"
			.."\n"
			..Dot_green.." Sempre concede um mínimo de {min_damage:%s} de "..CKWord("Redução de dano de resistência", "Tghns_dmg_red_rgb_pt_br")..", independentemente do nível de "..CKWord("Perigo", "Peril_rgb_pt_br")..", e escala linearmente:\n"
			.."_______________________________\n"
			..CKWord("Perigo", "Peril_rgb_pt_br")..":       "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."|  "..CNumb("50", "n_50_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("RDR", "TDR_rgb_pt_br").." ("..CNumb("%", "pc_rgb").."):   "..CNumb("10", "n_10_rgb").."|"..CKWord("~15", "n__15_rgb").."|"..CKWord("~19", "n__19_rgb").."|"..CKWord("~22", "n__22_rgb").."|"..CKWord("~24", "n__24_rgb").."|"..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		es = Dot_green.." De {min_damage:%s} a {max_damage:%s} de "..CKWord("Reducción de daño de robustez", "Tghns_dmg_red_rgb_es").." según tu "..CKWord("Peligro", "Peril_rgb_es").." actual.\n"
			.."\n"
			..Dot_green.." Siempre otorga un mínimo de {min_damage:%s} de "..CKWord("Reducción de daño de robustez", "Tghns_dmg_red_rgb_es")..", independientemente del nivel de "..CKWord("Peligro", "Peril_rgb_es")..", y escala linealmente:\n"
			.."_______________________________\n"
			..CKWord("Peligro", "Peril_rgb_es")..":      "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."|  "..CNumb("50", "n_50_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("RDR", "TDR_rgb_es").." ("..CNumb("%", "pc_rgb").."):   "..CNumb("10", "n_10_rgb").."|"..CKWord("~15", "n__15_rgb").."|"..CKWord("~19", "n__19_rgb").."|"..CKWord("~22", "n__22_rgb").."|"..CKWord("~24", "n__24_rgb").."|"..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
	},
	--[+ Passive 21 - Just a Dream +]--	09.06.2026
	["loc_talent_psyker_damage_to_peril_conversion_desc"] = { -- percent: 25%, +colors
		en = Dot_green.." {percent:%s} of "..CKWord("Damage", "Damage_rgb").." Taken is converted into "..CKWord("Peril", "Peril_rgb")..", while below "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb")..".",
		ru = Dot_green.." {percent:%s} получаемого "..CKWord("урона", "urona_rgb_ru").." преобразуется в "..CKWord("опасность", "opasnost_rgb_ru")..", пока ваш уровень "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("97%", "pc_97_rgb")..".", -- Лишь сон -- руоф Просто грезы
		fr = Dot_green.." {percent:%s} des "..CKWord("Dégâts", "Damage_rgb_fr").." subis sont convertis en "..CKWord("Péril", "Peril_rgb_fr")..", en dessous de "..CNumb("97%", "pc_97_rgb").." de "..CKWord("Péril", "Peril_rgb_fr")..".",
		["zh-tw"] = Dot_green.." 當"..CKWord("反噬", "Peril_rgb_tw").."低於 "..CNumb("97%", "pc_97_rgb").." 時，將所受"..CKWord("傷害", "Damage_rgb_tw").."的 {percent:%s} 轉化為"..CKWord("反噬", "Peril_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 在"..CKWord("危机值", "Peril_rgb_zh_cn").."低于"..CNumb("97%", "pc_97_rgb").."时，受到的{percent:%s}"..CKWord("伤害", "Damage_rgb_zh_cn").."转化为"..CKWord("危机值", "Peril_rgb_zh_cn").."。",
		de = Dot_green.." {percent:%s} des erlittenen "..CKWord("Schadens", "Damage_rgb_de").." wird in "..CKWord("Gefahr", "Peril_rgb_de").." umgewandelt, solange Sie sich unter "..CNumb("97%", "pc_97_rgb").." "..CKWord("Gefahr", "Peril_rgb_de").." befinden.",
		it = Dot_green.." {percent:%s} dei "..CKWord("Danni", "Damage_rgb_it").." subiti vengono convertiti in "..CKWord("Pericolo", "Peril_rgb_it")..", mentre sei al di sotto del "..CNumb("97%", "pc_97_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it")..".",
		ja = Dot_green.." "..CKWord("危険", "Peril_rgb_ja").."が"..CNumb("97%", "pc_97_rgb").."未満の時、受ける"..CKWord("ダメージ", "Damage_rgb_ja").."の{percent:%s}が"..CKWord("危険", "Peril_rgb_ja").."に変換される。",
		ko = Dot_green.." "..CKWord("위험", "Peril_rgb_ko").."이(가) "..CNumb("97%", "pc_97_rgb").." 미만일 때, 받는 "..CKWord("피해", "Damage_rgb_ko").."의 {percent:%s}이(가) "..CKWord("위험", "Peril_rgb_ko").."(으)로 전환됩니다.",
		pl = Dot_green.." {percent:%s} otrzymywanych "..CKWord("Obrażeń", "Damage_rgb_pl").." zamieniane jest na "..CKWord("Zagrożenie", "Peril_rgb_pl")..", gdy twoje "..CKWord("Zagrożenie", "Peril_rgb_pl").." jest poniżej "..CNumb("97%", "pc_97_rgb")..".",
		["pt-br"] = Dot_green.." {percent:%s} do "..CKWord("Dano", "Damage_rgb_pt_br").." sofrido é convertido em "..CKWord("Perigo", "Peril_rgb_pt_br")..", enquanto estiver abaixo de "..CNumb("97%", "pc_97_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br")..".",
		es = Dot_green.." {percent:%s} del "..CKWord("Daño", "Damage_rgb_es").." recibido se convierte en "..CKWord("Peligro", "Peril_rgb_es")..", mientras estés por debajo del "..CNumb("97%", "pc_97_rgb").." de "..CKWord("Peligro", "Peril_rgb_es")..".",
	},
	--[+ Passive 22 - Anticipation +]--	09.06.2026
	["loc_talent_psyker_improved_dodge_description"] = { -- dodge_linger_time: +50%, extra_consecutive_dodges: 1
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} Effective Dodges.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} Dodge duration.\n"
			..Dot_nc.." Increases from "..CNumb("0.2", "n_0_2_rgb").." to "..CNumb("0.3", "n_0_3_rgb").." seconds.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} к количеству эффективных уклонений.\n" -- Предвкушение
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} к длительности уклонений.\n"
			..Dot_nc.." Длительность увеличивается с "..CNumb("0.2", "n_0_2_rgb").." до "..CNumb("0.3", "n_0_3_rgb").." секунды.",
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} esquive effective.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} de durée d'esquive.\n"
			..Dot_nc.." Passe de "..CNumb("0.2", "n_0_2_rgb").." à "..CNumb("0.3", "n_0_3_rgb").." secondes.",
		["zh-tw"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} 次有效閃避。\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} 閃避持續時間。\n"
			..Dot_nc.." 從 "..CNumb("0.2", "n_0_2_rgb").." 提高至 "..CNumb("0.3", "n_0_3_rgb").." 秒。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} 有效闪避次数。\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} 闪避持续时间。\n"
			..Dot_nc.." 从 "..CNumb("0.2", "n_0_2_rgb").." 秒提高至 "..CNumb("0.3", "n_0_3_rgb").." 秒。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} effektive Ausweichmanöver.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} Ausweichdauer.\n"
			..Dot_nc.." Erhöht von "..CNumb("0.2", "n_0_2_rgb").." auf "..CNumb("0.3", "n_0_3_rgb").." Sekunden.",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} Schivate effettive.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} durata della schivata.\n"
			..Dot_nc.." Aumenta da "..CNumb("0.2", "n_0_2_rgb").." a "..CNumb("0.3", "n_0_3_rgb").." secondi.",
		ja = Dot_green.." 有効な回避回数が"..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s}増加。\n"
			.."\n"
			..Dot_green.." 回避持続時間が{dodge_linger_time:%s}増加。\n"
			..Dot_nc.." "..CNumb("0.2", "n_0_2_rgb").."秒から"..CNumb("0.3", "n_0_3_rgb").."秒に増加。",
		ko = Dot_green.." 유효 회피 횟수 "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} 증가.\n"
			.."\n"
			..Dot_green.." 회피 지속 시간 {dodge_linger_time:%s} 증가.\n"
			..Dot_nc.." "..CNumb("0.2", "n_0_2_rgb").."초에서 "..CNumb("0.3", "n_0_3_rgb").."초로 증가합니다.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} skutecznych uników.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} czasu trwania uniku.\n"
			..Dot_nc.." Zwiększa z "..CNumb("0.2", "n_0_2_rgb").." do "..CNumb("0.3", "n_0_3_rgb").." sekund.",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} Esquivas efetivas.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} de duração da esquiva.\n"
			..Dot_nc.." Aumenta de "..CNumb("0.2", "n_0_2_rgb").." para "..CNumb("0.3", "n_0_3_rgb").." segundos.",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} Esquivas efectivas.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} de duración de la esquiva.\n"
			..Dot_nc.." Aumenta de "..CNumb("0.2", "n_0_2_rgb").." a "..CNumb("0.3", "n_0_3_rgb").." segundos.",
	},
	--[+ Passive 23 - Solidity +]--	09.06.2026
	["loc_talent_psyker_increased_vent_speed_description"] = { -- vent_speed: 30%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} Quell Speed.\n"
			.."\n"
			..Dot_nc.." Applies only to Active Quelling, Passive Quelling is unaffected.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} к скорости подавления "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Устойчивость -- руоф Твердость
			.."\n"
			..Dot_nc.." Применяется только к активному подавлению, пассивное подавление не затрагивается.",
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} de vitesse d'apaisement.\n"
			.."\n"
			..Dot_nc.." S'applique uniquement à l'apaisement actif, l'apaisement passif n'est pas affecté.",
		["zh-tw"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} 平息速度。\n"
			.."\n"
			..Dot_nc.." 僅適用於主動平息，被動平息不受影響。",
		["zh-cn"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} 镇静速度。\n"
			.."\n"
			..Dot_nc.." 仅适用于主动镇静，被动镇静不受影响。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} Beruhigungsgeschwindigkeit.\n"
			.."\n"
			..Dot_nc.." Gilt nur für aktives Beruhigen, passives Beruhigen ist nicht betroffen.",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} velocità di quietudine.\n"
			.."\n"
			..Dot_nc.." Si applica solo alla quietudine attiva, quella passiva non è influenzata.",
		ja = Dot_green.." クエリング速度が"..CNumb("+", "n_plus_rgb").."{vent_speed:%s}増加。\n"
			.."\n"
			..Dot_nc.." アクティブクエリングのみに適用。パッシブクエリングは影響を受けない。",
		ko = Dot_green.." 진정 속도 "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} 증가.\n"
			.."\n"
			..Dot_nc.." 능동 진정에만 적용되며, 수동 진정은 영향을 받지 않습니다.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} szybkości uciszenia.\n"
			.."\n"
			..Dot_nc.." Dotyczy tylko aktywnego uciszenia, pasywne uciszenie nie podlega zmianom.",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} de Velocidade de Aquietamento.\n"
			.."\n"
			..Dot_nc.." Aplica-se apenas ao Aquietamento ativo, o Aquietamento passivo não é afetado.",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} de velocidad de apaciguamiento.\n"
			.."\n"
			..Dot_nc.." Se aplica solo al apaciguamiento activo, el apaciguamiento pasivo no se ve afectado.",
	},
	--[+ Passive 24 - Puppet Master +]--	09.06.2026
	["loc_talent_psyker_coherency_size_increase_description"] = { -- radius_modifier: 50%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} Radius for your "..CKWord("Coherency", "Coherency_rgb").." Aura.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} к радиусу вашей ауры "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Кукловод
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} de rayon pour votre aura de "..CKWord("Syntonie", "Coherency_rgb_fr")..".",
		["zh-tw"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} "..CKWord("協同", "Coherency_rgb_tw").." 光環半徑。",
		["zh-cn"] = Dot_green.." 你的"..CKWord("连携", "Coherency_rgb_zh_cn").."光环半径增加"..CNumb("+", "n_plus_rgb").."{radius_modifier:%s}。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} Radius für Ihre "..CKWord("Kohärenz", "Coherency_rgb_de").."-Aura.",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} di raggio per la tua aura di "..CKWord("Coerenza", "Coherency_rgb_it")..".",
		ja = Dot_green.." "..CKWord("結束", "Coherency_rgb_ja").."オーラの半径が"..CNumb("+", "n_plus_rgb").."{radius_modifier:%s}増加。",
		ko = Dot_green.." "..CKWord("일체감", "Coherency_rgb_ko").." 오라 반경 "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} 증가.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} promienia dla twojej aury "..CKWord("Spójności", "Coherency_rgb_pl")..".",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} de raio para sua aura de "..CKWord("Coerência", "Coherency_rgb_pt_br")..".",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} de radio para tu aura de "..CKWord("Coherencia", "Coherency_rgb_es")..".",
	},
	--[+ Passive 25 - Vulnerable Minds +]--	09.06.2026
	["loc_talent_psyker_damage_vs_ogryns_and_monsters_desc"] = { -- damage: +20%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs Ogryns and Monstrosities.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." огринам и чудовищам.", -- Уязвимые разумы -- руоф Уязвимые сознания
		fr = Dot_green.." {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les Ogryns et les Monstruosités.",
		["zh-tw"] = Dot_green.." 對歐格林與巨獸的"..CKWord("傷害", "Damage_rgb_tw").."增加 {damage:%s}。",
		["zh-cn"] = Dot_green.." 对欧格林和巨兽造成的"..CKWord("伤害", "Damage_rgb_zh_cn").."提高{damage:%s}。",
		de = Dot_green.." {damage:%s} "..CKWord("Schaden", "Damage_rgb_de").." gegen Ogryns und Monstrositäten.",
		it = Dot_green.." {damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." contro Ogryn e Mostruosità.",
		ja = Dot_green.." オグリンとモンスターへの"..CKWord("ダメージ", "Damage_rgb_ja").."が{damage:%s}増加。",
		ko = Dot_green.." 오그린 및 괴수에게 주는 "..CKWord("피해", "Damage_rgb_ko").."가 {damage:%s} 증가합니다.",
		pl = Dot_green.." {damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl").." przeciw Ogrynom i Monstrualnościom.",
		["pt-br"] = Dot_green.." {damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." contra Ogryns e Monstruosidades.",
		es = Dot_green.." {damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." contra Ogryns y Monstruosidades.",
	},
	--[+ Passive 26 - Warp Rider +]--	09.06.2026
	["loc_talent_psyker_damage_based_on_warp_charge_desc"] = { -- max_damage: +20%, +colors
		en = Dot_green.." Deal up to {max_damage:%s} "..CKWord("Damage", "Damage_rgb")..", based on your current "..CKWord("Peril", "Peril_rgb")..":\n"
			.."_______________________________\n"
			..CKWord("Peril", "Peril_rgb").."("..CNumb("%", "pc_rgb").."):         "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("50", "n_50_rgb").."| "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").."("..CNumb("%", "pc_rgb").."):  "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("10", "n_10_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		ru = Dot_green.." До {max_damage:%s} к "..CKWord("урон", "uronu_rgb_ru")..", в зависимости от вашего уровня "..CKWord("опасности", "opasnosti_rgb_ru")..":\n" -- Всадник варпа -- руоф Наездник варпа
			.."_______________________________\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CNumb("%", "pc_rgb").."):    "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").."("..CNumb("%", "pc_rgb").."):               "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		fr = Dot_green.." Infligez jusqu'à {max_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." supplémentaires, en fonction de votre "..CKWord("Péril", "Peril_rgb_fr").." :\n"
			.."_______________________________\n"
			..CKWord("Péril", "Peril_rgb_fr").." ("..CNumb("%", "pc_rgb")..") :      "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("50", "n_50_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Dégâts", "Damage_rgb_fr").." ("..CNumb("%", "pc_rgb")..") : "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("10", "n_10_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		["zh-tw"] = Dot_green.." 依當前"..CKWord("反噬", "Peril_rgb_tw").." 等級，最多 {max_damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."：\n"
			.."_______________________________\n"
			..CKWord("反噬", "Peril_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("0", "n_0_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("40", "n_40_rgb").." | "..CNumb("50", "n_50_rgb").." | "..CNumb("60", "n_60_rgb").." | "..CNumb("80", "n_80_rgb").." | "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("傷害", "Damage_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("0", "n_0_rgb").." | "..CNumb("4", "n_4_rgb").." | "..CNumb("8", "n_8_rgb").." | "..CNumb("10", "n_10_rgb").." | "..CNumb("12", "n_12_rgb").." | "..CNumb("16", "n_16_rgb").." | "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		["zh-cn"] = Dot_green.." 根据当前"..CKWord("危机值", "Peril_rgb_zh_cn").."造成最多{max_damage:%s}额外"..CKWord("伤害", "Damage_rgb_zh_cn").."：\n"
			.."_______________________________\n"
			..CKWord("危机值", "Peril_rgb_zh_cn").."("..CNumb("%", "pc_rgb")..")：   "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."|  "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("伤害", "Damage_rgb_zh_cn").."("..CNumb("%", "pc_rgb")..")：       "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|     "..CNumb("8", "n_8_rgb").."|   "..CNumb("12", "n_12_rgb").."|   "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		de = Dot_green.." Fügen Sie bis zu {max_damage:%s} mehr "..CKWord("Schaden", "Damage_rgb_de").." zu, basierend auf Ihrer "..CKWord("Gefahr", "Peril_rgb_de")..":\n"
			.."_______________________________\n"
			..CKWord("Gefahr", "Peril_rgb_de").." ("..CNumb("%", "pc_rgb").."):    "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Schaden", "Damage_rgb_de").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		it = Dot_green.." Infliggi fino a {max_damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." extra, in base al tuo "..CKWord("Pericolo", "Peril_rgb_it")..":\n"
			.."_______________________________\n"
			..CKWord("Pericolo", "Peril_rgb_it").." ("..CNumb("%", "pc_rgb").."):    "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Danno", "Damage_rgb_it").." ("..CNumb("%", "pc_rgb").."):       "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		ja = Dot_green.." 現在の"..CKWord("危険", "Peril_rgb_ja").."に応じて、最大{max_damage:%s}の追加"..CKWord("ダメージ", "Damage_rgb_ja").."を与える：\n"
			.."_______________________________\n"
			..CKWord("危険", "Peril_rgb_ja").." ("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."|"..CNumb("100", "n_100_rgb").."\n"
			..CKWord("ダメージ", "Damage_rgb_ja").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		ko = Dot_green.." 현재 "..CKWord("위험", "Peril_rgb_ko").."에 따라 최대 {max_damage:%s}의 추가 "..CKWord("피해", "Damage_rgb_ko").."를 줍니다:\n"
			.."_______________________________\n"
			..CKWord("위험", "Peril_rgb_ko").." ("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."|"..CNumb("100", "n_100_rgb").."\n"
			..CKWord("피해", "Damage_rgb_ko").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		pl = Dot_green.." Zadaj do {max_damage:%s} więcej "..CKWord("Obrażeń", "Damage_rgb_pl")..", w zależności od twojego "..CKWord("Zagrożenia", "Peril_rgb_pl")..":\n"
			.."_______________________________\n"
			..CKWord("Zagrożenie", "Peril_rgb_pl").." ("..CNumb("%", "pc_rgb").."):  "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Obrażenia", "Damage_rgb_pl").." ("..CNumb("%", "pc_rgb").."):    "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		["pt-br"] = Dot_green.." Cause até {max_damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." extra, baseado no seu "..CKWord("Perigo", "Peril_rgb_pt_br")..":\n"
			.."_______________________________\n"
			..CKWord("Perigo", "Peril_rgb_pt_br").." ("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Dano", "Damage_rgb_pt_br").." ("..CNumb("%", "pc_rgb").."):     "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		es = Dot_green.." Inflige hasta {max_damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." adicional, según tu "..CKWord("Peligro", "Peril_rgb_es")..":\n"
			.."_______________________________\n"
			..CKWord("Peligro", "Peril_rgb_es").." ("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Daño", "Damage_rgb_es").." ("..CNumb("%", "pc_rgb").."):      "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
	},
	--[+ Passive 27 - True Aim +]--	09.06.2026
	["loc_talent_psyker_weakspot_grants_crit_once_description"] = { -- weakspot_hits: 5, +colors
		en = Dot_green.." Landing {weakspot_hits:%s} "..CKWord("Weakspot Hits", "Weakspothits_rgb").." grants your next Ranged Attack a guaranteed "..CKWord("Critical", "Critical_rgb")..".\n"
			.."\n"
			..Dot_nc.." "..CKWord("Weakspot", "Weakspot_rgb").." Stacks last until consumed.\n"
			..Dot_nc.." Can only trigger once per Attack.\n"
			..Dot_red.." Shooting air consumes the guaranteed "..CKWord("Crit", "Crit_rgb")..".",
		ru = Dot_green.." Попадания {weakspot_hits:%s} раз в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." гарантированно делают вашу следующую дальнобойную атаку "..CKWord("критическим выстрелом", "krit_vystrelom_rgb_ru")..".\n" -- Верная цель
			.."\n"
			..Dot_nc.." Заряды попаданий в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." держатся до первого "..CKWord("критического выстрела", "krit_vystrela_rgb_ru")..".\n"
			..Dot_nc.." Срабатывает только раз за атаку.\n"
			..Dot_red.." Выстрел в воздух тратит "..CKWord("критический выстрел", "krit_vystrel_rgb_ru")..".",
		fr = Dot_green.." Atteindre {weakspot_hits:%s} "..CKWord("Points faibles", "Weakspothits_rgb_fr").." rend votre prochaine attaque à distance automatiquement "..CKWord("Critique", "Critical_rgb_fr")..".\n"
			.."\n"
			..Dot_nc.." Les cumuls de "..CKWord("Point faible", "Weakspot_rgb_fr").." durent jusqu'à consommation.\n"
			..Dot_nc.." Ne peut se déclencher qu'une seule fois par attaque.\n"
			..Dot_red.." Tirer dans le vide consomme le "..CKWord("Critique", "Crit_rgb_fr").." garanti.",
		["zh-tw"] = Dot_green.." 達成 {weakspot_hits:%s} 次"..CKWord("弱點命中", "Weakspothits_rgb_tw").."後，下一次遠程攻擊必定造成"..CKWord("致命一擊", "Critical_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." "..CKWord("弱點", "Weakspot_rgb_tw").." 層數保留至消耗。\n"
			..Dot_nc.." 每次攻擊只觸發一次。\n"
			..Dot_red.." 對空射擊會消耗這次必定造成的"..CKWord("致命一擊", "Crit_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 命中{weakspot_hits:%s}次"..CKWord("弱点", "Weakspothits_rgb_zh_cn").."后，下一次远程攻击必定"..CKWord("暴击", "Crit_hit_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." "..CKWord("弱点", "Weakspot_rgb_zh_cn").."层数持续直到被消耗。\n"
			..Dot_nc.." 每次攻击只能触发一次。\n"
			..Dot_red.." 对空射击会消耗必定的"..CKWord("暴击", "Crit_hit_rgb_zh_cn").."。",
		de = Dot_green.." Das Treffen von {weakspot_hits:%s} "..CKWord("Schwachstellen", "Weakspothits_rgb_de").." macht Ihren nächsten Fernkampfangriff garantiert zu einem "..CKWord("Kritischen", "Critical_rgb_de")..".\n"
			.."\n"
			..Dot_nc.." "..CKWord("Schwachstellen", "Weakspot_rgb_de").."-Stapel halten an, bis sie verbraucht sind.\n"
			..Dot_nc.." Kann nur einmal pro Angriff ausgelöst werden.\n"
			..Dot_red.." Das Schießen in die Luft verbraucht den garantierten "..CKWord("Krit", "Crit_rgb_de")..".",
		it = Dot_green.." Colpire {weakspot_hits:%s} "..CKWord("Punti deboli", "Weakspothits_rgb_it").." garantisce che il tuo prossimo attacco a distanza sia un "..CKWord("Critico", "Critical_rgb_it")..".\n"
			.."\n"
			..Dot_nc.." Gli accumuli di "..CKWord("Punto debole", "Weakspot_rgb_it").." durano fino a quando non vengono consumati.\n"
			..Dot_nc.." Può attivarsi solo una volta per attacco.\n"
			..Dot_red.." Sparare a vuoto consuma il "..CKWord("Critico", "Crit_rgb_it").." garantito.",
		ja = Dot_green.." "..CKWord("弱点", "Weakspothits_rgb_ja").."を{weakspot_hits:%s}回当てると、次の遠隔攻撃が必ず"..CKWord("クリティカル", "Critical_rgb_ja").."になる。\n"
			.."\n"
			..Dot_nc.." "..CKWord("弱点", "Weakspot_rgb_ja").."スタックは消費されるまで持続。\n"
			..Dot_nc.." 1回の攻撃につき1回のみ発動。\n"
			..Dot_red.." 空に向けて撃つと確実な"..CKWord("クリティカル", "Crit_rgb_ja").."を消費する。",
		ko = Dot_green.." "..CKWord("약점", "Weakspothits_rgb_ko").."을 {weakspot_hits:%s}회 적중 시 다음 원거리 공격이 보장된 "..CKWord("크리티컬", "Critical_rgb_ko").."이 됩니다.\n"
			.."\n"
			..Dot_nc.." "..CKWord("약점", "Weakspot_rgb_ko").." 중첩은 소모될 때까지 지속됩니다.\n"
			..Dot_nc.." 공격당 한 번만 발동합니다.\n"
			..Dot_red.." 허공에 총을 쏘면 보장된 "..CKWord("크리티컬", "Crit_rgb_ko").."이 소모됩니다.",
		pl = Dot_green.." Trafienie {weakspot_hits:%s} "..CKWord("Słabych punktów", "Weakspothits_rgb_pl").." zapewnia, że twój następny atak dystansowy będzie gwarantowanym "..CKWord("Krytycznym", "Critical_rgb_pl")..".\n"
			.."\n"
			..Dot_nc.." Ładunki "..CKWord("Słabego punktu", "Weakspot_rgb_pl").." trwają do zużycia.\n"
			..Dot_nc.." Może aktywować się tylko raz na atak.\n"
			..Dot_red.." Strzelanie w powietrze zużywa gwarantowany "..CKWord("Kryt", "Crit_rgb_pl")..".",
		["pt-br"] = Dot_green.." Acertar {weakspot_hits:%s} "..CKWord("Pontos fracos", "Weakspothits_rgb_pt_br").." faz com que seu próximo ataque à distância seja um "..CKWord("Crítico", "Critical_rgb_pt_br").." garantido.\n"
			.."\n"
			..Dot_nc.." Os acúmulos de "..CKWord("Ponto fraco", "Weakspot_rgb_pt_br").." duram até serem consumidos.\n"
			..Dot_nc.." Só pode ativar uma vez por ataque.\n"
			..Dot_red.." Atirar no ar consome o "..CKWord("Crítico", "Crit_rgb_pt_br").." garantido.",
		es = Dot_green.." Golpear {weakspot_hits:%s} "..CKWord("Puntos débiles", "Weakspothits_rgb_es").." hace que tu próximo ataque a distancia sea un "..CKWord("Crítico", "Critical_rgb_es").." garantizado.\n"
			.."\n"
			..Dot_nc.." Las acumulaciones de "..CKWord("Punto débil", "Weakspot_rgb_es").." duran hasta ser consumidas.\n"
			..Dot_nc.." Solo puede activarse una vez por ataque.\n"
			..Dot_red.." Disparar al aire consume el "..CKWord("Crítico", "Crit_rgb_es").." garantizado.",
	},
	--[+ Passive 28 - Kinetic Deflection +]--	09.06.2026
	["loc_talent_psyker_block_costs_warp_charge_desc"] = { -- warp_charge_block_cost: 25%, +colors
		en = Dot_green.." While below "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb")..", Blocking an attack causes you to gain "..CKWord("Peril", "Peril_rgb").." instead of losing "..CKWord("Stamina", "Stamina_rgb")..".\n"
			.."\n"
			..Dot_nc.." Gained "..CKWord("Peril", "Peril_rgb").." is {warp_charge_block_cost:%s} of the blocked attack's "..CKWord("Stamina", "Stamina_rgb").." cost.",
		ru = "Пока уровень "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("97%", "pc_97_rgb")..", блокирование атак приводит к повышению уровня "..CKWord("опасности", "opasnosti_rgb_ru").." вместо потери "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n" -- Кинетическое отклонение
			.."\n"
			..Dot_nc.." Получаемый уровень "..CKWord("опасности", "opasnosti_rgb_ru").." составляет {warp_charge_block_cost:%s} от стоимости "..CKWord("выносливости", "vynoslivosti_rgb_ru")..", затрачиваемой на обычное блокирование.",
		fr = Dot_green.." Lorsque vous êtes en dessous de "..CNumb("97%", "pc_97_rgb").." de "..CKWord("Péril", "Peril_rgb_fr")..", bloquer une attaque vous fait gagner du "..CKWord("Péril", "Peril_rgb_fr").." au lieu de perdre de l'"..CKWord("Endurance", "Stamina_rgb_fr")..".\n"
			.."\n"
			..Dot_nc.." Le "..CKWord("Péril", "Peril_rgb_fr").." gagné est de {warp_charge_block_cost:%s} du coût en "..CKWord("Endurance", "Stamina_rgb_fr").." de l'attaque bloquée.",
		["zh-tw"] = Dot_green.." 當"..CKWord("反噬", "Peril_rgb_tw").."低於 "..CNumb("97%", "pc_97_rgb").." 時，格擋攻擊會增加"..CKWord("反噬", "Peril_rgb_tw").."，而不會消耗"..CKWord("耐力", "Stamina_rgb_tw").."。\n"
			.."\n"
			..Dot_nc.." 獲得的"..CKWord("反噬", "Peril_rgb_tw").." 為格擋正常"..CKWord("耐力", "Stamina_rgb_tw").." 消耗的 {warp_charge_block_cost:%s}。",
		["zh-cn"] = Dot_green.." 当"..CKWord("危机值", "Peril_rgb_zh_cn").."低于"..CNumb("97%", "pc_97_rgb").."时，格挡攻击会使你获得"..CKWord("危机值", "Peril_rgb_zh_cn").."而非消耗"..CKWord("耐力", "Stamina_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_nc.." 获得的"..CKWord("危机值", "Peril_rgb_zh_cn").."为被格挡攻击"..CKWord("耐力", "Stamina_rgb_zh_cn").."消耗的{warp_charge_block_cost:%s}。",
		de = Dot_green.." Wenn Sie sich unter "..CNumb("97%", "pc_97_rgb").." "..CKWord("Gefahr", "Peril_rgb_de").." befinden, erzeugen Sie beim Blocken eines Angriffs "..CKWord("Gefahr", "Peril_rgb_de")..", anstatt "..CKWord("Ausdauer", "Stamina_rgb_de").." zu verlieren.\n"
			.."\n"
			..Dot_nc.." Die erzeugte "..CKWord("Gefahr", "Peril_rgb_de").." beträgt {warp_charge_block_cost:%s} der "..CKWord("Ausdauer", "Stamina_rgb_de").."-Kosten des geblockten Angriffs.",
		it = Dot_green.." Quando sei al di sotto del "..CNumb("97%", "pc_97_rgb").." di "..CKWord("Pericolo", "Peril_rgb_it")..", bloccare un attacco ti fa guadagnare "..CKWord("Pericolo", "Peril_rgb_it").." invece di perdere "..CKWord("Vigore", "Stamina_rgb_it")..".\n"
			.."\n"
			..Dot_nc.." Il "..CKWord("Pericolo", "Peril_rgb_it").." guadagnato è pari a {warp_charge_block_cost:%s} del costo in "..CKWord("Vigore", "Stamina_rgb_it").." dell'attacco bloccato.",
		ja = Dot_green.." "..CKWord("危険", "Peril_rgb_ja").."が"..CNumb("97%", "pc_97_rgb").."未満の時、攻撃をブロックすると"..CKWord("スタミナ", "Stamina_rgb_ja").."を消費する代わりに"..CKWord("危険", "Peril_rgb_ja").."を獲得する。\n"
			.."\n"
			..Dot_nc.." 獲得する"..CKWord("危険", "Peril_rgb_ja").."は、ブロックした攻撃の"..CKWord("スタミナ", "Stamina_rgb_ja").."コストの{warp_charge_block_cost:%s}に相当する。",
		ko = Dot_green.." "..CKWord("위험", "Peril_rgb_ko").."이(가) "..CNumb("97%", "pc_97_rgb").." 미만일 때, 공격을 막으면 "..CKWord("스태미나", "Stamina_rgb_ko").."를 소모하는 대신 "..CKWord("위험", "Peril_rgb_ko").."을 얻습니다.\n"
			.."\n"
			..Dot_nc.." 얻는 "..CKWord("위험", "Peril_rgb_ko").."은 막은 공격 "..CKWord("스태미나", "Stamina_rgb_ko").." 비용의 {warp_charge_block_cost:%s}입니다.",
		pl = Dot_green.." Gdy twoje "..CKWord("Zagrożenie", "Peril_rgb_pl").." jest poniżej "..CNumb("97%", "pc_97_rgb")..", blokowanie ataku powoduje zyskanie "..CKWord("Zagrożenia", "Peril_rgb_pl").." zamiast utraty "..CKWord("Wytrzymałości", "Stamina_rgb_pl")..".\n"
			.."\n"
			..Dot_nc.." Zyskane "..CKWord("Zagrożenie", "Peril_rgb_pl").." wynosi {warp_charge_block_cost:%s} kosztu "..CKWord("Wytrzymałości", "Stamina_rgb_pl").." blokowanego ataku.",
		["pt-br"] = Dot_green.." Quando estiver abaixo de "..CNumb("97%", "pc_97_rgb").." de "..CKWord("Perigo", "Peril_rgb_pt_br")..", bloquear um ataque faz você ganhar "..CKWord("Perigo", "Peril_rgb_pt_br").." em vez de perder "..CKWord("Vigor", "Stamina_rgb_pt_br")..".\n"
			.."\n"
			..Dot_nc.." O "..CKWord("Perigo", "Peril_rgb_pt_br").." ganho é {warp_charge_block_cost:%s} do custo de "..CKWord("Vigor", "Stamina_rgb_pt_br").." do ataque bloqueado.",
		es = Dot_green.." Cuando estés por debajo del "..CNumb("97%", "pc_97_rgb").." de "..CKWord("Peligro", "Peril_rgb_es")..", bloquear un ataque te hace ganar "..CKWord("Peligro", "Peril_rgb_es").." en lugar de perder "..CKWord("Aguante", "Stamina_rgb_es")..".\n"
			.."\n"
			..Dot_nc.." El "..CKWord("Peligro", "Peril_rgb_es").." ganado es {warp_charge_block_cost:%s} del costo de "..CKWord("Aguante", "Stamina_rgb_es").." del ataque bloqueado.",
	},
	--[+ Passive 29 - Empyric Resolve +]--	09.06.2026
	["loc_talent_psyker_warp_glass_cannon_desc"] = { -- peril_reduction: -40%, toughness_reduction: -30%, +colors
		en = Dot_green.." {peril_reduction:%s} "..CKWord("Peril", "Peril_rgb").." Generation.\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenished.\n"
			..CPhrs("Dont_intw_coher_toughn").." Only affects Melee kills and Talents.",
		ru = Dot_green.." {peril_reduction:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Эмпирическая решимость
			.."\n"
			..Dot_red.." {toughness_reduction:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Влияет только на получение "..CKWord("стойкости", "stoikosti_rgb_ru").." от убийств и талантов.",
		fr = Dot_green.." {peril_reduction:%s} de génération de "..CKWord("Péril", "Peril_rgb_fr")..".\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} de "..CKWord("Robustesse", "Toughness_rgb_fr").." restaurée.\n"
			..CPhrs("Dont_intw_coher_toughn").." Affecte uniquement les éliminations en mêlée et les talents.",
		["zh-tw"] = Dot_green.." {peril_reduction:%s} "..CKWord("反噬", "Peril_rgb_tw").."產生量。\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} "..CKWord("韌性", "Toughness_rgb_tw").." 恢復。\n"
			..CPhrs("Dont_intw_coher_toughn").." 僅影響近戰擊殺和天賦的"..CKWord("韌性", "Toughness_rgb_tw").." 恢復。",
		["zh-cn"] = Dot_green.." {peril_reduction:%s} "..CKWord("危机值", "Peril_rgb_zh_cn").."产生。\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."恢复。\n"
			..CPhrs("Dont_intw_coher_toughn").." 仅影响近战击杀和天赋。",
		de = Dot_green.." {peril_reduction:%s} "..CKWord("Gefahr", "Peril_rgb_de").."-Erzeugung.\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} wiederhergestellter "..CKWord("Widerstand", "Toughness_rgb_de")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Betrifft nur Nahkampftötungen und Talente.",
		it = Dot_green.." {peril_reduction:%s} di generazione di "..CKWord("Pericolo", "Peril_rgb_it")..".\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} di "..CKWord("Robustezza", "Toughness_rgb_it").." ripristinata.\n"
			..CPhrs("Dont_intw_coher_toughn").." Colpisce solo le uccisioni corpo a corpo e i talenti.",
		ja = Dot_green.." {peril_reduction:%s} "..CKWord("危険", "Peril_rgb_ja").."生成軽減。\n"
			.."\n"
			..Dot_red.." 回復する"..CKWord("耐久", "Toughness_rgb_ja").."が{toughness_reduction:%s}減少。\n"
			..CPhrs("Dont_intw_coher_toughn").." 近接キルとタレントにのみ影響。",
		ko = Dot_green.." {peril_reduction:%s} "..CKWord("위험", "Peril_rgb_ko").." 생성 감소.\n"
			.."\n"
			..Dot_red.." 회복하는 "..CKWord("인내", "Toughness_rgb_ko").."가 {toughness_reduction:%s} 감소합니다.\n"
			..CPhrs("Dont_intw_coher_toughn").." 근접 처치 및 특성에만 영향을 줍니다.",
		pl = Dot_green.." {peril_reduction:%s} generacji "..CKWord("Zagrożenia", "Peril_rgb_pl")..".\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} przywracanej "..CKWord("Odporności", "Toughness_rgb_pl")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Dotyczy tylko zabójstw wręcz i talentów.",
		["pt-br"] = Dot_green.." {peril_reduction:%s} de geração de "..CKWord("Perigo", "Peril_rgb_pt_br")..".\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} de "..CKWord("Resistência", "Toughness_rgb_pt_br").." recuperado.\n"
			..CPhrs("Dont_intw_coher_toughn").." Afeta apenas mortes corpo a corpo e Talentos.",
		es = Dot_green.." {peril_reduction:%s} de generación de "..CKWord("Peligro", "Peril_rgb_es")..".\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} de "..CKWord("Robustez", "Toughness_rgb_es").." restaurado.\n"
			..CPhrs("Dont_intw_coher_toughn").." Afecta solo a muertes cuerpo a cuerpo y talentos.",
	},
	--[+ Passive 30 - Penetration of the Soul +]--	09.06.2026
	["loc_talent_psyker_warp_attacks_rending_alt_desc"] = { -- rending: +10%, threshold: 75%, +colors
		en = Dot_green.." Up to {rending:%s} "..CKWord("Rending", "Rending_rgb").." on Warp-Attacks, based on "..CKWord("Peril", "Peril_rgb")..":\n"
			.."_______________________________\n"
			..CKWord("Peril", "Peril_rgb").."("..CNumb("%", "pc_rgb").."):          "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("50", "n_50_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Rending", "Rending_rgb").."("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("10", "n_10_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		ru = Dot_green.." До {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони для варп-атак, в зависимости от уровня "..CKWord("опасности", "opasnosti_rgb_ru")..":\n" -- Проникновение в душу
			.."_______________________________\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CNumb("%", "pc_rgb").."):      "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Пробивание", "Probivanie_rgb_ru").."("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		fr = Dot_green.." Jusqu'à {rending:%s} de "..CKWord("Déchirure", "Rending_rgb_fr").." sur les attaques Warp, en fonction de votre "..CKWord("Péril", "Peril_rgb_fr")..":\n"
			.."_______________________________\n"
			..CKWord("Péril", "Peril_rgb_fr").." ("..CNumb("%", "pc_rgb").."):           "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("50", "n_50_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Déchirure", "Rending_rgb_fr").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("10", "n_10_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		["zh-tw"] = Dot_green.." 依"..CKWord("反噬", "Peril_rgb_tw").." 等級，亞空間攻擊最多 {rending:%s} "..CKWord("撕裂", "Rending_rgb_tw").."：\n"
			.."_______________________________\n"
			..CKWord("反噬", "Peril_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("0", "n_0_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("40", "n_40_rgb").." | "..CNumb("50", "n_50_rgb").." | "..CNumb("60", "n_60_rgb").." | "..CNumb("80", "n_80_rgb").." | "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("撕裂", "Rending_rgb_tw").."（"..CNumb("%", "pc_rgb").."）： "..CNumb("0", "n_0_rgb").." | "..CNumb("4", "n_4_rgb").." | "..CNumb("8", "n_8_rgb").." | "..CNumb("10", "n_10_rgb").." | "..CNumb("12", "n_12_rgb").." | "..CNumb("16", "n_16_rgb").." | "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		["zh-cn"] = Dot_green.." 根据当前"..CKWord("危机值", "Peril_rgb_zh_cn").."，亚空间攻击获得最多{rending:%s}"..CKWord("撕裂", "Rending_rgb_zh_cn").."：\n"
			.."_______________________________\n"
			..CKWord("危机值", "Peril_rgb_zh_cn").."("..CNumb("%", "pc_rgb")..")：    "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."|  "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("撕裂", "Rending_rgb_zh_cn").."("..CNumb("%", "pc_rgb")..")：        "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|     "..CNumb("8", "n_8_rgb").."|   "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|    "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		de = Dot_green.." Bis zu {rending:%s} "..CKWord("Durchschlag", "Rending_rgb_de").." auf Warp-Angriffe, basierend auf Ihrer "..CKWord("Gefahr", "Peril_rgb_de")..":\n"
			.."_______________________________\n"
			..CKWord("Gefahr", "Peril_rgb_de").." ("..CNumb("%", "pc_rgb").."):           "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Durchschlag", "Rending_rgb_de").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|   "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		it = Dot_green.." Fino a {rending:%s} di "..CKWord("Penetrazione", "Rending_rgb_it").." sugli attacchi Warp, in base al tuo "..CKWord("Pericolo", "Peril_rgb_it")..":\n"
			.."_______________________________\n"
			..CKWord("Pericolo", "Peril_rgb_it").." ("..CNumb("%", "pc_rgb").."):          "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Penetrazione", "Rending_rgb_it").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		ja = Dot_green.." 現在の"..CKWord("危険", "Peril_rgb_ja").."に応じて、ワープ攻撃に最大{rending:%s}の"..CKWord("貫通", "Rending_rgb_ja").."を得る：\n"
			.."_______________________________\n"
			..CKWord("危険", "Peril_rgb_ja").." ("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."|"..CNumb("100", "n_100_rgb").."\n"
			..CKWord("貫通", "Rending_rgb_ja").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		ko = Dot_green.." 현재 "..CKWord("위험", "Peril_rgb_ko").."에 따라 워프 공격에 최대 {rending:%s}의 "..CKWord("관통", "Rending_rgb_ko").."을 얻습니다:\n"
			.."_______________________________\n"
			..CKWord("위험", "Peril_rgb_ko").." ("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."|"..CNumb("100", "n_100_rgb").."\n"
			..CKWord("관통", "Rending_rgb_ko").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		pl = Dot_green.." Do {rending:%s} "..CKWord("Rozrywania", "Rending_rgb_pl").." na atakach Warpu, w zależności od twojego "..CKWord("Zagrożenia", "Peril_rgb_pl")..":\n"
			.."_______________________________\n"
			..CKWord("Zagrożenie", "Peril_rgb_pl").." ("..CNumb("%", "pc_rgb").."):  "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."|"..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Rozrywanie", "Rending_rgb_pl").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		["pt-br"] = Dot_green.." Até {rending:%s} de "..CKWord("Penetração", "Rending_rgb_pt_br").." em ataques Warp, baseado no seu "..CKWord("Perigo", "Peril_rgb_pt_br")..":\n"
			.."_______________________________\n"
			..CKWord("Perigo", "Peril_rgb_pt_br").." ("..CNumb("%", "pc_rgb").."):          "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Penetração", "Rending_rgb_pt_br").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		es = Dot_green.." Hasta {rending:%s} de "..CKWord("Penetración", "Rending_rgb_es").." en ataques disformes, según tu "..CKWord("Peligro", "Peril_rgb_es")..":\n"
			.."_______________________________\n"
			..CKWord("Peligro", "Peril_rgb_es").." ("..CNumb("%", "pc_rgb").."):          "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Penetración", "Rending_rgb_es").." ("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
	},
	--[+ Passive 31 - Crystalline Will +]--	09.06.2026
	["loc_talent_psyker_alternative_peril_explosion_new_desc"] = { -- overload_damage: +100%, overload_radius: +25%, +colors
		en = Dot_green.." {overload_damage:%s} Overload Explosion "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {overload_radius:%s} Overload Explosion Radius.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb")..": ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			..Dot_green.." Overloading through "..CKWord("Perils of the Warp", "PerilsozWarp").." no longer knocks you down, but you lose "..CNumb("1", "n_1_rgb").." "..CKWord("Health", "Health_rgb").." segment from "..CKWord("Corruption Damage", "Corruptdmg_rgb")..".\n"
			..Dot_green.." If the explosion kills an Elite enemy, you don't take any "..CKWord("Corruption Damage", "Corruptdmg_rgb")..".",
		ru = "Взрыв от перегрузки, после набора "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..", получает:\n" -- Чистая воля
			..Dot_green.." {overload_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {overload_radius:%s} к радиусу.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru")..": ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			..Dot_green.." Взрыв от перегрузки "..CKWord("Опасностей варпа", "Opasnostei_warpa_rgb_ru").." больше не выводит вас из строя, но забирает "..CNumb("1", "n_1_rgb").." сегмент "..CKWord("здоровья", "zdorovia_rgb_ru")..", нанося вам "..CKWord("урон от порчи", "porchi_uron_rgb_ru")..".\n"
			..Dot_green.." Если взрыв убьёт элитного врага, вы не получите "..CKWord("урон от порчи", "porchi_uron_rgb_ru")..".",
		fr = Dot_green.." {overload_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." d'explosion de surcharge,\n"
			..Dot_green.." {overload_radius:%s} de rayon d'explosion de surcharge.\n"
			.."\n"
			..Dot_green.." "..CKWord("Dégâts", "Damage_rgb_fr").." de base : ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			..Dot_green.." La surcharge due aux "..CKWord("Périls du Warp", "PerilsozWarp_rgb_fr").." ne vous renverse plus, mais vous perdez "..CNumb("1", "n_1_rgb").." segment de "..CKWord("Santé", "Health_rgb_fr").." par "..CKWord("Dégâts de corruption", "Corruptdmg_rgb_fr")..".\n"
			..Dot_green.." Si l'explosion tue un ennemi d'élite, vous ne subissez aucun "..CKWord("Dégâts de corruption", "Corruptdmg_rgb_fr")..".",
		["zh-tw"] = Dot_green.." 超載爆炸"..CKWord("傷害", "Damage_rgb_tw").."增加 {overload_damage:%s}，\n"
			..Dot_green.." 超載爆炸半徑增加 {overload_radius:%s}。\n"
			.."\n"
			..Dot_green.." 基礎"..CKWord("傷害", "Damage_rgb_tw").."：["..CNumb("600", "n_600_rgb").."～"..CNumb("100", "n_100_rgb").."]。\n"
			.."\n"
			..Dot_green.." 因"..CKWord("亞空間反噬", "PerilsozWarp_rgb_tw").."而超載時不再將你擊倒，但會因"..CKWord("腐敗傷害", "Corruptdmg_rgb_tw").."失去 "..CNumb("1", "n_1_rgb").." 格"..CKWord("生命值", "Health_rgb_tw").."。\n"
			..Dot_green.." 若爆炸擊殺精英敵人，則不受"..CKWord("腐敗傷害", "Corruptdmg_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 超载爆炸"..CKWord("伤害", "Damage_rgb_zh_cn").."提高{overload_damage:%s}，\n"
			..Dot_green.." 超载爆炸半径提高{overload_radius:%s}。\n"
			.."\n"
			..Dot_green.." 基础"..CKWord("伤害", "Damage_rgb_zh_cn").."：["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."]。\n"
			.."\n"
			..Dot_green.." 因"..CKWord("亚空间危机", "PerilsozWarp_rgb_zh_cn").."超载不再击倒你，但会使你损失"..CNumb("1", "n_1_rgb").."格"..CKWord("生命值", "Health_rgb_zh_cn").."，转化为"..CKWord("腐化伤害", "Corruptdmg_rgb_zh_cn").."。\n"
			..Dot_green.." 若爆炸击杀精英敌人，则不会受到"..CKWord("腐化伤害", "Corruptdmg_rgb_zh_cn").."。",
		de = Dot_green.." {overload_damage:%s} "..CKWord("Schaden", "Damage_rgb_de").." der Überladexplosion,\n"
			..Dot_green.." {overload_radius:%s} Radius der Überladexplosion.\n"
			.."\n"
			..Dot_green.." Basis-"..CKWord("Schaden", "Damage_rgb_de")..": ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			..Dot_green.." Eine Überladung durch "..CKWord("Gefahren des Warps", "PerilsozWarp_rgb_de").." wirft Sie nicht mehr zu Boden, aber Sie verlieren "..CNumb("1", "n_1_rgb").." "..CKWord("Gesundheits", "Health_rgb_de").."-Segment durch "..CKWord("Verderbnisschaden", "Corruptdmg_rgb_de")..".\n"
			..Dot_green.." Wenn die Explosion einen Elite-Gegner tötet, erleiden Sie keinen "..CKWord("Verderbnisschaden", "Corruptdmg_rgb_de")..".",
		it = Dot_green.." {overload_damage:%s} di "..CKWord("Danno", "Damage_rgb_it").." dell'esplosione da sovraccarico,\n"
			..Dot_green.." {overload_radius:%s} di raggio dell'esplosione da sovraccarico.\n"
			.."\n"
			..Dot_green.." "..CKWord("Danno", "Damage_rgb_it").." base: ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			..Dot_green.." Il sovraccarico da "..CKWord("Pericoli del Warp", "PerilsozWarp_rgb_it").." non ti fa più cadere, ma perdi "..CNumb("1", "n_1_rgb").." segmento di "..CKWord("Salute", "Health_rgb_it").." da "..CKWord("Danno da corruzione", "Corruptdmg_rgb_it")..".\n"
			..Dot_green.." Se l'esplosione uccide un nemico Elite, non subisci "..CKWord("Danno da corruzione", "Corruptdmg_rgb_it")..".",
		ja = Dot_green.." オーバーロード爆発の"..CKWord("ダメージ", "Damage_rgb_ja").."が{overload_damage:%s}増加、\n"
			..Dot_green.." オーバーロード爆発の半径が{overload_radius:%s}増加。\n"
			.."\n"
			..Dot_green.." 基礎"..CKWord("ダメージ", "Damage_rgb_ja").."：["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."]。\n"
			.."\n"
			..Dot_green.." "..CKWord("ワープの危険", "PerilsozWarp_rgb_ja").."によるオーバーロードでダウンしなくなるが、"..CKWord("腐敗ダメージ", "Corruptdmg_rgb_ja").."として"..CKWord("体力", "Health_rgb_ja").."を"..CNumb("1", "n_1_rgb").."セグメント失う。\n"
			..Dot_green.." 爆発でエリート敵を倒した場合、"..CKWord("腐敗ダメージ", "Corruptdmg_rgb_ja").."を受けない。",
		ko = Dot_green.." 과부하 폭발 "..CKWord("피해", "Damage_rgb_ko").." {overload_damage:%s} 증가,\n"
			..Dot_green.." 과부하 폭발 반경 {overload_radius:%s} 증가.\n"
			.."\n"
			..Dot_green.." 기본 "..CKWord("피해", "Damage_rgb_ko")..": ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			..Dot_green.." "..CKWord("워프의 위험", "PerilsozWarp_rgb_ko").."으로 인한 과부하가 더 이상 당신을 쓰러뜨리지 않지만, "..CKWord("부패 피해", "Corruptdmg_rgb_ko").."로 "..CKWord("체력", "Health_rgb_ko").." 세그먼트를 "..CNumb("1", "n_1_rgb").."개 잃습니다.\n"
			..Dot_green.." 폭발로 정예 적을 처치하면 "..CKWord("부패 피해", "Corruptdmg_rgb_ko").."를 받지 않습니다.",
		pl = Dot_green.." {overload_damage:%s} "..CKWord("Obrażeń", "Damage_rgb_pl").." eksplozji przeciążenia,\n"
			..Dot_green.." {overload_radius:%s} promienia eksplozji przeciążenia.\n"
			.."\n"
			..Dot_green.." Bazowe "..CKWord("Obrażenia", "Damage_rgb_pl")..": ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			..Dot_green.." Przeciążenie przez "..CKWord("Zagrożenia Warpu", "PerilsozWarp_rgb_pl").." już cię nie powala, ale tracisz "..CNumb("1", "n_1_rgb").." segment "..CKWord("Zdrowia", "Health_rgb_pl").." jako "..CKWord("Obrażenia od skażenia", "Corruptdmg_rgb_pl")..".\n"
			..Dot_green.." Jeśli eksplozja zabije Elitarnego wroga, nie otrzymujesz "..CKWord("Obrażeń od skażenia", "Corruptdmg_rgb_pl")..".",
		["pt-br"] = Dot_green.." {overload_damage:%s} de "..CKWord("Dano", "Damage_rgb_pt_br").." da explosão de sobrecarga,\n"
			..Dot_green.." {overload_radius:%s} de raio da explosão de sobrecarga.\n"
			.."\n"
			..Dot_green.." "..CKWord("Dano", "Damage_rgb_pt_br").." base: ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			..Dot_green.." Sobrecarga pelos "..CKWord("Perigos do Warp", "PerilsozWarp_rgb_pt_br").." não o derruba mais, mas você perde "..CNumb("1", "n_1_rgb").." segmento de "..CKWord("Saúde", "Health_rgb_pt_br").." como "..CKWord("Dano de corrupção", "Corruptdmg_rgb_pt_br")..".\n"
			..Dot_green.." Se a explosão matar um inimigo de Elite, você não sofre "..CKWord("Dano de corrupção", "Corruptdmg_rgb_pt_br")..".",
		es = Dot_green.." {overload_damage:%s} de "..CKWord("Daño", "Damage_rgb_es").." de explosión por sobrecarga,\n"
			..Dot_green.." {overload_radius:%s} de radio de explosión por sobrecarga.\n"
			.."\n"
			..Dot_green.." "..CKWord("Daño", "Damage_rgb_es").." base: ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			..Dot_green.." La sobrecarga por "..CKWord("Peligros del Vacío", "PerilsozWarp_rgb_es").." ya no te derriba, pero pierdes "..CNumb("1", "n_1_rgb").." segmento de "..CKWord("Salud", "Health_rgb_es").." como "..CKWord("Daño de corrupción", "Corruptdmg_rgb_es")..".\n"
			..Dot_green.." Si la explosión mata a un enemigo Élite, no sufres "..CKWord("Daño de corrupción", "Corruptdmg_rgb_es")..".",
	},
	--[+ Passive 32 - Warp Ghost +]--	09.06.2026
	["loc_talent_psyker_stat_mix_desc"] = { -- peril_reduction: -80%, stamina: +2, toughness_replenish: +25%, +colors
		en = Dot_green.." {peril_reduction:%s} Passive quelling.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment.\n"
			..CPhrs("Dont_intw_coher_toughn").." Only affects Melee kills and Talents.",
		ru = Dot_green.." {peril_reduction:%s} к пассивному подавлению "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Призрак варпа
			.."\n"
			..Dot_green.." {stamina:%s} к "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..CPhrs("Dont_intw_coher_toughn_ru").." Влияет только на получение "..CKWord("стойкости", "stoikosti_rgb_ru").." от убийств и талантов.",
		fr = Dot_green.." {peril_reduction:%s} d'apaisement passif.\n"
			.."\n"
			..Dot_green.." {stamina:%s} d'"..CKWord("Endurance", "Stamina_rgb_fr")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} de restauration de "..CKWord("Robustesse", "Toughness_rgb_fr")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Affecte uniquement les éliminations en mêlée et les talents.",
		["zh-tw"] = Dot_green.." {peril_reduction:%s} 被動平息速度。\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("韌性", "Toughness_rgb_tw").." 恢復。\n"
			..CPhrs("Dont_intw_coher_toughn").." 僅影響近戰擊殺和天賦的"..CKWord("韌性", "Toughness_rgb_tw").." 恢復。",
		["zh-cn"] = Dot_green.." {peril_reduction:%s} 被动压制。\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("耐力", "Stamina_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("韧性", "Toughness_rgb_zh_cn").."恢复。\n"
			..CPhrs("Dont_intw_coher_toughn").." 仅影响近战击杀和天赋。",
		de = Dot_green.." {peril_reduction:%s} passives Beruhigen.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Ausdauer", "Stamina_rgb_de")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("Widerstand", "Toughness_rgb_de").."-Wiederherstellung.\n"
			..CPhrs("Dont_intw_coher_toughn").." Betrifft nur Nahkampftötungen und Talente.",
		it = Dot_green.." {peril_reduction:%s} di quietudine passiva.\n"
			.."\n"
			..Dot_green.." {stamina:%s} di "..CKWord("Vigore", "Stamina_rgb_it")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} di ripristino di "..CKWord("Robustezza", "Toughness_rgb_it")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Colpisce solo le uccisioni corpo a corpo e i talenti.",
		ja = Dot_green.." {peril_reduction:%s} パッシブクエリング。\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("スタミナ", "Stamina_rgb_ja").."増加。\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("耐久", "Toughness_rgb_ja").."回復量増加。\n"
			..CPhrs("Dont_intw_coher_toughn").." 近接キルとタレントにのみ影響。",
		ko = Dot_green.." {peril_reduction:%s} 수동 진정.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("스태미나", "Stamina_rgb_ko").." 증가.\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("인내", "Toughness_rgb_ko").." 회복량 증가.\n"
			..CPhrs("Dont_intw_coher_toughn").." 근접 처치 및 특성에만 영향을 줍니다.",
		pl = Dot_green.." {peril_reduction:%s} pasywnego uciszenia.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Wytrzymałości", "Stamina_rgb_pl")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} przywracania "..CKWord("Odporności", "Toughness_rgb_pl")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Dotyczy tylko zabójstw wręcz i talentów.",
		["pt-br"] = Dot_green.." {peril_reduction:%s} de Aquietamento passivo.\n"
			.."\n"
			..Dot_green.." {stamina:%s} de "..CKWord("Vigor", "Stamina_rgb_pt_br")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} de recuperação de "..CKWord("Resistência", "Toughness_rgb_pt_br")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Afeta apenas mortes corpo a corpo e Talentos.",
		es = Dot_green.." {peril_reduction:%s} de apaciguamiento pasivo.\n"
			.."\n"
			..Dot_green.." {stamina:%s} de "..CKWord("Aguante", "Stamina_rgb_es")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} de restauración de "..CKWord("Robustez", "Toughness_rgb_es")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Afecta solo a muertes cuerpo a cuerpo y talentos.",
	},
	--[+ Passive 33 - Tranquility Through Slaughter +]--	09.06.2026
	["loc_talent_psyker_ranged_crits_vent_desc"] = { -- percent: 4%, +colors
		en = Dot_green.." {percent:%s} "..CKWord("Peril", "Peril_rgb").." is quelled on Non-Warp Ranged "..CKWord("Critical Hits", "Crit_hits_rgb")..".\n"
			.."\n"
			..Dot_green.." Procs when hitting Shields.\n"
			..Dot_red.." Procs only Once per shot regardless of how many enemies have been hit.",
		ru = Dot_green.." {percent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru").." не из варп источника.\n" -- Успокоение через резню -- руоф Спокойствие посредством убийств
			.."\n"
			..Dot_green.." Срабатывает при попадании в щиты.\n"
			..Dot_red.." Срабатывает только раз за выстрел, независимо от количества поражённых целей.",
		fr = Dot_green.." {percent:%s} de "..CKWord("Péril", "Peril_rgb_fr").." sont apaisés sur les "..CKWord("Coups critiques", "Crit_hits_rgb_fr").." à distance non-Warp.\n"
			.."\n"
			..Dot_green.." Se déclenche en touchant des boucliers.\n"
			..Dot_red.." Se déclenche une seule fois par tir, quel que soit le nombre d'ennemis touchés.",
		["zh-tw"] = Dot_green.." 非亞空間遠程"..CKWord("暴擊", "Crit_hits_rgb_tw").."時平息 {percent:%s} "..CKWord("反噬", "Peril_rgb_tw").."。\n"
			.."\n"
			..Dot_green.." 命中護盾時也會觸發。\n"
			..Dot_red.." 每次射擊只觸發一次，無論命中多少敵人。",
		["zh-cn"] = Dot_green.." 非亚空间远程"..CKWord("暴击命中", "Crit_hits_rgb_zh_cn").."时，压制{percent:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_green.." 命中护盾时触发。\n"
			..Dot_red.." 每次射击仅触发一次，无论击中多少敌人。",
		de = Dot_green.." {percent:%s} "..CKWord("Gefahr", "Peril_rgb_de").." wird bei Nicht-Warp-Fernkampf-"..CKWord("Kritischen Treffern", "Crit_hits_rgb_de").." unterdrückt.\n"
			.."\n"
			..Dot_green.." Wird beim Treffen von Schilden ausgelöst.\n"
			..Dot_red.." Wird nur einmal pro Schuss ausgelöst, unabhängig von der Anzahl getroffener Gegner.",
		it = Dot_green.." {percent:%s} di "..CKWord("Pericolo", "Peril_rgb_it").." vengono placati sui "..CKWord("Colpi critici", "Crit_hits_rgb_it").." a distanza non-Warp.\n"
			.."\n"
			..Dot_green.." Si attiva colpendo gli scudi.\n"
			..Dot_red.." Si attiva solo una volta per colpo, indipendentemente dal numero di nemici colpiti.",
		ja = Dot_green.." 非ワープ遠隔"..CKWord("クリティカルヒット", "Crit_hits_rgb_ja").."時、{percent:%s}の"..CKWord("危険", "Peril_rgb_ja").."を軽減。\n"
			.."\n"
			..Dot_green.." シールドにヒットした場合も発動。\n"
			..Dot_red.." 1発につき1回のみ発動。ヒットした敵の数には依存しない。",
		ko = Dot_green.." 비워프 원거리 "..CKWord("크리티컬 히트", "Crit_hits_rgb_ko").." 시 {percent:%s}의 "..CKWord("위험", "Peril_rgb_ko").."을 진압합니다.\n"
			.."\n"
			..Dot_green.." 방패를 적중 시에도 발동합니다.\n"
			..Dot_red.." 발사당 한 번만 발동하며, 타격한 적 수에 관계없습니다.",
		pl = Dot_green.." {percent:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl").." jest tłumione przy nie-Warpowych dystansowych "..CKWord("Krytycznych trafieniach", "Crit_hits_rgb_pl")..".\n"
			.."\n"
			..Dot_green.." Aktywuje się przy trafieniu w tarcze.\n"
			..Dot_red.." Aktywuje się tylko raz na strzał, niezależnie od liczby trafionych wrogów.",
		["pt-br"] = Dot_green.." {percent:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br").." é aquietado em "..CKWord("Golpes críticos", "Crit_hits_rgb_pt_br").." à distância não-Warp.\n"
			.."\n"
			..Dot_green.." Ativa ao acertar escudos.\n"
			..Dot_red.." Ativa apenas uma vez por tiro, independentemente de quantos inimigos foram atingidos.",
		es = Dot_green.." {percent:%s} de "..CKWord("Peligro", "Peril_rgb_es").." se apacigua en "..CKWord("Golpes críticos", "Crit_hits_rgb_es").." a distancia no disformes.\n"
			.."\n"
			..Dot_green.." Se activa al golpear escudos.\n"
			..Dot_red.." Se activa solo una vez por disparo, independientemente de cuántos enemigos sean golpeados.",
	},
	--[+ Passive 34 - Surety of Arms +]--	09.06.2026
	["loc_talent_psyker_reload_speed_warp_desc"] = { -- reload_speed: 25%, threshold: 75%, warp_charge: 25%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} Reload Speed while below {threshold:%s} "..CKWord("Peril", "Peril_rgb")..".\n"
			..Dot_red.." On Reload, generate up to {warp_charge:%s} "..CKWord("Peril", "Peril_rgb").." based on the Percentage of the Clip Restored.\n"
			.."\n"
			..Dot_red.." Reloading an Empty clip generates the max amount of {warp_charge:%s} "..CKWord("Peril", "Peril_rgb")..".",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} к скорости перезарядки оружия пока ваш уровень "..CKWord("опасности", "opasnosti_rgb_ru").." ниже {threshold:%s}.\n" -- Варп в залог -- руоф Верность оружия
			..Dot_red.." При перезарядке сгенерирует до {warp_charge:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." в зависимости от процентного соотношения восстановленных патронов в магазине.\n"
			.."\n"
			..Dot_red.." Если патроны кончились, перезарядка сгенерирует вам {warp_charge:%s} "..CKWord("опасности", "opasnosti_rgb_ru")..".",
		fr = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} de vitesse de rechargement lorsque vous êtes en dessous de {threshold:%s} de "..CKWord("Péril", "Peril_rgb_fr")..".\n"
			..Dot_red.." Au rechargement, générez jusqu'à {warp_charge:%s} de "..CKWord("Péril", "Peril_rgb_fr").." en fonction du pourcentage de chargeur restauré.\n"
			.."\n"
			..Dot_red.." Recharger un chargeur vide génère la quantité maximale de {warp_charge:%s} de "..CKWord("Péril", "Peril_rgb_fr")..".",
		["zh-tw"] = Dot_green.." 當"..CKWord("反噬", "Peril_rgb_tw").."低於 {threshold:%s} 時，裝填速度 "..CNumb("+", "n_plus_rgb").."{reload_speed:%s}。\n"
			..Dot_red.." 裝填時，依彈匣補充比例最多產生 {warp_charge:%s} "..CKWord("反噬", "Peril_rgb_tw").."。\n"
			.."\n"
			..Dot_red.." 彈匣為空時裝填，將產生最大量 {warp_charge:%s} "..CKWord("反噬", "Peril_rgb_tw").."。",
		["zh-cn"] = Dot_green.." 当"..CKWord("危机值", "Peril_rgb_zh_cn").."低于{threshold:%s}时，获得"..CNumb("+", "n_plus_rgb").."{reload_speed:%s}装填速度。\n"
			..Dot_red.." 装填时，根据恢复的弹匣百分比生成最多{warp_charge:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."。\n"
			.."\n"
			..Dot_red.." 装填空弹匣会生成最大量的{warp_charge:%s}"..CKWord("危机值", "Peril_rgb_zh_cn").."。",
		de = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} Nachladegeschwindigkeit, wenn Sie sich unter {threshold:%s} "..CKWord("Gefahr", "Peril_rgb_de").." befinden.\n"
			..Dot_red.." Beim Nachladen wird basierend auf dem Prozentsatz des wiederhergestellten Magazins bis zu {warp_charge:%s} "..CKWord("Gefahr", "Peril_rgb_de").." erzeugt.\n"
			.."\n"
			..Dot_red.." Das Nachladen eines leeren Magazins erzeugt die maximale Menge von {warp_charge:%s} "..CKWord("Gefahr", "Peril_rgb_de")..".",
		it = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} di velocità di ricarica quando sei al di sotto di {threshold:%s} di "..CKWord("Pericolo", "Peril_rgb_it")..".\n"
			..Dot_red.." Durante la ricarica, genera fino a {warp_charge:%s} di "..CKWord("Pericolo", "Peril_rgb_it").." in base alla percentuale di caricatore ripristinato.\n"
			.."\n"
			..Dot_red.." Ricaricare un caricatore vuoto genera la quantità massima di {warp_charge:%s} di "..CKWord("Pericolo", "Peril_rgb_it")..".",
		ja = Dot_green.." "..CKWord("危険", "Peril_rgb_ja").."が{threshold:%s}未満の時、リロード速度が"..CNumb("+", "n_plus_rgb").."{reload_speed:%s}増加。\n"
			..Dot_red.." リロード時、回復したマガジンの割合に応じて最大{warp_charge:%s}の"..CKWord("危険", "Peril_rgb_ja").."を生成する。\n"
			.."\n"
			..Dot_red.." 空のマガジンをリロードすると最大量の{warp_charge:%s}の"..CKWord("危険", "Peril_rgb_ja").."を生成する。",
		ko = Dot_green.." "..CKWord("위험", "Peril_rgb_ko").."이(가) {threshold:%s} 미만일 때 재장전 속도 "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} 증가.\n"
			..Dot_red.." 재장전 시, 복원된 탄창 비율에 따라 최대 {warp_charge:%s}의 "..CKWord("위험", "Peril_rgb_ko").."을 생성합니다.\n"
			.."\n"
			..Dot_red.." 빈 탄창 재장전 시 최대량인 {warp_charge:%s}의 "..CKWord("위험", "Peril_rgb_ko").."을 생성합니다.",
		pl = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} szybkości przeładowania, gdy twoje "..CKWord("Zagrożenie", "Peril_rgb_pl").." jest poniżej {threshold:%s}.\n"
			..Dot_red.." Podczas przeładowania, generuj do {warp_charge:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl").." w zależności od procentu przywróconego magazynka.\n"
			.."\n"
			..Dot_red.." Przeładowanie pustego magazynka generuje maksymalną ilość {warp_charge:%s} "..CKWord("Zagrożenia", "Peril_rgb_pl")..".",
		["pt-br"] = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} de Velocidade de Recarga quando estiver abaixo de {threshold:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br")..".\n"
			..Dot_red.." Ao recarregar, gere até {warp_charge:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br").." com base na porcentagem do carregador restaurado.\n"
			.."\n"
			..Dot_red.." Recarregar um carregador vazio gera a quantidade máxima de {warp_charge:%s} de "..CKWord("Perigo", "Peril_rgb_pt_br")..".",
		es = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} de Velocidad de Recarga cuando estés por debajo de {threshold:%s} de "..CKWord("Peligro", "Peril_rgb_es")..".\n"
			..Dot_red.." Al recargar, genera hasta {warp_charge:%s} de "..CKWord("Peligro", "Peril_rgb_es").." según el porcentaje del cargador restaurado.\n"
			.."\n"
			..Dot_red.." Recargar un cargador vacío genera la cantidad máxima de {warp_charge:%s} de "..CKWord("Peligro", "Peril_rgb_es")..".",
	},
}

-- Creating templates -- Создаём шаблоны
local psyker_templates = {}

for loc_key, locales in pairs(psyker_localizations) do
	for locale, text in pairs(locales) do
		table.insert(psyker_templates, create_template(
			"psyker_" .. loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

return psyker_templates
