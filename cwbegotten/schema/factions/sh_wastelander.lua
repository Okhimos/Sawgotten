--[[
	Begotten III: Jesus Wept
	By: DETrooper, cash wednesday, gabs, alyousha35

	Other credits: kurozael, Alex Grist, Mr. Meow, zigbomb
--]]

-- Names for random name selection.
RANDOM_FORENAMES = {
	["glazic"] = {
		["male"] = {"Абрахам", "Аарон", "Адам", "Алан", "Альберт", "Альфред", "Александр", "Аттикус", "Андрей", "Антон", "Ангус", "Аллен", "Алвин", "Альберт", "Амброус", "Арнольд", "Артур", "Буфорд", "Бенджамин", "Бенедикт", "Бернард", "Бригам", "Брекстон", "Барнабас", "Боксер", "Чарльз", "Христофер", "Клэренс", "Кларк", "Клейтон", "Кэлвин", "Честер", "Корнелиус", "Давид", "Дональд", "Даниэль", "Дункан", "Элиас", "Эрик", "Юджин", "Стас", "Эрнест", "Эдвард", "Эрл", "Францис", "Георг", "Грегори", "Геральт", "Гровер", "Гордон", "Гектор", "Гарольд", "Горацио", "Генри", "Айзек", "Иан", "Джозеф", "Джеффри", "Джон", "Джонатан", "Джебедая", "Джеймс", "Иаков", "Джулиан", "Джастин", "Джосая", "Джошуа", "Кармин", "Леонард", "Луи", "Лэвренс", "Леланд", "Лукас", "Лионель", "Ламонт", "Лиман", "Магнус", "Мозэ", "Майкл", "Микеланджио", "Маркус", "Мартин", "Милтон", "Натаниэль", "Ной", "Николас", "Оливер", "Обадая", "Одиссей", "Оруэлл", "Овен", "Филипп", "Петр", "Павел", "Патрик", "Реджинальд", "Роберт", "Ричард", "Рональд", "Руфус", "Ретт", "Семюэль", "Скотт", "Стивен", "Самсон", "Сильвестр", "Тэодор", "Томас", "Тимоти", "Аптон", "Улисс", "Виктор", "Винсент", "Виллиам", "Уолтер", "Вилбур", "Уоллес", "Захар"},
		["female"] = {"Адела", "Адрисана", "Алиса", "Амелия", "Анна", "Аудрей", "Авелина", "Беатрис", "Каролина", "Катерина", "Сесиллия", "Дейзи", "Довн", "Элла", "Элеанора", "Елизавета", "Эмма", "Глория", "Грейс", "Елена", "Изабель", "Изабелла", "Йеннифер", "Джоан", "Джоанна", "Джулия", "Джулиана", "Лавра", "Ливия", "Маделина", "Маргарет", "Мария", "Мэри", "Олимпия", "Скарлет", "Сара", "Сильвия", "София", "Сьюзанна", "Феодора", "Виктория", "Вирджиния", "Валерия", "Зельда"}
	},
	["goreic"] = {
		["male"] = {"Але", "Алфр", "Алфгейр", "Андрэс", "Анлауфр", "Анундр", "Арнбъорн", "Арнгримр", "Арни", "Арнфаст", "Асбъорн", "Бэгги", "Балдр", "Барид", "Бенгт", "Берси", "Бертил", "Биргер", "Бъорн", "Бо", "Борквард", "Ботулифр", "Браги", "Будли", "Даг", "Дан", "Дир", "Эйлиф", "Эгилл", "Эмунд", "Эйнар", "Эйрик", "Эскилд", "Фалки", "Фэйст", "Филип", "Фредрик", "Фрирек", "Фроди", "Фрейр", "Фолки", "Гендальфр", "Геирр", "Георг", "Гнупа", "Горм", "Гремер", "Гримр", "Гудфрид", "Гудмундр", "Гудродр", "Гунарр", "Хакон", "Халстейн", "Харальд", "Хаукр", "Хельги", "Хемминг", "Хольмгер", "Храфн", "Хролфр", "Хрейн", "Ъэстеин", "Хъялмар", "Хродгар", "Хродульфр", "Хрорек", "Хусинг", "Ингольфер", "Ингемар", "Ингъялнд", "Ивар", "Жедвард", "Жон", "Карл", "Кэттил", "Кэттилмунд", "Къяртан", "Клас", "Кнут", "Кол", "Колбъорн", "Магнус", "Маркус", "Магни", "Мэтс", "Нилс", "Никлас", "Оддр", "Офеиг", "Олафр", "Ормр", "Оттарр", "Рефр", "Рефил", "Рагнар", "Рикульфр", "Рогнвальд", "Скули", "Снори", "Сибъор", "Сигъюрор", "Старкадр", "Штейн", "Стурла", "Стубйорн", "Стиркер", "Сумурлиди", "Суни", "Свэн", "Сверкер", "Семунд", "Солве", "Сорквер", "Тоук", "Толир", "Дорбьорн", "Дорфей", "Дорбранд", "Дордр", "Доргил", "Дорштейн", "Дорольф", "Тостэ", "Тотил", "Трайгв", "Тайк", "Ульфр", "Вагн", "Вальдемар", "Эйк", "Унгвар", "Орвар", "Ойштейн"},
		["female"] = {"Алета", "Альфхидир", "Альфрид", "Альвор", "Анна", "Аса", "Аслауг", "Аста", "Астрид", "Бита", "Бигритта", "Бъорн", "Бодил", "Ботхильдир", "Цесилла", "Эдла", "Элин", "Елизавета", "Фрея", "Гердур", "Глод", "Грима", "Гуннхилдр", "Гурли", "Гудран", "Гила", "Гурид", "Гида", "Халфрид", "Галла", "Хелен", "Холмфрид", "Иллиана", "Inga", "Ingfrid", "Ingibjörg", "Ingjerðr", "Ingrid", "Karin", "Katarina", "Kraka", "Kristina", "Linda", "Maer", "Мальфрид", "Маргарета", "Мария", "Рикисса", "Рогнфрид", "Рогнхильдр", "Сага", "Сара", "Сиф", "Зигриф", "Скульд", "София", "Сванхилдр", "Ульфхилдр", "Вигдис", "Ульва", "Урса"}
	}
};
RANDOM_SURNAMES = {
	["glazic"] = {
		"Абриаллас", "Аелиус", "Андерсон", "Антониус", "Аппиус", "Аркадиус", "Армстрогнг", "Армистэд", "Аетиус", "Аурелиус", "Бейтман", "Барклей", "Брутус", "Бучанус", "Каециллиус", "Карринас", "Кассиус", "Клеменс", "Корнелиус", "Чемберлин", "Кранстон", "Крассус", "Кравфорд", "Децимус", "Дилворф", "Домитиус", "Фабиус", "Флавиус", "Франклин", "Фульвиус", "Галериус", "Гамильтон", "Харрис", "Харвус", "Хонориус", "Горатиус", "Джулиус", "Юпитер", "Коилиус", "Крамми", "Лабениус", "Линкольн", "Мариус", "Морган", "Морриус", "Насенниус", "Освальд", "Опимиус", "Патробиус", "Паркер", "Петрониус", "Филадельфиус", "Помпеус", "Квинтикус", "Рандольф", "Робертс", "Руфиниус", "Септимус", "Северус", "Симмонс", "Шеридан", "Стивенс", "Стюарт", "Сулливан", "Суетониус", "Тэйлор", "Тэмпл", "Томпсон", "Титус", "Туллиус", "Тайлер", "Валериус", "Воренус", "Уэльс", "Вилкес", "Пиковидный", "Светикус"
	},
	["goreic"] = {
		"Askelsson", "Axel", "Bengtsson", "Björnsson", "Borgesson", "Bundersson", "Ericsson", "Erling", "Eskelsson", "Estensson", "Fredriksson", "Glazkill", "Gustavsson", "Guttormsson", "Haldorsson", "Haralder", "Helgasson", "Helvig", "Heskin", "Hexum", "Hohlt", "Jostad", "Junge", "Kaase", "Karsten", "Klingenberg", "Knudtson", "Krogh", "Leif", "Lorensson", "Mathiesson", "Nygaard", "Nylund", "Ohlsson", "Olafsson", "Skau", "Thostensson", "Torgrimsson", "Tostensson", "Westergaard"
	}
};

