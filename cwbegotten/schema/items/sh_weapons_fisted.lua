local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Цестус";
	ITEM.model = "models/props/begotten/melee/caestus.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_fists_caestus";
	ITEM.category = "Melee";
	ITEM.description = "Кожаные перчатки, созданные для боя. Наделяют удары владельца значительной пробивной способностью и ударно-дробящими свойствами.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/caestus.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(309.28, 148.18, 265.52);
	ITEM.attachmentOffsetVector = Vector(-0.71, 3.54, 0);
	
	ITEM.components = {breakdownType = "breakdown", items = {"leather", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Железные Кастеты";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/knuckles.mdl";
	ITEM.weight = 0.4;
	ITEM.uniqueID = "begotten_fists_ironknuckles";
	ITEM.category = "Melee";
	ITEM.description = "Пара кастетов. Отличное преимущество в любой драке.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/iron_knuckles.png"
	ITEM.meleeWeapon = true;
	ITEM.attributes = {"concealable"};
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 250, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Шипастые Кастеты";
	ITEM.model = "models/mosi/fallout4/props/weapons/melee/knuckles.mdl";
	ITEM.bodygroup1 = 2;
	ITEM.weight = 0.4;
	ITEM.uniqueID = "begotten_fists_spikedknuckles";
	ITEM.category = "Melee";
	ITEM.description = "Железная пара кастетов, оснащенная шипами. Один удар может лишить человека глаз.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/spiked_knuckles.png"
	ITEM.meleeWeapon = true;
	ITEM.attributes = {"concealable"};
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 350, bNoSupercrate = true};
ITEM:Register();