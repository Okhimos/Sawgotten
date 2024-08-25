local ITEM = Clockwork.item:New("backpack_base");
	ITEM.name = "Маленький Рюкзак";
	ITEM.uniqueID = "backpack_small";
	ITEM.model = "models/fallout 3/backpack_1.mdl";
	ITEM.weight = 1;
	ITEM.invSpace = 8;
	ITEM.description = "Небольших размеров сумка, которую можно накинуть на спину. Скорее всего пошита была еще в Империи Света. Её потёртые швы и выцветший материал свидетельствуют о долгих годах использования, однако он всё ещё сохраняет свою функциональность, являясь верным спутником своего владельца, несмотря на неизбежный износ.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine4";
	ITEM.attachmentOffsetAngles = Angle(90, 104, 5);
	ITEM.attachmentOffsetVector = Vector(-2, 3.54, -1.41);
	ITEM.attachmentShieldOffset = Vector(1, -0.5, 1);
	
	ITEM.itemSpawnerInfo = {category = "Armor", rarity = 600, bNoSupercrate = true};
	ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth"}};
	ITEM.excludeFactions = {"Goreic Warrior"};
ITEM:Register();

local ITEM = Clockwork.item:New("backpack_base");
	ITEM.name = "Рюкзак";
	ITEM.uniqueID = "backpack";
	ITEM.model = "models/fallout 3/backpack_2.mdl";
	ITEM.weight = 2;
	ITEM.invSpace = 10;
	ITEM.description = "Старый рюкзак средних размеров, скорее всего пошиттый ещё в Империи Света. Выглядит так, будто прошёл через многие испытания. Его потёртые швы местами слегка распустились, а выцветший материал приобрёл неоднородный оттенок, сочетая остатки изначального цвета с следами времени. На поверхности видны царапины и пятна, которые рассказывают о его многочисленных владельцах и пережитых путешествиях. Лямки слегка изношены, но всё ещё прочны, а металлические пряжки и застёжки покрыты налётом ржавчины.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine4";
	ITEM.attachmentOffsetAngles = Angle(90, 101, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, -1);
	ITEM.attachmentShieldOffset = Vector(1, -0.5, 1);
	
	ITEM.itemSpawnerInfo = {category = "Armor", rarity = 800};
	ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth"}};
	ITEM.excludeFactions = {"Goreic Warrior"};
ITEM:Register();

local ITEM = Clockwork.item:New("backpack_base");
	ITEM.name = "Рюкзак с Подсумками";
	ITEM.uniqueID = "backpack_pouches";
	ITEM.model = "models/fallout 3/backpack_3.mdl";
	ITEM.weight = 3;
	ITEM.invSpace = 15;
	ITEM.description = "Старый рюкзак средних размеров, созданный ещё в Империи Света. Кто бы то ни был, но он додумался пришить несколько подсумков, чтобы увеличить грузоподъемность и иметь возможность унести с собой побольше полезностей. Славная находка для темных времен.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine4";
	ITEM.attachmentOffsetAngles = Angle(90, 110, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 9, -4);
	ITEM.attachmentShieldOffset = Vector(1, -0.5, 1);
	
	ITEM.itemSpawnerInfo = {category = "Armor", rarity = 1200};
	ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth", "cloth"}};
	ITEM.excludeFactions = {"Goreic Warrior"};
ITEM:Register();

local ITEM = Clockwork.item:New("backpack_base");
	ITEM.name = "Большой Рюкзак";
	ITEM.uniqueID = "backpack_survivalist";
	ITEM.model = "models/fallout 3/backpack_6.mdl";
	ITEM.weight = 4;
	ITEM.invSpace = 20;
	ITEM.description = "Огромный и вместительный рюкзак с обширным внутренним пространством и даже разделением на отсеки. Его материал выцвел от времени, а швы местами потёрлись. На поверхности видны царапины и пятна, свидетельствующие о долгих годах использования. Этот рюкзак, несмотря на свой возраст и износ, остаётся надёжным и готовым к использованию.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine4";
	ITEM.attachmentOffsetAngles = Angle(90, 101, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 7.07, -2.83);
	ITEM.attachmentShieldOffset = Vector(1, -0.5, 1);
	
	ITEM.itemSpawnerInfo = {category = "Armor", rarity = 1500};
	ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth", "cloth", "cloth"}};
	ITEM.excludeFactions = {"Goreic Warrior"};
ITEM:Register();

local ITEM = Clockwork.item:New("backpack_base");
	ITEM.name = "Подсумок";
	ITEM.uniqueID = "backpack_pouch";
	ITEM.model = "models/props_junk/garbage_bag001a.mdl";
	ITEM.weight = 0.5;
	ITEM.invSpace = 4;
	ITEM.description = "Небольшой мешок ручной работы, подходящий для хранения мелких вещей. Пошит умельцем на славу, но все равно недостаточно хорош, чтобы считаться полноценным рюкзаком.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine4";
	ITEM.attachmentOffsetAngles = Angle(270, 0, 180);
	ITEM.attachmentOffsetVector = Vector(0, 1.4, -7.5);
	ITEM.attachmentShieldOffset = Vector(1, -0.5, 1);
	
	ITEM.itemSpawnerInfo = {category = "Armor", rarity = 250, bNoSupercrate = true};
	ITEM.components = {breakdownType = "breakdown", items = {"cloth"}};
ITEM:Register();

local ITEM = Clockwork.item:New("backpack_base");
	ITEM.name = "Мешок из Шкур";
	ITEM.uniqueID = "gore_pouch";
	ITEM.model = "models/mosi/fallout4/props/junk/hidebundle.mdl";
	ITEM.weight = 1;
	ITEM.invSpace = 15;
	ITEM.description = "Больших размеров сумка, пошитая из шкуры животного. Для жалкого Южанина великолепная находка. К тому же, отлично висит на спине и вмещает большое количество вещей, но даже это не все! Он настолько мягкий и теплый, что может быть использован как подушка.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png"
	ITEM.isAttachment = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine4";
	ITEM.attachmentOffsetVector = Vector(0, -1.2, -6.36);
	ITEM.attachmentOffsetAngles = Angle(273.48, 164.09, 268);
	ITEM.attachmentShieldOffset = Vector(0, 5.5, 4);

	ITEM.components = {breakdownType = "breakdown", items = {"hide", "hide"}};
ITEM:Register();