local FACTION = Clockwork.faction:New("Wanderer");
	FACTION.disabled = false; -- For events.
	FACTION.useFullName = false;
	FACTION.material = "begotten/faction/faction_logo_wanderers";
	FACTION.color = Color(160, 100, 15);
	FACTION.description = "Странники — личинки, пирующие на трупе мертвого мира. \nЭто многочисленные крестьяне из низших уездов, едва грамотные и недоедающие. \nЧтобы выжить в качестве Странника, нужно быть резким и жестоким, а также тщательно выбирать своего покровителя. \nИх оружие — их вера и страх, и их борьба будет вечной.";
	FACTION.availablefaiths = {"Faith of the Light", "Faith of the Family", "Faith of the Dark"};
	FACTION.imposters = true;
	FACTION.names = "glazic";
	
	-- Called when a player is transferred to the faction.
	function FACTION:OnTransferred(player, faction, name)
		if (faction.name == "Goreic Warrior") then
			return false;
		end;
	end;
FACTION_WANDERER = FACTION:Register();

local FACTION = Clockwork.faction:New("Gatekeeper");
	FACTION.disabled = false; -- For events.
	FACTION.whitelist = true;
	FACTION.useFullName = false;
	FACTION.material = "begotten/faction/faction_logo_gatekeepers";
	FACTION.color = Color(80, 100, 120);
	FACTION.description = "Привратники — это передовая линия обороны против бесчисленных нечестивых ужасов, которые угрожают Сиянию. \nИх ряды пополняются за счет мобилизованных жаждущих власти простолюдинов и фанатичных бичеванцев. \nОни должны служить Священной Иерархии усердно и беспрекословно, какими бы возмутительными ни были их требования. \nОт этих плохо обученных и плохо экипированных солдат ждут, что они отдадут свои жизни, защищая Свет. \nИ они так и сделают.";
	FACTION.availablefaiths = {"Faith of the Light"};
	FACTION.alliedfactions = {"Holy Hierarchy"};
	FACTION.singleGender = GENDER_MALE;
	FACTION.characterLimit = 1; -- # of characters of this faction a player can have.
	FACTION.ratio = 0.3; -- 0.3 slots per player (9 at 30 players).
	--FACTION.imposters = true; -- Kinisgers should get enlisted through /enlist on Wanderer disguises.
	FACTION.names = "glazic";
	FACTION.subfactions = {
		{name = "Legionary", subtitle = "Легионеры - Солдаты Церкви", description = "Священный Орден Привратников защищал Святую Иерархию от нечестивых угроз с незапамятных времен. За эти годы они пережили много изменений и значительно различаются по силе, оснащению и численности от округа к округу, но тем не менее имеют одну цель: защищать Святую Иерархию любой ценой. Легионеры представляют собой рядовых членов этого Священного Ордена и знают только Сияние. Эти люди представляют собой смесь профессиональных солдат, призванных на службу отбросов пустошей и религиозных фанатиков. Они служат в качестве передовых войск и стражников на службе Священной Иерархии, часто идя на значительный риск для продвижения целей своих министров или для их защиты", attributes = {{Color(0, 225, 0), "(+) Натренированный: Начинает с +15 максимальной выносливости"}, {Color(0, 225, 0), "(+) Сытый: Начинает с +25 максимального здоровья"}, {Color(0, 225, 0), "(+) Начинает с 6 уровнем Таинства"}, {Color(0, 225, 0), "(+) Сила в Количестве: +100% получения веры при нанесении урона."}, {Color(225, 0, 0), "(-) Подвера 'Вольтизм' заблокирована"}}},
		{name = "Auxiliary", subtitle = "Ауксилярии - Кузнецы и Медики", description = "Являясь основой Святого Ордена и поставщиками его превосходной изобретательности, Ауксилиарии обеспечивают снабжение, поддерживают войска и действуют в качестве резервистов в бою. Как кузнецы, они вооружают ряды превосходным оружием, управляют пушками и укрепляют оборонительные позиции. Как Медики, они предотвращают вспышки заражений в рядах и лечат ранения, полученные в бою. От них по-прежнему ожидают, что они будут сражаться, если это необходимо, хотя они не так часто подвергаются опасности, как их собратья-легионеры", attributes = {{Color(0, 225, 0), "(+) Люди Знаний: +25% к приросту веры"}, {Color(0, 225, 0), "(+) Начинает с 12 уровнем Таинства"}, {Color(225, 0, 0), "(-) Слабый: Уровни III и IV дерева убеждений «Мастерство» заблокированы."}, {Color(225, 0, 0), "(-) Подвера 'Вольтизм' заблокирована"}}},
		{name = "Praeventor", startingRank = 12, whitelist = true, subtitle = "Превенторы - Разведчики и Убийцы", description = " Взяв название похожего подразделения из древнеримских времен, Превенторы служат небольшим, но элитным отрядом разведчиков, охотников и убийц для Святого Ордена. Набранные из самых преданных и опытных последователей Стойкого Сияния, Превенторы не имеют стандартизированного снаряжения,чтобы помочь им вписаться в толпу, выполняя свои обязанности в пустошах. Эти обязанности включают: сообщение о передвижениях противника, сбор ценных артефактов или необходимых припасов, убийство врагов Святой Иерархии или снайперская стрельба по целям на большом расстоянии, доставка или уничтожение целей, за которых назначены награды, и сбор информации.", attributes = {{Color(0, 225, 0), "(+) Особые Тренировки: -25% к скости траты выносливости, +5% к скорости бега"}, {Color(0, 225, 0), "(+) Мастера Маскировки: Другие жители пустошей не видят ваш ранг"}, {Color(0, 225, 0), "(+) Starts at Sacrament Level 8"}, {Color(225, 0, 0), "(-) Подверы 'Вольтизм', 'Солнечное Православие' заблокированы"}}},
	};
	FACTION.residualXPZones = { -- Zones that boost residual XP gain for this faction.
		["rp_begotten3"] = {
			{pos1 = Vector(1390, 10153, -938), pos2 = Vector(-2370, 11254, -1690), modifier = 2, nightModifier = 4}, -- Gate
			{pos1 = Vector(9422, 11862, -1210), pos2 = Vector(10055, 10389, -770), modifier = 3, nightModifier = 5}, -- Gorewatch
			{pos1 = Vector(3458, 12655 -814), pos2 = Vector(3335, 12769, -685), modifier = 2, nightModifier = 4}, -- Watchtower
			{pos1 = Vector(2742, 10244, -1194), pos2 = Vector(2913, 10071, -1074), modifier = 2, nightModifier = 4}, -- Watchtower
			{pos1 = Vector(-1963, 10678, -1055), pos2 = Vector(-2144, 10886, -1194), modifier = 2, nightModifier = 4}, -- Watchtower
			{pos1 = Vector(-3468, 12985, -375), pos2 = Vector(-3591, 13103, -241), modifier = 2, nightModifier = 4}, -- Watchtower
		},
	};
	
	-- Called when a player is transferred to the faction.
	function FACTION:OnTransferred(player, faction, name)
		if (faction.name != "Wanderer" and faction.name != "Holy Hierarchy") then
			if player:GetSubfaction() ~= "Kinisger" then
				return false;
			end
		end;
		
		-- It is the IC responsibility of Gatekeepers to bloodtest recruits.
		--[[if player:GetFaith() ~= "Faith of the Light" or player:GetSubfaith() == "Voltism" then
			return false;
		end]]--
		
		if (!Clockwork.player:IsWhitelisted(player, "Gatekeeper")) then
			Clockwork.player:SetWhitelisted(player, "Gatekeeper", true);
		end;
	end;
	
	if !Schema.Ranks then
		Schema.Ranks = {};
	end
	
	if !Schema.RankTiers then
		Schema.RankTiers = {};
	end
	
	if !Schema.RanksRestrictedWages then
		Schema.RanksRestrictedWages = {};
	end
	
	if !Schema.RanksToSubfaction then
		Schema.RanksToSubfaction = {};
	end
	
	if !Schema.RanksToCoin then
		Schema.RanksToCoin = {};
	end
	
	Schema.Ranks["Gatekeeper"] = {
		[1] = "Послушник",
		[2] = "Причетник",
		[3] = "Подмастерье",
		[4] = "Мастер-Кузнец",
		[5] = "Медикус",
		[6] = "Лазарь",
		[7] = "Эммисарий",
		[8] = "Знаменосец",
		[9] = "Оруженосец",
		[10] = "Пресвитёр",
		[11] = "Высший Привратник",
		[12] = "Разведчик",
		[13] = "Мастер Разведчик",
		[14] = "Остиарий",
	};
	
	Schema.RankTiers["Gatekeeper"] = {
		[1] = {"Послушник"},
		[2] = {"Причетник", "Остиарий", "Подмастерье", "Медикус", "Разведчик"},
		[3] = {"Прелат", "Мастер-Кузнец", "Лазарь", "Мастер Разведчик", "Знаменосец", "Оруженосец"},
		[4] = {"Пресвитёр"},
		[5] = {"Высший Привратник"},
	};
	
	-- Do not grant wages to these ranks if they are inside the safezone.
	Schema.RanksRestrictedWages["Gatekeeper"] = {1, 2, 12, 13, 14};
	
	Schema.RanksToSubfaction["Gatekeeper"] = {
		["Разведчик"] = "Praeventor",
		["Мастер Разведчик"] = "Praeventor",
	};
	
	Schema.RanksToCoin["Gatekeeper"] = {
		[1] = 25,
		[2] = 35,
		[3] = 35,
		[4] = 50,
		[5] = 35,
		[6] = 50,
		[7] = 50,
		[8] = 50,
		[9] = 50,
		[10] = 100,
		[11] = 200, 
		[12] = 35,
		[13] = 50,
		[14] = 50,
	};
