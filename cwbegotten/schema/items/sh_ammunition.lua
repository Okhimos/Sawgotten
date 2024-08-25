local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Ружейный Патрон";
	ITEM.model = "models/kali/weapons/metro 2033/magazines/12 gauge shotgun shell.mdl";
	ITEM.weight = 0.2;
	ITEM.stackable = true;
	ITEM.description = "Самодельный патрон для гладкоствольного оружия. Латунная гильза покрыта мелкими царапинами и вмятинами, словно побывала в бою не раз. Капсюль слегка покороблен, намекая на грубую сборку. Пластиковая обертка, поцарапанная и немного потрескавшаяся, туго натянута, удерживая заряд, который виднеется сквозь мутную заглушку. Кажется, что этот патрон способен сотворить настоящий ад на близком расстоянии.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/grapeshot.png"
	ITEM.uniqueID = "grapeshot";
	ITEM.ammoType = "Grapeshot";
	ITEM.ammoName = "Grapeshot";
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.itemSpawnerInfo = {category = "Shot", rarity = 350, onGround = false};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Ружейный патрон Старого Мира";
	ITEM.uniqueID = "old_world_grapeshot";
	ITEM.model = "models/kali/weapons/metro 2033/magazines/12 gauge shotgun shell.mdl";
	ITEM.weight = 0.2;
	ITEM.stackable = true;
	ITEM.description = "Древний ружейный патрон, созданный задолго до существования Империи Света. Этот боеприпас, покрытый налетом вековой пыли и окисленной бронзы, хранит в себе следы множества сражений. Его металлический корпус с гравировками давно потерял былой блеск, а застылая кровь противников, возможно, всё ещё запечатывает его силу. Каждая картечина внутри ждет своего часа, чтобы разлететься, разрывая все на своем пути.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/grapeshot.png"
	
	ITEM.ammoType = "Old World Grapeshot";
	ITEM.ammoName = "Old World Grapeshot";
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.itemSpawnerInfo = {category = "Shot", rarity = 500, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Пуля";
	ITEM.uniqueID = "pop-a-shot";
	ITEM.model = "models/bullets/w_pbullet1.mdl";
	ITEM.weight = 0.1;
	ITEM.stackable = true;
	ITEM.description = "Один патрон с черным порохом и мелкими ржавым шариком вместо пули. Этот грубо сделанный боеприпас, напоминающий реликт давно ушедшей эпохи, несет в себе разрушительную силу. Снаряд, несмотря на свою ветхость, способен нанести ужасные раны, а черный порох готов выпустить их с глухим, угрожающим грохотом.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pop-a-shot.png"
	
	ITEM.ammoType = "Pop-a-Shot";
	ITEM.ammoName = "Pop-a-Shot";
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.itemSpawnerInfo = {category = "Shot", rarity = 85, onGround = false, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Дальнобойный Патрон";
	ITEM.uniqueID = "longshot";
	ITEM.model = "models/shells/shell_338mag.mdl";
	ITEM.weight = 0.2;
	ITEM.stackable = true;
	ITEM.description = "Ржавый патрон, которым можно зарядить мушкет. Несмотря на свой ветхий вид, этот патрон обладает разрушительной силой. Вылетая из ствола, он наносит ужасающие ранения и пробивает практически любые доспехи.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/longshot.png"
	
	ITEM.ammoType = "Longshot";
	ITEM.ammoName = "Longshot";
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.itemSpawnerInfo = {category = "Shot", rarity = 300, onGround = false};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Магазин Старого Мира";
	ITEM.uniqueID = "old_world_magazine";
	ITEM.model = "models/uzi megazine 20.mdl";
	ITEM.weight = 0.8;
	ITEM.description = "Среднего размера магазин для оружия, который можно заполнить боеприпасами из давно минувших времён, — настоящая редкость и ценная находка!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scavenger_gun_magazine.png"
	
	ITEM.ammoType = "Old World Magazine";
	ITEM.ammoName = "Old World Shot";
	ITEM.ammoMagazineSize = 7;
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.itemSpawnerInfo = {category = "Firearms", rarity = 800, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Большой магазин Старого Мира";
	ITEM.uniqueID = "old_world_large_magazine";
	ITEM.model = "models/uzi megazine 32.mdl";
	ITEM.weight = 1.2;
	ITEM.description = "Большой магазин для оружия, который можно заполнить боеприпасами из давно минувших времён, — настоящая редкость и ценная находка!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scavenger_gun_large_magazine.png"

	ITEM.ammoType = "Old World Large Magazine";
	ITEM.ammoName = "Old World Shot";
	ITEM.ammoMagazineSize = 30;
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.itemSpawnerInfo = {category = "Firearms", rarity = 2000, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Дальнобойный патрон Старого Мира";
	ITEM.uniqueID = "old_world_longshot";
	ITEM.model = "models/kali/weapons/metro 2033/magazines/12_7mm round.mdl";
	ITEM.weight = 0.2;
	ITEM.stackable = true;
	ITEM.description = "Один патрон из старого мира, который, без сомнения, превосходит всё, что используется в это мрачное время.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/old_world_longshot.png"
	
	ITEM.ammoType = "Old World Longshot";
	ITEM.ammoName = "Old World Longshot";
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.itemSpawnerInfo = {category = "Firearms", rarity = 500, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Пуля Старого Мира";
	ITEM.uniqueID = "old_world_shot";
	ITEM.model = "models/bullets/w_pbullet1.mdl";
	ITEM.weight = 0.1;
	ITEM.stackable = true;
	ITEM.description = "Один патрон из старого мира, который, без сомнения, превосходит всё, что используется в это мрачное время.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pop-a-shot.png"
	
	ITEM.ammoType = "Old World Shot";
	ITEM.ammoName = "Old World Shot";
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.itemSpawnerInfo = {category = "Firearms", rarity = 250, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Магазин для карабина Мусорщиков";
	ITEM.uniqueID = "scavenger_gun_magazine";
	ITEM.model = "models/uzi megazine 20.mdl";
	ITEM.weight = 0.8;
	ITEM.description = "Магазин, вмещающий пятнадцать скрап-патронов, предназначен для использования в оружии мусорщиков.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scavenger_gun_magazine.png"
	
	ITEM.ammoType = "Scavenger Gun Magazine";
	ITEM.ammoName = "Scrapshot";
	ITEM.ammoMagazineSize = 15;
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Shot", rarity = 1000, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Большой магазин для карабина Мусорщиков";
	ITEM.uniqueID = "scavenger_gun_large_magazine";
	ITEM.model = "models/uzi megazine 32.mdl";
	ITEM.weight = 1.2;
	ITEM.description = "Магазин, вмещающий двадцать пять скрап-патронов, предназначен для использования в оружии мусорщиков.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scavenger_gun_large_magazine.png"
	
	ITEM.ammoType = "Scavenger Gun Large Magazine";
	ITEM.ammoName = "Scrapshot";
	ITEM.ammoMagazineSize = 25;
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "scrap"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Скрап-Пуля";
	ITEM.uniqueID = "scrapshot";
	ITEM.model = "models/bullets/w_pbullet1.mdl";
	ITEM.weight = 0.1;
	ITEM.stackable = true;
	ITEM.description = "Маленький патрон, сделанный из обломков металла и чёрного пороха. Обычно используется мусорщиками.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pop-a-shot.png"
	
	ITEM.ammoType = "Scrapshot";
	ITEM.ammoName = "Scrapshot";
	ITEM.requiredReloadBelief = "powder_and_steel";
	
	ITEM.itemSpawnerInfo = {category = "Shot", rarity = 85, onGround = false, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Заряд Рельсотрона";
	ITEM.uniqueID = "volt_projectile";
	ITEM.model = "models/items/librounds.mdl";
	ITEM.weight = 0.25;
	ITEM.stackable = true;
	ITEM.description = "Больших размеров снаряд, который подходит только к оружию вольтистов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/volt_projectile.png"
	
	ITEM.ammoType = "Volt Projectile";
	ITEM.ammoName = "Volt Projectile";
	ITEM.requiredReloadBelief = "powder_and_steel";
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Железный Болт";
	ITEM.uniqueID = "iron_bolt";
	ITEM.model = "models/begotten/items/bolt.mdl";
	ITEM.weight = 0.2;
	ITEM.stackable = true;
	ITEM.description = "Деревянный арбалетный болт с железным наконечником и отличными аэродинамическими свойствами. Он способен пробить почти любую броню.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/iron_bolt.png"
	
	ITEM.ammoType = "Iron Bolt";
	ITEM.ammoName = "Iron Bolt";
	ITEM.requiredReloadBelief = "strength";
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("shot_base");
	ITEM.name = "Скрап Болт";
	ITEM.uniqueID = "scrap_bolt";
	ITEM.model = "models/begotten/items/rebar.mdl";
	ITEM.weight = 0.2;
	ITEM.stackable = true;
	ITEM.description = "Грубо сконструированный арбалетный болт, сделанный из кусков арматуры, найденной в Пустоши.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scrap_bolt.png"
	
	ITEM.ammoType = "Scrap Bolt";
	ITEM.ammoName = "Scrap Bolt";
	ITEM.requiredReloadBelief = "strength";
	
	ITEM.components = {breakdownType = "meltdown", items = {"scrap"}};
	ITEM.itemSpawnerInfo = {category = "Shot", rarity = 300, onGround = false};
ITEM:Register();