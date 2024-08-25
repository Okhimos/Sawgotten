local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Элегантная Рапира";
	ITEM.model = "models/demonssouls/weapons/epee rapier.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_rapier_elegantepee";
	ITEM.category = "Melee";
	ITEM.description = "Мастерски изготовленный клинок из Максимилианской Стали с прекрасной золотой рукоятью. На нем гравюры давно забытого дворянского дома Сияния.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/elegant_epee.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(8.95, 4.97, 38.78);
	ITEM.attachmentOffsetVector = Vector(2.12, 4.95, -1.41);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 900, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Железная Рапира";
	ITEM.model = "models/demonssouls/weapons/rapier.mdl";
	ITEM.weight = 0.4;
	ITEM.uniqueID = "begotten_rapier_ironrapier";
	ITEM.category = "Melee";
	ITEM.description = "Хорошо сделанное и ловкое оружие. Оно исключительно легкое и сбалансированное, с острым и смертоносным наконечником.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/iron_rapier.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 16.91);
	ITEM.attachmentOffsetVector = Vector(3.5, 1, 1.68);
	ITEM.canUseOffhand = true;
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 500};
ITEM:Register();