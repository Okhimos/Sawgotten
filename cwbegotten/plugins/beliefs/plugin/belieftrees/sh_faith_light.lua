--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local LIGHT = cwBeliefs.beliefTrees:New("light")
	LIGHT.name = "Faith of the Light";
	LIGHT.color = Color(255, 215, 0);
	LIGHT.order = 7;
	LIGHT.size = {w = 771, h = 407};
	LIGHT.textures = {"light", "faithlightarrows"};
	LIGHT.headerFontOverride = "nov_IntroTextSmallaaafaa";
	LIGHT.tooltip = {
		{"Вера в Свет", LIGHT.color, "Civ5ToolTip4"},
		{"Каждая вера имеет уникальный набор навыков, открывающих способности персонажа, ритуалы и в целом улучшающих статистику в целом. Можно также разделиться на подконфессии, хотя открытое исповедание этих подконфессий может привести к тому, что ваш персонаж будет признан еретиком соответствующими религиозными властями.", Color(225, 200, 200)},
		{"\n\"Святой город Сияния во владениях Ада. Это мои два меча, которые нужно скрестить, действительно, на груди в решимости к последней цели. В бьющемся сердце щитов.\"", Color(128, 90, 90, 240)},
		{"", Color(50, 255, 50)}
	};
	LIGHT.columnPositions = {
		[1] = (LIGHT.size.w - 4) * 0.133,
		[2] = (LIGHT.size.w - 4) * 0.2,
		[3] = (LIGHT.size.w - 4) * 0.266,
		[4] = (LIGHT.size.w - 4) * 0.433,
		[5] = (LIGHT.size.w - 4) * 0.5,
		[6] = (LIGHT.size.w - 4) * 0.566,
		[7] = (LIGHT.size.w - 4) * 0.733,
		[8] = (LIGHT.size.w - 4) * 0.8,
		[9] = (LIGHT.size.w - 4) * 0.866,
	};
	LIGHT.rowPositions = {
		[1] = (LIGHT.size.h - 4) * 0.3,
		[2] = (LIGHT.size.h - 4) * 0.5,
		[3] = (LIGHT.size.h - 4) * 0.7,
		[4] = (LIGHT.size.h - 4) * 0.9,
	};
	
	LIGHT.lockedSubfactions = {"Clan Grock"};
	LIGHT.requiredFaiths = {"Faith of the Light"};
	
	-- First index is column.
	LIGHT.beliefs = {
		[1] = {
			["repentant"] = {
				name = "Раскаявшийся",
				subfaith = "Sol Orthodoxy",
				description = "Открывает ритуалы «Вера Света» уровня I. Открывает возможность экипировать доспехи и жертвенное оружие Солнечного Православия, а также возможность использовать одноручное оружие в двух руках.",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Holy Hierarchy"},
				lockedSubfactions = {"Praeventor"},
				requirements = {"sol_orthodoxy"},
				row = 2,
			},
			["flagellant"] = {
				name = "Флагеллант",
				subfaith = "Sol Orthodoxy",
				description = "Открывает ритуалы «Вера Света» II уровня. Открывает возможность самобичевания. Удвоенный урон, нанесенный вам бичеванием, будет возвращен в виде выносливости, а треть урона восстановит ваше здравомыслие.",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Holy Hierarchy"},
				lockedSubfactions = {"Praeventor"},
				requirements = {"sol_orthodoxy", "repentant"},
				row = 3,
			},
			["extinctionist"] = {
				name = "Экстинкционист",
				subfaith = "Sol Orthodoxy",
				description = "Открывает ритуалы «Вера Света» уровня III и уникальные ритуалы Солнечного Православия. Пока вы горите, ваши атаки ближнего боя подожгут любого пораженного врага, даже если он блокирует (не считая отражений/парирований)..",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Holy Hierarchy"},
				lockedSubfactions = {"Praeventor"},
				requirements = {"sol_orthodoxy", "repentant", "flagellant"},
				row = 4,
			},
		},
		[2] = {
			["sol_orthodoxy"] = {
				name = "Солнечное Православие",
				subfaith = "Sol Orthodoxy",
				description = "Выбирая «Солнечное Православие» в качестве вашей субконфессии, разблокирует возможность молиться. Разблокирует возможность совершить самоубийство. Разблокирует прирост веры за каждую единицу нанесенного вам урона. Прирост веры из всех источников будет немного увеличен, если ваши значения голода или жажды ниже 40%, и тем более, если оба ниже.",
				quote = "Солнечное Православие — это искажение традиционных верований Стойкого Сияния. Оно гласит, что ни одно смертное существо не достигнет просветления, пока оно дышит. Людей призывают раскаяться в ужасной греховной природе, которую они проявляют, посредством бичевания и даже самоубийства. Сияния снова покажется, но только тогда, когда не будет живых глаз, которые могли бы его осквернить.",
				iconOverride = "begotten/ui/belieficons/faith-traditionalist.png",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Holy Hierarchy"},
				lockedSubfactions = {"Praeventor"},
				row = 1,
			},
		},
		[3] = {
			["prison_of_flesh"] = {
				name = "В Тюрьме из Плоти",
				subfaith = "Sol Orthodoxy",
				description = "Получение урона от любого источника урона, начиная с минимума в 10 единиц урона, уменьшит порчу на половину полученного урона. Если одержим, порча не будет уменьшена, пока не превысит 50%.",
				quote = "\"Пусть демоны придут в эту тюрьму плоти! Я накажу их, покажу им агонию и никогда не уступлю их желаниям!\"",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Holy Hierarchy"},
				lockedSubfactions = {"Praeventor"},
				requirements = {"sol_orthodoxy"},
				row = 2,
			},
			["purity_afloat"] = {
				name = "Чистота на Плаву",
				subfaith = "Sol Orthodoxy",
				description = "Увеличивает скорость передвижения максимум на 20% (при 25% здоровья) по мере снижения вашего здоровья. Увеличение скорости передвижения Тяжелой брони ограничено +15%.",
				quote = "\"Сбрось оковы материального. Обнажись и будь правдивым. Откажись и пусти чистоту на плаву.\"",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Holy Hierarchy"},
				lockedSubfactions = {"Praeventor"},
				requirements = {"sol_orthodoxy", "prison_of_flesh"},
				row = 3,
			},
			["fanaticism"] = {
				name = "Фанатик",
				subfaith = "Sol Orthodoxy",
				description = "Увеличивает урон от ближнего боя, выносливости и устойчивости максимум на 40% (при 10% здоровья) по мере снижения вашего здоровья.",
				quote = "\"ЧИСТОТА ЧЕРЕЗ БОЛЬ! УНИЧТОЖЕНИЕ ЧЕРЕЗ ЖЕРТВОПРИНОШЕНИЕ! КОЛОКОЛА ЗВОНЯТ ПО ВСЕМ!\"",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Holy Hierarchy"},
				lockedSubfactions = {"Praeventor"},
				requirements = {"sol_orthodoxy", "prison_of_flesh", "purity_afloat"},
				row = 4,
			},
		},
		[4] = {
			["disciple"] = {
				name = "Прихожанин",
				subfaith = "Hard-Glazed",
				description = "Открывает ритуалы I уровня «Вера в Свет». Увеличивает шанс найти монет в контейнерах с добычей в Пустоши.",
				requirements = {"hard_glazed"},
				row = 2,
			},
			["acolyte"] = {
				name = "Молящаяся Рука",
				subfaith = "Hard-Glazed",
				description = "Открывает ритуалы II уровня «Вера в Свет». Увеличивает прирост рассудка от нахождения рядом с огнем.",
				requirements = {"hard_glazed", "disciple"},
				row = 3,
			},
			["emissary"] = {
				name = "Узревший Святой Свет",
				subfaith = "Hard-Glazed",
				description = "Открывает ритуалы III уровня «Вера в Свет» и уникальные ритуалы «Стойкого Сияния». Также открывает возможность выплавлять максимилианскую сталь (только если также разблокирован «Мастер-Кузнец»).",
				requirements = {"hard_glazed", "disciple", "acolyte"},
				row = 4,
			},
		},
		[5] = {
			["hard_glazed"] = {
				name = "Стойкое Сияние",
				subfaith = "Hard-Glazed",
				description = "Выбирая «Стойкое Сияние» в качестве субконфессии, разблокируйте возможность молиться. Также получайте дополнительную веру от пожертвований Монет в Кассу.",
				quote = "Целомудрие и милостыня являются основными принципами идеологии Стойкого Сияния. Все отдано Святой Иерархии, и следует ожидать только скучной жизни, полной тяжких трудов во имя твоего Министра. Однако те следуют Манифесту понимают, что на его страницах сокрыт ключ к небесному вознесению.",
				iconOverride = "begotten/ui/belieficons/faith-glaze.png",
				row = 1,
			},
		},
		[6] = {
			["the_light"] = {
				name = "Вспышка",
				subfaith = "Hard-Glazed",
				description = "Разблокирует возможность экипировать определенное жертвенное оружие «Стойкого Сияния». Все оружие ближнего боя, арбалетные болты и метательные предметы теперь наносят на 15% больше бронебойного урона.",
				quote = "\"Сияние — это свет... это истина — ты не можешь увидеть ее в перспективе, поскольку она — это ты; твоя глупость, величие, твоя сила...\"",
				requirements = {"hard_glazed"},
				row = 2,
			},
			["blessed_powder"] = {
				name = "Священный Порох",
				subfaith = "Hard-Glazed",
				description = "Все огнестрельное оружие теперь наносит на 25% больше урона.",
				quote = "Лорд Максимус крикнул громовым голосом: «Дайте им сталь!», и сталь была дана.",
				iconOverride = "begotten/ui/belieficons/blessed_powder2.png",
				requirements = {"hard_glazed", "the_light"},
				row = 3,
			},
			["manifesto"] = {
				name = "Все Согласно Манифесту",
				subfaith = "Hard-Glazed",
				description = "Теперь вы наносите на 20% больше урона персонажам другой Веры, но наносите на 10% меньше урона персонажам той же Веры. Заменяет эффект атрибута «Заземленный» на оружии ближнего боя, чтобы наносить на 60% меньше урона в ближнем бою во время спринта вместо запрета атак в ближнем бою во время спринта.",
				quote = "\"Есть только Сияние. И трупы ублюдков, конечно!\"",
				iconOverride = "begotten/ui/belieficons/loremaster.png",
				requirements = {"hard_glazed", "the_light", "blessed_powder"},
				row = 4,
			},
		},
		[7] = {
			["wire_therapy"] = {
				name = "Проводная Терапия",
				subfaith = "Voltism",
				description = "Разблокирует возможность Ретрансляции для отправки сообщений всем остальным Вольтистам по всему миру. Разблокирует рецепты крафта Уровня I «Вольтистов».",
				quote = "Looks like Shaye needs to spend more time on the wires.",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Gatekeeper", "Holy Hierarchy"},
				lockedSubfactions = {"Machinist"};
				requirements = {"voltism"},
				row = 2,
			},
			["jacobs_ladder"] = {
				name = "Лестница Иакова",
				subfaith = "Voltism",
				description = "Разблокирует рецепты крафта «Вольтистов» уровня II. Разблокирует возможность потреблять Микросхемы, что уменьшает порчу и увеличивает вашу энергию, а также обеспечивает значительным количеством веры (Опытом). Преимущества от потребления Микросхем зависят от состояния предмета. Снижает максимальное здоровье на 5 единиц.",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Gatekeeper", "Holy Hierarchy"},
				lockedSubfactions = {"Machinist"};
				requirements = {"voltism", "wire_therapy"},
				row = 3,
			},
			["the_paradox_riddle_equation"] = {
				name = "Уравнение Загадочного Парадокса",
				subfaith = "Voltism",
				description = "Открывает рецепты крафта «Вольтистов» уровня III. На этом этапе вы не сможете нормально, так как ваш голос навсегда изменится. Открывает возможность применять Микросхемы к конечностям, чтобы полностью исцелять их от травм. Предоставляет иммунитет ко всем болезням. Нахождение в любом водоеме, под дождем или употребление воды теперь нанесет вам большой урон электричеством. Снижает максимальное здоровье на 5 единиц.",
				quote = "\"Уравнение загадочного парадокса, или парадокс Мозгоебки, относится к ужасному событию в истории Святой Иерархии. Болезнь разума, которая возникла как простой набор вопросов и математических уравнений, распространилась среди знатных домов и сеяла хаос по всем Дистриктам в течение шести лет. Отмечено, что мраморные дворцы Дистрикта Один были покрыты красными пятнами в результате того, что знатные особы бились головами о стены от разочарования и полного замешательства. Это, возможно, единственная «чума» в истории Святой Иерархии, которая затронула только высшие классы, поскольку простые люди были в блаженном неведении о далеко идущих указаниях, которые пришли с Загадочным Уравнением, поскольку, конечно, они были слишком глупы, чтобы понять его. Уравнение загадочного парадокса с тех пор было вычеркнуто из памяти Сияния властями, но недавно оно было освещено в новом свете вольтистами, которые утверждают, что нашли ответ — ценой своей человечности.\"",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Gatekeeper", "Holy Hierarchy"},
				lockedSubfactions = {"Machinist"};
				requirements = {"voltism", "wire_therapy", "jacobs_ladder"},
				row = 4,
			},
		},
		[8] = {
			["voltism"] = {
				name = "Вольтизм",
				subfaith = "Voltism",
				description = "Выбирает «Вольтизм» в качестве вашей подверы. Разблокирует возможность молиться. Разблокирует способность «Самоэлектрошок» для обретения здравомыслия. Получайте больше веры от убийства персонажей подвер «Стойкого Сияния» или «Православия Сола».",
				quote = "Заражение, стремящееся поглотить Свет изнутри, — так министры Святой Иерархии описали бы Вольтизм. Крупный культ без цепочки командования, который ищет технологии и просветление через трансгуманизм. Они постепенно заменяют свое тело машиной и стимулируют свой разум электрическими разрядами. Их истинные мотивы или их лидер остаются неизвестными.",
				iconOverride = "begotten/ui/belieficons/faith-volt.png",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Gatekeeper", "Holy Hierarchy"},
				lockedSubfactions = {"Machinist"};
				row = 1,
			},
		},
		[9] = {
			["wriggle_fucking_eel"] = {
				name = "Извивайся как Ебучий Угорь",
				subfaith = "Voltism",
				description = "Самоэлектрошок теперь прижигает кровотечение и уменьшает усталость и порчу. Открывает возможность использовать оружие вольтистов.",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Gatekeeper", "Holy Hierarchy"},
				lockedSubfactions = {"Machinist"};
				requirements = {"voltism"},
				row = 2,
			},
			["yellow_and_black"] = {
				name = "Желтое и Черное",
				subfaith = "Voltism",
				description = "Разблокирует возможность экипировать оружие и экзоскелеты Вольтистов. Вы больше не подвержены голоду и жажде. Вместо этого ваш показатель усталости начнет наносить вам урон, если его не контролировать. Вы можете уменьшить усталость только с помощью электрошока или потребления Микросхем. Снижает максимальный запас здоровья на 5 единиц. ",
				quote = "\"Слышишь гул? П-прижми лицо к колючей проволоке! Обрати внимание на желто-черный баннер...\"",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Gatekeeper", "Holy Hierarchy"},
				lockedSubfactions = {"Machinist"};
				requirements = {"voltism", "wriggle_fucking_eel"},
				row = 3,
			},
			["the_storm"] = {
				name = "Шторм",
				subfaith = "Voltism",
				description = "На этом этапе вы не сможете нормально общаться, так как ваш голос навсегда изменится. Атаки электрическим уроном от оружия Вольтистов теперь наносят повышенный урон и урон по стабильности врагам в металлической броне, причем тем больше урона наносится, чем тяжелее броня, а также врагам, находящимся под дождем. Нахождение в любом водоеме, стояние под дождем или употребление воды теперь нанесет вам большой урон электричеством. Снижает максимальное здоровье на 5 единиц.",
				quote = "\"МИСТЕР ЭЛЕКТРИК ВЕРНЕТСЯ ЗА НАМИ!\"",
				lockedFactions = {"Pope Adyssa's Gatekeepers", "Gatekeeper", "Holy Hierarchy"},
				lockedSubfactions = {"Machinist"};
				requirements = {"voltism", "wriggle_fucking_eel", "yellow_and_black"},
				row = 4,
			},
		},
	};
cwBeliefs.beliefTrees:Register(LIGHT)