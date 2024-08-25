local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Гарпун";
	ITEM.model = "models/props_junk/harpoon002a.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "begotten_spear_harpoon";
	ITEM.category = "Melee";
	ITEM.description = "Острая штука с крюком на конце. Хотя она тяжелая, ее можно надежно использовать как копье. Такое оружие предпочитают крестьяне прибрежных районов за ее универсальность.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/harpoon.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 10.94);
	ITEM.attachmentOffsetVector = Vector(0, 3, 0);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"wood", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 200};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Железное Копье";
	ITEM.model = "models/demonssouls/weapons/short spear.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "begotten_spear_ironspear";
	ITEM.category = "Melee";
	ITEM.description = "Копье — смертоносное оружие, славящееся своей скоростью и большой досягаемостью. Лучше всего его используют солдаты на войне, для честного строя копейщиков нет такой задачи, с которой они бы не справились.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/iron_spear.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 8.95);
	ITEM.attachmentOffsetVector = Vector(-2.83, 3, -23.24);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 600};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Короткое Железное Копье";
	ITEM.model = "models/witcher2soldiers/tw2_shortspear.mdl";
	ITEM.weight = 1.3;
	ITEM.uniqueID = "begotten_spear_ironshortspear";
	ITEM.category = "Melee";
	ITEM.description = "Железное копье с укороченным древком для более быстрого убийства врагов. Или друзей.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/iron_shortspear.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 279.45);
	ITEM.attachmentOffsetVector = Vector(-7.78, 3, -45.97);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 800};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Вилы";
	ITEM.model = "models/begotten/weapons/serfpitchfork.mdl";
	ITEM.weight = 1.5;
	ITEM.uniqueID = "begotten_spear_pitchfork";
	ITEM.category = "Melee";
	ITEM.description = "Старый крепостной инструмент, обычно не используемый в качестве оружия, но тем не менее смертоносный.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pitchfork.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 279.45, 0);
	ITEM.attachmentOffsetVector = Vector(-4.24, 3, -24.75);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 125};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Копье Еретика";
	ITEM.model = "models/demonssouls/weapons/scraping spear.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "begotten_spear_satanicspear";
	ITEM.category = "Melee";
	ITEM.description = "Нечестивое оружие, выкованное в огне Ада. Оно находит свое применение в Легионах Люцифера. Это особое копье известно тем, что способно причинять адские мучения, царапая плоть, когда оно вытягивается для нанесения следующего удара.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/satanic_spear.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 8.95, 0);
	ITEM.attachmentOffsetVector = Vector(0, 3, -17.85);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Копье из Скрапа";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/poolcue.mdl";
	ITEM.bodygroup1 = 4;
	ITEM.weight = 1.3;
	ITEM.uniqueID = "begotten_spear_scrapspear";
	ITEM.category = "Melee";
	ITEM.description = "Деревянная палка с лезвием на конце, образующая копье. Она не такая длинная и не такая прочная, как обычное копье, но лучше, чем ничего.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scrap_spear.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 279.45, 0);
	ITEM.attachmentOffsetVector = Vector(-4.24, 3, -24.75);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "wood", "wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 250, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Тренировочное Копье";
	ITEM.model = "models/begotten/weapons/training_spear.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_spear_trainingspear";
	ITEM.category = "Melee";
	ITEM.description = "Деревянный шест, который можно использовать для тренировок по драке на копьях.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/training_spear.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 279.45, 0);
	ITEM.attachmentOffsetVector = Vector(-4.24, 3, -24.75);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Вольт-Копье";
	ITEM.model = "models/begotten/weapons/voltspear.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "begotten_spear_voltspear";
	ITEM.category = "Melee";
	ITEM.description = "Электрифицированный вольтпрод, установленный на деревянном валу для увеличения дальности действия.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/volt_spear.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 8.95);
	ITEM.attachmentOffsetVector = Vector(-2.83, 3, -23.24);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood", "wood", "scrap", "scrap", "scrap", "scrap", "tech", "tech"}};
	ITEM.requiredbeliefs = {"wriggle_fucking_eel"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Крылатое Копье";
	ITEM.model = "models/demonssouls/weapons/winged spear.mdl";
	ITEM.weight = 2.3;
	ITEM.uniqueID = "begotten_spear_wingedspear";
	ITEM.category = "Melee";
	ITEM.description = "Копье из очищенной стали, обычно выкованное Святой Иерархией. Имеет крыло на конце, хорошо подходящее для ловли вражеских клинков.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/winged_spear.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 10.94);
	ITEM.attachmentOffsetVector = Vector(-2.12, 3, -18.39);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 1000, supercrateOnly = true};
ITEM:Register();