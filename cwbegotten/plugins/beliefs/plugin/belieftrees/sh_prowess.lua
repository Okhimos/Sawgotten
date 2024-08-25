--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local PROWESS = cwBeliefs.beliefTrees:New("prowess")
	PROWESS.name = "Мастерство";
	PROWESS.color = Color(150, 50, 20);
	PROWESS.order = 1;
	PROWESS.size = {w = 378, h = 407};
	PROWESS.textures = {"prowess", "prowessarrows"};
	PROWESS.tooltip = {
		{"Мастерство", PROWESS.color, "Civ5ToolTip4"},
		{"Мастерство — это мера физической силы вашего персонажа, в первую очередь влияющая на его эффективность в ближнем бою, а также на вместимость инвентаря.", Color(225, 200, 200)},
		{"\n\"Но затем он посетил Темное Королевство, и это была точка невозврата. Он почувствовал дрожь в запястье, которая проявилась в сотрясении. Его волокна теперь были шипами, его жидкости кипели. Он чувствовал, что он потеряет из виду истину, и он это сделал...\"", Color(128, 90, 90, 240)},
		{"\nБонус за завершение древа верований: +50% к вместимости инвентаря и +10% к урону в ближнем бою (суммируется с другими усилениями).", Color(50, 255, 50)}
	};
	PROWESS.columnPositions = {
		[1] = (PROWESS.size.w - 4) * 0.1,
		[2] = (PROWESS.size.w - 4) * 0.3,
		[3] = (PROWESS.size.w - 4) * 0.5,
		[4] = (PROWESS.size.w - 4) * 0.7,
		[5] = (PROWESS.size.w - 4) * 0.9,
	};
	PROWESS.rowPositions = {
		[1] = (PROWESS.size.h - 4) * 0.3,
		[2] = (PROWESS.size.h - 4) * 0.5,
		[3] = (PROWESS.size.h - 4) * 0.7,
		[4] = (PROWESS.size.h - 4) * 0.9,
	};
	
	PROWESS.hasFinisher = true;
	PROWESS.lockedBeliefs = {"loremaster"};
	PROWESS.lockedTraits = {"weak"};
	
	-- First index is column.
	PROWESS.beliefs = {
		[1] = {
			["halfsword_sway"] = {
				name = "Используя по Назначению",
				description = "Открывает возможность менять стойку для большинства видов оружия.",
				quote = "\"Малец, повторяю первый и последний раз. Своей ебучей заточкой, сколько не тыкай, доспех не пробьешь. Меть в щели и открытые участки тела, тогда победа будет за тобой.\"",
				requirements = {"fighter"},
				row = 2,
			},
			["blademaster"] = {
				name = "Заточенное Лезвие",
				description = "Все одноручное рубящее оружие и когти теперь наносят на 15% больше урона.",
				iconOverride = "begotten/ui/belieficons/swordsman.png",
				lockedSubfactions = {"Auxiliary"},
				requirements = {"fighter", "halfsword_sway"},
				row = 3,
			},
			["billman"] = {
				name = "Надёжный Хват",
				description = "Древковое оружие, копья, рапиры, арбалетные болты и метательное оружие теперь наносят на 20% больше урона от брони.",
				quote = "Вот так, да! Теперь понял, как держать свое чертовое оружие?!",
				lockedSubfactions = {"Auxiliary"},
				requirements = {"fighter", "halfsword_sway", "blademaster"},
				row = 4,
			},
		},
		[2] = {
			["parrying"] = {
				name = "Парирование",
				description = "Открывает способность «Парирование» для ближнего боя, которая позволяет вам парировать удары противника и наносить дополнительный урон.",
				requirements = {"fighter"},
				row = 2,
			},
			["repulsive_riposte"] = {
				name = "Сокрушительный Выпад",
				description = "Дает возможность парировать несколько целей с малым промежутком времени, увеличивая ваше активное окно парирования на 0,15 секунды каждый раз, когда вы соединяете парирование, что позволяет вам парировать нескольких противников с большей легкостью. Многократное парирование последовательно восстанавливает больше выносливости, чем больше целей вы парируете. Урон от атаки рипоста от успешных парирований увеличивается с 200% до 250%.";
				lockedSubfactions = {"Auxiliary"},
				requirements = {"fighter", "parrying"},
				row = 3,
			},
		},
		[3] = {
			["fighter"] = {
				name = "Ополченец",
				description = "Максимальная выносливость теперь увеличена на 10 единиц.",
				quote = "\"Подними копье, мальчик! Теперь ты будешь сражаться в армии Лорда.\"",
				row = 1,
			},
			["wrestle_subdue"] = {
				name = "Схватить и Удержать",
				description = "Открывает возможность поднимать противников, сбитых с ног в бою, даже когда они встают.",
				quote = "\"Потерял равновесие ?! Я втопчу тебя в грязь!\"",
				requirements = {"fighter"},
				row = 2,
			},
			["warrior"] = {
				name = "Пехотинец",
				description = "Максимальная выносливость теперь увеличена еще на 10 очков.",
				lockedSubfactions = {"Auxiliary"},
				requirements = {"fighter", "wrestle_subdue"},
				row = 3,
			},
			["master_at_arms"] = {
				name = "Ветеран",
				description = "Максимальная выносливость теперь увеличена еще на 15 очков.",
				lockedSubfactions = {"Auxiliary"},
				requirements = {"fighter", "wrestle_subdue", "warrior"},
				row = 4,
			},
		},
		[4] = {
			["deflection"] = {
				name = "Идеальный Блок",
				description = "Успешные отражения (идеальные блоки) теперь восстанавливают +15 очков выносливости и +5 очков устойчивости, а также предотвращают атаки противника как минимум на 1 секунду.",
				requirements = {"fighter"},
				row = 2,
			},
			["sidestep"] = {
				name = "Ошеломляя Врага",
				description = "Успешное отражение теперь восстанавливает +10 очков выносливости и устойчивости, а также предотвращает атаки противника на дополнительную секунду.",
				lockedSubfactions = {"Auxiliary"},
				requirements = {"fighter", "deflection"},
				row = 3,
			},
		},
		[5] = {
			["strength"] = {
				name = "Сильный",
				description = "Разблокирует возможность использовать тяжелое оружие. Предотвращает обезоруживание при получении урона при использовании метательного оружия в ближнем бою. Также разблокирует возможность перезарядки арбалетов.",
				requirements = {"fighter"},
				row = 2,
			},
			["might"] = {
				name = "Тяжелая Рука",
				description = "Увеличена вместимость инвентаря на 50%. Наносит на 15% больше урона стабильности всем оружием ближнего боя. Кулаки и кулаковое оружие теперь наносят на 20% больше урона.",
				quote = "\"Ты УНИЧТОЖУ тебя!\"",
				lockedSubfactions = {"Auxiliary"},
				requirements = {"fighter", "strength"},
				row = 3,
			},
			["unrelenting"] = {
				name = "Неумолимый",
				description = "Тяжелое оружие, косы и двуручное оружие теперь наносят на 10% больше урона. Все оружие ближнего боя теперь наносит на 25% больше урона выносливости. Убирает штраф к урону за поражение нескольких целей одним ударом.",
				lockedSubfactions = {"Auxiliary"},
				requirements = {"fighter", "strength", "might"},
				row = 4,
			},
		},
	};
cwBeliefs.beliefTrees:Register(PROWESS)