local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Бальная Маска"
	ITEM.model = "models/begotten/headgroup_props/ballroommask.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ballroom_mask_plebian.png"
	ITEM.concealsFace = true;
	ITEM.weight = 0.3
	ITEM.uniqueID = "ballroom_mask"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 1
	ITEM.headSuffix = "_satanist";
	ITEM.skin = 1
	ITEM.description = "Бальная маска для самого важного общественного мероприятия, в котором участвуют Дети Сатаны, - маскарада. Именно данный предмет простой простой и покрытый трещинами, что говорит об отсутствии социального статуса владельца."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	ITEM.faction = "Children of Satan";
	
	ITEM.conditionScale = 1.5 -- item degrades 1.5x faster with damage related condition loss
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Гравированная Бальная Маска"
	ITEM.model = "models/begotten/headgroup_props/ballroommask.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ballroom_mask.png"
	ITEM.concealsFace = true;
	ITEM.weight = 0.3
	ITEM.uniqueID = "ballroom_mask_ornate"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 2
	ITEM.headSuffix = "_satanist";
	ITEM.skin = 2
	ITEM.description = "Бальная маска для самого важного общественного мероприятия, в котором участвуют Дети Сатаны, - маскарада. Эта маска украшена золотой гравировкой - знак богатства и престижа."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	ITEM.faction = "Children of Satan";
	
	ITEM.conditionScale = 1.5 -- item degrades 1.5x faster with damage related condition loss
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Маска Череп"
	ITEM.model = "models/begotten/headgroup_props/skullshield.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/skullshield.png"
	ITEM.concealsFace = true;
	ITEM.weight = 1.5
	ITEM.uniqueID = "skullshield"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 3
	ITEM.headSuffix = "_satanist";
	ITEM.description = "Маска из мягких металлических пластин, надеваемая на лицо. Нечетко стилизована под человеческий череп. Внушительный предмет доспехов, встречающийся в рядах многих темных культов. Призрачная аура не позволит носить ее недостойным."
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/skullhelm";
	ITEM.faction = "Children of Satan";

	ITEM.conditionScale = 1.5 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 50
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.70; -- reduces slash damage by 30%
	ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "cloth"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Готический Латный Шлем"
	ITEM.model = "models/begotten/headgroup_props/vasso_helm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gothic_plate_helmet.png"
	ITEM.concealsFace = true;
	ITEM.weight = 1.5
	ITEM.uniqueID = "gothic_plate_helmet"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 1
	ITEM.description = "Готический пластинчатый шлем, принадлежащий единственному и неповторимому лорду Вассо."
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.faction = "Children of Satan";

	ITEM.conditionScale = 0 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 80
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
	ITEM.stabilityScale = 0.20; -- reduces stability damage by 80%
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Адский Шлем"
	ITEM.model = "models/begotten/headgroup_props/hellplatehelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/hellplate_helmet.png"
	ITEM.weight = 1.5
	ITEM.uniqueID = "hellplate_helmet"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 4
	ITEM.headSuffix = "_satanist";
	ITEM.description = "Когда-то этот шлем был достоен Белых Стражей и был символом Дома Филимаксио, но с тех пор они многократно переплавлялись в адском пламени, лишь отдаленно напоминая свою первоначальную форму. Ее существование - позор для Ордена Привратников и откровенная насмешка над Светом."
	ITEM.requireFaith = {"Faith of the Dark"};
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	ITEM.faction = "Children of Satan";

	ITEM.conditionScale = 1.5 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 75
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
	ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks"}};
ITEM:Register();