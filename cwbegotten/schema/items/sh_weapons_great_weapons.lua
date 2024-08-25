local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Клеймор";
	ITEM.model = "models/demonssouls/weapons/claymore.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "begotten_2h_claymore";
	ITEM.category = "Melee";
	ITEM.description = "Стальной двуручный меч. На его рукояти выгравированы знаки давно умершего дворянского рода Сияния.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/claymore.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90.5, 180, 347.07);
	ITEM.attachmentOffsetVector = Vector(5.66, 2.9, 17.68);
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Секач Горов";
	ITEM.model = "models/begotten/weapons/2h_axe3.mdl";
	ITEM.weight = 5;
	ITEM.uniqueID = "begotten_2h_great_gorecleaver";
	ITEM.category = "Melee";
	ITEM.description = "Особенно тяжелое и жестокое оружие. Оружие, любимое Вождями Горов, за его способность вселять страх и сносить головы.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_cleaver.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 288.9, 0);
	ITEM.attachmentOffsetVector = Vector(-4.95, 2.83, -23.34);
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Дубина Горов";
	ITEM.model = "models/begotten/weapons/2h_mace1.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_2h_great_goreclub";
	ITEM.category = "Melee";
	ITEM.description = "Прочная деревянная дубинка, вырезанная из древесины Горейского Леса. Усилена железными скобами и шипами для пробития брони.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_club.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(8.95, 287.05, 0);
	ITEM.attachmentOffsetVector = Vector(-5.66, 2.12, -21.22);
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "wood", "wood", "wood"}};
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Боевой Топор Клана Гор";
	ITEM.model = "models/begotten/weapons/2h_axe1.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_2h_great_gorewaraxe";
	ITEM.category = "Melee";
	ITEM.description = "Грубо сделанный тяжелый боевой топор. Имеет отличительные знаки Клана Гора.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_war_axe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(22.87, 283.43, 339.12);
	ITEM.attachmentOffsetVector = Vector(-2.12, 1.41, -17.68);
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Священная Булава Клана Грок";
	ITEM.model = "models/begotten/weapons/2h_mace3.mdl";
	ITEM.weight = 7;
	ITEM.uniqueID = "begotten_2h_great_grocklingsacredstonemaul";
	ITEM.category = "Melee";
	ITEM.description = "Благословенный рунный камень, вырезанный первыми друидами клинка с помощью древних знаний. Использование такого оружия считается оскорблением для других кланов Народа Копья, поскольку это позор перед Богами. Только те, кто принадлежит к клану Грок, осмеливаются пренебрегать гневом Семьи.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/grockling_sacred_stone_maul.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 283.26, 0);
	ITEM.attachmentOffsetVector = Vector(-4.95, 3.54, -21.22);
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "stone", "wood", "wood"}};
	ITEM.requiredbeliefs = {"strength"};
	ITEM.requireFaith = {"Faith of the Family"};
	ITEM.excludeSubfactions = {"Clan Reaver", "Clan Harald", "Clan Gore", "Clan Shagalax", "Clan Crast"};
