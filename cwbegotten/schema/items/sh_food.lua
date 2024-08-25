local ITEM = Clockwork.item:New();
	ITEM.name = "Банка Бобов";
	ITEM.cost = 8;
	ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Открыть и Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Старая банка фасоли, судя по всему, все еще запечатана, хотя ее свежесть остается под вопросом.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can.png"
	ITEM.stackable = true;
	ITEM.infectionchance = 10; -- Chance to give you a disease.

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 715};
	ITEM.needs = {hunger = 30, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_can"));
		
		Schema:EasyText(player, "olivedrab", "Несмотря на то, что срок годности давно истек, и зерна слегка пенятся, они по-прежнему нормальные по вкусу.");

		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Вскрытая Банка Фасоли";
	ITEM.cost = 8;
	ITEM.model = "models/props_junk/garbage_metalcan002a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Поесть помои";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Проколотая консервная банка с тем, что раньше было фасолью внутри. Теперь густая смесь из личинок, плесени и болезней. По крайней мере это то, чем можно набить живот...";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can_punctured.png"
	ITEM.stackable = true;
	ITEM.infectionchance = 50; -- Chance to give you a disease.
	ITEM.poison = 6; -- Holdover from Begotten II, maybe we can use it.

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 350};
	ITEM.needs = {hunger = 25, thirst = 10};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)		
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Вы чувствуете себя ужасно от того, что съели что-то настолько мерзкое. В результате, рассудок понемногу покидает вас. Стоило ли оно того?");
			player:HandleSanity(-25);
		end
		
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Заплесневелый Хлеб";
	ITEM.cost = 8;
	ITEM.model = "models/kali/miscstuff/stalker/food/bread.mdl";
	ITEM.weight = 0.2;
	ITEM.useText = "Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Небольшая буханка хлеба, покрытая плесенью и грязью.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bread.png"
	ITEM.stackable = true;
	ITEM.infectchance = 15;
	ITEM.poison = 3;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 500};
	ITEM.needs = {hunger = 15};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Хлеб размяк и заплесневел, но он гораздо лучше другой еды, которую можно найти на пустоши.");
			player:HandleSanity(-5);
		end
		
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Консервированный Обед";
	ITEM.cost = 8;
	ITEM.model = "models/kali/miscstuff/stalker/food/tourist's breakfast.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Открыть и Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Помятая жестяная банка, в которой якобы находятся фасоль и мясо, но она все еще запечатана. А день-то налаживается.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/canned_meal.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 875};
	ITEM.needs = {hunger = 40, thirst = 10};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		player:HandleSanity(5);
		player:SetHealth(math.Clamp(player:Health() + 5, 0, player:GetMaxHealth()));
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Сырое Мясо Медведя";
	ITEM.model = "models/gibs/humans/mgib_07.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Raw Bear Meat";
	ITEM.useText = "Запихать себе в глотку";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Сырое мясо, добытое с трупа медведя.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/human_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "bear_meat"
	ITEM.infectchance = 30;
	ITEM.poison = 5;
	
	ITEM.needs = {hunger = 25, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)

		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Вы неохотно едите сырое мясо, представляя, каким бы вкусным оно могло быть...");
			player:HandleSanity(-5);
		end
			
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	--[[function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/flesh");
	end;]]--
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Приготовленное Мясо Медведя";
	ITEM.model = "models/items/provisions/ham_dry/ham_dry.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Cooked Bear Meat";
	ITEM.useText = "Съесть";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Приготовленное мясо медведя. Очень вкусно и питательно.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cooked_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "cooked_bear_meat"
	
	ITEM.needs = {hunger = 50, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		player:HandleSanity(5);
		player:SetHealth(math.Clamp(player:Health() + 10, 0, player:GetMaxHealth()));
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Сырое Мясо Леопарда";
	ITEM.model = "models/gibs/humans/mgib_07.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Raw Leopard Meat";
	ITEM.useText = "Запихать себе в глотку";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Сырое мясо, добытое с трупа леопарда.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/human_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "leopard_meat"
	ITEM.infectchance = 30;
	ITEM.poison = 5;
	
	ITEM.needs = {hunger = 25, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)

		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Вы неохотно едите сырое мясо, представляя, каким бы вкусным оно могло быть...");
			player:HandleSanity(-5);
		end
			
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	--[[function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/flesh");
	end;]]--
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Приготовленное Мясо Леопарда";
	ITEM.model = "models/items/provisions/ham_dry/ham_dry.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Cooked Leopard Meat";
	ITEM.useText = "Съесть";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Приготовленное мясо леопарда. Очень вкусно и питательно.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cooked_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "cooked_leopard_meat"
	
	ITEM.needs = {hunger = 50, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		player:HandleSanity(5);
		player:SetHealth(math.Clamp(player:Health() + 5, 0, player:GetMaxHealth()));
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Сырое Мясо Оленя";
	ITEM.model = "models/gibs/humans/mgib_07.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Raw Deer Meat";
	ITEM.useText = "Запихать себе в глотку";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Сырое мясо, добытое с трупа оленя.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/human_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "deer_meat"
	ITEM.infectchance = 30;
	ITEM.poison = 5;
	
	ITEM.needs = {hunger = 20, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
	
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Вы неохотно едите сырое мясо, представляя, каким бы вкусным оно могло быть...");
			player:HandleSanity(-5);
		end
		
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	--[[function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/flesh");
	end;]]--
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Приготовленное Мясо Оленя";
	ITEM.model = "models/items/provisions/ham_dry/ham_dry.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Cooked Deer Meat";
	ITEM.useText = "Съесть";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Приготовленное мясо оленя. Очень вкусно и питательно.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cooked_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "cooked_deer_meat"
	
	ITEM.needs = {hunger = 45, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		player:HandleSanity(5);
		player:SetHealth(math.Clamp(player:Health() + 5, 0, player:GetMaxHealth()));
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Приготовленное Мясо Козла";
	ITEM.model = "models/items/provisions/ham_dry/ham_dry.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Cooked Goat Meat";
	ITEM.useText = "Съесть";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Приготовленное мясо козла. Очень вкусно и питательно.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cooked_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "cooked_goat_meat"
	
	ITEM.needs = {hunger = 45, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		player:HandleSanity(5);
		player:SetHealth(math.Clamp(player:Health() + 5, 0, player:GetMaxHealth()));
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Сырое Мясо Козла";
	ITEM.model = "models/gibs/humans/mgib_07.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Raw Goat Meat";
	ITEM.useText = "Запихать себе в глотку";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Сырое мясо, добытое с трупа козла.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/human_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "goat_meat"
	ITEM.infectchance = 30;
	ITEM.poison = 5;
	
	ITEM.needs = {hunger = 20, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)

		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Вы неохотно едите сырое мясо, представляя, каким бы вкусным оно могло быть...");
			player:HandleSanity(-5);
		end
	
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	--[[function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/flesh");
	end;]]--
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Рацион Привратника";
	ITEM.cost = 8;
	ITEM.model = "models/items/provisions/food_ratio/food_ratio02.mdl";
	ITEM.weight = 0.4;
    ITEM.uniqueID = "gatekeeper_ration"
	ITEM.useText = "Распаковать и Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Большой кусок розоватого мяса, хотя и хорошо приготовленный и завернутый для удобства транспортировки. Вы чувствуете себя комфортно, не зная, частью чего он был раньше.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gatekeeper_ration.png"
	ITEM.stackable = true;

	ITEM.needs = {hunger = 50, thirst = 15};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		player:HandleSanity(5);
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Сырое Человеческое Мясо";
	ITEM.model = "models/gibs/humans/mgib_07.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Raw Human Meat";
	ITEM.useText = "Запихать себе в глотку";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Мясо, аккуратно срезанное с человеческого тела.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/human_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "humanmeat"
	ITEM.infectchance = 50;
	ITEM.poison = 5;
	
	ITEM.needs = {hunger = 35, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Ты с трудом проглатываешь сырой кусок другого человека, попутно понимая, что теряешь рассудок.");
			player:HandleSanity(-20);
		end
		
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	--[[function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/flesh");
	end;]]--
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Прикольное Мясцо";
	ITEM.model = "models/gibs/humans/mgib_07.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Fucked Meat";
	ITEM.useText = "Запихать себе в глотку";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Гнилой кусок мяса, по которому ползают личинки. Выглядит крайне аппетитно..Или нет?";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/human_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "fuckedmeat"
	ITEM.infectchance = 50;
	ITEM.poison = 35;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 300};
	ITEM.needs = {hunger = 25, thirst = 0};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Пережевывая этот уебищный кусок и понимаете, что глаза не обманывают! Вы выплевываете червей и гниль, оставаясь один на один с мыслями о самоубийстве.");
			player:HandleSanity(-25);
		end
		
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	--[[function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/flesh");
	end;]]--
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Хрючево из Мяса";
	ITEM.model = "models/items/provisions/ham_dry/ham_dry.mdl";
	ITEM.weight = 0.3;
	ITEM.plural = "Unfucked Meat";
	ITEM.useText = "Съесть";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Неоднозначное мясо, возможно, какое-то мертвое животное или что-то похуже. Впрочем, неважно, его пожарили, и теперь его можно есть, и это довольно безопасно.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cooked_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "unfuckedmeat"
	
	ITEM.needs = {hunger = 40, thirst = 15};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		Schema:EasyText(player, "olivedrab", "Мясо хреновое, но можно есть и не заблеваться! Это прекрасно.");
		player:HandleSanity(10);
		player:SetHealth(math.Clamp(player:Health() + 8, 0, player:GetMaxHealth()));
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	--[[function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/flesh");
	end;]]--
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Мясные Шкварки";
	ITEM.model = "models/items/provisions/ham_dry/ham_dry.mdl";
	ITEM.weight = 0.6;
	ITEM.useText = "Съесть";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Вареное мясо...Или нет. Или да. Жуй быстрее!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cooked_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "meatmeal"
	
	ITEM.needs = {hunger = 80, thirst = 45};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		Schema:EasyText(player, "olivedrab", "Это..Пойдет. Вряд ли лучшее, что ты ел, но уж точно не черви с привкусом земли.");
		player:HandleSanity(30);
		player:SetHealth(math.Clamp(player:Health() + 25, 0, player:GetMaxHealth()));
			
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	--[[function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/flesh");
	end;]]--
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Жаренное Человеческое Мясо";
	ITEM.model = "models/items/provisions/ham_dry/ham_dry.mdl";
	ITEM.weight = 0.35;
	ITEM.plural = "Cooked Human Meat";
	ITEM.useText = "Съесть";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Приготовленное мясо убитого человека.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cooked_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "cooked_human_meat"
	ITEM.infectchance = 5;
	
	ITEM.needs = {hunger = 50, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if player:HasBelief("savage") then
			Schema:EasyText(player, "olivedrab", "Вам нравится пикантный вкус вашего ближнего.");
			player:HandleSanity(2);
			player:SetHealth(math.Clamp(player:Health() + 3, 0, player:GetMaxHealth()));
		else
			Schema:EasyText(player, "olivedrab", "Это мясо приготовлено настолько хорошо, что почти забываешь, откуда оно взялось.");
			player:HandleSanity(-2);
		end
		
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Консервированный Супец";
	ITEM.cost = 8;
	ITEM.model = "models/props_junk/garbage_metalcan002a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Пихнуть в рот";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Самая обычная банка супа...Хотя нет, вроде где-то в боку дырка, да и слишком наваристо. Впрочем, попробовать стоит. Наверное...";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can_punctured.png"
	ITEM.stackable = true;
	ITEM.infectionchance = 50;
	ITEM.poison = 6;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 350};
	ITEM.needs = {hunger = 15, thirst = 30};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)		
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Такое ощущение, будто бы вам в рот положили не суп, а дерьмо. Живите с этим. Ну или не живите.");
			player:HandleSanity(-25);
		end
		
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Конфетка";
	ITEM.cost = 8;
	ITEM.model = "models/kali/miscstuff/stalker/artifacts/eye.mdl";
	ITEM.weight = 0.25;
	ITEM.useText = "Слопать";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/kitty_candy.png"
	ITEM.description = "Конфетка! Конфетка! Конфетка! Кушай быстрее!";
	ITEM.stackable = true;
	ITEM.uniqueID = "kittycandy";
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1500};
	ITEM.needs = {hunger = 25};
	
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "Если скушать конфету, она внезапно превратится в очищающий камень, который пульсирует, даруя вам мощное исцеление и восстанавливая ваш рассудок, одновременно снижая вашу порчу!");
			player:HandleSanity(50);
			player:HandleNeed("corruption", -25);
			player:SetHealth(math.Clamp(player:Health() + 25, 0, player:GetMaxHealth()));
			player:HandleXP(cwBeliefs.xpValues["food"]);
		elseif (math.random( 1, 4 ) == 1) then
			player:ScriptedDeath("Had their insides dissolved with acid.");
			Schema:EasyText(player, "olive", "Ты раскусываешь конфету и чувствуешь неприятный привкус... Блядь! Эти конфеты — кислота! Кислота, которая начинает жечь твой гребаный язык и горло.");
			player:HandleSanity(-100);
		else
			Schema:EasyText(player, "lawngreen", "Это было чертовски вкусно! Нужна еще одна конфета...");
			player:HandleSanity(50);
			player:SetHealth(math.Clamp(player:Health() + 15, 0, player:GetMaxHealth()));
			player:HandleXP(cwBeliefs.xpValues["food"]);
		end;
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Консервированная Вкусняшка из Бобов";
	ITEM.cost = 8;
	ITEM.model = "models/kali/miscstuff/stalker/food/tourist's breakfast.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Открытая банка с гнилыми бобами и плотоядными личинками внутри. Выглядит аппетитно!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/canned_meal.png"
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 350};
	ITEM.needs = {hunger = 50};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)

		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "Вы замечаете проблеск света внутри банки и радуетесь, обнаружив множество монет, что не может не радовать! Боги благоволят вам!");
			player:HandleSanity(20);
			Clockwork.player:GiveCash(player, math.random(10, 30), "Blessed coins!");
			player:HandleXP(cwBeliefs.xpValues["food"]);
		elseif !player:HasBelief("savage_animal") and (math.random(1, 2) == 1) then
			--player:GiveItem(Clockwork.item:CreateInstance("empty_can"));
			player:ScriptedDeath("Was devoured by flesh eating maggots.");
			player:HandleSanity(-100);
			Schema:EasyText(player, "olive", "Вы открываете банку и наслаждаетесь тем, что считаете хорошим мясом. Ваши пальцы дрожат, когда вы засовываете продукт в рот, и вы быстро понимаете, что продукт кишит плотоядными личинками. Вы начинаете медленно умирать, будучи съеденным изнутри.");
		else
			--player:GiveItem(Clockwork.item:CreateInstance("empty_can"));
			Schema:EasyText(player, "lawngreen", "Вы открываете банку и начинаете есть вкусные бобы. И, о, какие они вкусные!");
			
			if !player:HasBelief("savage_animal") then
				player:HandleSanity(-50);
			end
			
			player:HandleXP(cwBeliefs.xpValues["food"]);
		end;	
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Консервированная Мясная Вкусняшка";
	ITEM.cost = 8;
	ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Открыть и Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Запечатанная и относительно неповрежденная консервная банка с этикеткой «Свежее мясо, упаковано сегодня!». Все именно так.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can.png"
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 350};
	ITEM.needs = {hunger = 50};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		local playerPos = player:GetPos();

		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "Вы замечаете проблеск света внутри банки и радуетесь, обнаружив множество монет, что не может не радовать! Боги благоволят вам!");
			player:HandleSanity(25);
			Clockwork.player:GiveCash(player, math.random(10, 30), "Blessed coins!");
			player:HandleXP(cwBeliefs.xpValues["food"]);
		else
			player:ScriptedDeath("Became canned meat.");
			Schema:EasyText(player, "maroon", "Вы открываете банку, и вдруг изнутри выскакивает рука и хватает вас! Она тянет вас внутрь и не отпускает! БЛЯДЬ!");
			
			timer.Simple(11, function()
				if IsValid(player) then
					Clockwork.chatBox:AddInTargetRadius(player, "me", "внезапно схвачен рукой, вытянутой из банки, которую он держал! Его насильно заталкивают внутрь. Он кричит, а его тело тошнотворно хрустит, пытаясь втиснуться в банку! Вот это незабываемое зрелище нахуй!", player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2);
					
					for k, v in pairs(ents.FindInSphere(player:GetPos(), Clockwork.config:Get("talk_radius"):Get())) do
						if v:IsPlayer() then
							if !v:HasBelief("savage_animal") then
								v:HandleSanity(-50);
							end
						end
					end
				end
			end);
			
			timer.Simple(11.5, function()
				if IsValid(player) then
					local ragdollEntity = player:GetRagdollEntity();
					
					if !player:Alive() and ragdollEntity then
						ragdollEntity:Remove();
					end
					
					Clockwork.entity:CreateItem(nil, "canned_fresh_meat", Vector(playerPos.x, playerPos.y, playerPos.z + 64));
					
					Schema:EasyText(GetAdmins(), "tomato", player:Name().." was taken by a can!", nil);
				end
			end);
		end;
	end

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Консервированное Свежее Мясо";
	ITEM.cost = 8;
	ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Открыть и Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Запечатанная и относительно неповрежденная консервная банка с этикеткой «Свежее мясо, упаковано сегодня!». Она вся в крови, и изнутри доносятся слабые хрипы и стоны.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can.png"
	ITEM.stackable = true;
	
	ITEM.needs = {hunger = 50};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		Schema:EasyText(player, "olivedrab", "Вкус немного странный, но мясо определенно свежее.");
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Мерзопакость";
	ITEM.cost = 8;
	ITEM.model = "models/kali/miscstuff/stalker/food/diet sausage.mdl";
	ITEM.weight = 0.2;
	ITEM.useText = "Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Палка колбасы. Слегка подванивает, но жевать можно долго и с радостью.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/neat_yummy_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "neatmeat";
	ITEM.infectchance = 50;
	ITEM.poison = 10;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 350};
	ITEM.needs = {hunger = 25, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)

		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "Мясо было действительно вкусным. Более того, ваш рассудок восстанавливается, и вы выкашливаете несколько монет!");
			Clockwork.player:GiveCash(player, 12, "Blessed coins!");
			player:HandleXP(cwBeliefs.xpValues["food"]);
		else
			local DeathMethods = {
			"Вы вгрызаетесь в мясную жижу, и сразу после прилива вкуса вы чувствуете резкую боль, когда ржавый инфицированный гвоздь пронзает нёбо вашего гребаного рта, искусно спрятанный в самом мясе. Вы обречены умереть от инфекции, если сначала не истекаете кровью изо рта.",
			"Вы вонзаете зубы в аппетитный кусок мяса, и сразу после прилива вкуса вы чувствуете ужасное чувство, когда понимаете, что длинная полоска ржавой, зараженной колючей проволоки режет ваш гребаный рот. Кровь повсюду, черт возьми. Вы обречены умереть от инфекции, если сначала не истекете кровью изо рта.",
			"Вы начинаете жевать восхитительный кусок мяса, но что-то не так. Вы начинаете чувствовать движение во рту, когда понимаете, что стая плотоядных личинок теперь прогрызает себе путь наружу из вашего рта. Они начинают пировать на вашем языке и щеках, проникая и вылезая из вас. Вы обречены умереть от этих маленьких ублюдков. Просто ахуенно.",
			"Вы вгрызаетесь в мясо и начинаете смаковать его вкус, пока звук громкого хруста не привлекает ваше внимание. Затем вы понимаете, что только что вгрызлись в чертового ядовитого таракана, и вы обречены на скорую смерть от его токсинов.",
			"Вы вгрызаетесь в свое вкусное мясо, только чтобы отпрянуть и замереть от внезапной боли во рту. Затем вы понимаете, что ржавое, зараженное лезвие бритвы пробралось в ваш рот и отрезало ваш гребаный язык! Вам суждено умереть медленной и мучительной смертью от инфекции, если потеря языка не убьет вас раньше.",
			"Ты начинаешь жевать вкусное мясо, прежде чем замечаешь его отвратительный вкус. Ты понимаешь, что это мясо испорчено! И ты обречен на медленную смерть из-за токсинов, которые ты только что проглотил. Хорошая работа, приятель."
			}
	
			if !player:HasBelief("savage_animal") and math.random(1, 4) == 1 then
				player:ScriptedDeath("Bit off more than they could chew.");
				Schema:EasyText(player, "olive", DeathMethods[math.random(1, #DeathMethods)]);
				player:HandleSanity(-100);
			else
				Schema:EasyText(player, "olive", "Mmmmm. That was some good yummy meat!");
				player:HandleXP(cwBeliefs.xpValues["food"]);
			end;
		end;
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Приготовленная Мерзопакость";
	ITEM.model = "models/kali/miscstuff/stalker/food/diet sausage.mdl";
	ITEM.weight = 0.2;
	ITEM.plural = "Cooked Yummy Meat";
	ITEM.useText = "Съесть";
	ITEM.useSound = "npc/barnacle/barnacle_crunch3.wav";
	ITEM.category = "Food";
	ITEM.description = "Какое-то мясо, которое недавно сварили в попытке очистить его от мерзких хозяев.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/neat_yummy_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "cooked_yummy_meat"
	
	ITEM.needs = {hunger = 50, thirst = 10};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		Schema:EasyText(player, "olive", "Мясо было невкусным и вы грустите, но недолго.");
		player:HandleXP(cwBeliefs.xpValues["food"]);
		player:SetHealth(math.Clamp(player:Health() + 3, 0, player:GetMaxHealth()));
	end

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Приготовленные Консервированные Вкусности";
	ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.category = "Food";
	ITEM.description = "Открытая банка недавно приготовленной еды. Пахнет аппетитно.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "masterclass_yummy_meal"
	
	ITEM.needs = {hunger = 90, thirst = 75};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		Schema:EasyText(player, "lawngreen", "Вы потребляете еду. Это было прекрасно, аж до мурашек!");
		player:HandleXP(cwBeliefs.xpValues["food"]);
		player:SetHealth(math.Clamp(player:Health() + 10, 0, player:GetMaxHealth()));
		player:HandleSanity(30);
	end

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Царское Кушанье";
	ITEM.model = "models/items/provisions/ham_dry/ham_dry.mdl";
	ITEM.weight = 0.4;
	ITEM.useText = "Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.category = "Food";
	ITEM.description = "Настоящая еда, подобающая королю. Она состоит из приготовленного мяса различных добытых на охоте животных. По легендам, она была приготовлена легендарным королем Горов, Абгаром Сталеголовым.";
	ITEM.iconoverride = "begotten/ui/itemicons/cooked_meat.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "kings_meal"
	
	ITEM.needs = {hunger = 100, thirst = 100};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		Schema:EasyText(player, "lawngreen", "С энтузиазмом вы едите все, что было наложено. Черт...Это лучший обед в вашей жизни!");
		player:HandleXP(cwBeliefs.xpValues["food"]);
		player:HandleSanity(100);
		player:SetHealth(math.Clamp(player:Health() + 50, 0, player:GetMaxHealth()));
		player:HandleStamina(50);
	end

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Деликотес Странника";
	ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.category = "Food";
	ITEM.description = "К черту личинок и болезни! Странник обходится без них и находит отличную еду в гниющем мире.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "wanderers_delight"
	
	ITEM.needs = {hunger = 70, thirst = 60};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		Schema:EasyText(player, "lawngreen", "Вы потребляете еду. Она была на вкус приличной!");
		player:HandleXP(cwBeliefs.xpValues["food"]);
		player:HandleSanity(80);
		player:SetHealth(math.Clamp(player:Health() + 25, 0, player:GetMaxHealth()));
	end

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Смешная Банка";
	ITEM.cost = 8;
	ITEM.model = "models/props_junk/garbage_metalcan002a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Eat";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Банка странных съедобных вещей. Они такие вкусные, что сведут с ума!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can_punctured.png"
	ITEM.stackable = true;
	ITEM.infectionchance = 50;
	ITEM.poison = 30;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 300};
	ITEM.needs = {hunger = 15, thirst = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)		
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Содержимое банки оставило у вас эмоциональные травмы и расстройство психики на всю жизнь.");
			player:HandleSanity(-95);
		end
		
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Соленый Огурец";
	ITEM.cost = 8;
	ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Открыть и Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Соленый Огурец в банке. Самый настоящий.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can.png"
	ITEM.stackable = true;
	ITEM.infectionchance = 10; 
	
	--ITEM.itemSpawnerInfo = {category = "Food", rarity = 2500};
	ITEM.needs = {hunger = 50, thirst = 25};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_can"));
		
		Schema:EasyText(player, "olivedrab", "Вы едите Соленый Огурец. Он был вкусным, но вас охватывает страх, когда вы понимаете, что там не было никакого соленого огурца!");
		Schema:EasyText(GetAdmins(), "tomato", player:Name().." has eaten a Pickle Surprise!", nil);

		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Баланда Скраперов";
	ITEM.model = "models/props_junk/garbage_metalcan001a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Съесть";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.category = "Food";
	ITEM.description = "Ужасное сочетание грибов, алкоголя и вареной плоти. Еда, пригодная для падали.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "scrapper_slop"
	
	ITEM.needs = {hunger = 45, thirst = 35};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		Schema:EasyText(player, "lawngreen", "Ты, блядь, глотаешь ужасную похлебку. Оказывается, она не такая уж плохая, как рекламировалось.");
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Жопные Вымолки";
	ITEM.cost = 8;
	ITEM.model = "models/props_junk/garbage_metalcan002a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Eat";
	ITEM.category = "Food";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Ужасные, гребаные бобы! Эту ужасную пасту, скорее всего, создали Скрапперы, чтобы кормить ими своих рабов. Этого достаточно, чтобы поддерживать в них жизнь... или нет?";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/can_punctured.png"
	ITEM.stackable = true;
	ITEM.infectionchance = 15;
	ITEM.poison = 30;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 500};
	ITEM.needs = {hunger = 25, thirst = 25};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)		
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Содержимое банки было настолько ужасным, что вы чувствовали себя подвергнутым физическому насилию — выебанным в глотку, и послевкусие никогда не исчезнет. Вы больше не хотите есть, только умираете с голоду.");
			player:HandleSanity(-15);
		end
		
		player:HandleXP(cwBeliefs.xpValues["food"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();
