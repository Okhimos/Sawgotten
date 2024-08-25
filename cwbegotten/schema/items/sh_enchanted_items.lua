local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Брошенная Кукла";
	ITEM.model = "models/props_c17/doll01.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "abandoned_doll";
	ITEM.description = "Брошенная кукла, которая несмотря на свой жуткий вид, обладает странной притягательностью.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Снижает потерю рассудка на 50%.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 600};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Бронзовое Кольцо Защиты";
	ITEM.model = "models/items/magic/ring_basic/ring_copper.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_protection_bronze";
	ITEM.description = "Кольцо с таинственной аурой, по-видимому, из бронзы. Надев его на палец, чувствуешь себя в большей безопасности.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Reduces all damage taken by 5%.";
	ITEM.mutuallyExclusive = {"ring_protection_gold", "ring_protection_silver"};
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 600, onGround = false};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Странный Сапог";
	ITEM.model = "models/props_junk/Shoe001a.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "boot_contortionist";
	ITEM.description = "Сапог, внутри которого находится такой же, только для другой ноги. Как долго бы вы его не носили, он не сотрется, но несмотря на это может быть порезан или разорван. По всей видимости он защищает ваши ноги.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Дает иммунитет к переломам ног.\n- Снижает урон от падения на 50%.\n- Снижает расход выносливости при перекатах в бою на 50%.\n- Снижает расход выносливости при прыжках на 66,6%.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 750};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Кольцо Неумолимого";
	ITEM.model = "models/items/magic/ring_basic/ring_silver.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_courier";
	ITEM.description = "Серебряное кольцо с которым ваша походка становится увереннее, а шаги — легче, а каждый пройденный километр больше не кажется таким утомительным.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ring_protection_silver.png";
	ITEM.charmEffects = "- Снижает расход выносливости при беге на 25%.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 700, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Деревянное Распятие";
	ITEM.model = "models/begotten/misc/crucifix.mdl";
	ITEM.weight = 0.25;
	ITEM.uniqueID = "crucifix";
	ITEM.description = "Деревянный крест с резной фигурой бородатого пророка. Хотя это и реликвия ушедшей эпохи, вы чувствуете, что он все еще обеспечивает некоторую защиту от зла.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Уменьшает количество получаемой порчи на 25%.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 350, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Кольцо Везунчика";
	ITEM.model = "models/items/magic/ring_secondchance/ring_secondchance.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_distorted";
	ITEM.description = "Кольцо с таинственной аурой. Надев его на палец, чувствуешь, что более удачливым.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Имеет 5% шанс полностью избежать урона при получении урона из любого источника, суммируется с убеждением «Удача».\n- Предотвратит вашу смерть при получении смертельного урона от другого игрока, но при этом разрушится и станет бесполезным.";

	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 1500, onGround = false};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Священная Ветвь";
	ITEM.model = "models/begotten/misc/effigy2.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "effigy_earthing";
	ITEM.description = "Редкая веточка Великого Дерева. Она заставляет вас чувствовать себя более стойким и решительным, напоминая о естественном порядке.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Снижает потерю рассудка на 25%.\n- Снижает потерю стабильности на 25%.";
	
	ITEM.requireFaith = {"Faith of the Family"};
	ITEM.kinisgerOverride = true;
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Забальзамированное Сердце";
	ITEM.model = "models/items/special/l08_momified_heart.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "embalmed_heart";
	ITEM.description = "Мумифицированное сердце, забальзамированное с особой тщательностью какой-то древней цивилизацией.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Снижает потерю крови при кровотечении на 50%.\n- Увеличивает скорость регенерации крови в три раза.";
	
	--ITEM.requireFaith = {"Faith of the Dark"};
	--ITEM.kinisgerOverride = true;
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 1000};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Дурной Глаз";
	ITEM.model = "models/mosi/fnv/props/gore/gorehead03.mdl";
	ITEM.weight = 0.1;
	ITEM.uniqueID = "evil_eye";
	ITEM.description = "Глаз, который когда-то принадлежал обычному человеку, который перед смертью явно молил о пощаде. Находясь рядом с этим предметом, вы понимаете, почему должны очистить землю от порожденных.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает урон против рабов Порожденных на 50%.\n- Пассивно дает порчу.";
	
	--ITEM.requireFaith = {"Faith of the Dark"};
	--ITEM.kinisgerOverride = true;
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 700, onGround = false};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Чучело Человека";
	ITEM.model = "models/begotten/misc/effigy1.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "effigy_human";
	ITEM.description = "Связанная коллекция палочек в форме человека. В ней есть таинственная аура, и ношение ее на себе заставляет вас чувствовать себя в большей безопасности. Ходят слухи, что один из Горейских Воинов сделал что-то ужасное ради этого предмета...";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Уменьшает все повреждения конечностей на 50%.";
	
	ITEM.requireFaith = {"Faith of the Family"};
	ITEM.kinisgerOverride = true;
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Амулет из Стрелы";
	ITEM.model = "models/demonssouls/weapons/talisman of beasts.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "hurlers_talisman";
	ITEM.description = "Наконечник дротика с запекшейся кровью. Смотря на него вы понимаете, как правильно использовать метательное оружие.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает скорость и дальность полета метательного оружия на 35%.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 1000, onGround = false}
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Малое кольцо жизненной силы";
	ITEM.model = "models/items/magic/ring_regeneration/ring_regeneration_lesser.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_vitality_lesser";
	ITEM.description = "Кольцо, которое содержит в себе жидкость красного цвета. Надев его на палец ты чувствуешь себя лучше.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает максимальный запас здоровья на 15 единиц.";
	ITEM.mutuallyExclusive = {"ring_vitality"};
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 700, onGround = false};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Кольцо Ненависти";
	ITEM.model = "models/items/magic/ring_dexterity/ring_dexterity.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_pummeler";
	ITEM.description = "Кольцо с изображением демонического лица. Надев его на палец  ты начинаешь сильнее ненавидеть своих врагов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает урон от выносливости всех видов оружия ближнего боя на 15%.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 1000, onGround = false};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Перстень Дебошира";
	ITEM.model = "models/items/magic/ring_strength/ring_strength.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_pugilist";
	ITEM.description = "Кольцо с мистической аурой. Надев его на палец ты понимаешь, как правильно драться в рукопашном бою.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает урон и урон выносливости ваших кулаков в четыре раза от их первоначальных значений и дает им 100% бронебойного урона. Также позволяет вам парировать кулаками.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 725, onGround = false};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Золотое Кольцо Защиты";
	ITEM.model = "models/items/magic/ring_basic/ring_gold.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_protection_gold";
	ITEM.description = "Кольцо с таинственной аурой, по-видимому, сделанное из золота. Надев его на палец, чувствуешь себя в большей безопасности.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Уменьшает весь получаемый урон на 15%.\n- Заменяет бронзовую и серебряную версии этого кольца.";
	ITEM.mutuallyExclusive = {"ring_protection_bronze", "ring_protection_silver"};
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 800, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Пламенное Кольцо";
	ITEM.model = "models/items/magic/ring_protectfire/ring_protectfire.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_fire";
	ITEM.description = "Теплое кольцо с таинственной аурой.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Имеет 5% шанс поджечь врагов при попадании в них холодным оружием.\n- Складывается с огненным жертвенным оружием для дополнительного времени воспламенения.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 700, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Кольцо Пробития";
	ITEM.model = "models/items/magic/ring_dexterity/ring_dexterity.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_penetration";
	ITEM.description = "Острое кольцо, которое впивается в кожу, когда вы надеваете его на палец.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ring_pummeler.png";
	ITEM.charmEffects = "- Увеличивает пробитие брони на 10 единиц.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 700, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Кольцо Жизненной Силы";
	ITEM.model = "models/items/magic/ring_regeneration/ring_regeneration.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_vitality";
	ITEM.description = "Кольцо с таинственной аурой. Надев его на палец, чувствуешь себя лучше.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает максимальное здоровье на 25 единиц. Заменяет меньшую версию этого кольца.";
	ITEM.mutuallyExclusive = {"ring_vitality_lesser"};
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 700, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Чемодан Отрицания";
	ITEM.model = "models/props_c17/briefcase001a.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "satchel_denial";
	ITEM.description = "Запертый портфель, который, кажется, в идеальном состоянии. Он теплый на ощупь.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- После смерти ваше тело испарится, забрав с собой всю вашу добычу, за исключением оружия, которое вы экипировали.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 800};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Серебряное Кольцо Защиты";
	ITEM.model = "models/items/magic/ring_basic/ring_silver.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "ring_protection_silver";
	ITEM.description = "Кольцо с таинственной аурой, по-видимому, из серебра. Надев его на палец, чувствуешь себя в большей безопасности.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Уменьшает весь получаемый урон на 10%.\n- Заменяет бронзовую версию этого кольца.";
	ITEM.mutuallyExclusive = {"ring_protection_bronze", "ring_protection_gold"};
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 1000, onGround = false}
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Череп Животного";
	ITEM.model = "models/begotten/misc/animalskull.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "skull_animal";
	ITEM.description = "Череп оленя, вероятно, хранимый Гором в качестве трофея или талисмана, приносящего удачу.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает прирост веры на 25%, если вы исповедуете Веру Семьи.";
	ITEM.requireFaith = {"Faith of the Family"};
	ITEM.kinisgerOverride = true;
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 1250, onGround = false}
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Ужасный Череп";
	ITEM.model = "models/items/jewels/cr_shadowskull.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "skull_demon";
	ITEM.description = "Череп животного, в который была заключена людская душа. Ужасающий артефакт, которым захотят пользоваться только еретики с дурными мыслями.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает прирост веры на 25%, если вы исповедуете Веру Тьмы.";
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.kinisgerOverride = true;
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 1250, onGround = false}
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Череп Святого";
	ITEM.model = "models/begotten/misc/skull.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "skull_saint";
	ITEM.description = "Ритуально выгравированный череп, принадлежащий одному из многих древних святых Святой Иерархии. Действительно, хорошее предзнаменование для тех, кто имеет Веру Света.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает прирост веры на 25%, если вы исповедуете Веру Света.";
	ITEM.requireFaith = {"Faith of the Light"};
	ITEM.kinisgerOverride = true;
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 1250, onGround = false}
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Тлеющая Голова";
	ITEM.model = "models/gibs/gibhead.mdl";
	ITEM.weight = 2;
	ITEM.uniqueID = "smoldering_head";
	ITEM.description = "Сожженная голова человека, обвиненного в колдовстве. Вы можете почувствовать, как она все еще тлеет в ваших руках.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Увеличивает сопротивление ожогам на 50%.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 900, onGround = false}
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Позвоночник Солдата";
	ITEM.model = "models/Gibs/HGIBS_spine.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "spine_soldier";
	ITEM.description = "Фрагмент кости старого солдата с таинственной аурой силы.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/spine.png";
	ITEM.charmEffects = "- Увеличивает емкость вашего инвентаря на 25%.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 900, onGround = false}
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Священный Оберег";
	ITEM.model = "models/demonssouls/weapons/talisman of god.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "warding_talisman";
	ITEM.description = "Талисман, покрытый священными рунами, создающий мощную ауру, отпугивающую злых духов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Снижает рост и потерю здравомыслия на 50%.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 350, supercrateOnly = true}
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Имплант Тепловизора";
	ITEM.model = "models/gibs/shield_scanner_gib1.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "thermal_implant";
	ITEM.description = "Изящное технологическое устройство, грубо вставленное в затылочную долю и обеспечивающее технологически улучшенное зрение.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/thermal_implant.png";
	ITEM.charmEffects = "- Позволяет использовать тепловизионное и ночное зрение с помощью ваших чувств.";
	ITEM.requiredSubfaiths = {"Voltism"};
	ITEM.permanent = true;
	
	function ITEM:OnPlayerUnequipped(player, extraData)
		if player:GetSubfaith() == "Voltism" and extraData != "force_unequip" then
			Schema:EasyText(player, "peru", "This implant is fused into your occipital lobe and cannot be unequipped!");
			return false;
		end
		
		if Clockwork.equipment:UnequipItem(player, self) then
			local useSound = self.useSound;
			
			if !player:IsNoClipping() and (!player.GetCharmEquipped or !player:GetCharmEquipped("urn_silence")) then
				if (useSound) then
					if (type(useSound) == "table") then
						player:EmitSound(useSound[math.random(1, #useSound)]);
					else
						player:EmitSound(useSound);
					end;
				elseif (useSound != false) then
					player:EmitSound("begotten/items/first_aid.wav");
				end;
			end
		end
	end
	
	ITEM.attributes = {"not_unequippable"};
	ITEM.components = {breakdownType = "meltdown", items = {"tech", "tech"}};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Рука Вора";
	ITEM.model = "models/gibs/pgib_p1.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "thiefs_hand";
	ITEM.description = "Человеческая рука, отрезанная в наказание за воровство.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Немного увеличивает вероятность нахождения добычи в контейнерах.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 900, onGround = false}
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Урна Тишины";
	ITEM.model = "models/props_c17/lamp001a.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "urn_silence";
	ITEM.description = "Урна с прахом некогда великого убийцы.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Заглушает все шаги, некоторые звуки инвентаря и звуки разграбления контейнеров (но не взлома замков).";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 1250, supercrateOnly = true};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Гаечный Ключ";
	ITEM.model = "models/props_c17/tools_wrench01a.mdl";
	ITEM.weight = 0.5;
	ITEM.uniqueID = "wrench";
	ITEM.description = "Простой гаечный ключ, его, вероятно, можно для чего-то использовать.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.charmEffects = "- Turn valves at the scrap factory 80% faster.";
	
	ITEM.itemSpawnerInfo = {category = "Charms", rarity = 800};
ITEM:Register();

local ITEM = Clockwork.item:New("enchanted_base");
	ITEM.name = "Святая Печать";
	ITEM.model = "models/begotten/misc/holysigils.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "holy_sigils";
	ITEM.description = "Украшенная железная пряжка с двумя лоскутками свитка, вырванными из Священной Книги Закона, запечатанными и проштампованными Святой Иерархией. Ношение этих сигилов святого суда дарует высшую власть и праведное осуждение Инквизитору, который этого заслуживает.";
	ITEM.charmEffects = "- Требует ношения брони инквизитора.\n- Увеличивает прирост веры на 15%.\n- Уменьшает потерю рассудка на 50%.\n- Уменьшает прирост порчи на 50%.\n- Увеличивает урон по всем персонажам, не находящимся в Hard-Glazed, на 15%.\n- Умеренно увеличивает окна парирования и отклонения для всего оружия ближнего боя.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/holy_sigils.png";
	ITEM.kinisgerOverride = true;
	ITEM.requiredSubfaiths = {"Hard-Glazed"};
	
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if (self:HasPlayerEquipped(player)) then
			if !player.spawning then
				Schema:EasyText(player, "peru", "У вас уже есть такой амулет!")
			end
			
			return false
		end
		
		if self.requiredSubfaiths and not (table.HasValue(self.requiredSubfaiths, player:GetSubfaith())) then
			if !player.spawning then
				Schema:EasyText(player, "chocolate", "Вы не той веры, чтобы носить это!")
			end
			
			return false
		end

		if (player:Alive()) then
			local clothesItem = player:GetClothesEquipped();
			
			if !clothesItem or !clothesItem.bodygroupCharms or !clothesItem.bodygroupCharms[self.uniqueID] then
				Schema:EasyText(player, "peru", "Этот амулет нельзя носить без одежды инквизитора!")
				
				return false;
			end
		
			for i, v in ipairs(self.slots) do
				if !player.equipmentSlots[v] then
					Clockwork.equipment:EquipItem(player, self, v);

					return true
				end
			end
	
			if !player.spawning then
				Schema:EasyText(player, "peru", "У вас нет свободного слота для переноса этого амулета!")
			end
			
			return false;
		else
			if !player.spawning then
				Schema:EasyText(player, "peru", "В данный момент вы не можете выполнить это действие!")
			end
		end

		return false
	end
	
	function ITEM:OnBodygroupItemUnequipped(player, itemTable)
		if itemTable.bodygroupCharms[self.uniqueID] then
			Clockwork.kernel:ForceUnequipItem(player, self.uniqueID, self.itemID);
		end
	end
	
	function ITEM:OnPlayerUnequipped(player, extraData)
		if Clockwork.equipment:UnequipItem(player, self) then
			local useSound = self.useSound;
			
			if !player:IsNoClipping() and (!player.GetCharmEquipped or !player:GetCharmEquipped("urn_silence")) then
				if (useSound) then
					if (type(useSound) == "table") then
						player:EmitSound(useSound[math.random(1, #useSound)]);
					else
						player:EmitSound(useSound);
					end;
				elseif (useSound != false) then
					player:EmitSound("begotten/items/first_aid.wav");
				end;
			end
		end
	end
ITEM:Register();