FACTION_GATEKEEPER = FACTION:Register();

local FACTION = Clockwork.faction:New("Holy Hierarchy");
	local ministerModels = {
		male = {
			clothes = "models/begotten/gatekeepers/minister_male.mdl",
			heads = {
				"male_01",
				"male_02",
				"male_03",
				"male_04",
				"male_05",
				"male_06",
				"male_07",
				"male_08",
				"male_09",
				"male_11",
				"male_12",
				"male_13",
				"male_16",
				"male_22",
				"male_56"
			},
		},
	};

	FACTION.disabled = false; -- For events.
	FACTION.whitelist = true;
	FACTION.useFullName = false;
	FACTION.material = "begotten/faction/faction_logo_hierarchy";
	FACTION.color = Color(225, 175, 0);
	FACTION.description = "Святая Иерархия - Самые высокие по сословию люди в некогда великой Империи Света. Министры, Инквизиторы и Священные Рыцари."
	FACTION.availablefaiths = {"Faith of the Light"};
	FACTION.alliedfactions = {"Gatekeeper"};
	FACTION.ratio = 0.1; -- 0.1 slots per player (3 at 30 players).
	--FACTION.imposters = true;
	FACTION.names = "glazic";
	FACTION.subfactions = {
		{name = "Ministry", subtitle = "Министерство - Несколько привилегированных надзирателей за Башней Света и обществом Сияния.", description = "Министерство поддерживает древнее превосходство просвещенного меньшинства. \nСреди темного моря крови ублюдков и нецивилизованной черни они являются судьями и администраторами, чтобы насаждать Святой Свет. \nТем не менее, многие из них коррумпированы, ищут потакания своим желаниям, а не желаниям направлять. \nВ конце концов, с их высоких мест нет никого выше их, кто мог бы смотреть вниз и судить.", models = ministerModels},
		{name = "Inquisition", subtitle = "Вторая инквизиция — охотники за еретиками, судьи и палачи", description = "Священный Орден Инквизиторов Сияния — это древнее учреждение, основанное Лордом Максимусом во время его кампаний против Черных Шляп и рожденное необходимостью уничтожать шпионов и искоренять ересь. Хотя они были распущены после того, как их задача была выполнена, вскоре Инквизиция была восстановлена, поскольку враги только росли как в числе, так и в свирепости. Пришествие Подземного Бога и последующее вытеснение Темного Лорда из Ада только усилили потребность в Инквизиции, поскольку неизвестные силы теперь открыто обрушились на человечество. Инквизиция — важнейшая линия обороны Святой Иерархии, поскольку они искореняют скрытых врагов Света и отстаивают религиозную доктрину. Инквизиторы строго соблюдают все заветы из «Книги Закона», в которой подробно описана их методология и правила, которых должны придерживаться все последователи Стойкого Сияния. Инквизиция также обладает уникальной способностью призвать любого члена общества к ответу по «Книге Закона», включая членов Святой Иерархии. Однако обвинения в ереси не воспринимаются легкомысленно, и доказательство неправоты после обвинения кого-то, находящегося у власти, может иметь катастрофические последствия для обвинителя.", attributes = {{Color(0, 225, 0), "(+) Человек Знаний: +50% Веры из всех источников"}, {Color(0, 225, 0), "(+) Богатый Рацион: +50 Максимального Здоровья"}}}, 
		{name = "Knights of Sol", subtitle = "Рыцари Солнца — Самый преданный Орден Сияния", description = "Всего несколько лет назад Скайлайт упал на Землю в пылающем аду, последнее обещание будущего для человечества рухнуло вместе с ним. Из его бесчисленных просветленных жителей появилось только семнадцать: Славные Семнадцать. Облачившись в величественные белые доспехи и вооружившись ярко сияющими мечами, Славные Семнадцать убили каждого демона, который напал на них. Тысячи пали от их клинков, прежде чем демоны отступили во тьму, и казалось, что человечество проживет еще хотя бы один день. Хотя Славные Семнадцать больше не ходят по этой Земле, их наследие живет в недавно основанном Священном Ордене Рыцарей Солнца. Эти Рыцари Солнца состоят из лучших Воинов, что могут существовать в Святой Иерархии, непревзойденных в доблести и рассматриваемых многими верующими как воплощение ангелов-хранителей. Рыцарям выдается абсолютно лучшее снаряжение, имеющееся в королевских арсеналах. Несмотря на это, Рыцарей никогда не видят с мушкетами или любым другим видом огнестрельного оружия, считая их слишком трусливыми для кого-то столь благородного положения. Известно также, что рыцари Солнца держат у себя на службе оруженосцев, часто набираемых из числа привратников.", attributes = {{Color(0, 225, 0), "(+) Благословение: 70% защиты от огнестрельного урона"}, {Color(0, 225, 0), "(+) Бастион Света: +25 Выносливости, Стабильности"}, {Color(0, 225, 0), "(+) Изнурительные Тренировки: +75 Максимального Здоровья"}, {Color(225, 0, 0), "(-) Грузный: Скорость передвижения снижена на 15%"}}, models = ministerModels}
	};
	FACTION.singleGender = GENDER_MALE;
	
	-- Called when a player is transferred to the faction.
	function FACTION:OnTransferred(player, faction, name)
		--if (faction.name != "Wanderer" and faction.name != "Gatekeeper") then
			--return false;
		--end;
		
		--[[if player:GetFaith() ~= "Faith of the Light" or player:GetSubfaith() == "Voltism" then
			return false;
		end]]--
		
		--[[if (!Clockwork.player:IsWhitelisted(player, "Holy Hierarchy")) then
			Clockwork.player:SetWhitelisted(player, "Holy Hierarchy", true);
		end;]]--
	end;
