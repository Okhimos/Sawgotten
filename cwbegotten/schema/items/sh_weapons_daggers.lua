local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Элегантный Кинжал";
	ITEM.model = "models/demonssouls/weapons/geri's geristiletto.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_elegantdagger";
	ITEM.category = "Melee";
	ITEM.description = "Элегантный кинжал старинной работы, вероятно, ценная реликвия из коллекции Святой Иерархии.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/elegant_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(0, 355.03, 0);
	ITEM.attachmentOffsetVector = Vector(-3.54, 0.71, 1.41);
	ITEM.canUseOffhand = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 600, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Охотничий Кинжал";
	ITEM.model = "models/demonssouls/weapons/secret dagger.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_gorehuntingdagger";
	ITEM.category = "Melee";
	ITEM.description = "Гравированный железный кинжал, использовавшийся для церемониальных охот в Горейском лесу.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_hunting_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(353.04, 86.52, 14.21);
	ITEM.attachmentOffsetVector = Vector(-3.54, 1.41, -2.12);
	ITEM.canUseOffhand = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Железный Кинжал";
	ITEM.model = "models/demonssouls/weapons/dagger.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_irondagger";
	ITEM.category = "Melee";
	ITEM.description = "Дешевый железный кинжал.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/iron_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(0, 355.03, 0);
	ITEM.attachmentOffsetVector = Vector(-3.54, 0.71, 1.41);
	ITEM.canUseOffhand = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 750};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Бич Рыцарей";
	ITEM.model = "models/demonssouls/weapons/mail breaker.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_knightsbane";
	ITEM.category = "Melee";
	ITEM.description = "Качественно сделанный кинжал, предназначенный для прокалывания доспехов на близком расстоянии.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/knightsbane.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(335.14, 355.03, 0);
	ITEM.attachmentOffsetVector = Vector(-2.83, 1.69, -3.71);
	ITEM.canUseOffhand = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 900, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Кинжал для Парирования";
	ITEM.model = "models/demonssouls/weapons/parrying dagger.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_parryingdagger";
	ITEM.category = "Melee";
	ITEM.description = "Небольшой кинжал, предназначенный для захвата клинков противника и помощи в их парировании.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/parrying_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(329.17, 355.03, 4.97);
	ITEM.attachmentOffsetVector = Vector(-2.83, 2.12, -3.54);
	ITEM.canUseOffhand = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 250, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Заточка";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/switchblade.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "begotten_dagger_quickshank";
	ITEM.category = "Melee";
	ITEM.description = "Ржавая заточка, сделанная из металлолома, найденного на пустошах.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/quickshank.png"
	ITEM.meleeWeapon = true;
	ITEM.canUseOffhand = true;
	
	ITEM.attributes = {"concealable"};
	ITEM.components = {breakdownType = "breakdown", items = {"scrap"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 100};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Церемониальный Кинжал Дома Рех-Хет-Са";
	ITEM.model = "models/items/weapons/daggers_kryss/daggers_kryss.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_houserekhkhetsaancestraldagger";
	ITEM.category = "Melee";
	ITEM.description = "Кинжал с изогнутым, змеиным лезвием, принадлежащий древнейшей родословной. Металл издает шипящий звук под воздействием солнечного света. Извращенная магия предков не позволяет смерду, не принадлежащему к правильной родословной, владеть этим кинжалом.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/rekh_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(252.95, 2.98, 0.95);
	ITEM.attachmentOffsetVector = Vector(-3.54, 2, 1.41);
	ITEM.canUseOffhand = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}};
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.requireSubfaction = {"Rekh-khet-sa"};
	ITEM.requireFaction = {"Children of Satan"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Церемониальный Кинжал Дома Вараздат";
	ITEM.model = "models/items/weapons/daggers_shadow/daggers_shadow.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_housevarazdatancestraldagger";
	ITEM.category = "Melee";
	ITEM.description = "Кинжал жителей Темноземья, когда-то использовавшийся культом пожирателей плоти. Слово Императора, вложенное в каждый клинок не позволяет смерду, не принадлежащему к правильной родословной, владеть этим кинжалом.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/varazdat_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(252.95, 2.98, 0.95);
	ITEM.attachmentOffsetVector = Vector(-3.54, 2, 1.41);
	ITEM.canUseOffhand = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}};
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.requireSubfaction = {"Varazdat"};
	ITEM.requireFaction = {"Children of Satan"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Церемониальный Кинжал Дома Филимаксио";
	ITEM.model = "models/items/weapons/daggers/daggers.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_housephilimaxioancestraldagger";
	ITEM.category = "Melee";
	ITEM.description = "Кинжал дворянина Сияния, поддавшегося искушению. Кровавая клятва верности Темному Лорду не позволяет смерду, не принадлежащему к правильной родословной, владеть этим кинжалом.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/philimaxio_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(249.16, 2.84, 2.84);
	ITEM.attachmentOffsetVector = Vector(-3.54, 2.12, 1.41);
	ITEM.canUseOffhand = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}};
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.requireSubfaction = {"Philimaxio"};
	ITEM.requireFaction = {"Children of Satan"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Церемониальный Кинжал Дома Кинисгер";
	ITEM.model = "models/items/weapons/daggers_collector/daggers_collector.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_housekinisgerancestraldagger";
	ITEM.category = "Melee";
	ITEM.description = "Орудие убийцы, принадлежащего к Черным Шляпам. Вероятно, унесло множество жизней, от крепостных и до императоров. Оно настолько своебразно и странно, что никто, кроме лучших шпионов Клана Киннисгер не может с ним достойно управляться.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/kinisger_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.canUseOffhand = true;
	
	ITEM.attributes = {"concealable"};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}};
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.requireSubfaction = {"Kinisger"};
	ITEM.requireFaction = {"Children of Satan"};
ITEM:Register();