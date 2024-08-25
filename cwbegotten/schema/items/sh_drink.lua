local ITEM = Clockwork.item:New();
	ITEM.name = "Пакет Молока";
	ITEM.model = "models/props_junk/garbage_milkcarton002a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Старый пакет молока, полностью испорченный под влиянием времени. Он пахнет настолько отвратительно, что вы невольно задумываетесь о самоубийстве.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/milk.png"
	ITEM.stackable = true;
	ITEM.infectchance = 75;
	ITEM.poison = 15;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 300};
	ITEM.needs = {hunger = 10, thirst = 15};
	
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)		
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Вы чувствуете себя настолько ужасно из-за того, что выпили что-то настолько мерзкое. Как итог, рассудок медленно покидает вас. Стоило ли оно того..?");
			player:HandleSanity(-25);
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New("alcohol_base");
	ITEM.name = "Хлёбово Вилтана";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.6;
	ITEM.skin = 1;
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Старая стеклянная тара, наполненная затхлой, пенистой жидкостью. На ней написано «Хлёбово Вилтана».";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 600, bNoSupercrate = true};
	ITEM.needs = {hunger = 5, thirst = 35};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_bottle"));
		Schema:EasyText(player, "olivedrab", "Этот напиток не имеет вкуса, но он заставляет вас чувствовать себя лучше, чем раньше.");
		player:HandleSanity(5);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("alcohol_base");
	ITEM.name = "Старое Пиво";
	ITEM.model = "models/props_junk/garbage_glassbottle001a.mdl";
	ITEM.weight = 0.5;
	ITEM.description = "Бутылка коричневого цвета, содержащая очень старое и несвежее пиво.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/beer.png"
	ITEM.infectchance = 5;
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 600, bNoSupercrate = true};
	ITEM.needs = {hunger = 10, thirst = 20};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_bottle"));
		Schema:EasyText(player, "olivedrab", "Этот напиток на вкус как жидкое дерьмо, но он все равно заставляет тебя чувствовать себя хорошо! Как странно!");
		player:HandleSanity(10);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("alcohol_base");
	ITEM.name = "Трупное Варево";
	ITEM.model = "models/kali/miscstuff/stalker/food/cossacks vodka.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Выпить";
	ITEM.description = "Безобидная, отполированная бутылка прозрачной жидкости. Имеет очень резкий запах.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/corpsebrew.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 675, bNoSupercrate = true};
	ITEM.needs = {thirst = 50};
	
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "К вашему радостному удивлению, содержимое этой бутылки оказалось на самом деле весьма вкусным! Более того, на дне бутылки вы находите немного монет, которые чудом не не залетели в горло! Вы действительно благословлены Богами!");
			player:HandleSanity(15);
			Clockwork.player:GiveCash(player, math.random(10, 50), "Blessed coins!");
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		else
			Schema:EasyText(player, "maroon", "С огромным удовольствием вы начинаете пить трупное варево. Сначала всё кажется удивительно вкусным, но внезапно вы останавливаетесь, ощущая, как ваши внутренности начинают плавиться, а горло охватывает огонь. Вот это поворот, правда?");
			player:ScriptedDeath("Chugged some Corpsebrew and became a corpse.");
		end
	end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Мутная Водица";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Покрытая пылью бутылка, частично наполненная грязной водой. Там что-то плавает...Или воображение разыгралось?";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;
	ITEM.uniqueID = "dirtywater"
	ITEM.infectchance = 60;
	ITEM.poison = 20;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 675, bNoSupercrate = true};
	ITEM.needs = {thirst = 25};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)		
		if player:HasBelief("the_paradox_riddle_equation") or player:HasBelief("the_storm") then
			Schema:EasyText(player, "maroon", "Вы открываете бутылку и вливаете воду в свое пересохшее горло, но это начинает замыкать ваши внутренности! Наверное, стоило сначала подумать?");
			Schema:DoTesla(player, true);			
			return;
		end
		
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Вы начинаете чувствовать головокружение и тошноту. Вы чувствуете, что вас сейчас вырвет!");
			player:HandleSanity(-25);
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New("alcohol_base");
	ITEM.name = "Сомнительное Вино";
	ITEM.model = "models/kali/miscstuff/stalker/food/cossacks vodka.mdl";
	ITEM.weight = 0.5;
	ITEM.description = "Бутылка серебристого цвета, на вид очень хорошо сохранившаяся. Внутри бультыхается соблазнительное белое вино.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/corpsebrew.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1150};
	ITEM.needs = {hunger = 5, thirst = 50};
	
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_bottle"));
		Schema:EasyText(player, "lawngreen", "Открыв бутылку, вам в нос бьется прелестный аромат! А вкус...Это было что-то с чем-то, жаль, что закончилось.");
		player:HandleSanity(20);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Газированный Напиток";
	ITEM.model = "models/kali/miscstuff/stalker/food/energy drink.mdl";
	ITEM.weight = 0.4;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Банка газировки черт знает откуда. Было бы неразумно употреблять это в непосредственной близости от Папы Пита.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/soda.png"
	ITEM.stackable = true;

	ITEM.infectchance = 10;
	ITEM.dysentery = 5;
	
	ITEM.itemSpawnerInfo = {category = "Food", rarity = 600, bNoSupercrate = true};
	ITEM.needs = {hunger = 10, thirst = 30, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_soda_bottle"));
		Schema:EasyText(player, "lawngreen", "Когда вы открываете банку, жидкость все еще шипит. На вкус это слаще чем все, что вы пробовали раньше. Вместе взятое.");
		player:HandleSanity(2);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Фильтрованная Вода";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
    ITEM.uniqueID = "purified_water"
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "О Сияние! Или Сатана...Или Семья! Да какая к черту разница?! Это самая настоящая бутылка свежей воды! Ваша жизнь налаживается с каждой секундой..";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1000};
	ITEM.needs = {thirst = 65};
	
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if player:HasBelief("the_paradox_riddle_equation") or player:HasBelief("the_storm") then
			Schema:EasyText(player, "maroon", "Вы открываете бутылку и вливаете прекраснейшую воду в свое горло, но это начинает замыкать ваши внутренности! Да какого ху#13#?!");
			Schema:DoTesla(player, true);
			--player:TakeDamage(25);
			
			return;
		end
	
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		Schema:EasyText(player, "lawngreen", "Когда прекрасная прозрачная вода без примесей попадает в ваше горло, вы чувствуете огромное удовлетворение, зная, что сегодня не умрете от болезни.");
		player:HandleSanity(10);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Холодный Леденец!»";
	ITEM.uniqueID = "papa_petes_ice_cold_pop";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита, которая поможет охладиться в жаркую погоду.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1000, bNoSupercrate = true};
	ITEM.needs = {thirst = 45, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		Schema:EasyText(player, "lawngreen", "Вы присасываетесь к горлышку бутылки и с жадностью начинаете хлестать ее содержимое! Приятный холодок проходит по телу, заставляя вас чувствовать себя немного лучше.");
		player:HandleSanity(10);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Приз Обеспечен!»";
	ITEM.uniqueID = "papa_petes_ice_cold_pop_prize_included";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита. Вы слышали, что испившие ее получают солидный выигрыш..Может, стоит попробовать?";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 700, bNoSupercrate = true};
	ITEM.needs = {thirst = 50, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "С надеждой в глазах и огнем в сердце вы касаетесь губами горлышка бутылки, начиная опустошать ту глоток за глотком. Как только последняя капля оказалась у вас в горле, донышко бутылки отвалилось и оттуда посыпались монеты! Поздравляем!");
			player:HandleSanity(10);
			Clockwork.player:GiveCash(player, math.random(50, 300), "You win the prize!");
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		else
			Schema:EasyText(player, "maroon", "С надеждой в глазах и огнем в сердце вы касаетесь губами горлышка бутылки, начиная опустошать ту глоток за глотком. Как только последняя капля оказалась у вас в горле, донышко бутылки отвалилось и оттуда посыпались монеты! Но..Что-то пошло не так. Одна из железяк оказалась в самой бутылке и попала вам в горло, плотно засев там. В панике вы пытаетесь что-то прокричать, но изо рта выходят сдавленные хрипы. Что ж, вы хотя бы оплатили свои похороны.. Поздравляем!");
			player:ScriptedDeath("Won a prize from a Papa Pete's® Ice Cold Pop™!");
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();


local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Апельсиновый Рай!»";
	ITEM.uniqueID = "papa_petes_orange_flavored_ice_cold_pop";
	ITEM.cost = 15;
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита с цитрусовыми нотками.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1150, bNoSupercrate = true};
	ITEM.needs = {thirst = 50, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		Schema:EasyText(player, "lawngreen", "Желая вспомнить вкус детства, которого у вас не было, с фирменным вы пшиком открываете бутылку и за пару глотков опустошаете ту. Черт, а это было куда лучше, чем когда-либо.");
		player:HandleSanity(10);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Виноград вам Рад!»";
	ITEM.uniqueID = "papa_petes_grape_flavored_ice_cold_pop";
	ITEM.cost = 15;
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита со вкусом винограда.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1150, bNoSupercrate = true};
	ITEM.needs = {thirst = 50, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		Schema:EasyText(player, "lawngreen", "Желая вспомнить вкус детства, которого у вас не было, с фирменным вы пшиком открываете бутылку и за пару глотков опустошаете ту. Черт, а это было куда лучше, чем когда-либо.");
		player:HandleSanity(10);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Безумное Веселье!»";
	ITEM.uniqueID = "papa_petes_ice_cold_crazy_pop";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита. Она настолько прекрасна, что сведет вас с ума.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1150, bNoSupercrate = true};
	ITEM.needs = {thirst = 50, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		player:HandleStamina(50);

		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Вы с жадностью отхлебываете прекрасное варево и чувствуете себя отдохнувшим, хотя голова ужасно гудит. Стоило ли оно того?");
			player:HandleSanity(-75);
		end

		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Кремовое Пироженое!»";
	ITEM.uniqueID = "papa_petes_cream_pop";
	ITEM.cost = 20;
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита. Нежное, как мамино прикосновение.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 2000, bNoSupercrate = true};
	ITEM.needs = {thirst = 60, sleep = 15};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		player:HandleStamina(80);
		Schema:EasyText(player, "lawngreen", "Этикетка притягивает вас настолько, что не удержавшись вы открываете крышку и начинаете хлестать эту слегка вязкую жижу. Вы делаете это с таким упорством, что содержимое течет по вашей шее и одежде. Это настолько сливочно и вкусно, что вы хотите жить дальше, что бы не произошло.");
		player:HandleSanity(15);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Мясной Эксклюзив!»";
	ITEM.uniqueID = "papa_petes_meat_pop";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита. Наполнена вязкой розовой слизью.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1500, bNoSupercrate = true};
	ITEM.needs = {hunger = 50, thirst = 20};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		Schema:EasyText(player, "lawngreen", "С осторожностью вы отхлебываете из бутылки. Мясной вкус становится сюрпризом и наполняет ваш живот! Повезло так повезло!");
		player:HandleSanity(5);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Двадцать Один»";
	ITEM.uniqueID = "papa_petes_ice_cold_ice_pop";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита. Этот напиток поставляется с предупреждением, что вы можете заморозить свои мозги!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1300, bNoSupercrate = true};
	ITEM.needs = {thirst = 55, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));

		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "С радостью делая несколько глотков вы понимаете, что чувствуете себя просто отлично! Если не считать небольшую заморозку мозга...");
			player:AddFreeze(25, player);
			player:HandleSanity(2);
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		else
			Schema:EasyText(player, "olive", "Вы отхлебываете немного из бутылки.. Вкус хороший, но вы мгновенно замерзаете, превращаясь в кусок льда! Говорили же читать предупреждение!");
			player:AddFreeze(100, player);
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

 local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Пламя»";
	ITEM.uniqueID = "papa_petes_pipin_hot_pop";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита. В ней красная шипучая жидкость. Должно быть, очень острая!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1300, bNoSupercrate = true};
	ITEM.needs = {thirst = 55, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		player:HandleStamina(100);

		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "В каком-то безумном порыве вы открываете бутылку и опустошив сосуд до дна, понимаете, что у напитка пряное послевкусие. К вашей радости, на дне бутылки находится немного монет. Вот пруха!");
			player:HandleSanity(10);
			Clockwork.player:GiveCash(player, math.random(25, 100), "Blessed coins!");
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		else
			Schema:EasyText(player, "olive", "В каком-то безумном порыве вы открываете бутылку и начинаете пить. Вкус хороший, но вас охватывает пламя! Вот незадача...");
			player:HandleSanity(-15);
			player:Ignite(20);
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

 local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Малыш-Глупыш!»";
	ITEM.uniqueID = "papa_petes_silly_pop";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита. Она заставит ваш мозг отключиться!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 1750, bNoSupercrate = true};
	ITEM.needs = {thirst = 60, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		player:HandleStamina(100);

		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "Не очень долго думая, вы откручиваете крышку и делаете несколько глотков чудесного напитка..Взрываясь смехом! По прошествии секунд пятнадцати, вы наконец успокаиваетесь и понимаете, что жить стало значительно легче.");
			player:HandleSanity(60);
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		else
			Schema:EasyText(player, "olive", "Не очень долго думая, вы откручиваете крышку и делаете несколько глотков чудесного напитка...Становясь победителем в генетической лотерее. Поздравляем!");
			player:GiveTrait("imbecile");
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();
--]]

 local ITEM = Clockwork.item:New();
	ITEM.name = "Напиток Папы Пита из серии «Чумовое Веселье!»";
	ITEM.uniqueID = "papa_petes_plague_pop";
	ITEM.model = "models/props_junk/GlassBottle01a.mdl";
	ITEM.weight = 0.5;
	ITEM.category = "Drinks";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка фирменного лимонада Папы Пита. Он настолько вкусный, что приблизит конец света для всех смертных!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/cold_pop.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 2500};
	ITEM.needs = {thirst = 60, sleep = 5};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_water_bottle"));
		player:HandleStamina(100);

		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "Наконец решившись, вы открываете бутылку и делаете несколько глотков, понимая, что это полное дерьмо. Отправив содержимое наземь вы с удивлением обнаруживаете на дне бутылки немного злата. Хоть что-то радует...");
			player:HandleSanity(5);
			Clockwork.player:GiveCash(player, math.random(50, 250), "Blessed coins!");
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		else
			Schema:EasyText(player, "lawngreen", "Наконец решившись, вы открываете бутылку и делаете несколько глотков, понимая, что это полное дерьмо. А еще  у вас болит горло...Плохой день.");
			player:GiveDisease("begotten_plague");
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "«Сладкая Пакость» от Bizon INC";
	ITEM.model = "models/props_junk/garbage_plasticbottle001a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Хлебнуть";
	ITEM.category = "Drinks";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Большой сосуд, который содержит прекрасный напиток белого цвета. На этикетке изображено какое-то дерево...Что бы это могло значить?";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/yumchug.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 300};
	ITEM.needs = {hunger = 0, thirst = 0};
	
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 60);
		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "Вместо того, чтобы как идиот глотнуть отбеливатель, вы внимательно заглядываете внутрь и обнаруживаете там кладезь монет! Какая удача!");
			player:HandleSanity(5);
			Clockwork.player:GiveCash(player, math.random(5, 40), "Blessed coins!");
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		else
			player:HandleSanity(-100);
			player:ScriptedDeath("Chugged the Yum Chug.");
			Schema:EasyText(player, "maroon", "В принципе не думая, ты открываешь рот и вливаешь в себя белую жижку. Все отлично, если не брать в расчет адское жжение в гортани. Через примерно секунд тридцать бездыханное тело валится наземь, оставляя под собой смесь из крови и блевотни. Ну ты и лох конечно.");
			Schema:EasyText(GetAdmins(), "tomato", player:Name().." chugged the Yum Chug!", nil);
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Святая Вода";
	ITEM.model = "models/props_junk/glassjug01.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Очистить Себя";
	ITEM.category = "Drinks"
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle5.wav";
	ITEM.description = "Стеклянная бутылка с освященной водой. Говорят, что она делает человека лучшей версией себя.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/laudanum.png"
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Food", rarity = 666, bNoSupercrate = true};
	ITEM.needs = {thirst = 20};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)

		if player:HasBelief("favored") then
			Schema:EasyText(player, "lawngreen", "Вы выпиваете содержимое стеклянной бутылки. Увы, это не совсем святая вода, а скрытый вкус лимонада Папы Пита! Вы чувствуете себя прекрасно, ведь на дне есть монеты!");
			player:HandleSanity(15);
			Clockwork.player:GiveCash(player, math.random(5, 50), "Blessed coins!");
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		else
			player:HandleNeed("corruption", -100);
			player:ScriptedDeath("Cleansed of impurities.");
			player:Ignite(8, 0);
			Schema:EasyText(player, "maroon", "Когда вы пьете Святую воду, и она начинает очищать нечистоты в вашем теле, вы внезапно осознаете, что никто в этом забытом мире не может стать лучше. Ваши внутренности загораются, причиняя неимоверную боль.");
			Schema:EasyText(GetAdmins(), "tomato", player:Name().." drank holy water!", nil);
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Вино Родословной «Вараздат»";
	ITEM.model = "models/props/cs_militia/bottle02.mdl";
	ITEM.weight = 0.4;
	ITEM.useText = "Стать Великим";
	ITEM.category = "Alcohol";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка прекрасно выдержанного вина из Темноземья. Оно, по-видимому, ферментировано с человеческой кровью, дорогими специями и вкусными ягодами.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bottle02.png"
	ITEM.stackable = true;
	
	ITEM.needs = {hunger = 85, thirst = 100};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_soda_bottle"));
		Schema:EasyText(player, "lawngreen", "Вино на вкус божественно! С каждым глотком в вас пробуждается ощущение абсолютной власти, и люди вокруг начинают казаться ничтожными беззубыми крестьянами, недостойными даже вашего взгляда.");
		player:HandleSanity(70);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Лучшее Вино Родословной «Вараздат»";
	ITEM.model = "models/props/cs_militia/bottle02.mdl";
	ITEM.weight = 0.4;
	ITEM.useText = "Стать Великим";
	ITEM.category = "Alcohol";
	ITEM.useSound = "ambient/levels/canals/toxic_slime_gurgle4.wav";
	ITEM.description = "Бутылка экзотического вина из личных запасов Императора. По-видимому, оно ферментировано с человеческой кровью, дорогими специями и вкусными ягодами. Говорят, что эта конкретная бутылка приправлена ​​кровью девственных рабынь-шлюх и выдерживалась более 300 лет.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bottle02.png"
	ITEM.stackable = true;
	
	ITEM.needs = {hunger = 85, thirst = 100};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		--player:GiveItem(Clockwork.item:CreateInstance("empty_soda_bottle"));
		Schema:EasyText(player, "lawngreen", "Вино оказывается абсолютно совершенным! С каждым глотком вы ощущаете себя всемогущим властелином, перед которым меркнет весь мир. Ваше величие становится неоспоримым, и те, кто осмеливаются находиться рядом, превращаются в жалких, ничтожных букашек, недостойных даже дышать с вами одним воздухом. Скорее всего, это чувство уже никогда не покинет вашу душу.");
		player:HandleSanity(70);
		player:HandleXP(cwBeliefs.xpValues["drink"]);
		
		if !player:HasBelief("favored") then
			if !Schema.poisonedWinePlayers then
				Schema.poisonedWinePlayers = {};
				
				table.insert(Schema.poisonedWinePlayers, player);
			else
				if !table.HasValue(Schema.poisonedWinePlayers, player) then
					table.insert(Schema.poisonedWinePlayers, player);
				end
			end
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Яблочный Сок";
	ITEM.model = "models/props_junk/garbage_plasticbottle001a.mdl";
	ITEM.weight = 0.8;
	ITEM.useText = "Выпить";
	ITEM.category = "Drinks";
	ITEM.useSound = "npc/barnacle/barnacle_crunch2.wav";
	ITEM.description = "Большая бутылка, доверху наполненная жидкостью с не особо приятным запахом. По всей видимости это яблочный сок, которому несколько лет.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/yumchug.png"
	ITEM.stackable = true;
	ITEM.infectchance = 8;
	ITEM.poison = 10;
	
	ITEM.needs = {thirst = 100};

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)		
		if player:HasBelief("the_paradox_riddle_equation") or player:HasBelief("the_storm") then
			Schema:EasyText(player, "maroon", "Вы открываете кувшин и вливаете жидкость в себя. Помимо того, что это Отвратительно, вы понимаете, что ваши внутренности коротит! Не повезло...");
			Schema:DoTesla(player, true);
			--player:TakeDamage(25);
			
			return;
		end
		
		if !player:HasBelief("savage_animal") then
			Schema:EasyText(player, "olive", "Открыв бутылку и отпив немного, ты понимаешь, что это...Моча. Желание провалиться под землю и совершить суицид неожиданно промельнули в голове.");
			player:HandleSanity(-8);
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();