FACTION_HIERARCHY = FACTION:Register();

local FACTION = Clockwork.faction:New("Goreic Warrior");
	FACTION.disabled = false; -- For events.
	FACTION.whitelist = true;
	FACTION.useFullName = false;
	FACTION.material = "begotten/faction/faction_logo_gores";
	FACTION.color = Color(100, 100, 100);
	FACTION.description = "The brutal spearfolk clansmen of the North, unmatched in their endurance and strength, have come together for the first time. \nAt the heart of their warcamp lies the Great Tree, that which has been scarred by the Holy Hierarchy and must be restored through bloodshed. \nThe Clans must put aside their differences and launch a godly raid upon the last remaining Glazic Lands, to seek vengeance and glory. \nIf their Great Tree suffers another catastrophe, their connection to the Five Gods will be forever cut and all the world will perish. \nFor that reason they must endure ever harder, for there are many more threats abroad than the shattered Hierarchy."
	FACTION.availablefaiths = {"Faith of the Family"};
	FACTION.subfactionsToAvailableFaiths = {["Clan Reaver"] = {"Faith of the Family", "Faith of the Dark"}};
	FACTION.characterLimit = 1; -- # of characters of this faction a player can have.
	FACTION.ratio = 0.2; -- 0.2 slots per player (6 at 30 players).
	FACTION.imposters = true;
	FACTION.names = "goreic";
	FACTION.subfactions = {
		{name = "Clan Gore", subtitle = "Последователи Отца — Воины и Охотники", description = "Clan Gore is currently known as the Crown Clan, a title given to the most powerful of all the Clans. Following the Father, Clan Gore was born by bloodshed and conquest. The previous Crown Clan and followers of the Father, Clan Ghorst, had a war chief who made the mistake of fathering a bastard child and leaving it to the wolves to be devoured. The boy was instead raised by these wolves and took on the name Reaper King Kalkaslash. With an army of skinwalkers and werewolves, Kalkaslash butchered his way into his father's long hall, and shred him into a bloody mess with his claws. From then on he seized his throne, and forced the other Clans to kneel with his newly gained army of warrior men. For the next hundred years to follow, Clan Gore would capture women by the thousands and breed new warriors, for they would birth thousands more ruthless killers to continue the process. The Father is harsh and unforgiving, but with his strength empires will fall.", rivalry = "Clan Grock", attributes = {{Color(0, 225, 0), "(+) Starts with +50 maximum health"}, {Color(0, 225, 0), "(+) Skilled Hunters: Deal 50% more damage to animals"}, {Color(0, 225, 0), "(+) Start at Sacrament Level 8"}}}, 
		{name = "Clan Harald", subtitle = "Последователи Старшего Сына — Мореплаватели и Исследователи", description = "Clan Harald is the second oldest Clan belonging to the Goreic peoples, the oldest being Clan Grock. The salt of the sea runs through the blood of these men, and their home is whatever lies beyond. For the past several hundred years Clan Harald has had no true chieftain, ever since it was cursed by the trickster god of The Sister. Any man who calls themselves the Chieftain of the sea, and therefore head of Clan Harald, shall die by drowning. While there is never a head of Clan Harald, there always exists a council of the most experienced (and stubborn) sailors who oversee business. In these current dark times, the Haralders seek to end their curse and become the new Crown Clan, as they feel they were always meant to be. The Haralder sailors will always be at odds with the followers of The Sister, horrible tricksters who create storms that turn their longships into the burning sea. Unknown to all the other Clans, the followers of the Old Son see their deity as a massive beast who lives in the deepest darkest depths of the ocean, and soon they will wake it and watch their entire world submerge underneath the waters, while they thrive above with their mighty sails.", rivalry = "Clan Reaver", attributes = {{Color(0, 225, 0), "(+) Starts with +45 maximum health"}, {Color(0, 225, 0), "(+) Access to greater Longships"}, {Color(0, 225, 0), "(+) Starts at Sacrament Level 6"}}}, 
		{name = "Clan Reaver", subtitle = "Последователи Сестры — Работорговцы и Истязатели", description = "The most wealthy of all Clans, the Reavers are the upholders of Goreic society and economy, but are often looked down on by the others. Seen as weak and as tricksters, they are never trusted by the other Clans, and for good reason. The Goreic people are cursed to live in infertile lands, and for that reason they must survive by the raiding of weaker peoples. Yet the Reavers follow The Sister, and they see it as their right to cause misery to others, even when they have no practical reason for it. Their seat is that of the Hall of Tears, a terrifying place somewhere hidden in the woods, where people are suspended on the brink of death for as long as they provide amusement. Instead of meeting their enemies on an open field like their brutish brothers, the Reavers will cast curses upon their foes or even puppeteer entire factions to do their bidding. Some in the South presume that the followers of the Sister may actually be doing the work of the Dark Prince, though the Reavers might even suggest that both gods are one and the same.", rivalry = "Clan Harald", attributes = {{Color(0, 225, 0), "(+) Starts with +25 maximum health"}, {Color(0, 225, 0), "(+) Gain a passive salary of Coins every hour"}, {Color(0, 225, 0), "(+) Gain double the coin from selling slaves"}, {Color(0, 225, 0), "(+) Can choose the Faith of the Dark as a faith"}, {Color(0, 225, 0), "(+) Starts at Sacrament Level 6"}}}, 
		{name = "Clan Shagalax", subtitle = "Последователи Младшего Сына - Строители и Кузнецы", description = "It is said that a Shagalaxian is born with steel skin and molten iron flowing in their blood. Without their metal, the bloodthirsty Gores would be throwing sticks and stones instead of their mighty steel. There was a time long ago when the Shagalaxians were considered the mightiest of all Clans and all tribes united under their banner; when their steam belching tanks threw flames across valleys, turning armies and forests into ash. Pathetic arrows plinked off many plates of steel as their legions of tanks rolled over fields of terrified tribes and towns of the Glaze alike. It was only when the weaklings of Clan Crast foresaw Clan Shagalax's dealings with a mechanical Titan-God that their title of Crown Clan was in need of defiance. So it was that when the Undergod entered this world, the Shagalaxians took advantage and began their invasion of the ever-hated Empire of Light with the combined might of the Gore tribes. However, the Shagalaxians soon learned that the Undergod had no allies, and in their greatest moment of weakness their remnants were conquered by the followers of The Father at the behest of Clan Crast. It was then deemed that only The Father and by proxy Clan Gore may lord over the other Clans. Those Shagalaxians cut off from their brethren during the Undergod's invasion now comprise many of the scrapper warbands that plague the wasteland, but a small number of those still connected to the Great Tree yet remain among the great clans. Many Shagalaxians claim they are loyal to The Young Son, a deity of charity and ingenuity, though in secret it is said that there are those who follow a mechanical titan and wait patiently for the time when their legions of tanks are rebuilt so that they may turn this world into ash once more.", rivalry = "Clan Crast", attributes = {{Color(0, 225, 0), "(+) Starts with +30 maximum health"}, {Color(0, 225, 0), "(+) Starts at Sacrament Level 8, with points placed in \'Ingenuity\'"}, {Color(0, 225, 0), "(+) Can craft and use firearms"}}}, 
		{name = "Clan Crast", subtitle = "Последователи Матери — Шаманы и Мистики", description = "While all followers of The Family respect The Mother's role and contribution to the rough but fair cycle of nature and death, those actually born under her are looked down upon as weak and pathetic. In those days the followers of The Mother would be thrown off high cliffs to splatter on the rocks below, as they would never grow to be great warriors like the followers of The Father would. Then it was decided by a more benevolent King of the Bark Throne that one in every tenth child born under the sign of The Mother would be permitted to live. As always these lucky children grew up to be queer and disfigured little things, but they did have gifts that made them useful. Some became bards, entertainers: a juggling dwarf or a two-headed giant. Others had The Vision, a way to see into the dark void of fate itself. With a new generation of mystic beings, a new Clan was formed, the first ever to follow The Mother. To this day Clan Crast thrives without bloodshed, as their great blinded seers look into the darkness to warn the others of their perils ahead. When a seer foresaw the killing of the Great Tree at the hands of the Holy Hierarchy's fire-breathing dragons, and no one believed him, the Gores learned to never mistrust the warnings of their Crasters again. The current line of Clan Crast are most in touch with the Blade Druids of old, and seek to use their ancient weapons forged by the Earth itself. A great ritual awaits Clan Crast, to restore their Great Tree, and the other Clans stand by to see this through.", rivalry = "Clan Shagalax", attributes = {{Color(0, 225, 0), "(+) Starts with +25 maximum health"}, {Color(0, 225, 0), "(+) Starts at Sacrament Level 12"}, {Color(0, 225, 0), "(+) Can unlock the ability to Ravenspeak"}, {Color(225, 0, 0), "(-) Start with -4 Trait Points"}}}, 
		{name = "Clan Grock", subtitle = "Последователи Старых Путей — Кочевники", description = "The first Gore tribe to come settle near the Great Tree. The oldest Clan of all Gores, and those who refused to follow the gods of The Family. While many followers of the Old Ways acknowledge the existence of The Family, they choose to instead go their own way and entrust in themselves to see their own path in life. All Gores believe they are fated to die and whatever they do cannot change that, and so those of the Old Ways agree that they will continue to struggle to survive until that day comes. The average Grock is much taller and stronger than their brothers, with a thick coat of black hair covering their unwashed bodies, giving them a bestial look. Clan Grock will never hold any power as their beliefs encourage a nomadic lifestyle, one free of society, laws and the reliance of other men. The only time they will ever be called in by the others is if their Great Tree is under attack, and then and only then will they charge forth to defend their home lands. Clan Grock is considered a joke to the other Clans, men who would rather lay with beasts than a good woman. The worst of them are Clan Gore, the arrogant Kings of Old who hosted 'Great Hunts' to slaughter as many Grocks as possible for glory and bragging rights. Still, when their great gods fail them, those of the Old Ways will always endure.", rivalry = "Clan Gore", attributes = {{Color(0, 225, 0), "(+) Starts with +175 maximum health"}, {Color(0, 225, 0), "(+) Savage: Warcries instantly restore 25 stamina"}, {Color(0, 225, 0), "(+) Starts at Sacrament Level 8"}, {Color(225, 0, 0), "(-) Cannot wear Medium or Heavy armor"}, {Color(225, 0, 0), "(-) The Subfaith Tree is locked and cannot be progressed"}}}
	};
	FACTION.models = {
		male = {
			clothes = "models/begotten/goreicwarfighters/goretribal_male.mdl",
			heads = {
				"male_90",
				"male_91",
				"male_92",
				"male_93",
				"male_94",
				"male_95",
				"male_96"
			},
		},
	};
	FACTION.singleGender = GENDER_MALE;
