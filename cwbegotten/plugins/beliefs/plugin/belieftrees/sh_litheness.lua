--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local LITHENESS = cwBeliefs.beliefTrees:New("litheness")
	LITHENESS.name = "Ловкость";
	LITHENESS.color = Color(100, 70, 70);
	LITHENESS.order = 4;
	LITHENESS.size = {w = 258, h = 407};
	LITHENESS.textures = {"litheness", "lithenessarrows"};
	LITHENESS.tooltip = {
		{"Ловкость", LITHENESS.color, "Civ5ToolTip4"},
		{"Гибкость — это мера уклончивости и коварства вашего персонажа, а также его гибкости и скорости. Улучшение этого дерева убеждений позволит вашему персонажу стать мастером скрытности, воровства и обмана, а также увеличить скорость спринта и разблокировать уклонения.", Color(225, 200, 200)},
		{"\n\"Сдирайте кожу с глупца, который колеблется в своем шаге. Пусть бегут голые, обнажив плоть, пока теневые глаза бросают суд на их вялую скорость.\"", Color(128, 90, 90, 240)},
		{"\nБонус за завершение Дерева Верований: +5% к скорости бега и +25 к максимальным очкам устойчивости.", Color(50, 255, 50)}
	};
	LITHENESS.columnPositions = {
		[1] = (LITHENESS.size.w - 4) * 0.3,
		[2] = (LITHENESS.size.w - 4) * 0.5,
		[3] = (LITHENESS.size.w - 4) * 0.7,
	};
	LITHENESS.rowPositions = {
		[1] = (LITHENESS.size.h - 4) * 0.3,
		[2] = (LITHENESS.size.h - 4) * 0.5,
		[3] = (LITHENESS.size.h - 4) * 0.7,
		[4] = (LITHENESS.size.h - 4) * 0.9,
	};
	
	LITHENESS.hasFinisher = true;
	
	-- First index is column.
	LITHENESS.beliefs = {
		[1] = {
			["sly_fidget"] = {
				name = "Хитрый Непоседа",
				description = "Открывает механику «Взлома».",
				requirements = {"nimble"},
				row = 2,
			},
			["safecracker"] = {
				name = "Взломщик Сейфов",
				description = "Теперь вы можете вскрывать замки уровня III.",
				requirements = {"nimble", "sly_fidget"},
				row = 3,
			},
			["thief"] = {
				name = "Домушник",
				description = "Взломать замки теперь стало проще.",
				quote = "Крепостной трудится, а вор получает все..",
				requirements = {"nimble", "sly_fidget", "safecracker"},
				row = 4,
			},
		},
		[2] = {
			["nimble"] = {
				name = "Лёгкий Шаг",
				description = "Движение в приседе теперь тихое и быстрое. Уменьшает дальность, на которой рабы могут видеть вас в приседе.",
				row = 1,
			},
		},
		[3] = {
			["evasion"] = {
				name = "Кувырок",
				description = "Разблокирует способность «Перекат», который дает момент неуязвимости в зависимости от веса надетой брони, а также может тушить пожары.",
				requirements = {"nimble"},
				row = 2,
			},
			["dexterity"] = {
				name = "Ловкий",
				description = "Все действия на шкале прогресса, включая поднятие оружия, перезарядку и вставание, теперь выполняются на 33% быстрее.",
				requirements = {"nimble", "evasion"},
				row = 3,
			},
			["swift"] = {
				name = "Бегун",
				description = "Спринт теперь на 10% быстрее.",
				requirements = {"nimble", "evasion", "dexterity"},
				quote = "Быстрые ноги люлей не боятся...",
				row = 4,
			},
		},
	};
cwBeliefs.beliefTrees:Register(LITHENESS)