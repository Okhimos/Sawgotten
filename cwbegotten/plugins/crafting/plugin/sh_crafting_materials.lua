--[[
	Begotten III: Jesus Wept
--]]

-- Tech and Technocraft have been moved to the medical plugin's items since they use the medical plugin and need to be registered after that plugin has initialized.

local ITEM = Clockwork.item:New();
	ITEM.name = "Набор для Разборки";
	ITEM.category = "Tools";
	ITEM.model = "models/props/de_prodigy/ammo_can_02.mdl";
	ITEM.weight = 0.8;
	ITEM.uniqueID = "breakdown_kit";
	ITEM.description = "Набор инструментов, который можно использовать для того, чтобы получить с предмета составные части.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/repair_kit.png";
	ITEM.stackable = false;
	
	ITEM.itemSpawnerInfo = {category = "Repair Kits", rarity = 300, bNoSupercrate = true};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Ткань";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/cloth.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "cloth";
	ITEM.description = "Рулон сшитой из кусочков ткани, который можно использовать для создания одежды или повязок.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 25};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Уголь";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/begotten/misc/charcoal.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "charcoal";
	ITEM.description = "Обгоревшие фрагменты древесины, которые можно использовать в качестве топлива для создания вещей.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Удобрение";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/fertilizer.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "fertilizer";
	ITEM.description = "Банка с отходами. Буквально.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 35};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Порох";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/props_lab/box01a.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "gunpowder";
	ITEM.description = "Ящик, содержащий взрывчатое порошкообразное вещество, которое может быть использовано при создании боеприпасов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 95};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Слиток Переплавленного Железа";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/lead.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "wrought_iron_ingot";
	ITEM.description = "Слиток железа низкого качества, который можно переплавить в металлы более высокого качества.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Куски Железа";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/lead.mdl";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "iron_chunks";
	ITEM.description = "Расплавленные куски металла. Их следует переплавить в слиток.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/crude_iron_ingot.png";
	ITEM.stackable = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"wrought_iron_ingot"}};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Куски Стали";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/steel.mdl";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "steel_chunks";
	ITEM.description = "Расплавленные куски металла. Их следует переплавить в слиток.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/steel_ingot.png";
	ITEM.stackable = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_ingot"}};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Хорошие Куски Стали";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/silver.mdl";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "fine_steel_chunks";
	ITEM.description = "Расплавленные куски металла. Их следует переплавить в слиток.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/fine_steel_ingot.png";
	ITEM.stackable = true;
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_ingot"}};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();
	
local ITEM = Clockwork.item:New();
	ITEM.name = "Железный Слиток";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/lead.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "iron_ingot";
	ITEM.description = "Слиток железа низкого качества, который можно перековать в оружие или комплект доспехов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/crude_iron_ingot.png";
	ITEM.stackable = true;
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Стальной Слиток";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/steel.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "steel_ingot";
	ITEM.description = "Слиток стали, который можно затем перековать в оружие или комплект доспехов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Хороший Железный Слиток";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/silver.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "fine_steel_ingot";
	ITEM.description = "Слиток очищенной, более прочной стали, который можно перековать в оружие или комплект доспехов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 650, supercrateOnly = true};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Слиток Адской Стали";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/silver.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "hellforged_steel_ingot";
	ITEM.description = "Слиток черной стали, выкованный в печах самого Ада. Обладает сверхъестественной прочностью и силой.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/fine_steel_ingot.png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 800, supercrateOnly = true};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_ingot", "fine_steel_ingot"}};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Слиток Максимилианской Стали";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/silver.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "maximilian_steel_ingot";
	ITEM.description = "Считающаяся последователями Веры Света святым представлением мощи Лорда Максимуса из-за своей прочности и чистоты, легендарная сталь Максимилиана является чистейшей формой стали, какую только можно себе представить. Выкованная в древнюю эпоху, она обладает многими известными мистическими свойствами.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/fine_steel_ingot.png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 800, supercrateOnly = true};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_ingot", "fine_steel_ingot"}};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Слиток Шагалакской Стали";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/silver.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "shagalaxian_steel_ingot";
	ITEM.description = "Выкованная мастерами-кузнецами клана Шагалакс, эта сталь легендарного качества и самый прочный материал, доступный Горам. Она обладает многими известными мистическими свойствами.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/fine_steel_ingot.png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 800, supercrateOnly = true};
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_ingot", "fine_steel_ingot"}};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Слиток Золото";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/gold.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "gold_ingot";
	ITEM.description = "Слиток золота, когда-то считавшийся огромной ценностью. Хотя он все еще может стоить много монет, если его сдать Иерархии, он может быть более ценным для ковки богато украшенного оружия и доспехов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 800, supercrateOnly = true};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Шкура";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/hide.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "hide";
	ITEM.description = "Свернутая шкура животного, пригодится для изготовления предметов, для которых могут потребоваться меха или шкуры животных.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Кость";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/Gibs/HGIBS_rib.mdl";
	ITEM.weight = 0.3;
	ITEM.uniqueID = "human_bone";
	ITEM.description = "Фрагмент кости, который можно использовать при создании оружия или доспехов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Железная Руда";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/props_junk/rock001a.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "iron_ore";
	ITEM.description = "Кусок железной руды, который необходимо переработать, прежде чем из него можно будет сделать что-то полезное.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Золотая Руда";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/props_junk/rock001a.mdl";
	ITEM.weight = 4;
	ITEM.uniqueID = "gold_ore";
	ITEM.description = "Кусок камня, содержащий сверкающие крупицы золота, которые ловят свет. Да быть того не может!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

