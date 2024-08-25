--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local BRUTALITY = cwBeliefs.beliefTrees:New("brutality")
	BRUTALITY.name = "Жестокость";
	BRUTALITY.color = Color(150, 20, 20);
	BRUTALITY.order = 2;
	BRUTALITY.size = {w = 258, h = 407};
	BRUTALITY.textures = {"brutality", "brutalityarrows"};
	BRUTALITY.tooltip = {
		{"Жестокость", BRUTALITY.color, "Civ5ToolTip4"},
		{"Жестокость — это мера испорченности и ненависти вашего персонажа к человеку, в первую очередь влияющая на способность вашего персонажа к выживанию и разблокированию таких способностей, как каннибализм и сбор костей. Полная прокачка Жестокости сделает вашего персонажа гораздо более выживаемым, одновременно увеличивая ваши боевые способности в состоянии безумия.", Color(225, 200, 200)},
		{"\n\"Не будет изгнания для отстающих. Они почувствуют мой гнев. Я пронжу вилами их грязную плоть и соберу ее, превратив в пищу.\"", Color(128, 90, 90, 240)},
		{"\nБонус за завершение Древа Верований: Убийство другого персонажа мгновенно восстанавливает 3,5% вашего Здоровья, Выносливости и Устойчивости за каждый уровень таинства персонажа.", Color(50, 255, 50)}
	};
	BRUTALITY.columnPositions = {
		[1] = (BRUTALITY.size.w - 4) * 0.3,
		[2] = (BRUTALITY.size.w - 4) * 0.5,
		[3] = (BRUTALITY.size.w - 4) * 0.7,
	};
	BRUTALITY.rowPositions = {
		[1] = (BRUTALITY.size.h - 4) * 0.3,
		[2] = (BRUTALITY.size.h - 4) * 0.5,
		[3] = (BRUTALITY.size.h - 4) * 0.7,
		[4] = (BRUTALITY.size.h - 4) * 0.9,
	};
	
	BRUTALITY.hasFinisher = true;
	BRUTALITY.lockedTraits = {"pacifist"};
	
	-- First index is column.
	BRUTALITY.beliefs = {
		[1] = {
			["primeval"] = {
				name = "Потерявший Человечность",
				description = "Открывает механику «Свеживания», позволяющую собирать кости с трупов для использования в крафте. Разблокирует особые крафты.",
				requirements = {"savage"},
				row = 2,
			},
			["headtaker"] = {
				name = "Головорез",
				description = "Теперь вы наносите на 25% больше урона конечностям всеми типами урона. Открывает возможность обезглавливать персонажей с помощью смертельных ударов по голове рубящим оружием, которые наносят более 30 урона. Обезглавливание персонажей увеличит урон в ближнем бою на 20% в течении последующих 30 секунд.",
				iconOverride = "begotten/ui/belieficons/brutality.png",
				requirements = {"savage", "primeval"},
				row = 3,
			},
		},
		[2] = {
			["savage"] = {
				name = "Дикарь",
				description = "Разблокирует механику «Каннибализм». Мясо с трупов можно собирать для пропитания. Восстанавливайте рассудок, употребляя приготовленное человеческое мясо.",
				row = 1,
			},
			["savage_animal"] = {
				name = "Хищник",
				description = "Употребление сырой или испорченной пищи, а также питье грязной воды больше не имеет дает негативных эффектов. Также убирает потерю рассудка за поедание сердец.",
				quote = "\"Бойтесь того, кто вырвет ваше сердце, съест вашу плоть и наденет ваши кости. Ибо они — хищники, а мы — добыча!\"",
				requirements = {"savage", "primeval", "headtaker", "heart_eater", "bestial"},
				row = 4,
			},
		},
		[3] = {
			["heart_eater"] = {
				name = "Сердцеед",
				description = "Открывает возможность вырвать сердце у трупа и съесть его, чтобы утолить жажду.",
				iconOverride = "begotten/ui/belieficons/persistent_urges.png",
				requirements = {"savage"},
				row = 2,
			},
			["bestial"] = {
				name = "Одичавший",
				description = "При уровне рассудка 40% и ниже наносите на 10% больше урона любым оружием ближнего боя.",
				requirements = {"savage", "heart_eater"},
				row = 3,
			},
		},
	};
cwBeliefs.beliefTrees:Register(BRUTALITY)