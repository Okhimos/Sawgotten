local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Железный Дротик";
	ITEM.model = "models/demonssouls/weapons/cut javelin.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "begotten_javelin_iron_javelin";
	ITEM.category = "Throwables";
	ITEM.description = "Прочное железное копье, превосходно нейтрализующее щиты.";
	ITEM.iconoverride = "begotten/ui/itemicons/iron_javelin.png"
	ITEM.isAttachment = true;
	ITEM.isJavelin = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(273.48, 178.01, 191.93);
	ITEM.attachmentOffsetVector = Vector(-6.36, 2.1, -16.27);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.itemSpawnerInfo = {category = "Melee", rarity = 2000};
	ITEM.repairCostModifier = 0.25;
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Пилум";
	ITEM.model = "models/props/begotten/melee/heide_lance.mdl";
	ITEM.weight = 3.5;
	ITEM.uniqueID = "begotten_javelin_pilum";
	ITEM.category = "Throwables";
	ITEM.description = "Древний дизайн, возрожденный учеными Святой Иерархии для использования среди Привратников. Он славится своими бронебойными и противощитовыми возможностями";
	ITEM.iconoverride = "begotten/ui/itemicons/pilum.png"
	ITEM.isAttachment = true;
	ITEM.isJavelin = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(170.06, 187.96, 181.99);
	ITEM.attachmentOffsetVector = Vector(0, 2.9, 0);
	ITEM.canUseShields = true;
	
	ITEM.attributes = {"malleable", "shieldbreaker"};
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.repairCostModifier = 0.25;
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Тренировочный Дротик.";
	ITEM.model = "models/begotten/weapons/training_spear.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "begotten_javelin_training_javelin";
	ITEM.category = "Throwables";
	ITEM.description = "Деревянный шест, который можно использовать для тренировок по метанию копья с низким уровнем риска.";
	ITEM.iconoverride = "begotten/ui/itemicons/training_javelin.png"
	ITEM.isAttachment = true;
	ITEM.isJavelin = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 279.45, 0);
	ITEM.attachmentOffsetVector = Vector(-4.24, 3, -24.75);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood"}};
	ITEM.repairCostModifier = 0.25;
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Метательный Топор";
	ITEM.model = "models/demonssouls/weapons/cut throwing axe offset.mdl";
	ITEM.weight = 1.2;
	ITEM.uniqueID = "begotten_javelin_throwing_axe";
	ITEM.category = "Throwables";
	ITEM.description = "Топор с изогнутой рукояткой, созданный для одной цели: вонзаться в плоть.";
	ITEM.iconoverride = "begotten/ui/itemicons/throwing_axe.png"
	ITEM.isAttachment = true;
	ITEM.isJavelin = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 258.63, 0);
	ITEM.attachmentOffsetVector = Vector(7.78, 0.71, -4.24);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood"}}; -- use "breakdown" for other type
	ITEM.repairCostModifier = 0.25;
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Метательный Нож";
	ITEM.model = "models/demonssouls/weapons/cut throwing dagger offset.mdl";
	ITEM.weight = 0.6;
	ITEM.uniqueID = "begotten_javelin_throwing_dagger";
	ITEM.category = "Throwables";
	ITEM.description = "Утяжеленный клинок, прикрепленный к легкой деревянной рукоятке. Его можно быстро и относительно легко метнуть, что позволяет потенциальному убийце за короткое время выпустить шквал кинжалов.";
	ITEM.iconoverride = "begotten/ui/itemicons/throwing_dagger.png"
	ITEM.isJavelin = true;
	ITEM.canUseShields = true;
	
	ITEM.attributes = {"concealable"};
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}}; -- use "breakdown" for other type
	ITEM.repairCostModifier = 0.25;
ITEM:Register();