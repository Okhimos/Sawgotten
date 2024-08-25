local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Глефа";
	ITEM.model = "models/demonssouls/weapons/war scythe.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "begotten_scythe_glaive";
	ITEM.category = "Melee";
	ITEM.description = "Острое лезвие, прикрепленное к концу длинного шеста, могло с легкостью выпотрошить любого, кто попадал в зону его действия.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/glaive.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isLongPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(88.51, 0, 351.05);
	ITEM.attachmentOffsetVector = Vector(1.41, 3, -9.9);
	
	--ITEM.attributes = {"grounded"};
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood", "wood", "wood"}}; -- use "breakdown" for other type
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Боевая Коса";
	ITEM.model = "models/props/begotten/melee/scythe.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_scythe_warscythe";
	ITEM.category = "Melee";
	ITEM.description = "Инструмент для труда крепостного, превращенный в оружие. Зрелище удручающее, но не редкое в наши темные дни.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/war_scythe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isLongPolearm = true;
	ITEM.hasMinimumRange = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(186.63, 194.21, 355.03);
	ITEM.attachmentOffsetVector = Vector(5.66, 1.5, -23.34);
	
	--ITEM.attributes = {"grounded"};
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 2000};
ITEM:Register();
