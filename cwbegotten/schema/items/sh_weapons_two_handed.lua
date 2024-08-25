local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Деревянная Дубина";
	ITEM.model = "models/demonssouls/weapons/club.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "begotten_2h_great_club";
	ITEM.category = "Melee";
	ITEM.description = "Простое и грубое оружие. Оно так же способно проламывать черепа сейчас, как и десять тысяч лет назад.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/club.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 14.92, 0);
	ITEM.attachmentOffsetVector = Vector(-2.83, 4.95, -10.61);
	
	ITEM.components = {breakdownType = "breakdown", items = {"cloth", "wood", "wood", "wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 300, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Темный Длинный Меч";
	ITEM.model = "models/begotten/weapons/templarsword.mdl";
	ITEM.skin = 2;
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_2h_exileknightsword";
	ITEM.category = "Melee";
	ITEM.description = "Длинный меч из темной стали, выполненный в стиле Сияния. Когда-то его использовали рыцари-изганники.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/exile_knight_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(172.04, 74.59, 261.55);
	ITEM.attachmentOffsetVector = Vector(8.49, 1.9, 26.87);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks", "steel_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 800, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Инквизитора";
	ITEM.model = "models/demonssouls/weapons/blueblood sword.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_2h_inquisitorsword";
	ITEM.category = "Melee";
	ITEM.description = "Легендарные мечи Второй инквизиции, легко узнаваемые по рукоятям в форме звезды. Их клинки выкованы только из лучшей стали, ибо несут святое правосудие, к большому разочарованию для еретиков и не чистых на руку дворян Сияния.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(92.49, 183.98, 10.94);
	ITEM.attachmentOffsetVector = Vector(-0.71, 2.69, 3.54);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Длинный Меч";
	ITEM.model = "models/demonssouls/weapons/long sword.mdl";
	ITEM.skin = 2;
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_2h_longsword";
	ITEM.category = "Melee";
	ITEM.description = "Грозный железный длинный меч, ранее использовавшийся в рядах Священного Ордена Привратников.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/longsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(280, 180, 10.94);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.4, 16.51);	
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 800, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Кирка";
	ITEM.model = "models/begotten/weapons/serfpickaxe.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_2h_great_pickaxe";
	ITEM.category = "Melee";
	ITEM.description = "Горнодобывающий инструмент, предназначенный для дробления горных пород, но он также может легко дробить броню и плоть.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pickaxe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(280, 268.11, 140.22);
	ITEM.attachmentOffsetVector = Vector(-1.41, 2.12, 8.49);
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "iron_chunks", "wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 225};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Кувалда";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/sledgehammer.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_2h_great_sledge";
	ITEM.category = "Melee";
	ITEM.description = "Огромная тяжелая кувалда, которой можно крушить черепа.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/sledge.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(269.5, 267, 174.03);
	ITEM.attachmentOffsetVector = Vector(-1.41, 2, -16.27);
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "iron_chunks", "wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 425, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Вольт-Кувалда";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/sledgehammer.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_2h_great_voltsledge";
	ITEM.category = "Melee";
	ITEM.description = "Кувалда, оснащенная нечестивыми приспособлениями, усиливающими ее электрическую мощь.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/voltsledge.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(269.5, 267, 174.03);
	ITEM.attachmentOffsetVector = Vector(-1.41, 2, -16.27);
	ITEM.bodygroup1 = 3;
	
	ITEM.components = {breakdownType = "breakdown", items = {"begotten_2h_great_sledge", "scrap", "tech", "tech"}};
	ITEM.requiredbeliefs = {"wriggle_fucking_eel"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Тренировочный Двуручный Меч";
	ITEM.model = "models/begotten/weapons/training_2h.mdl";
	ITEM.weight = 1.5;
	ITEM.uniqueID = "begotten_2h_traininglongsword";
	ITEM.category = "Melee";
	ITEM.description = "Деревянный длинный меч, который можно использовать для тренировок по двуручному бою с низким уровнем риска.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/training_longsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(360, 76.57, 92.49);
	ITEM.attachmentOffsetVector = Vector(-4.24, 2.83, 14.85);
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Нечестивый Меч";
	ITEM.model = "models/props/begotten/melee/smelter_sword.mdl";
	ITEM.skin = 2;
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_2h_unholysigilsword";
	ITEM.category = "Melee";
	ITEM.description = "Покрытый шрамами черный железный меч, выкованный в адском огне. Его клинок нервирует вас; темные шепоты заставляют устроить жертвоприношение.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/unholy_sigil_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 185.97, 92.49);
	ITEM.attachmentOffsetVector = Vector(-1.41, 2.83, -35.36);
	ITEM.attachmentSkin = 2;
	
	ITEM.requiredbeliefs = {"strength"};
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Боевой Посох";
	ITEM.model = "models/begotten/weapons/quarterstaff.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_2h_quarterstaff";
	ITEM.category = "Melee";
	ITEM.description = "Деревянный посох, используемый в разных целях. Но чаще всего это убийство себе подобных.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/quarterstaff.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(183.98, 100.44, 130.28);
	ITEM.attachmentOffsetVector = Vector(-1.41, 3, 4.24);
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood", "wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 600, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Сатанинский Двуручный Меч";
	ITEM.model = "models/skyrim/draugr/greatsword/w_draugrgreatsword.mdl";
	ITEM.weight = 2.6;
	ITEM.uniqueID = "begotten_2h_sataniclongsword";
	ITEM.category = "Melee";
	ITEM.description = "Черный стальной меч с великолепным дизайном. Он отлично справляется с говорящими головами и различными другими конечностями с помощью сильных рубящих ударов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/satanic_longsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(187.96, 63.47, 0.95);
	ITEM.attachmentOffsetVector = Vector(5.66, 3, 16.51);
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks"}}; -- use "breakdown" for other type
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 1000, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Самурайский Меч";
	ITEM.model = "models/demonssouls/weapons/blueblood sword.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_2h_eventsword";
	ITEM.category = "Melee";
	ITEM.description = "Чертов факел, или бита, или петля, или крыса.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = false;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(92.49, 183.98, 10.94);
	ITEM.attachmentOffsetVector = Vector(-0.71, 2.69, 3.54);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Фалькс Горов";
	ITEM.model = "models/begotten/goreweapons/falx2.mdl";
	ITEM.weight = 3.5;
	ITEM.uniqueID = "begotten_2h_great_falx";
	ITEM.category = "Melee";
	ITEM.description = "Стальной клинок, изогнутый внутрь для увеличения пробивной способности. Это по истине жуткое оружие ломает все: Черепа, Кости, Щиты.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/falx.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(6.46, 273.48, 90);
	ITEM.attachmentOffsetVector = Vector(0, 2.9, 9.09);
	
	ITEM.attributes = {"shieldbreaker"};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks", "wood", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Падшего";
	ITEM.model = "models/bloodborne/weapons/skyfeller.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_2h_skyfallensword";
	ITEM.category = "Melee";
	ITEM.description = "Техническое Достояние Света, перекованное с семейными рунами и мастерской кузницей. Меч, достойный короля.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/skyfallen_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(360, 281.37, 84.32);
	ITEM.attachmentOffsetVector = Vector(5.66, 3.4, 14.14);	
	
	ITEM.requireFaith = {"Faith of the Family"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Двуручный Вольт-Меч";
	ITEM.model = "models/begotten/weapons/shishkebab.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_2h_voltlongsword";
	ITEM.category = "Melee";
	ITEM.description = "Длинное лезвие из металлолома, прикрепленное к грубому приспособлению с внутренней батареей.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/volt_longsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(280, 180, 10.94);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.4, 16.51);	
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "scrap", "scrap", "tech", "tech", "tech", "tech"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"wriggle_fucking_eel"};
ITEM:Register();