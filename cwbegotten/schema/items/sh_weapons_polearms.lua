local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Полэкс";
	ITEM.model = "models/witcher2soldiers/tw2_halberd.mdl";
	ITEM.weight = 3.5;
	ITEM.uniqueID = "begotten_polearm_gatekeeperpoleaxe";
	ITEM.category = "Melee";
	ITEM.description = "Хорошо сделанная короткая стальная секира. Отличное оружие уравнителя и стражника, способное поддерживать мир и отпугивать зло.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gatekeeper_poleaxe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isShortPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 279.45);
	ITEM.attachmentOffsetVector = Vector(-7.78, 3, -45.97);
	
	ITEM.attributes = {"grounded"};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "wood", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Билль";
	ITEM.model = "models/bill_guisarme.mdl";
	ITEM.weight = 3.5;
	ITEM.uniqueID = "begotten_polearm_billhook";
	ITEM.category = "Melee";
	ITEM.description = "Дешевое железное древковое оружие, которое на удивление эффективно в уравнивании бронированных врагов. Даже рыцарь может быть смиренным скромным алебардистом.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/billhook.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isShortPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(98.45, 0, 279.45);
	ITEM.attachmentOffsetVector = Vector(-0.34, -21.89, -21.22);
	
	ITEM.attributes = {"grounded"};
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "wood", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Короткий Люцернский Молот";
	ITEM.model = "models/bec_de_corbin.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_polearm_lucerne";
	ITEM.category = "Melee";
	ITEM.description = "Прекрасное стальное оружие, практичное и элегантное по своему дизайну. Его вороний клюв отлично подходит для проделывания отверстий в металлической пластине.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/lucerne.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isShortPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(98.45, 0, 279.45);
	ITEM.attachmentOffsetVector = Vector(4.24, -47.58, -21.22);
	
	ITEM.attributes = {"grounded"};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "wood", "wood", "leather"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Алебарда";
	ITEM.model = "models/demonssouls/weapons/halberd.mdl";
	ITEM.weight = 6;
	ITEM.uniqueID = "begotten_polearm_halberd";
	ITEM.category = "Melee";
	ITEM.description = "Длинное металлическое древковое оружие. Имеет стальное рубящее лезвие и острый металлический шип для пробития пластин. Оружие, которое обычно можно встретить в рядах низших Привратников, поскольку оно способно дать даже простому дураку шанс сразиться с великими ужасами.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/halberd.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isLongPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(88.51, 0, 8.95);
	ITEM.attachmentOffsetVector = Vector(0, 3, -17.68);
	
	ITEM.attributes = {"grounded"};
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood", "wood", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 850, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Пика";
	ITEM.model = "models/props/begotten/melee/pike.mdl";
	ITEM.weight = 6;
	ITEM.uniqueID = "begotten_polearm_pike";
	ITEM.category = "Melee";
	ITEM.description = "Длинное железное древковое оружие с простым, но эффективным острым шипом на конце. Оружие, известное своей впечатляющей дальностью и проникающей силой, лучше всего использовать в составе других подобных ему.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pike.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isLongPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 8.95, 180);
	ITEM.attachmentOffsetVector = Vector(0, 3, -7.07);
	
	ITEM.attributes = {"grounded"};
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 350, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Люцернский Молот";
	ITEM.model = "models/demonssouls/weapons/mirdan hammer.mdl";
	ITEM.weight = 8;
	ITEM.uniqueID = "begotten_polearm_polehammer";
	ITEM.category = "Melee";
	ITEM.description = "Хорошо сделанное древковое оружие из Легионов Сияния. Оно оснащено брутальным стальным молотом и смертоносной пикой. Отличное уравновешивающее оружие против бронированных врагов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/polehammer.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isLongPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 10.94);
	ITEM.attachmentOffsetVector = Vector(0, 3, -1.41);
	
	ITEM.attributes = {"grounded"};
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood", "wood", "wood", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Боевое Копье";
	ITEM.model = "models/witcher2soldiers/tw2_spear.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_polearm_warspear";
	ITEM.category = "Melee";
	ITEM.description = "Укрепленный деревянный шест с наконечником из стали Шагалакской стали. Впечатляюще длинное охотничье оружие, превращенное в оружие войны.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/war_spear.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isLongPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 277.46);
	ITEM.attachmentOffsetVector = Vector(-3.54, 3, -35.36);
	
	ITEM.attributes = {"grounded"};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "wood", "wood", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Знамя Сияния";
	ITEM.model = "models/begotten/misc/gatekeeper_banner.mdl";
	ITEM.weight = 11;
	ITEM.uniqueID = "begotten_polearm_glazicbanner";
	ITEM.category = "Melee";
	ITEM.description = "Флаг с эмблемой Святого Ордена Привратников. Он служит вдохновением в битве, и потерять его было бы крайне печально.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gatekeeper_banner.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isLongPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(114.36, 271.49, 152.15);
	ITEM.attachmentOffsetVector = Vector(-2.83, 6, 53.75);
	
	ITEM.attributes = {"aoebuff"};
	ITEM.components = {breakdownType = "meltdown", items = {"cloth", "cloth", "cloth", "cloth", "cloth", "iron_chunks", "iron_chunks"}};
	ITEM.requireFaith = {"Faith of the Light"};
ITEM:Register();