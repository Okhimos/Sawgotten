local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Адского Пламени";
	ITEM.model = "models/items/weapons/sword_of_fire/sword_of_fire.mdl";
	ITEM.weight = 1.5;
	ITEM.uniqueID = "begotten_sacrificial_hellfiresword";
	ITEM.category = "Melee";
	ITEM.description = "Древний выкованный в аду меч, все еще усиленный темным катализатором. Он горит жаром в твоей руке, и еще жарче в плоти твоего врага.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/hellfire_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(110.39, 337.13, 2.98);
	ITEM.attachmentOffsetVector = Vector(2.12, 4.95, -0.71);
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks"}}; -- use "breakdown" for other type
	ITEM.attributes = {"fire"};
	ITEM.requiredbeliefs = {"murder_artform"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Священный Клинок Друида";
	ITEM.model = "models/begotten/weapons/sword1_unique.mdl";
	ITEM.weight = 0.7;
	ITEM.uniqueID = "begotten_sacrificial_blesseddruidsword";
	ITEM.category = "Melee";
	ITEM.description = "Грубый железный клинок. На нем выгравированы различные горейские символы, которые заставляют его пылать вечным пламенем.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/blessed_druid_sword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(294.63, 288.95, 0);
	ITEM.attachmentOffsetVector = Vector(2.83, 3, 0);	
	ITEM.canUseShields = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks"}}; -- use "breakdown" for other type
	ITEM.attributes = {"fire"};
	ITEM.requireFaith = {"Faith of the Family"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Нечестивый Огненный Меч";
	ITEM.model = "models/props/begotten/melee/smelter_sword.mdl";
	ITEM.skin = 0;
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_sacrificial_unholysigilsword_fire";
	ITEM.category = "Melee";
	ITEM.description = "Покрытый шрамами черный железный меч, выкованный в адском огне. Он усилен темным катализатором, который заставляет его пылать адским пламенем.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/unholy_sigil_sword_fire.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 185.97, 92.49);
	ITEM.attachmentOffsetVector = Vector(-1.41, 2.83, -35.36);
	ITEM.attachmentSkin = 0;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks"}}; -- use "breakdown" for other type
	ITEM.attributes = {"fire"};
	ITEM.requiredbeliefs = {"murder_artform", "strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Нечестивый Ледяной Меч";
	ITEM.model = "models/props/begotten/melee/smelter_sword.mdl";
	ITEM.skin = 1;
	ITEM.weight = 4;
	ITEM.uniqueID = "begotten_sacrificial_unholysigilsword_ice";
	ITEM.category = "Melee";
	ITEM.description = "Покрытый шрамами черный железный меч, выкованный в адском огне. Он усилен темным катализатором, который заставляет его превращать в лед все, до чего коснется лезвие.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/unholy_sigil_sword_ice.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0, 185.97, 92.49);
	ITEM.attachmentOffsetVector = Vector(-1.41, 2.83, -35.36);
	ITEM.attachmentSkin = 1;
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks"}}; -- use "breakdown" for other type
	ITEM.attributes = {"ice"};
	ITEM.requiredbeliefs = {"murder_artform", "strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Северного Сияния";
	ITEM.model = "models/begotten/weapons/irithyll_straight_sword.mdl";
	ITEM.weight = 1.5;
	ITEM.uniqueID = "begotten_sacrificial_enchantedlongsword_ice";
	ITEM.category = "Melee";
	ITEM.description = "Длинный меч, словно сделанный изо льда. Он заставляет души врагов трепетать.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/enchanted_longsword.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(176.02, 281.44, 88.51);
	ITEM.attachmentOffsetVector = Vector(-3.54, 2.9, 16.97);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks"}}; -- use "breakdown" for other type
	ITEM.attributes = {"ice"};
	ITEM.requiredbeliefs = {"the_light"};
	ITEM.kinisgerOverride = true;
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Ледяной Кинжал";
	ITEM.model = "models/items/weapons/dg_ash_hammer/daggers_ash_hammer_on.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_sacrificial_darkdagger_ice";
	ITEM.category = "Melee";
	ITEM.description = "Маленький кинжал, наделенный силой льда.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/dark_ice_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(76.57, 355.03, 355.03);
	ITEM.attachmentOffsetVector = Vector(-2.9, 1.41, -3.54);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}}; -- use "breakdown" for other type
	ITEM.attributes = {"ice"};
	ITEM.requiredbeliefs = {"murder_artform"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Огненный Кинжал";
	ITEM.model = "models/items/weapons/dg_ash_hammer/daggers_ash_hammer.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "begotten_dagger_sacrificial_darkdagger_fire";
	ITEM.category = "Melee";
	ITEM.description = "Небольшой кинжал, наделенный силой огня.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/dark_fire_dagger.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_R_Thigh";
	ITEM.attachmentOffsetAngles = Angle(76.57, 355.03, 355.03);
	ITEM.attachmentOffsetVector = Vector(-2.9, 1.41, -3.54);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}}; -- use "breakdown" for other type
	ITEM.attributes = {"fire"};
	ITEM.requiredbeliefs = {"murder_artform"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Меч Сияния и Щит Сола";
	ITEM.model = "models/demonssouls/weapons/rune sword.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "begotten_sacrificial_glazicsword_glazicshield";
	ITEM.category = "Melee";
	ITEM.description = "Клинок из Максимилианской Стали с рунами огня на лезвии и Золотой Щит, благословленный СОЛ'ом.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/glazic_sword_sol_shield.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_L_Thigh";
	ITEM.attachmentOffsetAngles = Angle(14.92, 0, 20.88);
	ITEM.attachmentOffsetVector = Vector(2.83, 3.54, 0);
	
	ITEM.components = {breakdownType = "meltdown", items = {"gold_ingot"}}; -- use "breakdown" for other type
	ITEM.attributes = {"fire"};
	ITEM.requiredbeliefs = {"the_light"};
	ITEM.kinisgerOverride = true;
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Священный Колокол";
	ITEM.model = "models/props/begotten/melee/sacred_chime_hammer.mdl";
	ITEM.weight = 18;
	ITEM.uniqueID = "begotten_2h_great_bellhammer";
	ITEM.category = "Melee";
	ITEM.description = "Колоссальный чугунный зверь святого суда. Он наделяет праведника силой, достаточной для того, чтобы владеть им, не опрокидываясь. Оружие, что повергает врагов в ужас.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bellhammer.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(287.4, 0, 347);
	ITEM.attachmentOffsetVector = Vector(-2.12, 1.41, -20.51);
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks"}}; -- use "breakdown" for other type
	ITEM.attributes = {"bell"};
	ITEM.requiredbeliefs = {"strength", "repentant"};
	ITEM.kinisgerOverride = true;
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Бич Демонов";
	ITEM.model = "models/props/begotten/melee/drakekeeper_great_axe.mdl";
	ITEM.weight = 8;
	ITEM.uniqueID = "begotten_2h_great_demonslayerhammer";
	ITEM.category = "Melee";
	ITEM.description = "Огромный топор из лучшей Шагалакской Стали. В руках опытного воина это оружие способно разрубать кости одним взмахом.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/demonslayer_greataxe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0.99, 339.12, 88.51);
	ITEM.attachmentOffsetVector = Vector(7.78, 2.83, -24.04);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"strength"};
	ITEM.requireFaith = {"Faith of the Family"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Топор Ужаса";
	ITEM.model = "models/props/begotten/melee/black_knight_greataxe.mdl";
	ITEM.weight = 7;
	ITEM.uniqueID = "begotten_2h_great_dreadaxe";
	ITEM.category = "Melee";
	ITEM.description = "Черный стальной топор злобного дизайна. Оружие, даруемое только самым талантливым палачам Темного Лорда.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/black_knight_greataxe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(0.99, 339.12, 88.51);
	ITEM.attachmentOffsetVector = Vector(7.78, 2.83, -24.04);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks"}}; -- use "breakdown" for other type
	ITEM.requiredbeliefs = {"murder_artform", "strength"};
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Морозный Топор Предков";
	ITEM.model = "models/begotten/weapons/gore_ice_axe.mdl";
	ITEM.weight = 5;
	ITEM.uniqueID = "begotten_sacrificial_frozenfatherlandaxe";
	ITEM.category = "Melee";
	ITEM.description = "Боевой топор, проклятый богами с непрекращающейся ледяной хваткой. Он ищет достойного владельца, чтобы заморозить кровь слабаков.";
	ITEM.iconoverride = "begotten/ui/itemicons/gore_ice_axe.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isSacrifical = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
	ITEM.attachmentOffsetAngles = Angle(360, 193.92, 94.48);
	ITEM.attachmentOffsetVector = Vector(-1.41, 2, -7.07);
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks", "ice_catalyst", "wood", "wood"}}; -- use "breakdown" for other type
	ITEM.attributes = {"ice"};
	ITEM.requiredbeliefs = {"strength"};
	ITEM.requireFaith = {"Faith of the Family"};
ITEM:Register();