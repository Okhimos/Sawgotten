local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Бита";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/baseballbat.mdl";
	ITEM.skin = 3;
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_bat";
	ITEM.category = "Melee";
	ITEM.description = "Простая деревянная бита.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bat.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(100.44, 80.55, 90);
	ITEM.attachmentOffsetVector = Vector(4.24, -1.41, 31.12);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 75};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Бита с шипами";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/baseballbat.mdl";
	ITEM.skin = 3;
	ITEM.bodygroup1 = 6;
	ITEM.bodygroup2 = 2;
	ITEM.weight = 1.1;
	ITEM.uniqueID = "begotten_1h_spikedbat";
	ITEM.category = "Melee";
	ITEM.description = "Деревянная бита с вбитыми гвоздями для нанесения более серьезных увечий.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/spiked_bat.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(100.44, 80.55, 90);
	ITEM.attachmentOffsetVector = Vector(4.24, -1.41, 31.12);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Бита с Лезвиями";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/baseballbat.mdl";
	ITEM.skin = 3;
	ITEM.bodygroup1 = 10;
	ITEM.bodygroup2 = 2;
	ITEM.weight = 1.3;
	ITEM.uniqueID = "begotten_1h_bladedbat";
	ITEM.category = "Melee";
	ITEM.description = "Деревянная бита, оснащенная двумя пилами. Теперь это примитивное рубящее оружие.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bladed_bat.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(100.44, 80.55, 90);
	ITEM.attachmentOffsetVector = Vector(4.24, -1.41, 31.12);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "wood", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Боевой Топор";
	ITEM.model = "models/demonssouls/weapons/battle axe.mdl";
	ITEM.weight = 1.5;
	ITEM.uniqueID = "begotten_1h_battleaxe";
	ITEM.category = "Melee";
	ITEM.description = "Громоздкий черный железный двусторонний топор. Грубое оружие для грубых людей.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/battle_axe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(20.88, 0, 180);
	ITEM.attachmentOffsetVector = Vector(3.54, 1.41, 26.87);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Доска";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/board.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_board";
	ITEM.category = "Melee";
	ITEM.description = "Деревянная доска, распространённое орудие войны в Пустоши.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/board.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(291.38, 269.5, 156.13);
	ITEM.attachmentOffsetVector = Vector(1.41, 2.83, -27.58);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 50};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Доска с Гвоздями";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/board.mdl";
	ITEM.bodygroup1 = 2;
	ITEM.weight = 1.1;
	ITEM.uniqueID = "begotten_1h_spikedboard";
	ITEM.category = "Melee";
	ITEM.description = "Деревянная доска с вбитыми гвоздями для нанесения более обширных ранений.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/spiked_board.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(291.38, 269.5, 156.13);
	ITEM.attachmentOffsetVector = Vector(1.41, 2.83, -27.58);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Доска с лезвиями";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/board.mdl";
	ITEM.bodygroup1 = 4;
	ITEM.weight = 1.3;
	ITEM.uniqueID = "begotten_1h_bladedboard";
	ITEM.category = "Melee";
	ITEM.description = "Деревянная доска, оснащенная двойными пилами. Теперь это примитивное рубящее оружие.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bladed_board.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(291.38, 269.5, 156.13);
	ITEM.attachmentOffsetVector = Vector(1.41, 2.83, -27.58);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "wood", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Сломанный Меч";
	ITEM.model = "models/demonssouls/weapons/broken sword.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_1h_brokensword";
	ITEM.category = "Melee";
	ITEM.description = "Ужасное подобие меча, заржавевшего почти до непригодности и с лезвием, сломанным пополам. Однако это лучше, чем ничего...";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/broken_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(14.92, 0, 20.88);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.54, 0);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 50};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Вольтистов";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/chineeseofficersword.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_1h_voltsword";
	ITEM.category = "Melee";
	ITEM.description = "Меч, оснащенный проводами, трубками и другими предметами проводящими ток. Он способен нанести значительный урон бронированным глупцам.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/voltsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(279.47, 285.16, 264.32);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.54, -6.36);
	ITEM.bodygroup1 = 5;
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "scrap", "scrap", "tech"}};
	ITEM.requiredbeliefs = {"wriggle_fucking_eel"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Булава Вольтистов";
	ITEM.model = "models/newvegasprops/voltprod.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_voltprod";
	ITEM.category = "Melee";
	ITEM.description = "Электрошокер, который когда-то использовался для борьбы со скотом, теперь заряженный техноеретическими приспособлениями, чтобы наносить почти смертельные удары током, поражая плоть, которая ищет защиты в металлических пластинах.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/volt_prod.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(0, 4.97, 189.94);
	ITEM.attachmentOffsetVector = Vector(3.54, 2.12, 4.95);
	ITEM.bodygroup1 = 5;
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"scrap", "scrap", "scrap", "scrap", "tech", "tech"}};
	ITEM.requiredbeliefs = {"wriggle_fucking_eel"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Клинок Друида";
	ITEM.model = "models/begotten/weapons/sword1.mdl";
	ITEM.weight = 0.7;
	ITEM.uniqueID = "begotten_1h_druidsword";
	ITEM.category = "Melee";
	ITEM.description = "Грубый железный клинок, на котором выгравированы различные символы клана Краст.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/druid_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(294.63, 288.95, 0);
	ITEM.attachmentOffsetVector = Vector(2.83, 3, 0);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Семьи";
	ITEM.model = "models/begotten/weapons/sword2_unique.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_familialsword";
	ITEM.category = "Melee";
	ITEM.description = "Изящно изготовленный короткий меч из хорошей стали, созданный в честь Семьи.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/familial_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(98.45, 252.95, 18.9);
	ITEM.attachmentOffsetVector = Vector(3.54, 3.54, 0);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Шестопер";
	ITEM.model = "models/demonssouls/weapons/mace.mdl";	
	ITEM.weight = 1.3;
	ITEM.uniqueID = "begotten_1h_flangedmace";
	ITEM.category = "Melee";
	ITEM.description = "Тяжелая стальная булава с шипом на конце. Специально разработана для прокалывания брони, независимо от ее прочности.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/flanged_mace.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(0, 180, 349.06);
	ITEM.attachmentOffsetVector = Vector(3.71, -3.54, 27.58);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 600, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Глазикус";
	ITEM.model = "models/demonssouls/weapons/broad sword.mdl";
	ITEM.weight = 0.8;
	ITEM.uniqueID = "begotten_1h_glazicus";
	ITEM.category = "Melee";
	ITEM.description = "Короткий Меч из Легионов Сияния, изготовленный из дешевого железа.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/glazicus.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(14.92, 0, 20.88);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.54, 0);
	ITEM.attachmentBoneOffhand = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAnglesOffhand = Angle(-14.92, 0, 20.88);
	ITEM.attachmentOffsetVectorOffhand = Vector(-2.83, 3.54, 0);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Спата";
	ITEM.model = "models/begotten/weapons/spatha.mdl";
	ITEM.weight = 1.3;
	ITEM.uniqueID = "begotten_1h_spatha";
	ITEM.category = "Melee";
	ITEM.description = "Железный меч средних размеров, которым частенько пользуются Легионеры Сияния.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/spatha.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(14.92, 0, 20.88);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.54, 0);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Изысканный Глазикус";
	ITEM.model = "models/begotten/weapons/ornateglazicus.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_ornateglazicus";
	ITEM.category = "Melee";
	ITEM.description = "Короткий Меч, принадлежащий Империи Света, изготовленный из дорогого метала с инкрустированными золотыми частями. Превосходно!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ornateglazicus.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(14.92, 0, 20.88);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.54, 0);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Лезвие Скверны";
	ITEM.model = "models/aoc_weapon/w_shortsword_evil.mdl";
	ITEM.weight = 0.7;
	ITEM.uniqueID = "begotten_1h_satanicshortsword";
	ITEM.category = "Melee";
	ITEM.description = "Короткий меч выкованный в Адских Жерновах. Он весит мало, но прекрасно заточен, благодаря чему и способен пробивать броню смертоносными последовательными колющими атаками на близкой дистанции.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/satanicshortsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(285.41, 225.75, 0);
	ITEM.attachmentOffsetVector = Vector(3, 1.41, 2.12);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks"}}; -- use "breakdown" for other type
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Одноручный Топор Клана Гор";
	ITEM.model = "models/begotten/weapons/axe1.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_gorebattleaxe";
	ITEM.category = "Melee";
	ITEM.description = "Искусно сделанный боевой топор, который прекрасно лежит в руке. На рукояти вырезаны знаки клана Гора.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_battle_axe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(94.48, 68.62, 180);
	ITEM.attachmentOffsetVector = Vector(3.54, -2, 22.63);
	ITEM.attachmentBoneOffhand = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAnglesOffhand = Angle(94.48, 68.62, 180);
	ITEM.attachmentOffsetVectorOffhand = Vector(-3.54, -2, 22.63);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Горейский Фальшион";
	ITEM.model = "models/begotten/weapons/sword4.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_gorefalchion";
	ITEM.category = "Melee";
	ITEM.description = "Стальной рубящий клинок на тонко вырезанной деревянной рукояти. Оружие воина, превосходное своей способностью отрубать конечности.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_falchion.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(98.45, 252.95, 18.9);
	ITEM.attachmentOffsetVector = Vector(3.54, 3.54, 0);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Каменная Булава";
	ITEM.model = "models/begotten/weapons/mace2.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_goremace";
	ITEM.category = "Melee";
	ITEM.description = "Деревянная дубинка с шипами и тяжелым каменным наконечником. Грубая по конструкции, но эффективная в бою.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_mace.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(98.45, 80.55, 6.96);
	ITEM.attachmentOffsetVector = Vector(3.54, -0.71, 21.22);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"stone", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Сакс Горов";
	ITEM.model = "models/begotten/weapons/sword3.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_goreseax";
	ITEM.category = "Melee";
	ITEM.description = "Стальной клинок с изогнутым концом, на котором выгравированы различные горейские руны.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_seax.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(92.49, 255.58, 6.96);
	ITEM.attachmentOffsetVector = Vector(3.54, 1.41, 4.24);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "cloth"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Одноручный Меч Горов";
	ITEM.model = "models/begotten/weapons/sword2.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_goreshortsword";
	ITEM.category = "Melee";
	ITEM.description = "Короткий железный клинок, одинаково подходящий как для рубящих, так и для колющих ударов, украшенный горейскими мотивами.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_shortsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(98.45, 252.95, 18.9);
	ITEM.attachmentOffsetVector = Vector(3.54, 3.54, 0);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Полуторный Меч";
	ITEM.model = "models/demonssouls/weapons/knight sword.mdl";	
	ITEM.weight = 1.1;
	ITEM.uniqueID = "begotten_1h_ironarmingsword";
	ITEM.category = "Melee";
	ITEM.description = "Грубо сделанный, но прочный одноручный железный меч, одинаково подходящий как для рубящих, так и для колющих ударов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/iron_arming_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(14.92, 360, 22.87);
	ITEM.attachmentOffsetVector = Vector(2.12, 5.66, -3.54);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 300, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Бастард";
	ITEM.model = "models/aoc_weapon/sword_01_static.mdl";	
	ITEM.weight = 1.2;
	ITEM.uniqueID = "begotten_1h_steelarmingsword";
	ITEM.category = "Melee";
	ITEM.description = "Хорошо сбалансированный стальной меч, одинаково подходящий как для рубящих, так и для колющих ударов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/steelarmingsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(110.39, 150.63, 0);
	ITEM.attachmentOffsetVector = Vector(3, 2.12, 4);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 500, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Солдата";
	ITEM.model = "models/demonssouls/weapons/short sword.mdl";
	ITEM.weight = 0.8;
	ITEM.uniqueID = "begotten_1h_ironshortsword";
	ITEM.category = "Melee";
	ITEM.description = "Обычный короткий меч, сделанный из дешевого железа. До прихода Глазикусов,  им частенько пользовались в Легионах Сияния, но не сейчас.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/iron_shortsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(14.92, 0, 20.88);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.54, 0);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 250, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Мачете";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/machete.mdl";	
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_machete";
	ITEM.category = "Melee";
	ITEM.description = "Большое ржавое лезвие, которое с легкостью разрежет плоть и кости.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/machete.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(289.39, 291.38, 273.48);
	ITEM.attachmentOffsetVector = Vector(2, 6.36, -4.24);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 150};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Восходящая Звезда";
	ITEM.model = "models/demonssouls/weapons/morning star.mdl";	
	ITEM.weight = 1.3;
	ITEM.uniqueID = "begotten_1h_morningstar";
	ITEM.category = "Melee";
	ITEM.description = "Тяжелый железный шар, покрытый шипами, закрепленный на деревянном или метталическом стержне это оружие представляет собой смертоносное сочетание грубой силы и бронебойной способности.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/morningstar.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(0, 180, 349.06);
	ITEM.attachmentOffsetVector = Vector(3.71, -3.54, 27.58);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 400, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Труба";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/leadpipe.mdl";
	ITEM.bodygroup1 = 1;
	ITEM.weight = 0.6;
	ITEM.uniqueID = "begotten_1h_pipe";
	ITEM.category = "Melee";
	ITEM.description = "Небольшой, но увесистый отрезок свинцовой трубы, идеально подходящий для использования в качестве дубинки.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pipe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(100.44, 80.55, 90);
	ITEM.attachmentOffsetVector = Vector(3.71, 0.34, 13.81);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 60};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Трубная Булава";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/leadpipe.mdl";
	ITEM.bodygroup1 = 2;
	ITEM.weight = 0.8;
	ITEM.uniqueID = "begotten_1h_pipemace";
	ITEM.category = "Melee";
	ITEM.description = "Свинцовая труба, оснащенная болтами из металлолома. Примитивная булава, часто используемая миротворческими силами округа и правонарушителями.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pipe_mace.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(100.44, 80.55, 90);
	ITEM.attachmentOffsetVector = Vector(3.71, 0.34, 13.81);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "scrap"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Кусок Железки";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/tireiron.mdl";
	ITEM.weight = 0.6;
	ITEM.uniqueID = "begotten_1h_tireiron";
	ITEM.category = "Melee";
	ITEM.description = "Древний инструмент из ржавого металлолома. Это достойное оружие для удара по голове.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/tireiron.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(100.44, 80.55, 90);
	ITEM.attachmentOffsetVector = Vector(3.71, 0.34, 13.81);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 70};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Топор из Скрапа";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/tireiron.mdl";
	ITEM.bodygroup1 = 2;
	ITEM.weight = 0.9;
	ITEM.uniqueID = "begotten_1h_scrapaxe";
	ITEM.category = "Melee";
	ITEM.description = "Монтировка, сваренная с обухом топора. Типичное оружие бандита из Пустоши.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/tire_axe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(100.44, 80.55, 90);
	ITEM.attachmentOffsetVector = Vector(3.71, 0.34, 13.81);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "scrap"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Одноручный Топор Клана Ривер";
	ITEM.model = "models/begotten/weapons/axe3.mdl";
	ITEM.weight = 1.3;
	ITEM.uniqueID = "begotten_1h_reaverbattleaxe";
	ITEM.category = "Melee";
	ITEM.description = "Одноручный железный боевой топор с широкой головкой. Обычно используется Жестокими Воинами из Клана Ривер из-за его способности сносить головы.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/reaver_battle_axe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetVector = Vector(4.4, 0.71, 22.63);
	ITEM.attachmentOffsetAngles = Angle(303.31, 98.45, 16.91);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Скимитар";
	ITEM.model = "models/demonssouls/weapons/scimitar.mdl";
	ITEM.weight = 0.9;
	ITEM.uniqueID = "scimitar";
	ITEM.category = "Melee";
	ITEM.description = "Изогнутый железный меч, вдохновленный образцами из Темноземья, привезенными солдатами, сражающимися под началом лорда Максимуса. Этот тип меча отлично подходит для рубящих ударов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scimitar.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(187.96, 360, 335.14);
	ITEM.attachmentOffsetVector = Vector(2.83, 2.12, -0.71);
	ITEM.attachmentBoneOffhand = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAnglesOffhand = Angle(172.04, 0, 335.14);
	ITEM.attachmentOffsetVectorOffhand = Vector(-2.83, 2.12, -0.71);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "wood"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 600, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Деформированный Меч";
	ITEM.model = "models/props/begotten/melee/warped_sword.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_warpedsword";
	ITEM.category = "Melee";
	ITEM.description = "Нечестивый меч. Его металл был деформирован садистским демоном с болезненным чувством юмора. Он отлично режет плоть в ущерб бронебойности.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/warped_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(283.43, 30.83, 84.53);
	ITEM.attachmentOffsetVector = Vector(2.83, 2.12, -0.71);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks"}};
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 1000, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Ужасная Булава";
	ITEM.model = "models/props/begotten/melee/barbed_club.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_twistedclub";
	ITEM.category = "Melee";
	ITEM.description = "Дубинка, искаженная демонической энергией. Она отлично подходит для уничтожения бронированных врагов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/barbed_club.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(187.96, 360, 166.08);
	ITEM.attachmentOffsetVector = Vector(3.54, -0.71, 13.44);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"wrought_iron_ingot", "wood", "wood"}};
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Клинок из Скрапа";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/shishkebab.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_scrapblade";
	ITEM.category = "Melee";
	ITEM.description = "Смешанная груда металлолома, напоминающая меч. Может быть опаснее для владельца, чем для предполагаемой цели.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scrap_blade.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(360, 269.5, 24.86);
	ITEM.attachmentOffsetVector = Vector(2.83, 2.83, 0.71);
	ITEM.attachmentBoneOffhand = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAnglesOffhand = Angle(360, 269.5, -24.86);
	ITEM.attachmentOffsetVectorOffhand = Vector(-2.83, 2.83, 0.71);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "scrap", "scrap"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 900, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Топорик";
	ITEM.model = "models/begotten/weapons/serfhatchet.mdl";
	ITEM.weight = 1.2;
	ITEM.uniqueID = "begotten_1h_hatchet";
	ITEM.category = "Melee";
	ITEM.description = "Маленький топорик, который отлично подходит для рубки дерева. Он также отлично подходит для рубки мяса...";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/hatchet.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(215.05, 88.11, 31.26);
	ITEM.attachmentOffsetVector = Vector(2.83, 2.83, 3.54);
	ITEM.attachmentBoneOffhand = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAnglesOffhand = Angle(170, 88.11, 31.26);
	ITEM.attachmentOffsetVectorOffhand = Vector(-2.83, 2.83, 3.54);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 200};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Тренировочный Меч";
	ITEM.model = "models/begotten/weapons/training_1h.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_trainingsword";
	ITEM.category = "Melee";
	ITEM.description = "Деревянный меч, который можно использовать для тренировок по одноручному бою с низким уровнем риска.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/training_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(283.26, 287.4, 84.53);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.54, -4.24);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Извращенный Мачете";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/machete.mdl";	
	ITEM.weight = 0.9;
	ITEM.bodygroup2 = 3;
	ITEM.uniqueID = "begotten_1h_twistedmachete";
	ITEM.category = "Melee";
	ITEM.description = "Изогнутый клинок, похожий на мачете, который использовали многие последователи Темного Лорда для жертвоприношений.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/twisted_machete.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(289.39, 291.38, 273.48);
	ITEM.attachmentOffsetVector = Vector(2, 6.36, -4.24);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Ужасающая Булава";
	ITEM.model = "models/skyrim/daedric/mace/w_daedricmace.mdl";	
	ITEM.weight = 1.3;
	ITEM.uniqueID = "begotten_1h_satanicmace";
	ITEM.category = "Melee";
	ITEM.description = "Черная стальная булава с устрашающим дизайном. Она отлично подходит для наказания латных дураков и принуждения к повиновению.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/satanic_mace.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(118.34, 66.63, 360);
	ITEM.attachmentOffsetVector = Vector(5, -2, 13.44);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks"}}; -- use "breakdown" for other type
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Коготь";
	ITEM.model = "models/skyrim/daedric/sword/w_daedricsword.mdl";	
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_1h_satanicsword";
	ITEM.category = "Melee";
	ITEM.description = "Черный стальной меч с устрашающим дизайном. Он отлично подходит для рубки плоти и костей.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/satanic_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(277.46, 287.4, 360);
	ITEM.attachmentOffsetVector = Vector(3.54, 2.12, 0.71);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks"}}; -- use "breakdown" for other type
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 1000, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Осколок";
	ITEM.model = "models/items/weapons/sword_souldrinker/sword_souldrinker.mdl";	
	ITEM.weight = 0.8;
	ITEM.uniqueID = "begotten_1h_shard";
	ITEM.category = "Melee";
	ITEM.description = "Меч, выкованный в адских жерновах. Излучает нечестивый свет, пробуждая страх в сердцах врагов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/shard.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(269.5, 28.84, 347.07);
	ITEM.attachmentOffsetVector = Vector(1.41, 4.24, -1.41);
	ITEM.attachmentBoneOffhand = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAnglesOffhand = Angle(269.5, 28.84, 12.93);
	ITEM.attachmentOffsetVectorOffhand = Vector(-1.41, 4.24, -1.41);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks", "down_catalyst"}}; -- use "breakdown" for other type
	ITEM.requireFaith = {"Faith of the Dark"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Боевой Молот";
	ITEM.model = "models/begotten/weapons/warhammer.mdl";	
	ITEM.weight = 1.2;
	ITEM.uniqueID = "begotten_1h_warhammer";
	ITEM.category = "Melee";
	ITEM.description = "Короткое древковое дробящее оружие, похожее на Булаву. Пользуется Популярностью у Православных или у людей Сияния.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/warhammer.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(287.4, 102.43, 187.96);
	ITEM.attachmentOffsetVector = Vector(3.54, 0, 12.02);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood", "wood", "leather"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 300, supercrateOnly = true};
ITEM:Register();