ITEM = Clockwork.item:New();
	ITEM.name = "Кровавый Алмаз";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/props_clutter/garnet_flawed.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "uncut_blood_diamond";
	ITEM.description = "Прекрасный кроваво-красный необработанный камень. Его красота пробуждает в вас самые глубокие чувства признательности.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

ITEM = Clockwork.item:New();
	ITEM.name = "Золотой Фаллос";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/begotten/thegoldenphallus.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "thegoldenphallus";
	ITEM.description = "Фаллический предмет, отлитый из чистого золота. На нем выгравированы знаки давно умершего Императора Темноземья. По традиции его извращенные подвиги продолжаются вечно.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = false;

	ITEM.components = {breakdownType = "meltdown", items = {"gold_ingot", "gold_ingot"}};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Кожа";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/leather.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "leather";
	ITEM.description = "Кусок кожи, который можно использовать при изготовлении одежды или щитов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;

	ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth"}};
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 65};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Скрап";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/modbox.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "scrap";
	ITEM.description = "Множество старинных технологических компонентов и металлолома, которые можно использовать при создании множества предметов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 25};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Камень";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/props_mining/rock_caves01b.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "stone";
	ITEM.description = "Кусок камня, который можно использовать при изготовлении тупого оружия или в качестве тупого оружия.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;
	ITEM.weaponClass = "begotten_javelin_throwing_stone";
	ITEM.isJavelin = true;
	ITEM.canUseShields = true;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Дерево";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/wood.mdl";
	ITEM.weight = 0.4;
	ITEM.uniqueID = "wood";
	ITEM.description = "Коллекция древесины, которую можно использовать для изготовления оружия или щитов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 25};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Специи";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/items/magic/jewels/purses/big_purse.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "spice";
	ITEM.description = "Мешочек с разными специями. Вероятно, его взяли у торговца из Темноземья.";
	ITEM.iconoverride = "begotten/ui/itemicons/big_purse.png";
	ITEM.stackable = true;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 95};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Шкура Медведя";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/begotten/headgroup_props/bearskin.mdl";
	ITEM.weight = 0.4;
	ITEM.uniqueID = "bearskin";
	ITEM.description = "Кожа и мех, снятые с огромного зверя. Трофей, достойный величайшего охотника.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bearskin.png";
	ITEM.stackable = true;
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Семя Великого Древа";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/begotten/taproot.mdl";
	ITEM.weight = 0.6;
	ITEM.uniqueID = "lifeseed";
	ITEM.description = "Семя Великого Древа.  Оно было благословлено (или испорчено) паранормальной инопланетной магией. Способно возродить цивилизацию или, возможно, правильными средствами, положить конец всей жизни.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/lifeseed.png";
	ITEM.stackable = true;
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();
