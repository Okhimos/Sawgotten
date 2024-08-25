--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local APTITUDE = cwBeliefs.beliefTrees:New("aptitude")
	APTITUDE.name = "Образованность";
	APTITUDE.color = Color(107, 92, 77)
	APTITUDE.order = 8;
	APTITUDE.size = {w = 378, h = 407};
	APTITUDE.textures = {"aptitude", "aptitudearrows"};
	APTITUDE.tooltip = {
		{"Образованность", APTITUDE.color, "Civ5ToolTip4"},
		{"Образованность — это мера интеллекта вашего персонажа, влияющая на его грамотность, эффективность в алхимии и эффективность в качестве целителя. Улучшение этого набора убеждений откроет новые способы обучения и адаптации, пути становления искусным врачом или алхимиком, а также разблокирует способность читать.", Color(225, 200, 200)},
		{"\n\"Не портьте наследие Стойкого Сияния, если вы не в силах поддерживать код.\"\nЕе голос был не ропотом, а смелым вызовом всем, кто выступал против.\n\"Это было последнее свидетельство? Трансцендентность приблизила меня, резонируя в луче вновь обретенной надежды всемогущего Бога.\"", Color(128, 90, 90, 240)},
		{"\nБонус за завершение древа верований: +75% к приросту веры из всех источников.", Color(50, 255, 50)},
	};
	APTITUDE.columnPositions = {
		[1] = (APTITUDE.size.w - 4) * 0.1,
		[2] = (APTITUDE.size.w - 4) * 0.3,
		[3] = (APTITUDE.size.w - 4) * 0.5,
		[4] = (APTITUDE.size.w - 4) * 0.7,
		[5] = (APTITUDE.size.w - 4) * 0.9,
	};
	APTITUDE.rowPositions = {
		[1] = (APTITUDE.size.h - 4) * 0.3,
		[2] = (APTITUDE.size.h - 4) * 0.5,
		[3] = (APTITUDE.size.h - 4) * 0.7,
		[4] = (APTITUDE.size.h - 4) * 0.9,
	};
	
	APTITUDE.hasFinisher = true;
	APTITUDE.lockedTraits = {"blind"};
	
	-- First index is column.
	APTITUDE.beliefs = {
		[1] = {
			["precise_measurements"] = {
				name =  "Precise Measurements",
				description = "It is now impossible to fail a concoction.",
				requirements = {"literacy", "alchemist"},
				row = 3,
				disabled = true,
			},
			["blood_nectar"] = {
				name = "Blood Nectar",
				description = "Your concoctions are now significantly more potent.",
				requirements = {"literacy", "alchemist", "precise_measurements"},
				row = 4,
				disabled = true,
			},
		},
		[2] = {
			["alchemist"] = {
				name = "Alchemist",
				description = "Unlocks the 'Alchemy' mechanic.",
				requirements = {"literacy"},
				row = 2,
				disabled = true,
			},
			["chemist"] = {
				name = "Chemist",
				description = "Unlocks Tier II concoctions.",
				requirements = {"literacy", "alchemist"},
				row = 3,
				disabled = true,
			},
			["scientist"] = {
				name = "Scientist",
				description = "Unlocks Tier III concoctions.",
				requirements = {"literacy", "alchemist", "chemist"},
				row = 4,
				disabled = true,
			},
		}, 
		[3] = {
			["literacy"] = {
				name = "Грамотный",
				description = "Открывает способность читать. Получайте некоторое количество веры за каждое уникальное прочитанное писание.",
				row = 1,
			},
			["scribe"] = {
				name = "Писарь",
				description = "Разблокирует возможность копировать писания. Получите некоторое количество веры за каждое уникальное скопированное писание (уменьшается вдвое для последующих копий).",
				requirements = {"literacy"},
				row = 2,
			},
			["anthropologist"] = {
				name = "Антрополог",
				description = "Открывает возможность читать и копировать Рунические, а также Темноземские тексты.",
				requirements = {"literacy", "scribe"},
				row = 3,
			},
			["loremaster"] = {
				name = "Ученый",
				description = "Увеличивает максимальный уровень таинства на 10, но блокирует древо навыков «Мастерство». Любые прозрения, вложенные в «Мастерство», будут возвращены.",
				quote = "Отбросьте свои желания. Отбросьте свой воинский дух. Вы — маяк знаний. Пусть молодые глупцы ссорятся и умирают. Станьте всезнающим, и мудрость станет вашим оружием.",
				requirements = {"literacy", "scribe", "anthropologist"},
				row = 4,
			},
		},
		[4] = {
			["sanitary"] = {
				name = "Санитария",
				description = "Значительно снижает вероятность заражения болезнями или инфекциями и полностью исключает риск заражения болезнями при работе с трупами.",
				quote = "Нездоровье ума — коренная причина безумия; нездоровье тела — коренная причина несчастья.",
				requirements = {"literacy"},
				row = 2,
			},
			["doctor"] = {
				name = "Доктор",
				description = "Открывает возможность диагностировать травмы пациента. Удваивает скорость лечения других персонажей, а также скорость применения хлороформа.",
				requirements = {"literacy", "sanitary"},
				row = 3,
			},
			["surgeon"] = {
				name = "Хирург",
				description = "Открывает возможность проводить операции по лечению сложных травм.",
				requirements = {"literacy", "sanitary", "doctor"},
				row = 4,
			},
		},
		[5] = {
			["medicine_man"] = {
				name = "Рожден Лечить",
				description = "Утраивает эффективность предметов лечения при использовании на других персонажах. Удваивает их эффективность для себя.",
				requirements = {"literacy", "sanitary"},
				row = 3,
			},
			["plague_doctor"] = {
				name = "Чумной Доктор",
				description = "Открывает возможность создания лекарства от Чумы Порожденных. Также открывает возможность создания костюма Чумного Доктора и его ношения.",
				requirements = {"literacy", "sanitary", "medicine_man"},
				row = 4,
			},
		},
	};
cwBeliefs.beliefTrees:Register(APTITUDE)