FACTION_GOREIC = FACTION:Register();

local FACTION = Clockwork.faction:New("Children of Satan");
	FACTION.disabled = false; -- For events.
	FACTION.whitelist = true;
	FACTION.useFullName = false;
	FACTION.material = "begotten/faction/faction_logo_satanists";
	FACTION.color = Color(125, 10, 10);
	FACTION.description = "Those selected to join the Children of Satan are exceptional individuals, be they particularly twisted and cunning, or perhaps born with the blood of ancient royalty. \nFor this reason the Children are few in number compared to the other powers, but they make up for this with their unmatched skill and grace. \nThe average Child of Satan is centuries old, obsessed with higher forbidden knowledge and glorious works of art and passion, yet they still have very much to learn. \nFearing what becomes of their corrupted souls if they are to meet an unforseen fate before reaching Demonhood, a Child of Satan will rarely risk their life for a prize not satisfactory. \nThey are the unseen puppet masters; the Glaze and the Gore must be kept in the balance, for Satan desires more subjects in his war against the Undergod, and extinction will only result in His victory.";
	FACTION.availablefaiths = {"Faith of the Dark"};
	FACTION.characterLimit = 1; -- # of characters of this faction a player can have.
	FACTION.ratio = 0.15; -- 0.15 slots per player (4 at 30 players).
	FACTION.names = "glazic";
	FACTION.subfactions = {
		{name = "Varazdat", subtitle = "Дом Вараздат — Мастера Мечники и Каннибалы", description = "The Eastern Nigerii Empire is aptly known as the Land of a Thousand Princes for its infamous lust-crazed Emperors. Several of these Emperors held tremendous orgies in their palace grounds that led to many bastard children. Due to unclear laws of succession, this led to an unending stretch of wars hosted in the Far East for a throne soaked in blood. Among the thousands of claimants to the throne was the Varazdat child, one who had very little royal blood in him, but all the ambition in the world. While the other pretenders were propped up by wealthy spice merchants and noblemen, Varazdat was a gutter rat who began his climb by pickpocketing and throat slicing. He kidnapped other claimants and prepared their bodies into fine feasts, their tender meat spiced and roasted to perfection. For each would-be Prince he killed and cannibalized, he absorbed their power and birthright. At the end of his road he was positively bloated, his belly full of royalty, and his claim to the throne backed by millions of mercenaries. The Varazdat reign did not last very long, as most go, but it opened the way for future Emperors to seek powers from the Dark. Today those who share the blood of House Varazdat are feared as particularly ruthless schemers, and child-eaters.", attributes = {{Color(0, 225, 0), "(+) Жажда Крови: +10% к скорости бега при уровне здоровья выше 95%."}, {Color(0, 225, 0), "(+) Кровосос: 50% нанесенного урона возвращается в виде здоровья."}, {Color(0, 225, 0), "(+) Восточные Воины: Начинают с +25 максимального здоровья и +15 максимальной выносливости."}, {Color(0, 225, 0), "(+) Начинает с разблокированными убеждениями «Дикарь» и «Сердцеед»."}, {Color(0, 225, 0), "(+) Начинает с 5 уровнем Таинства."}, {Color(225, 0, 0), "(-) Может получать пропитание только питаясь человеческой плотью."}, {Color(225, 0, 0), "(-) Безумные каннибалы: потеря рассудка увеличивается на 50%."}}},
		{name = "Rekh-khet-sa", subtitle = "Дом Рех-Хет-Са - Бессмертные Темные Колдуны", description = "The formation of the House of Rekh-khet-sa dates back to long before recorded history within \'Egypt\', a forgotten land. Ancient Egyptians were tainted by Lucifer to use dark magics in their horrific pursuits of absolute immortality in the name of their Pharaoh. Although all of their original members are deceased, their greed for attaining immortality still persists to this very day, with their ancient texts being the basis for the Rekh-khet-sa\'s modern day reformation. Many members of the House Rekh-khet-sa pursue the so-called Ancient One's quest for immortality, imbued with visions from the Dark Prince, and obsessed with collecting artifacts to help achieve their goals, with some being successful and being able to perform such magics as reversing age. Because of this, many older members of Rekh-khet-sa tend to be wiser than the other houses, able to gain a wealth of experience. Though each member of this bloodline may be hundreds of years old, they live eternally in darkness. When the light of Sol shines upon them, they shrivel up, their perfect skin rotting away, revealing the cost of eternal life.", attributes = {{Color(0, 225, 0), "(+) Древние Колдуны: Не подвержены порче или потере рассудка."}, {Color(0, 225, 0), "(+) Можно изготовить «Адскую сталь» без веры «Колдун»"}, {Color(0, 225, 0), "(+) Бесконечный предел уровня и +25% к приросту веры"}, {Color(0, 225, 0), "(+) Начинается с 16-го уровня Таинства, с разблокированной «Первобытностью»."}, {Color(225, 0, 0), "(-) Получают урон, находясь на улице днем."}}},
		{name = "Philimaxio", subtitle = "Дом Филимаксио — Благородные рыцари, присягнувшие Темному принцу", description = "When the Undergod swept over the lands of Sol to bring ruination and purification, almost all the central Districts fell immediately. The White Sentinels of District Seventeen begged to differ. Their stronghold was ravaged time and time again by the hordes of the unliving thralls, and each time they fell onto the blades of the Sentinels. They were no mere guardsmen, but renowned nobles of the iron-fisted Philimaxio family. In the Holy Hierarchy, very few noble houses would ever stoop so low as to bear arms directly. The Philimaxios were martialists, stout and hardy, always ready for the time in which a great foe would rise against them. Indeed they held their District Seventeen until there was no longer any reason to do so, as the Empire of Light shattered around them and they were stranded. Realizing their predicament, the Philimaxios found themselves surrounded by dark temptations. The Dark Prince whispered in their ears, wearing down on their spiritual resolve until they found themselves turning against the Light. The White Sentinels turned crimson as they slaughtered every serf, noble, and citizen alike within District Seventeen. The Philimaxios were one of the first to join the Children of Satan, seeking out the haunted manor where they would become unholy guardsmen of a Satanic Dreadlord. Quiet, strong, dutiful and unmoving, the sons of the Philimaxio Bloodline will hold back all who dare threaten the followers of Darkness.", attributes = {{Color(0, 225, 0), "(+) Нечестивый Бастион: Тяжелая броня защищает на 15% лучше"}, {Color(0, 225, 0), "(+) Ухудшение состояния брони снижено вдвое"}, {Color(0, 225, 0), "(+) Осквернение Святыни: Урон от пуль снижен на 70%"}, {Color(0, 225, 0), "(+) Воины-дворяне: +50% к максимальному здоровью и +25 к максимальной устойчивости."}, {Color(0, 225, 0), "(+) Начинают с 6 уровнем Таинства"}, {Color(225, 0, 0), "(-) Грузный: Скорость передвижения снижена на 15%"}}},
		{name = "Kinisger", subtitle = "Дом Кининсгеров — Мутанты и Мастера проникновения и убийств", description = "Chaos, deception, and trickery. House Kinisger has existed since the The First Inquisition. When deception was high within the Empire of Light, Lord Maximus stepped forth and revealed the existence of the Black-Hats; black blooded mutants taking on the appearance of men of Faith who had infiltrated society to spread chaos. The Inquisition was then called to bring an end to the Black-Hats, with some having to use witchery to disguise their black blood to crimson red, and when the Inquisition had begun executing anyone they were mildly suspicious of they had to take to more extreme measures. This was the beginning of their pact, as they had used dark rituals to disguise their flesh into different appearances. Practically any Black-Hat who did not use this method was executed in the First Inquisition. Thus, the descendants of House Kinisger are all Black-Hats who still remain true to the Dark. Their members to this day have become experienced in the art of infiltrating society and have become excellent spies and ritual masters. Before turning to the Dark, the mutant amish of House Kinisger were the equivalent of cockroaches - willing to do anything to merely stay alive amongst men who sought their demise. They used their flesh sorcery to hide in plain sight, to live amongst the enemy. Now they have awoken to their true purpose, to sow chaos and doubt, to always seek to topple any great threat from within.", attributes = {{Color(0, 225, 0), "(+) Безликий: Уникальные ритуалы для изменения внешности или маскировки"}, {Color(0, 225, 0), "(+) Убийца: наносит на 25% больше урона кинжалами."}, {Color(0, 225, 0), "(+) Невосприимчив к анализам крови (исключая ложноположительные результаты)"}, {Color(0, 225, 0), "(+) Начинает с 6 уровнем Таинства"}, {Color(225, 0, 0), "(-) Кровь мутанта: начинает с -3 стартовыми очками"}}}
	};
	--FACTION.singleGender = GENDER_MALE;
	
	-- Called when a player is transferred to the faction.
	function FACTION:OnTransferred(player, faction, name)
		if player:GetFaith() ~= "Faith of the Dark" then
			return false;
		end
		
		if (!Clockwork.player:IsWhitelisted(player, "Children of Satan")) then
			Clockwork.player:SetWhitelisted(player, "Children of Satan", true);
		end;
	end;
