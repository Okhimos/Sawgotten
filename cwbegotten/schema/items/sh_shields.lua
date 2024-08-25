local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Баклер";
	ITEM.model = "models/demonssouls/shields/buckler.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "shield4";
	ITEM.description = "По его впечатляющей металлической конструкции ясно, что этот наступательный щит был выкован Святой Иерархией давным-давно. Оружие, когда-то печально известное своим использованием наемниками и головорезами Света за свою способностью парировать удары и оглушать противников.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/buckler.png"
	ITEM.isAttachment = true;
	ITEM.hasIncreasedDeflectionWindow = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(287.4, 360, 0);
	ITEM.attachmentOffsetVector = Vector(0, 0, 4.95);
	ITEM.bulletConditionScale = 0.4;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood", "wood", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Щит из двери Машины";
	ITEM.model = "models/props_vehicles/carparts_door01a.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "shield3";
	ITEM.description = "Тяжелая металлическая часть древней машины. Ее должны использовать только самые отчаянные бойцы или самые сильные воины.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/car_door_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(355.03, 229.72, 0.99);
	ITEM.attachmentOffsetVector = Vector(0, 2.12, 5.66);
	ITEM.bulletConditionScale = 0.25;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "scrap", "scrap"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 1600, bNoSupercrate = true};
	ITEM.requiredbeliefs = {"defender"};	
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Клановый Щит";
	ITEM.model = "models/begotten/weapons/goreroundshield.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "shield14";
	ITEM.description = "Щит, сделанный из необычайно прочного дерева Горейского Леса. Он украшен клановыми символами.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/clan_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(360, 309.28, 0);
	ITEM.attachmentOffsetVector = Vector(0, 0, 0);
	ITEM.bulletConditionScale = 0.3;
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "wood", "wood", "wood"}};
	ITEM.requireFaith = {"Faith of the Family"};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Щит Ужаса";
	ITEM.model = "models/props/begotten/melee/drakekeeper_greatshield.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "shield13";
	ITEM.description = "Стена из чёрной стали, выкованная лучшими мастерами клана Ре-Хет-Са. Тёмные иероглифы покрывают её поверхность, словно древние заклинания, несущие в себе дурное знамение. Один взгляд на неё внушает животный ужас, будто бы сама смерть смотрит на тебя из-за этой мрачной преграды.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/dreadshield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 359.01, 0);
	ITEM.attachmentOffsetVector = Vector(0, 2.12, -4.95);
	ITEM.bulletConditionScale = 0.15;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 800, supercrateOnly = true};
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Щит Привратника";
	ITEM.model = "models/props/begotten/melee/twin_dragon_greatshield.mdl";
	ITEM.weight = 5;
	ITEM.uniqueID = "shield11";
	ITEM.description = "Простой, но добротно сделанный деревянный щит с металлическими вставками, которым обычно вооружаются рядовые привратники. Надёжно защищает своего владельца от различного рода угроз.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gatekeeper_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 0);
	ITEM.attachmentOffsetVector = Vector(0, 0, 0);
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.bulletConditionScale = 0.2;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood", "wood", "wood", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Щит Стража Древа";
	ITEM.model = "models/demonssouls/shields/large brushwood shield.mdl";
	ITEM.weight = 9;
	ITEM.uniqueID = "shield10";
	ITEM.description = "Древняя вещь, созданная Друидами Клинкf задолго до того, как потенциальные Горы ступили на земли Великого Древа. Теперь она служит защитникам естественного порядка от единственного, что ему угрожает, человечества. Металлическая конструкция щита становится прочнее, чем ближе он к источнику своей силы, — Великому Древу.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_guardian_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(88.51, 201.79, 268.11);
	ITEM.attachmentOffsetVector = Vector(0, 0.71, -4.24);
	ITEM.bulletConditionScale = 0.1;
	
	ITEM.attributes = {"unbreakable"};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks"}};
	ITEM.requiredbeliefs = {"defender"};
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.requireFaith = {"Faith of the Family"};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Железный Щит";
	ITEM.model = "models/demonssouls/shields/soldier's shield.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "shield6";
	ITEM.description = "Этот металлический щит, поцарапанный и обгоревший, послужил многим солдатам, прежде чем попал к вам.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/iron_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(98.45, 181.99, 176.02);
	ITEM.attachmentOffsetVector = Vector(0, -1.41, 0);
	ITEM.bulletConditionScale = 0.3;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 900, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Рыцарский Щит";
	ITEM.model = "models/demonssouls/shields/knight's shield.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "shield7";
	ITEM.description = "Щит из очищенного металла, которого коснулся Сол. Тот, кто будет держать этот щит, должен служить ему так же, как он служит ему, ибо его металл сожжет руку любого с душой еретика. Если истинный герой Сияния будет владеть этим щитом, он воспламенится великим священным пламенем, но это еще предстоит увидеть Рыцарям Солнца...";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/knights_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90.5, 201.88, 269.5);
	ITEM.attachmentOffsetVector = Vector(0, -0.71, 0);
	ITEM.bulletConditionScale = 0.2;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks"}};
	ITEM.requiredbeliefs = {"manifesto"};
	ITEM.kinisgerOverride = true;
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Кожаный Щит";
	ITEM.model = "models/props/begotten/melee/large_leather_shield.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "shield17";
	ITEM.description = "Круглый щит деревянной конструкции, лицевая сторона которого покрыта кожей.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/leather_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(270, 0, 0);
	ITEM.attachmentOffsetVector = Vector(0, 1.6, 0);
	ITEM.bulletConditionScale = 0.45;
	
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 750, bNoSupercrate = true};
	ITEM.components = {breakdownType = "breakdown", items = {"wood", "wood", "wood", "wood", "leather", "leather", "leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Ржавый Каплевидный Щит";
	ITEM.model = "models/props/begotten/melee/red_rust_shield.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "shield19";
	ITEM.description = "Потрепанный и ржавый щит, который, очевидно, широко использовался. Предыдущий владелец подсчитывал свои убийства на его лицевой стороне";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/rusted_kite_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 180, 0);
	ITEM.attachmentOffsetVector = Vector(0, 2, 0);
	ITEM.bulletConditionScale = 0.25;
	
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 2500};
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Щит из Скрапа";
	ITEM.model = "models/props_bebris/metal_panel02a.mdl";
	ITEM.weight = 5;
	ITEM.uniqueID = "shield1";
	ITEM.description = "Щит из листового металла, украшенный различными знаками, показывающие веру владельца.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scrap_shield_new.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 275, 180.15);
	ITEM.attachmentOffsetVector = Vector(0, 3, -1);
	ITEM.bulletConditionScale = 0.4;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "scrap", "scrap", "scrap"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 600, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Щит Раба";
	ITEM.model = "models/demonssouls/shields/slave's shield.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "shield2";
	ITEM.description = "Отвратительный деревянный щит, когда-то использовавшийся большой армией рабов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/slaveshield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(114.36, 183.98, 181.99);
	ITEM.attachmentOffsetVector = Vector(0, 0.71, 4.24);
	ITEM.bulletConditionScale = 0.6;
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 80};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Щит Последнего Стража";
	ITEM.model = "models/demonssouls/shields/tower shield.mdl";
	ITEM.weight = 10;
	ITEM.uniqueID = "shield9";
	ITEM.description = "Массивная стена из священного металла, подвластная лишь самым могучим воинам Света. На её передней части изображена величественная геральдика с образом Лорда Максимуса, словно воплощение самого Сияния. Этот артефакт — истинное чудо кузнечного искусства, созданное для защиты последних святынь.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/sol_sentinel_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90.5, 158.12, 88.51);
	ITEM.attachmentOffsetVector = Vector(0, -1.41, 0);
	ITEM.bulletConditionScale = 0.1;
	
	ITEM.attributes = {"unbreakable"};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 800, supercrateOnly = true};
	ITEM.requiredbeliefs = {"defender"};
	ITEM.requireFaith = {"Faith of the Light"};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Адская Роза";
	ITEM.model = "models/demonssouls/shields/spiked shield.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "shield8";
	ITEM.description = "Это омерзительное творение, выкованное из искажённого металла и покрытое жуткими шипами, будто само пекло дышало на него. Сотворённое в бездне Ада, оно предназначено для верных последователей Тёмного Принца, чтобы помогать им воплощать в жизнь свои бесчеловечные мечты. Металл щита словно таит в себе ужасную душу, наслаждающуюся каждым убийством, совершённым своим хозяином. Если же владелец предаст его, поклонится иному богу, кроме Люцифера, щит оживёт — его металл исказится, закрутится вокруг рук предателя, и жаждущие крови шипы начнут высасывать из него жизнь.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/spiked_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(74.59, 183.98, 360);
	ITEM.attachmentOffsetVector = Vector(0, 0.34, 0);
	ITEM.bulletConditionScale = 0.2;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 800, supercrateOnly = true};
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Стальной Щит Привратника";
	ITEM.model = "models/props/begotten/melee/tower_shield.mdl";
	ITEM.weight = 8;
	ITEM.uniqueID = "shield18";
	ITEM.description = "Мастерски выкованный, массивный стальной щит, украшенный изображениями святых Сияния, воплощает в себе совершенство ремесла и символ божественной защиты. Этот величественный артефакт используется только в Легионах Сияния, чтобы вселять свет и надежду в сердца воинов и вселять страх в души врагов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/steel_gatekeeper_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 180, 0);
	ITEM.attachmentOffsetVector = Vector(0, 2, 0);
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.bulletConditionScale = 0.2;
	
	ITEM.requiredbeliefs = {"defender"};
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Стальной Башенный Щит";
	ITEM.model = "models/props/begotten/melee/pate_shield.mdl";
	ITEM.weight = 6;
	ITEM.uniqueID = "shield16";
	ITEM.description = "Высокий деревянный щит, покрытый чернеными стальными пластинами; в его дизайне использованы элементы, обычно встречающиеся в снаряжении Темноземцев.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/steel_tower_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 180, 0);
	ITEM.attachmentOffsetVector = Vector(0, 2, -1);
	ITEM.bulletConditionScale = 0.2;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "wood", "wood", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Вольт-Щит";
	ITEM.model = "models/props_vebris/metal_panel02a.mdl";
	ITEM.weight = 5.5;
	ITEM.uniqueID = "shield15";
	ITEM.description = "Щит из металлолома, дополненный аккумулятором от машины, который питает его электричеством. Любой враг, который коснется этого щита металлическим оружием, действительно пожалеет об этом.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/volt_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 275, 180.15);
	ITEM.attachmentOffsetVector = Vector(0, 9, -4.95);
	ITEM.bulletConditionScale = 0.4;
	
	ITEM.attributes = {"electrified"};
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "scrap", "scrap", "scrap", "tech"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"wriggle_fucking_eel"};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Щит Воина Горов";
	ITEM.model = "models/props/begotten/melee/pursuer_greatshield.mdl";
	ITEM.weight = 6;
	ITEM.uniqueID = "shield12";
	ITEM.description = "Необычайно массивный щит, выкованный из стали друидов-клинка, обладает практически полной непробиваемостью. Созданный для защиты истинных воинов, он с лёгкостью отражает град трусливых выстрелов идиотов из уездов Света.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/warfighter_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 0, 0);
	ITEM.attachmentOffsetVector = Vector(0, 0, 0);
	ITEM.bulletConditionScale = 0.1;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "iron_chunks", "iron_chunks"}};
	ITEM.requireFaction = {"Goreic Warrior"};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Деревянный Щит";
	ITEM.model = "models/skyrim/shield_stormcloaks.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "shield5";
	ITEM.description = "Стандартный щит, способный выдержать несколько ударов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/wooden_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(273.48, 360, 90);
	ITEM.attachmentOffsetVector = Vector(0, 1.6, 0);
	ITEM.bulletConditionScale = 0.5;
	
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 600, bNoSupercrate = true};
	ITEM.components = {breakdownType = "breakdown", items = {"wood", "wood", "wood", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Гнев Сестры";
	ITEM.model = "models/begotten/weapons/uniquegoreshield.mdl";
	ITEM.weight = 9;
	ITEM.uniqueID = "shieldunique1";
	ITEM.description = "Нечестивая стена из черной стали, выкованная в адском огне. Она украшена высушенной плотью освежеванных жертв. Щит, предназначенный для Красных Волков, извращенной воинской ложи Клана Ривера.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/red_wolf_shield.png"
	ITEM.isAttachment = true;
	ITEM.isUnique = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 360, 0);
	ITEM.attachmentOffsetVector = Vector(0, 4.24, -4.95);

	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks"}};
	ITEM.attributes = {"unbreakable"};
	ITEM.requiredbeliefs = {"defender"};
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.requireSubfaction = {"Clan Reaver"};
ITEM:Register();