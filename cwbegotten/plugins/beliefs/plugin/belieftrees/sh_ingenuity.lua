--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local INGENUITY = cwBeliefs.beliefTrees:New("ingenuity")
	INGENUITY.name = "Смекалка";
	INGENUITY.color = Color(80, 70, 50);
	INGENUITY.order = 5;
	INGENUITY.size = {w = 378, h = 407};
	INGENUITY.textures = {"ingenuity", "ingenuityarrows"};
	INGENUITY.tooltip = {
		{"Смекалка", INGENUITY.color, "Civ5ToolTip4"},
		{"Смекалка — это мера мастерства вашего персонажа, в первую очередь влияющая на эффективность вашего персонажа в ремесле. Улучшение этого набора убеждений постепенно разблокирует больше возможностей для ремесла. Больше возможностей для ремесла может стать доступным, если этот набор убеждений сочетается с Сообразительностью.", Color(225, 200, 200)},
		{"\n\"Бобби весь гордый и довольный этим старым аппаратом в грузовике, который позволил ему получить хороший социальный статус, который был далек от статуса младшего. Это будет самая грустная машина, с патокой в ​​датчике мощности, а также математикой и административной тактикой.\"", Color(128, 90, 90, 240)},
		{"\nБонус за завершение древа верований: состояние брони и оружия больше не будет ухудшаться.", Color(50, 255, 50)}
	};
	INGENUITY.columnPositions = {
		[1] = (INGENUITY.size.w - 4) * 0.1,
		[2] = (INGENUITY.size.w - 4) * 0.3,
		[3] = (INGENUITY.size.w - 4) * 0.5,
		[4] = (INGENUITY.size.w - 4) * 0.7,
		[5] = (INGENUITY.size.w - 4) * 0.9,
	};
	INGENUITY.rowPositions = {
		[1] = (INGENUITY.size.h - 4) * 0.3,
		[2] = (INGENUITY.size.h - 4) * 0.5,
		[3] = (INGENUITY.size.h - 4) * 0.7,
		[4] = (INGENUITY.size.h - 4) * 0.9,
	};
	
	INGENUITY.hasFinisher = true;
	
	-- First index is column.
	INGENUITY.beliefs = {
		[1] = {
			["cookist"] = {
				name = "Повар",
				description = "Открывает возможность готовки.",
				requirements = {"ingenious"},
				row = 2,
			},
			["culinarian"] = {
				name = "Кулинар",
				description = "Открывает возможность готовить лучшую пищу.",
				requirements = {"ingenious", "cookist"},
				row = 3,
			},
		},
		[2] = {
			["powder_and_steel"] = {
				name = "Порох и Сталь",
				description = "Позволяет заряжать оружие.",
				quote = "Всемогущий создатель, божество, святость, идол мой. Дай мне силу, дух, верность с теми, кто был расформирован из моей армейской артиллерии. Божественный надзиратель, вселенские силы будьте со мной. И для этих демонов, дать отпор означает защитить Стойкое Сияние и общество от его неминуемой гибели. Выбросьте пока духовные трофеи и разгрузите боеприпасы, чтобы очистить этих неверных грешников. Запасайте взрывчатку, храните винтовки, храните транспортные средства, но, прежде всего, посадите в грязи соцветия общества Стойкого Сияния для будущих поколений.. - Лорд Максимус XII",
				iconOverride = "begotten/ui/belieficons/blessed_powder.png",
				lockedSubfactions = {"Knights of Sol", "Clan Gore", "Clan Crast", "Clan Reaver", "Clan Harald", "Clan Grock"},
				requirements = {"ingenious"},
				row = 2,
			},
			["pistolier"] = {
				name = "Очищенное Оружие",
				description = "Значительно снижает вероятность осечки для всех видов огнестрельного оружия и предотвращает его взрыв..",
				lockedSubfactions = {"Knights of Sol", "Clan Gore", "Clan Crast", "Clan Reaver", "Clan Harald", "Clan Grock"},
				requirements = {"ingenious", "powder_and_steel"},
				row = 3,
			},
			["marksman"] = {
				name = "Снайпер",
				description = "Значительно увеличивает точность стрельбы из всех арбалетов и огнестрельного оружия, при стрельбе стоя.",
				lockedSubfactions = {"Knights of Sol", "Clan Gore", "Clan Crast", "Clan Reaver", "Clan Harald", "Clan Grock"},
				requirements = {"ingenious", "powder_and_steel", "pistolier"},
				row = 4,
			},
		},
		[3] = {
			["ingenious"] = {
				name = "Смекалистый",
				description = "Разблокирует механику «Крафта» и возможность взаимодействовать с ловушками. Разблокирует возможность использовать фонари в качестве источника света на поясе.",
				row = 1,
			},
			["craftsman"] = {
				name = "Ремесленник",
				description = "Разблокирует II уровень крафта.",
				requirements = {"ingenious"},
				row = 2,
			},
			["mechanic"] = {
				name = "Механик",
				description = "Открывает III уровень крафта. Открывает возможность чинить не сломанные предметы, объединяя их в меню инвентаря..",
				requirements = {"ingenious", "craftsman"},
				row = 3,
			},
			["artisan"] = {
				name = "Специалист",
				description = "Открывает возможность создания шедевров. Также открывает возможность чинить сломанные предметы..",
				requirements = {"ingenious", "craftsman", "mechanic"},
				row = 4,
			},
		},
		[4] = {
			["smith"] = {
				name = "Подмастерье",
				description = "Разблокирует возможность плавить железо через крафт. Также разблокирует возможность плавить предметы.",
				iconOverride = "begotten/ui/belieficons/blacksmith.png",
				requirements = {"ingenious"},
				row = 2,
			},
			["blacksmith"] = {
				name = "Кузнец",
				description = "Разблокирует возможность плавить Сталь и Золото через крафт.",
				requirements = {"ingenious", "smith"},
				row = 3,
			},
			["master_blacksmith"] = {
				name = "Мастер-Кузнец",
				description = "Разблокирует возможность плавить отличную сталь.",
				iconOverride = "begotten/ui/belieficons/blacksmith.png",
				requirements = {"ingenious", "smith", "blacksmith"},
				row = 4,
			},
		},
		[5] = {
			["scour_the_rust"] = {
				name = "Соскреби Ржавчину",
				description = "Снижает ухудшение состояния брони и оружия на 50%.",
				requirements = {"ingenious"},
				row = 2,
			},
			["fortify_the_plate"] = {
				name = "Подгонка",
				description = "Увеличивает показатель защиты всей брони на 10 единиц.",
				iconOverride = "begotten/ui/belieficons/hauberk.png",
				requirements = {"ingenious", "scour_the_rust"},
				row = 3,
			},
		},
	};
cwBeliefs.beliefTrees:Register(INGENUITY)