FACTION_SATANIST = FACTION:Register();

----------------------
----------------------
--- Event Factions ---
----------------------
----------------------

-- For Begotten II Map Change Event.
local FACTION = Clockwork.faction:New("Pope Adyssa's Gatekeepers");
	FACTION.hidden = true;
	FACTION.disabled = true; -- For events.
	FACTION.whitelist = true;
	FACTION.useFullName = false;
	FACTION.material = "begotten/faction/faction_logo_gatekeepers_adyssa";
	FACTION.color = Color(20, 20, 20);
	FACTION.description = "The Gatekeepers are the front line of defence against the countless unholy horrors that threaten the Glaze. \nTheir ranks swell with conscripted power-hungry commoners and fanatical flagellants. \nThey must serve the Holy Hierarchy diligently and without question, no matter how outrageous their demands may be. \nIll-trained and poorly equipped, these soldiers are expected to lay their lives down to protect the Light. \nAnd so they shall.";
	FACTION.availablefaiths = {"Faith of the Light"};
	FACTION.singleGender = GENDER_MALE;
	FACTION.characterLimit = 1; -- # of characters of this faction a player can have.
	FACTION.ratio = 0.3; -- 0.3 slots per player (9 at 30 players).
	--FACTION.imposters = true;
	
	if !Schema.Ranks then
		Schema.Ranks = {};
	end
	
	if !Schema.RankTiers then
		Schema.RankTiers = {};
	end
	
	if !Schema.RanksToSubfaction then
		Schema.RanksToSubfaction = {};
	end
	
	if !Schema.RanksToCoin then
		Schema.RanksToCoin = {};
	end
	
	Schema.Ranks["Pope Adyssa's Gatekeepers"] = {
		[1] = "DISCIPLE",
		[2] = "ACOLYTE",
		[3] = "EMISSARY",
		[4] = "HIGH-EMISSARY",
		[5] = "MASTER-AT-ARMS",
	};
	
	Schema.RankTiers["Pope Adyssa's Gatekeepers"] = {
		[1] = {"DISCIPLE"},
		[2] = {"ACOLYTE"},
		[3] = {"EMISSARY"},
		[4] = {"HIGH-EMISSARY"},
		[5] = {"MASTER-AT-ARMS"},
	};

	Schema.RanksToCoin["Pope Adyssa's Gatekeepers"] = {
		[1] = 25,
		[2] = 35,
		[3] = 50,
		[4] = 100,
		[5] = 200, 
	};
	
	-- Called when a player is transferred to the faction.
	function FACTION:OnTransferred(player, faction, name)
		if (faction.name != "Wanderer" and faction.name != "Holy Hierarchy") then
			if player:GetSubfaction() ~= "Kinisger" then
				return false;
			end
		end;
		
		-- It is the IC responsibility of Gatekeepers to bloodtest recruits.
		--[[if player:GetFaith() ~= "Faith of the Light" or player:GetSubfaith() == "Voltism" then
			return false;
		end]]--
		
		if (!Clockwork.player:IsWhitelisted(player, "Pope Adyssa's Gatekeepers")) then
			Clockwork.player:SetWhitelisted(player, "Pope Adyssa's Gatekeepers", true);
		end;
	end;
	
	-- Called when a player's name should be assigned for the faction.
	function FACTION:GetNameCharCreation(name, rank, rankOverride)
		if !rank then
			return "GATEKEEPER-DISCIPLE."..name;
		end

		if rankOverride then
			return "GATEKEEPER-"..rankOverride.."."..name;
		end

		return "GATEKEEPER-"..Schema.Ranks["Pope Adyssa's Gatekeepers"][rank or 1].."."..name;
	end;
	
	-- Called when a player's name should be assigned for the faction.
	function FACTION:GetName(player, bNew)
		if bNew or !player:GetCharacterData("rank") then
			return Clockwork.kernel:ZeroNumberToDigits(math.random(1, 99999), 5);
		end
	
		local name = player:Name();
		local rankOverride = player:GetCharacterData("rankOverride");
		
		if !tonumber(name) then
			Clockwork.player:SetName(player, Clockwork.kernel:ZeroNumberToDigits(math.random(1, 99999), 5));
			name = player:Name();
		end

		if rankOverride then
			return "GATEKEEPER-"..rankOverride.."."..name;
		end
		
		local rank = math.Clamp(player:GetCharacterData("rank", 1), 1, #Schema.Ranks["Pope Adyssa's Gatekeepers"]);

		if (rank and isnumber(rank) and Schema.Ranks["Pope Adyssa's Gatekeepers"][rank]) then
			return "GATEKEEPER-"..Schema.Ranks["Pope Adyssa's Gatekeepers"][rank].."."..name;
		end;
	end;
FACTION_GATEKEEPER_ADYSSA = FACTION:Register();

-- For Scraptown Map Change Change Event.
local FACTION = Clockwork.faction:New("The Third Inquisition");
	FACTION.whitelist = true;
	FACTION.useFullName = false;
	FACTION.disabled = true; -- For events.
	FACTION.hidden = true;
	FACTION.material = "begotten/faction/faction_logo_gatekeepers_adyssa";
	FACTION.color = Color(225, 175, 0);
	FACTION.description = "From the ashes of the Town of Light comes a third Inquisition, loyal in memoriam to Pope Adyssa. \nTheir goal is to unseat the false pope Aratakrast and put an end to his court's decadence. \nThey seek to civilize the County Districts through holy powder and steel, and thus fight on. \nYet, it is unlikely that this junior insurrection will succeed against the raging inferno of barbarism and apocalypse.";
	FACTION.availablefaiths = {"Faith of the Light"};
	FACTION.singleGender = GENDER_MALE;
	FACTION.characterLimit = 1; -- # of characters of this faction a player can have.
	FACTION.names = "glazic";
	FACTION.imposters = true;
	
	-- Called when a player is transferred to the faction.
	function FACTION:OnTransferred(player, faction, name)
		if (faction.name != "Wanderer" and faction.name != "Holy Hierarchy" and faction.name != "Gatekeeper") then
			return false;
		end;
		
		if player:GetFaith() ~= "Faith of the Light" or player:GetSubfaith() == "Voltism" then
			return false;
		end
		
		if (!Clockwork.player:IsWhitelisted(player, "The Third Inquisition")) then
			Clockwork.player:SetWhitelisted(player, "The Third Inquisition", true);
		end;
	end;
FACTION_THIRD_INQUISITION = FACTION:Register();

local FACTION = Clockwork.faction:New("Smog City Pirate");
	FACTION.whitelist = true;
	FACTION.useFullName = false;
	FACTION.disabled = true; -- For events.
	FACTION.hidden = true;
	FACTION.material = "begotten/faction/faction_logo_scrappers";
	FACTION.color = Color(92, 64, 51);
	FACTION.description = "The dreaded denizens of Smog City, a place of machines and misery. \nSworn to build a Mechanical God, the pirate slavers command a disposable workforce of Wanderers to construct this terrible titan. \nThe divided backgrounds and conflictions of faith bring forth infighting within the ranks of the Pirates. \nOnly under the iron fist of their King are the gangs put in line.";
	FACTION.availablefaiths = {"Faith of the Light", "Faith of the Family", "Faith of the Dark"};
	FACTION.subfactions = {
		{name = "Machinists", subtitle = "Brutal Scrappers and Slavers", description = "It it said that the foul stench of the scrapper machinists, that of rotting meat and gunpowder, can be smelled for miles around. The Scrappers align themselves with the most powerful and use faith as a means to become stronger than their peers. They are scavengers, slavers, and above all else, human cockroaches.", attributes = {{Color(0, 225, 0), "(+) Hardened Savages: +30 maximum health"}, {Color(0, 225, 0), "(+) Starts at Sacrament Level 8"}, {Color(225, 0, 0), "(-) The Voltist subfaith tree is locked and cannot be progressed!"}}},
		{name = "Voltists", subtitle = "Technological Fanatics & Transhumanists", description = "The Electrozombified of the Smog City Pirates think themselves above the struggle and desire that their brothers have fallen to. They see to the whims of the Program - a technological device above human understanding - and seek to combine its intelligence with the Mechanical God whence it is constructed.", attributes = {{Color(0, 225, 0), "(+) Starts at Sacrament Level 11, with 'Voltism' unlocked"}}},
	};
	FACTION.singleGender = GENDER_MALE;
	FACTION.characterLimit = 1; -- # of characters of this faction a player can have.
	FACTION.names = "glazic";
	FACTION.imposters = true;
	
	-- Called when a player is transferred to the faction.
	function FACTION:OnTransferred(player, faction, name)
		if (faction.name ~= "Wanderer") then
			return false;
		end;
		
		if (!Clockwork.player:IsWhitelisted(player, "Smog City Pirate")) then
			Clockwork.player:SetWhitelisted(player, "Smog City Pirate", true);
		end;
	end;
FACTION_SMOG_CITY_PIRATES = FACTION:Register();
