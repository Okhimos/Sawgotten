local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Баклер";
	ITEM.model = "models/demonssouls/shields/buckler.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "shield4";
	ITEM.description = "Щит, некогда выкованный в печах Святой Иерархии. Имел широкое распространенным среди наемников Сияния и прочих головорезов за способность парировать и оглушать противников.";
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
	ITEM.name = "Автомобильная Дверь";
	ITEM.model = "models/props_vehicles/carparts_door01a.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "shield3";
	ITEM.description = "Тяжелая металлическая деталь от древней машины. Можно использовать в качестве щита, если вы достаточно сильны или настолько отчаянны.";
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
	ITEM.description = "Крепкий щит, изготовленный из аномально прочной древесины Горейского Леса. Он украшен и защищен сигилами клана Гор.";
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
	ITEM.description = "Щит, выкованный в горниле адского пламени. Произведение искусства, ледяное на ощупь и зловещее внутри. Навевает мысли о неизбежности конца.";
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
	ITEM.description = "Хорошо выполненный башенный щит, несущий символику Сияния.";
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
	ITEM.name = "Щит Хранителя Горов";
	ITEM.model = "models/demonssouls/shields/large brushwood shield.mdl";
	ITEM.weight = 9;
	ITEM.uniqueID = "shield10";
	ITEM.description = "Древнее изделие, созданное Друидами Клинка еще задолго до пришествия Горов на землю Великого Древа. Ныне служит защитникам естественного порядка от единственной возможной угрозы, также называемой человечеством. Щит становится тем прочнее, чем ближе он находится к источнику своей силы, а именно - Великому Древу.";
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
	ITEM.description = "Поцарапанный и опаленный, этот металлический щит послужил многим хозяевам, прежде чем попал в ваши руки.";
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
	ITEM.name = "Щит Рыцаря";
	ITEM.model = "models/demonssouls/shields/knight's shield.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "shield7";
	ITEM.description = "Щит из очищенного металла, одаренный касанием Сола. Служит своему носителю ровно также, как носитель служит ему. Может опалить руку еретика, а также, согласно преданиям, вспыхнет священным пламенем, если им завладеет истинный герой Сияния.";
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
	ITEM.description = "Круглый деревянный щит, лицевая сторона которого обтянута чей-то кожей.";
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
	ITEM.name = "Щит Ржавого Змея";
	ITEM.model = "models/props/begotten/melee/red_rust_shield.mdl";
	ITEM.weight = 2.5;
	ITEM.uniqueID = "shield19";
	ITEM.description = "Потрепанный и ржавый щит, явно видавший лучшие времена. Предыдущий владелец нанес на лицевой стороне какие-то отметки. Вероятно, это количество совершенных убийств.";
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
	ITEM.name = "Скрап Щит";
	ITEM.model = "models/props_bebris/metal_panel02a.mdl";
	ITEM.weight = 5;
	ITEM.uniqueID = "shield1";
	ITEM.description = "Щит, созданный из отрезка листового металла. Украшен различными знаками, которые, вероятно, отражают веру предыдущего или нынешнего владельца.";
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
	ITEM.description = "Отвратительный деревянный щит, когда-то использовавшийся в армии рабов.";
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
	ITEM.name = "Щит Стража Сол";
	ITEM.model = "models/demonssouls/shields/tower shield.mdl";
	ITEM.weight = 10;
	ITEM.uniqueID = "shield9";
	ITEM.description = "Великий щит, который использовался личным телохранителем самого Лорда Максимуса. Нашел свое применение среди высших привратников в качестве средства защиты оставшихся святилищ Света.";
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
	ITEM.name = "Шипастый Щит";
	ITEM.model = "models/demonssouls/shields/spiked shield.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "shield8";
	ITEM.description = "Полное ненависти нечто из искаженного металла и шипов. Изделие, выкованное в самом Аду и предназначенное для исполнения кровожадных желаний последователей Темного Принца. Кажется, внутри этого щита заключена отвратительная душа, что наслаждается проливаемой им кровью. Если носитель этого щита чем-то провинится перед ликом самого Люцифера, то металл исказится, а шипы вопьются в руки, оставив владельца истекать кровью.";
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
	ITEM.description = "Хорошо выполненный стальной башенный щит, что является олицетворением самого Сияния.";
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
	ITEM.description = "Ростовой деревянный щит, покрытый пластинами из почерневшей стали. Использованные в конструкции щита элементы отсылают к темноземской культуре.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/steel_tower_shield.png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(90, 180, 0);
	ITEM.attachmentOffsetVector = Vector(0, 2, -1);
	ITEM.bulletConditionScale = 0.2;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "wood", "wood", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shield_base");
	ITEM.name = "Вольтщит";
	ITEM.model = "models/props_vebris/metal_panel02a.mdl";
	ITEM.weight = 5.5;
	ITEM.uniqueID = "shield15";
	ITEM.description = "Усиленный автомобильным аккумулятором скрап щит, что пропускает электрический ток. Любое неосторожное касание может заставить сильно о нем пожалеть.";
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
	ITEM.name = "Щит Воина";
	ITEM.model = "models/props/begotten/melee/pursuer_greatshield.mdl";
	ITEM.weight = 6;
	ITEM.uniqueID = "shield12";
	ITEM.description = "Очень тяжелый щит, выкованный из стали Друидов Клинка. Предназначен для защиты воинов от трусливого мушкетного огня обманщиков из Сияния.";
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
	ITEM.description = "Простой щит, способный выдержать пару-тройку ударов.";
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
	ITEM.name = "Щит Красного Волка";
	ITEM.model = "models/begotten/weapons/uniquegoreshield.mdl";
	ITEM.weight = 9;
	ITEM.uniqueID = "shieldunique1";
	ITEM.description = "Нечестивый щит из черной стали, выкованный в адском пламени и расшитый высушенной плотью освежеванных жертв. Предназначен для Красных Волков, членов извращенной воинской ложи клана Ривер.";
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