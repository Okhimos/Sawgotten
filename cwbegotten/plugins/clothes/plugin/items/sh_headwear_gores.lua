local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Горейский Шлем «Шагалакс»"
	ITEM.model = "models/begotten/headgroup_props/gore_helm5.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_black_steel_helm.png"
	ITEM.weight = 2
	ITEM.uniqueID = "gore_black_steel_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 5
	ITEM.headSuffix = "_gore";
	ITEM.description = "Почерневший стальной шлем, используемый многими Горами клана Шагалакс. Обеспечивает образцовую защиту."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/helmeyes";
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 75
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.65; -- reduces bullet damage by 35%
	ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Стража Древа"
	ITEM.model = "models/begotten/headgroup_props/gore_helm6.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_guardian_helm.png"
	ITEM.weight = 2
	ITEM.uniqueID = "gore_guardian_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 6
	ITEM.headSuffix = "_gore";
	ITEM.description = "Шипастый и рогатый стальной шлем, который обычно носят защитники Великого Древа. Он обеспечивает образцовую защиту."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/helmeyes";
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 60
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
	ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Капюшон Горов"
	ITEM.model = "models/begotten/headgroup_props/gore_hood1.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_hood.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "gore_hood"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 9
	ITEM.headSuffix = "_gore";
	ITEM.description = "Типичный капюшон, украшенный зубами убитых зверей. Ткань пахнет соленой морской водой."
	ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 15
	ITEM.hitParticle = "GlassImpact";
	ITEM.type = "cloth";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
	ITEM.slashScale = 0.90; -- reduces slash damage by 10%
	ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
	
	ITEM.components = {breakdownType = "breakdown", items = {"cloth"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Воина Горов"
	ITEM.model = "models/begotten/headgroup_props/gore_helm4.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_horned_helm.png"
	ITEM.weight = 1.5
	ITEM.uniqueID = "gore_horned_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 4
	ITEM.headSuffix = "_gore";
	ITEM.description = "Грубо сделанный рогатый шлем, который обычно носят дикие воины Клана Гор. Он обеспечивает разумную защиту."
	ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/helmeyes";
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 52
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.70; -- reduces slash damage by 30%
	ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
	ITEM.bulletScale = 0.60; -- reduces bullet damage by 40%
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Налетчика"
	ITEM.model = "models/begotten/headgroup_props/gore_helm2.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_raider_helm.png"
	ITEM.weight = 1.5
	ITEM.uniqueID = "gore_raider_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 2
	ITEM.headSuffix = "_gore";
	ITEM.description = "Компактный железный шлем с двумя небольшими рогами, который обычно носили морсие разбойники клана Харальд."
	ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 35
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
	ITEM.slashScale = 0.90; -- reduces slash damage by 10%
	ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Горейский Гребневой Шлем"
	ITEM.model = "models/begotten/headgroup_props/gore_helm1.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_ridge_helm.png"
	ITEM.weight = 1.5
	ITEM.uniqueID = "gore_ridge_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 1
	ITEM.headSuffix = "_gore";
	ITEM.description = "Железный шлем горейского происхождения, украшенный рунами Семьи."
	ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 55
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.70; -- reduces slash damage by 30%
	ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
	ITEM.bulletScale = 0.80; -- reduces bullet damage by 20%
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Ужасающий Шлем Горейского Минотавра"
	ITEM.model = "models/begotten/headgroup_props/gore_mino1.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_skull_helm.png"
	ITEM.weight = 1.5
	ITEM.concealsFace = true;
	ITEM.uniqueID = "gore_skull_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 10
	ITEM.headSuffix = "_gore";
	ITEM.description = "Череп убитого зверя, украшенный рогами и проклятыми племенными рунами. Этот предмет защиты вселяет в ваших врагов чувство надвигающейся гибели."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	ITEM.attributes = {"fear"};
	ITEM.overlay = "begotten/zomboverlay/skullhelm";
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 40
	ITEM.hitParticle = "GlassImpact";
	ITEM.type = "leather";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.75; -- reduces slash damage by 25%
	ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
	
	ITEM.components = {breakdownType = "meltdown", items = {"hide", "hide", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Рогатый Шлем Минотавра"
	ITEM.model = "models/begotten/headgroup_props/gore_mino2.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_skull_helm2.png"
	ITEM.weight = 1.5
	ITEM.concealsFace = true;
	ITEM.uniqueID = "gore_skull_helm2"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 11
	ITEM.headSuffix = "_gore";
	ITEM.description = "Череп убитого зверя, украшенный рогами и проклятыми племенными рунами. Этот предмет защиты вселяет в ваших врагов чувство надвигающейся гибели."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	ITEM.attributes = {"fear"};
	ITEM.overlay = "begotten/zomboverlay/skullhelm";

	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 40
	ITEM.hitParticle = "GlassImpact";
	ITEM.type = "leather";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.75; -- reduces slash damage by 25%
	ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
	
	ITEM.components = {breakdownType = "meltdown", items = {"hide", "hide", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Клана Ривер"
	ITEM.model = "models/begotten/headgroup_props/gore_helm3.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_spiked_helm.png"
	ITEM.weight = 1.0
	ITEM.uniqueID = "gore_spiked_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 3
	ITEM.headSuffix = "_gore";
	ITEM.description = "Бронзовый шлем с шипами, который носят многие Горы из клана Ривер."
	ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 35
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
	ITEM.slashScale = 0.90; -- reduces slash damage by 10%
	ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Отца"
	ITEM.model = "models/begotten/headgroups_props/scalehelmet.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/chosenarmor_helmet.png"
	ITEM.concealsFace = true;
	ITEM.weight = 1.5
	ITEM.uniqueID = "helm_of_the_father"
	ITEM.category = "Helms"
	ITEM.attributes = {"fear"};
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 12
	ITEM.headSuffix = "_gore";
	ITEM.description = "Ужасающий шлем из лучшей Шагалакской Стали, выполненный по образу Отца. Он достаточно внушителен, чтобы заставить любого человека почувствовать, что он находится в присутствии Бога."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";

	ITEM.conditionScale = 0 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 100
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.15; -- reduces bullet damage by 75%
	ITEM.stabilityScale = 0.20; -- reduces stability damage by 80%
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Гребневой шлем Шингара"
	ITEM.model = "models/begotten/headgroups_props/shingarhelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_ridge_helm.png"
	ITEM.concealsFace = true;
	ITEM.weight = 1.5
	ITEM.uniqueID = "shingar_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 1
	ITEM.headSuffix = "_gore";
	ITEM.description = "Практичный латный шлем, переживший множество сражений. Он изготовлен по индивидуальному заказу для Избранного Сына Шингара."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";

	ITEM.conditionScale = 0 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 100
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.15; -- reduces bullet damage by 75%
	ITEM.stabilityScale = 0.20; -- reduces stability damage by 80%
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Горейский Шлем «Шелом»"
	ITEM.model = "models/begotten/headgroups_props/lamellarridgehelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/lamellar_ridge_helm.png"
	ITEM.weight = 3
	ITEM.uniqueID = "gore_champion_ridge_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 7
	ITEM.headSuffix = "_gore";
	ITEM.description = "Стальной гребневый шлем, проверенный в бою. Только достойный Гор может носить его."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	ITEM.excludeSubfactions = {"Clan Grock"};
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 70
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.60; -- reduces bullet damage by 40%
	ITEM.stabilityScale = 0.60; -- reduces stability damage by 40%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Избранного"
	ITEM.uniqueID = "gore_champion_ridge_helm";
	ITEM.model = "models/begotten/headgroups_props/scalehelmet.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/chosenarmor_helmet.png"
	ITEM.weight = 2.5
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 12
	ITEM.headSuffix = "_gore";
	ITEM.description = "Шагалакский стальной шлем, украшенный латунными семейными символами."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	ITEM.excludeSubfactions = {"Clan Grock"};
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 80
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.60; -- reduces bullet damage by 40%
	ITEM.stabilityScale = 0.60; -- reduces stability damage by 40%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks", "leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Ривера Истязателя"
	ITEM.model = "models/begotten/headgroups_props/reaverplatehelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/reaver_plate_helm.png"
	ITEM.weight = 4.5
	ITEM.uniqueID = "reaver_despoiler_helm"
	ITEM.category = "Helms"
	ITEM.attributes = {"fear"};
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 8
	ITEM.headSuffix = "_gore";
	ITEM.description = "Садистский адский стальной шлем, украшенный человеческими костями и рогами демона. Он был проклят энергией каталистов, которая не позволяет его носить слабакам."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	ITEM.excludeSubfactions = {"Clan Grock", "Clan Gore", "Clan Crast", "Clan Harald", "Clan Shagalax"};
	
	ITEM.conditionScale = 1.2 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 75
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.50; -- reduces bullet damage by 50%
	ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "steel_chunks", "steel_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Ривера Мародера"
	ITEM.model = "models/begotten_apocalypse/items/reaver_marauder_helm.mdl"
	ITEM.iconoverride = "begotten/ui/itemicons/reaver_marauder_helm.png"
	ITEM.headReplacement = "models/begotten/heads/reaver_marauder_helmet.mdl";
	ITEM.weight = 1
	ITEM.uniqueID = "reaver_marauder_helm"
	ITEM.category = "Helms"
	ITEM.description = "Искусно сделанный спангенхельм с кольчужной бармицей под ним внушает страх жителям пустошей, поскольку это последнее, что они видят перед тем, как их отправят в Рабство."
	ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
	ITEM.excludeSubfactions = {"Clan Grock", "Clan Gore", "Clan Crast", "Clan Harald", "Clan Shagalax"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	ITEM.conditionScale = 0.8 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 65
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.65; -- reduces bullet damage by 35%
	ITEM.stabilityScale = 0.60; -- reduces stability damage by 40%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks", "leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Ривера Вожака"
	ITEM.model = "models/begotten_apocalypse/items/reaverchiefhelmet.mdl"
	ITEM.iconoverride = "materials/begotten_apocalypse/ui/itemicons/reaverchiefhelmet.png"
	ITEM.headReplacement = "models/begotten/heads/reaver_chief_helmet.mdl";
	ITEM.weight = 1
	ITEM.uniqueID = "reaver_drottinn_helm"
	ITEM.category = "Helms"
	ITEM.description = "Этот шлем из почерневшей адской стали принадлежит клану Ривер."
	ITEM.requireFaction = {"Goreic Warrior"};
	ITEM.excludeSubfactions = {"Clan Grock", "Clan Gore", "Clan Crast", "Clan Harald", "Clan Shagalax"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	ITEM.conditionScale = 0.8 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 70
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.50; -- reduces bullet damage by 50%
	ITEM.stabilityScale = 0.50; -- reduces stability damage by 50%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "leather"}};
ITEM:Register();