ITEM:Register(); 

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Булава Клана Грок";
	ITEM.model = "models/begotten/weapons/2h_mace2.mdl";
	ITEM.weight = 6.5;
	ITEM.uniqueID = "begotten_2h_great_grocklingstonemaul";
	ITEM.category = "Melee";
	ITEM.description = "Сложенный набор горейских рунических камней, прибитых к гравированной деревянной дубинке. Оружие, которое обычно используют безбожные Гроки, за его превосходство в битве с бронированными врагами..";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/grockling_stone_maul.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 287.05, 0);
	ITEM.attachmentOffsetVector = Vector(-2.12, 2.83, -17.68);
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "stone", "stone", "stone", "wood", "wood"}};
	ITEM.requiredbeliefs = {"strength"};
	ITEM.requireFaith = {"Faith of the Family"};
	ITEM.excludeSubfactions = {"Clan Reaver", "Clan Harald", "Clan Gore", "Clan Shagalax", "Clan Crast"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Боевой Топор Клана Харальд";
	ITEM.model = "models/witcher2soldiers/tw2_bigaxe.mdl";
	ITEM.weight = 3.5;
	ITEM.uniqueID = "begotten_2h_great_haralderwaraxe";
	ITEM.category = "Melee";
	ITEM.description = "Богато украшенный боевой топор из шагалаксианской стали. Этот топор часто используют морские разбойники из клана Харальд.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/haralder_war_axe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 281.37);
	ITEM.attachmentOffsetVector = Vector(-5.66, 2.83, -30.41);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Тяжеллый Боевой Топор";
	ITEM.model = "models/demonssouls/weapons/battle axe.mdl";
	ITEM.weight = 5;
	ITEM.uniqueID = "begotten_2h_great_heavybattleaxe";
	ITEM.category = "Melee";
	ITEM.description = "Тяжелый железный топор. Грубое и жестокое оружие, которое неплохо пробивает броню, но еще лучше рубит головы.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/battle_axe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 2.84, 21.79);
	ITEM.attachmentOffsetVector = Vector(-2.83, 2.12, -12.73);
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Боевой топор Клана Ривер";
	ITEM.model = "models/begotten/weapons/2h_axe2.mdl";
	ITEM.weight = 5;
	ITEM.uniqueID = "begotten_2h_great_reaverwaraxe";
	ITEM.category = "Melee";
	ITEM.description = "Тяжелый зазубренный топор, созданный для злобных морских работорговцев Клана Ривера. Вероятно, тот, кто создал это оружие, делал это со злобой и презрением.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/reaver_war_axe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 283.26, 0);
	ITEM.attachmentOffsetVector = Vector(-4.95, 2.83, -26.87);
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Скрап-Молот";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/rockethammer.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_2h_great_scraphammer";
	ITEM.category = "Melee";
	ITEM.description = "Самодельная кувалда, собранная из разных кусков мусора с Пустоши.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scraphammer.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 291.38, 267.51);
	ITEM.attachmentOffsetVector = Vector(-4.24, 4.24, -9.19);
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "scrap", "scrap", "scrap"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Первого Дистрикта";
	ITEM.model = "models/doom/weapons/templar_sword.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_2h_skylightsword";
	ITEM.category = "Melee";
	ITEM.description = "Это снаряжение олицетворяет технологическое совершенство. Его уровень технического блеска настолько высок, что кажется, будто оружие обладает потусторонними свойствами. Каждый его аспект завораживает, поражая своей утончённостью и мощью. Этот клинок создан для того, чтобы с безупречной точностью и грацией разить бесчисленные ужасы, не теряя при этом ни доли своей безупречно острой кромки. Сейчас таких шедевров осталось всего несколько, они — последние артефакты величественного Дистрикта Один, когда-то бывшего сердцем Святой Иерархии.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/skylight_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 192.32, 0);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.54, 13.44);
	
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Вольт-Молот";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/rockethammer.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "begotten_2h_great_volthammer";
	ITEM.category = "Melee";
	ITEM.description = "Самодельная кувалда с электрическим зарядом, используемая вольтистами из-за ее способности пробивать броню.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/volthammer.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 291.38, 267.51);
	ITEM.attachmentOffsetVector = Vector(-4.24, 4.24, -9.19);
	ITEM.bodygroup1 = 4;
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "scrap", "scrap", "scrap", "tech", "tech"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength", "wriggle_fucking_eel"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Боевая Дубина";
	ITEM.model = "models/demonssouls/weapons/great club.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_2h_great_warclub";
	ITEM.category = "Melee";
	ITEM.description = "Большая деревянная дубинка, укрепленная железными скобами и шипами. Простая конструкция, которая на протяжении веков давала силу многим военачальникам и тиранам.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/war_club.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 12.32, 0);
	ITEM.attachmentOffsetVector = Vector(0, 3.54, -12.02);
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "wood", "wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 700};
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Сатанинская Кувалда";
	ITEM.model = "models/skyrim/daedric/warhammer/w_daedricwarhammer.mdl";
	ITEM.weight = 3.2;
	ITEM.uniqueID = "begotten_2h_great_satanicmaul";
	ITEM.category = "Melee";
	ITEM.description = "Черная стальная кувалда с закрученным дизайном. Она отлично подходит для того, чтобы вбивать слабаков грязь. Неважно, бронированных или нет.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/satanic_maul.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(10.42, 275.68, 353.37);
	ITEM.attachmentOffsetVector = Vector(0.71, 2.83, -9.19);
	
	ITEM.components = {breakdownType = "breakdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Гнев Максимуса";
	ITEM.model = "models/begotten/weapons/maximus_wrath.mdl";
	ITEM.weight = 2.7;
	ITEM.uniqueID = "begotten_2h_great_maximuswrath";
	ITEM.category = "Melee";
	ITEM.description = "Гордость Первого Дистрикта, пронизанная передовыми технологиями — оружие неслыханной силы, достойное полубога. ВЗГЛЯНИТЕ! Ярость Максимуса!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/maximus_wrath.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 2.5, 269.5);
	ITEM.attachmentOffsetVector = Vector(0, 6.36, 12.02);	
	
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Бердыш Темноземца";
	ITEM.model = "models/demonssouls/weapons/crescent axe.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_2h_great_darklanderbardiche";
	ITEM.category = "Melee";
	ITEM.description = "Большой серповидный топор, украшенный узорами Темноземцев. Эффективное древковое оружие, отлично подходящее для уничтожения щитов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bardiche.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(92.49, 0, 10.94);
	ITEM.attachmentOffsetVector = Vector(-2.83, 3.59, -24.75);
	
	ITEM.attributes = {"shieldbreaker"};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Вечерняя Звезда";
	ITEM.model = "models/begotten/weapons/eveningstar.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_2h_great_eveningstar";
	ITEM.category = "Melee";
	ITEM.description = "Чёрный стальной шар искупления, надёжно закреплённый на массивном деревянном древке с укрепляющими распорками, внушает ужас одним своим видом. Тяжёлый и неумолимый, он сокрушает любого, кто осмелится встать на пути его правосудия. Это грозное оружие, рожденное ненавистью и болью, обычно создаётся ненавидящими себя Православными.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/eveningstar.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(345.08, 265.52, 0);
	ITEM.attachmentOffsetVector = Vector(-1.41, 2.9, -2.83);
	
	ITEM.components = {breakdownType = "breakdown", items = {"steel_chunks", "steel_chunks", "wood", "leather"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
ITEM:Register();