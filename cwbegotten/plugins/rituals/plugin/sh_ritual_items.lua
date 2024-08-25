--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local ITEM = Clockwork.item:New();
	ITEM.name = "Камень Очищения";
	ITEM.model = "models/srp/items/art_flash.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/purifying_stone.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "purifying_stone"
	ITEM.category = "Catalysts";
	ITEM.description = "Люминесцентный камень, обладающий различными очищающими свойствами.";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 600, supercrateOnly = true};

	-- Called when a player drops the item.
	function ITEM:OnUse(player, position)
		if (player:Alive() and !player:IsRagdolled()) then
			netstream.Start(player, "Stunned", 7);
			netstream.Start(player, "PlaySound", "begotten/ui/sanity_gain.mp3");
			
			if cwSanity then
				player:HandleSanity(20);
			end
			
			player:HandleNeed("corruption", -30);
			Clockwork.chatBox:Add(player, nil, "itnofake", "Вы сжимаете камень очищения в своей руке и чувствуете, как из вашего тела уходит порча.");
		else
			Schema:EasyText(player, "firebrick", "Вы не можете выполнить это действие в данный момент.")
		end
	end;
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Каталист Повышения";
	ITEM.model = "models/srp/items/spezzy/art_poonlight.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/up_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "up_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Большой светящийся камень. На нем начертаны едва заметные глифы.";
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 75};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Измученный Дух";
	ITEM.model = "models/srp/items/art_zoonlight.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/tortured_spirit.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "tortured_spirit"
	ITEM.category = "Catalysts";
	ITEM.description = "Стеклянный шар, внутри которого клубятся горячие испарения. Иногда дым принимает вид кричащего лица.";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 400, supercrateOnly = true};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Каталист Бельфегора";
	ITEM.model = "models/srp/items/art_fireball.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/belphegor_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "belphegor_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Округлый кусок вулканической породы, теплый на ощупь. Внутри видна пульсирующая магма, образующая сатанинские руны.";
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 100};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Каталист Ксаотля";
	ITEM.model = "models/srp/items/art_battery.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/xolotl_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "xolotl_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Большой кусок свернутого камня. Кажется, что он заряжен электричеством.";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 400, supercrateOnly = true};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Каталист Понижения";
	ITEM.model = "models/srp/items/art_crystalthorn.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/down_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "down_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Округлый, покрытый кратерами камень. Под разными углами выступают большие люминесцентные болты, внутри которых едва различимые глифы.";
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 75};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Райский Каталист";
	ITEM.model = "models/srp/items/art_sparkler.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/elysian_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "elysian_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Небольшой кусок свернутого камня. Кажется, что он заряжен электричеством.";
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 75};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Семейный Каталист";
	ITEM.model = "models/srp/items/art_bubble.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/familial_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "familial_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Меловая осадочная порода с яркими зелено-красными оттенками. На нем начертаны северные глифы.";
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 100};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Каталист Льда";
	ITEM.model = "models/srp/items/spezzy/art_vrchen.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ice_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "ice_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Холодная сфера, окруженная маленькими сосульками.";
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 150};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Каталист Света";
	ITEM.model = "models/srp/items/art_gravi.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/light_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "light_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Деформированный камень с золотым оттенком. На нем начертаны глифы Света.";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 100};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Пантеистический Каталист";
	ITEM.model = "models/srp/items/art_kolobok.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pantheistic_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "pantheistic_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Восковая круглая сфера, заряженный энергией кристалл, образующий северную печатку.";
	ITEM.stackable = true;

	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 100};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Каталист Пентаграммы";
	ITEM.model = "models/srp/items/art_crystal.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/pentagram_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "pentagram_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Светящееся светло-красное кристаллическое образование, внутри которого начертаны многочисленные сатанинские руны.";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 400, supercrateOnly = true};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Святой Дух";
	ITEM.model = "models/srp/items/art_moonlight.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/holy_spirit.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "holy_spirit"
	ITEM.category = "Catalysts";
	ITEM.description = "Стеклянная сфера, внутри которой клубятся раскаленные дымы. Изредка из дыма появляется лицо величественного мужчины.";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 400, supercrateOnly = true};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
		
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Каталист Троицы";
	ITEM.model = "models/srp/items/art_jellyfish.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/trinity_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "trinity_catalyst"
	ITEM.category = "Catalysts";
	ITEM.description = "Деформированный камень золотистого цвета с большим углублением в центре, окруженным тонкими усиками. На нем начертаны глифы Света.";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
	ITEM.itemSpawnerInfo = {category = "Rituals", rarity = 95};
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Камень Осуждения";
	ITEM.model = "models/srp/items/spezzy/art_ftoneflower.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/art_ftoneflower.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "judgemental_sigil_stone"
	ITEM.category = "Catalysts";
	ITEM.description = "Знаменный камень, который заставляет вас чувствовать себя виноватым за то, что вы просто живы, когда держите его в руке.";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Камень Огня";
	ITEM.model = "models/srp/items/art_stoneblood.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/art_stoneblood.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "fire_sigil_stone"
	ITEM.category = "Catalysts";
	ITEM.description = "Знаменный камень, яростно пылающий в вашей руке.";
	ITEM.stackable = true;	
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Камень Льда";
	ITEM.model = "models/srp/items/spezzy/art_moldfish.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ice_catalyst.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "ice_sigil_stone"
	ITEM.category = "Catalysts";
	ITEM.description = "Знаменный камень, пронизывающий воздух невыносимым холодом.";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Камень Сияния";
	ITEM.model = "models/srp/items/art_mammasbeads.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/art_mammasbeads.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "glazic_sigil_stone"
	ITEM.category = "Catalysts";
	ITEM.description = "Знаменный камень, вызывающий у окружающих чувство зависти и благоговения.";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Нечестивый Камень";
	ITEM.model = "models/srp/items/art_slug.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/art_slug.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "unholy_sigil_stone"
	ITEM.category = "Catalysts";
	ITEM.description = "Знаменный камень, который совершенно отвратителен для любого, кто имеет хоть малейшее представление о чистоте.";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Камень Мести";
	ITEM.model = "models/srp/items/art_firefly.mdl";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/art_firefly.png";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "vengeful_sigil_stone"
	ITEM.category = "Catalysts";
	ITEM.description = "Знаменный камень, который отдает невероятным желанием мести во всех ее проявлениях.";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();