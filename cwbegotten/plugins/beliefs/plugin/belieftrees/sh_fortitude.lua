--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local FORTITUDE = cwBeliefs.beliefTrees:New("fortitude")
	FORTITUDE.name = "Стойкость";
	FORTITUDE.color = Color(150, 80, 60);
	FORTITUDE.order = 6;
	FORTITUDE.size = {w = 378, h = 407};
	FORTITUDE.textures = {"fortitude", "fortitudearrows"};
	FORTITUDE.tooltip = {
		{"Стойкость", FORTITUDE.color, "Civ5ToolTip4"},
		{"Стойкость — это мера умственной и физической устойчивости вашего персонажа, в первую очередь влияющая на его устойчивость к безумию, а также улучшающая его боевые способности за счет повышения переносимости боли..", Color(225, 200, 200)},
		{"\n\"Я создатель всего этого света, и теперь я распадаюсь на части без признания. Умирать без прославления — греховная природа, но Бог не пребывает в свете. Свет пребывает во тьме. Души начинаются через плоть. Разум размышляет внутри оболочек, которые не могут противостоять лжи, которая ничего не делает, кроме как неверно истолковывает все, чего мы достигли..\"", Color(128, 90, 90, 240)},
		{"\nБонус за завершение древа убеждений: +25% сопротивления урону по выносливости, +25% сопротивления урону по стабильности. Предоставляет сопротивление сбиванию с ног взрывом. Смертельные атаки теперь всегда будут приводить вас в критическое состояние", Color(50, 255, 50)},
	};
	FORTITUDE.columnPositions = {
		[1] = (FORTITUDE.size.w - 4) * 0.1,
		[2] = (FORTITUDE.size.w - 4) * 0.3,
		[3] = (FORTITUDE.size.w - 4) * 0.5,
		[4] = (FORTITUDE.size.w - 4) * 0.7,
		[5] = (FORTITUDE.size.w - 4) * 0.9,
	};
	FORTITUDE.rowPositions = {
		[1] = (FORTITUDE.size.h - 4) * 0.3,
		[2] = (FORTITUDE.size.h - 4) * 0.5,
		[3] = (FORTITUDE.size.h - 4) * 0.7,
		[4] = (FORTITUDE.size.h - 4) * 0.9,
	};
	
	FORTITUDE.hasFinisher = true;

	-- First index is column.
	FORTITUDE.beliefs = {
		[1] = {
			["asceticism"] = {
				name = "Аскетизм",
				description = "Голод и жажда теперь истощаются на 35% медленнее. Это также повлияет на усталость (энергию), если вы вольтист с убеждением «Желтое и черное».",
				row = 1,
			},
			["outlasting"] = {
				name = "Крепкие Ноги",
				description = "Уменьшает расход выносливости при беге на 25%.",
				lockedTraits = {"winded"},
				requirements = {"asceticism"},
				row = 2,
			},
		},
		[2] = {
			["prudence"] = {
				name = "Благоразумие",
				description = "Теперь рассудок истощается на 25% медленнее, а некоторые события меньше влияют на рассудок. Эффект рассудка от вражеских боевых кличей снижен на 50%.",
				row = 1,
			},
			["saintly_composure"] = {
				name = "Святое Самообладание",
				description = "Эффект низкого уровня рассудка значительно снижен, а влияние боевых кличей противника на ваше зрение также значительно снижено.",
				quote = "\"Благодаря божественному направлению и благородному наследию эти порожденные мысли не искушат меня.\"",
				requirements = {"prudence"},
				row = 2,
			},
			["lunar_repudiation"] = {
				name = "Лунное Отречение",
				description = "Дает иммунитет ко всем эффектам Кровавой Луны и вдвое снижает пассивную потерю рассудка ночью. Значительно снижает эффекты страха от траллов и вражеских доспехов.",
				requirements = {"prudence", "saintly_composure"},
				row = 3,
			},
		},
		[3] = {
			["hauberk"] = {
				name = "Тяжеловес",
				description = "Разблокирует возможность носить тяжелую броню.",
				row = 1,
			},
			["defender"] = {
				name = "Защитник",
				description = "Разблокирует возможность носить башенные щиты.",
				quote = "Дикари дрожали перед наступающей стеной стали.",
				requirements = {"hauberk"},
				row = 2,
			},
			["warden"] = {
				name = "Страж",
				description = "Все оружие ближнего боя и щиты теперь имеют дополнительно 15% сопротивления урону по выносливости.",
				requirements = {"hauberk", "defender"},
				row = 3,
			},
			["unburdened"] = {
				name = "Необремененный",
				description = "Значительно снижает штраф за движение для средней и тяжелой брони, включая перекатывание.",
				requirements = {"hauberk", "defender", "warden"},
				row = 4,
			},
		},
		[4] = {
			["believers_perseverance"] = {
				name = "Упорство Верующего",
				description = "Увеличивает продолжительность критического состояния на 300%.",
				quote = "\"Страдай молча и не выходи на свет; впереди еще много врагов, которых нужно убить!\"",
				row = 1,
			},
			["plenty_to_spill"] = {
				name = "Еще Целое Ведро",
				description = "Снижает скорость потери крови при кровотечении на 50%.",
				requirements = {"believers_perseverance"},
				row = 2,
			},
			["unyielding"] = {
				name = "Несгибаемый",
				description = "Увеличивает ваш максимальный запас здоровья на 25 единиц.",
				requirements = {"believers_perseverance", "plenty_to_spill"},
				row = 3,
			},
		},
		[5] = {
			["hide_of_steel"] = {
				name = "Шкура из Стали",
				description = "Снижает вероятность получения травм на 50%.",
				row = 1,
			},
			["iron_bones"] = {
				name = "Железные Кости",
				description = "Уменьшает урон, получаемый конечностями, на 33%.",
				requirements = {"hide_of_steel"},
				row = 2,
			},
		},
	};
cwBeliefs.beliefTrees:Register(FORTITUDE)