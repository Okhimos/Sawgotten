local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Привратника"
	ITEM.uniqueID = "gatekeeper_helmet";
	ITEM.model = "models/begotten/headgroup_props/headgroup_gatekeeper_medhelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gatekeeper_helmet.png"
	ITEM.weight = 1.5
	ITEM.uniqueID = "gatekeeper_helmet"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 4
	ITEM.headSuffix = "_glaze";
	ITEM.description = "Железный шлем, массово производившийся в древности. В настоящее время широко используется Священным Орденом Привратников."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	ITEM.faction = "Gatekeeper";

	ITEM.conditionScale = 0.75 -- item degrades 1.5x faster with damage related condition loss

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
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Мученика"
	ITEM.uniqueID = "helm_of_atonement";
	ITEM.model = "models/begotten/headgroups_props/sol_bellhelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/helm_of_atonement.png"
	ITEM.weight = 4
	ITEM.uniqueID = "helm_of_atonement"
	ITEM.category = "Helms"
	ITEM.headReplacement = "models/begotten/heads/sol_bellhelm.mdl";
	ITEM.description = "Священный железный колокол, который должен быть постоянно закреплен на голове бичующего. Когда-то это был метод пыток и унижений; в колокол многократно били, оглушая и дезориентируя жертву. Теперь православие носит этот шлем охотно, вселяя страх в сердца здравомыслящих."
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/skullhelm";
	
	ITEM.attributes = {"conditionless", "not_unequippable", "deathknell", "fear"};
	ITEM.requiredbeliefs = {"repentant"};
	ITEM.kinisgerOverride = true;

	ITEM.conditionScale = 0

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 85
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.70; -- reduces slash damage by 30%
	ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%
	ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks"}};
	
	-- Called when a player has unequipped the item.
	function ITEM:OnPlayerUnequipped(player, extraData)
		Schema:EasyText(player, "peru", "This helmet is grafted into your skin and fused with your flesh, and cannot be unequipped!");
		return false;
	end
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Покаяния"
	ITEM.uniqueID = "helm_of_repentance";
	ITEM.model = "models/begotten/headgroups_props/sol_ironcladhelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/helm_of_repentance.png"
	ITEM.weight = 4
	ITEM.uniqueID = "helm_of_repentance"
	ITEM.category = "Helms"
	ITEM.headReplacement = "models/begotten/heads/sol_ironcladhelm.mdl";
	ITEM.description = "Железное орудие пыток, которое привинчивается к освежеванным лицам обвиняемых. Внутри шлема находятся различные окровавленные винты, которые можно затянуть еще сильнее, чтобы усилить агонию. Теперь его используют флагелланты Православия, которые носят этот пыточный инструмент, чтобы обеспечить себе постоянные страдания."
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/skullhelm";
	
	ITEM.attributes = {"conditionless", "not_unequippable", "bloodtoll", "fear"};
	ITEM.requiredbeliefs = {"repentant"};
	ITEM.kinisgerOverride = true;

	ITEM.conditionScale = 0

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 90
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.70; -- reduces slash damage by 30%
	ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%
	ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks"}};
	
	-- Called when a player has unequipped the item.
	function ITEM:OnPlayerUnequipped(player, extraData)
		Schema:EasyText(player, "peru", "This helmet is grafted into your skin and fused with your flesh, and cannot be unequipped!");
		return false;
	end
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Старого Солдата"
	ITEM.uniqueID = "old_soldier_helm";
	ITEM.model = "models/begotten/headgroups_props/morion.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/old_soldier_helm.png"
	ITEM.weight = 1
	ITEM.uniqueID = "old_soldier_helm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 8
	ITEM.headSuffix = "_wanderer";
	ITEM.description = "Ржавый железный шлем, который был известен в свое время как символ завоеваний Лорда Максимуса, а возможно, и во времена до этого. Его наклонные поверхности обеспечивают превосходную защиту, отражая удары."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";

	ITEM.conditionScale = 0.75 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 53
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.70; -- reduces slash damage by 30%
	ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Helms", rarity = 2000};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Грубый Латный Шлем Странника"
    ITEM.uniqueID = "wanderer_crude_plate_helm";
	ITEM.model = "models/begotten/headgroups_props/crudeplate_helmet.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/crude_plate_helm.png"
	ITEM.weight = 1.5
	ITEM.category = "Helms"
	ITEM.headReplacement = "models/begotten/heads/crudeplate_helmet.mdl";
	ITEM.description = "Грубо сделанный стальной шлем, дизайн которого, очевидно, вдохновлен более ранними вариантами шлемов из Империи Света."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";

	ITEM.conditionScale = 0.75 -- item degrades 1.5x faster with damage related condition loss

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
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks"}};
	ITEM.itemSpawnerInfo = {category = "Helms", rarity = 4000};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Капюшон"
	ITEM.model = "models/begotten/headgroup_props/headgroup_wanderer_hood.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/hood.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "hood"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 1
	ITEM.headSuffix = "_wanderer";
	ITEM.description = "Рваный капюшон, который обычно носят обитатели Пустоши, чтобы защитить себя от стихии."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	ITEM.itemSpawnerInfo = {category = "Helms", rarity = 300};
		
	ITEM.components = {breakdownType = "breakdown", items = {"cloth"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Капюшон с Маской"
	ITEM.model = "models/begotten/headgroup_props/headgroup_wanderer_hood2.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/hood_mask.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "hood_mask"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 2
	ITEM.headSuffix = "_wanderer";
	ITEM.description = "Рваный капюшон и бандана, которые обычно носят обитатели Пустоши, чтобы защитить себя от стихии."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	ITEM.itemSpawnerInfo = {category = "Helms", rarity = 800};
		
	ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Маска Людоеда"
	ITEM.model = "models/begotten/headgroups_props/skintape_helmet.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/skintape_mask.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "skintape_mask"
	ITEM.category = "Helms"
	ITEM.headReplacement = "models/begotten/heads/skintape_helmet.mdl";
	ITEM.description = "Ужасающее творение извращенного ума, эта маска сделана из лица съеденной жертвы. Хотя она имеет очень мало защитной ценности, она наверняка вселит страх в сердца будущих жертв владельца."
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	
	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 10;
	ITEM.hitParticle = "GlassImpact";
	ITEM.type = "leather";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
		
	ITEM.attributes = {"fear"};
	ITEM.components = {breakdownType = "breakdown", items = {"skingauze", "skintape", "skintape", "cloth"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шляпа Низшего Уезда"
	ITEM.model = "models/begotten/headgroup_props/headgroup_emp_witch_hunter_hat_01.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_hat_1.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "inquisitor_hat_1"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 1
	ITEM.headSuffix = "_glaze";
	ITEM.description = "Высокая кожаная шляпа, украшенная вышитыми знаками Второй инквизиции."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	ITEM.itemSpawnerInfo = {category = "Helms", rarity = 350, bNoSupercrate = true};
	
	ITEM.components = {breakdownType = "breakdown", items = {"leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шляпа Инквизитора"
	ITEM.model = "models/begotten/headgroup_props/headgroup_emp_witch_hunter_hat_02.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_hat_2.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "inquisitor_hat_2"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 2
	ITEM.headSuffix = "_glaze";
	ITEM.description = "Широкополая шляпа, которую носили некоторые члены Священного Ордена Инквизиторов Сияния."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
		
	ITEM.components = {breakdownType = "breakdown", items = {"leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Черная Шляпа Инквизитора"
	ITEM.model = "models/begotten/headgroups_props/headgroup_emp_witch_hunter_hat_02_black.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_hat_2_black.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "inquisitor_hat_2_black"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 6
	ITEM.headSuffix = "_glaze";
	ITEM.description = "Широкополая шляпа, которую носили некоторые члены Священного Ордена Инквизиторов Сияния. Конкретно этот предмет приобрел темный оттенок."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
		
	ITEM.components = {breakdownType = "breakdown", items = {"leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Светлая Шляпа Инквизитора"
	ITEM.model = "models/begotten/headgroups_props/headgroup_emp_witch_hunter_hat_02_white.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_hat_2_white.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "inquisitor_hat_2_white"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 8
	ITEM.headSuffix = "_glaze";
	ITEM.description = "Широкополая шляпа, которую носили некоторые члены Священного Ордена Инквизиторов Сияния. Выглядит просто прекрасно."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
		
	ITEM.components = {breakdownType = "breakdown", items = {"leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шляпа Высшего Уезда"
	ITEM.model = "models/begotten/headgroup_props/headgroup_emp_witch_hunter_hat_03.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_hat_3.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "inquisitor_hat_3"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 3
	ITEM.headSuffix = "_glaze";
	ITEM.description = "Прекрасная шляпа из дорогих материалов! Ах, как великолепно!"
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
		
	ITEM.components = {breakdownType = "breakdown", items = {"leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Черная Шляпа Высшего Уезда"
	ITEM.model = "models/begotten/headgroups_props/headgroup_emp_witch_hunter_hat_03_black.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_hat_3_black.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "inquisitor_hat_3_black"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 7
	ITEM.headSuffix = "_glaze";
	ITEM.description = "Прекрасная шляпа из дорогих материалов! Но почему она черная...?"
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
		
	ITEM.components = {breakdownType = "breakdown", items = {"leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Светлая Шляпа Высшего Уезда"
	ITEM.model = "models/begotten/headgroups_props/headgroup_emp_witch_hunter_hat_03_white.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_hat_3_white.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "inquisitor_hat_3_white"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 9
	ITEM.headSuffix = "_glaze";
	ITEM.description = "Прекрасная шляпа из дорогих материалов, инкрустированая самым настоящим золотом. Великолепно!"
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
		
	ITEM.components = {breakdownType = "breakdown", items = {"leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Скрап-Шлем"
	ITEM.model = "models/begotten/headgroup_props/scrapperhelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scrap_helmet.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "scrap_helmet"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 6
	ITEM.headSuffix = "_wanderer";
	ITEM.description = "Самодельный шлем, сделанный из разного хлама, найденного в Пустоши."
	ITEM.excludeSubfactions = {"Clan Gore", "Clan Harald", "Clan Reaver", "Clan Crast", "Clan Grock"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	
	ITEM.conditionScale = 1 -- item degrades 1x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 35
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.70; -- reduces slash damage by 30%
	ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
	ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%	
	
	ITEM.components = {breakdownType = "breakdown", items = {"scrap", "scrap"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Смешная Шапка Странника"
	ITEM.model = "models/begotten/headgroup_props/wanderercap.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/wanderer_cap.png"
	ITEM.weight = 0.5
	ITEM.uniqueID = "wanderer_cap"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 3
	ITEM.headSuffix = "_wanderer";
	ITEM.description = "Кожаный чепец, который в прошлом использовали в качестве подшлемника Рыцари Солнца, но сейчас его чаще всего используют Странники."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
	
	ITEM.conditionScale = 1.1 -- item degrades 1.5x faster with damage related condition loss
	
	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 30
	ITEM.hitParticle = "GlassImpact";
	ITEM.type = "leather";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
	ITEM.slashScale = 0.90; -- reduces slash damage by 10%
	ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
	
	ITEM.components = {breakdownType = "breakdown", items = {"leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Кольчужный Койф"
	ITEM.model = "models/begotten/headgroup_props/mailcoif.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/mail_coif.png"
	ITEM.weight = 1
	ITEM.uniqueID = "mail_coif"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 4
	ITEM.headSuffix = "_wanderer";
	ITEM.description = "Кольчужный чепец, обеспечивающий некоторую защиту головы."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";

	ITEM.conditionScale = 1 -- item degrades 1x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 40
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "chainmail";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.70; -- reduces slash damage by 30%
	ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks"}};
	
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем с Кольчужным Койфом"
	ITEM.model = "models/begotten/headgroup_props/platehelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/plate_helmet_mail_coif.png"
	ITEM.weight = 2
	ITEM.uniqueID = "plate_helmet_mail_coif"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 5
	ITEM.headSuffix = "_wanderer";
	ITEM.description = "Железный шлем поверх кольчужного койфа. Обеспечивает хорошую защиту, разве что не лица."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";

	ITEM.conditionScale = 0.75 -- item degrades 0.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 45
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
	ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
	ITEM.slashScale = 0.70; -- reduces slash damage by 30%
	ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
	
	ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Спангенхельм"
	ITEM.model = "models/begotten/headgroups_props/spangenhelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/spangenhelm.png"
	ITEM.weight = 2
	ITEM.uniqueID = "spangenhelm"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 7
	ITEM.headSuffix = "_wanderer";
	ITEM.description = "Усиленный стальной шлем с защитой носа, известный своей дешевизной и эффективностью."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";

	ITEM.conditionScale = 0.75 -- item degrades 0.5x faster with damage related condition loss

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
	
	ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "leather"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Хороший Шлем Привратника"
	ITEM.model = "models/begotten/headgroup_props/gatekeeperfinehelm.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/fine_gatekeeper_helmet.png"
	ITEM.weight = 1.5
	ITEM.uniqueID = "fine_gatekeeper_helmet"
	ITEM.category = "Helms"
	ITEM.bodyGroup = 1
	ITEM.bodyGroupVal = 5
	ITEM.headSuffix = "_glaze";
	ITEM.description = "Более прочный вариант шлема Привратника, изготовленный из высококачественной стали."
	ITEM.excludeFactions = {"Goreic Warrior"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";
	ITEM.faction = "Gatekeeper";

	ITEM.conditionScale = 0.75 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 65
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%
	ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}};
	
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Рыцарский Шлем"
	ITEM.model = "models/begotten/headgroups_props/knight_helmet.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/knight_plate_helmet.png"
	ITEM.weight = 1.5
	ITEM.uniqueID = "knight_helmet"
	ITEM.category = "Helms"
	ITEM.headReplacement = "models/begotten/heads/knight_helmet.mdl";
	ITEM.description = "Готический шлем, используемый с остальными рыцарскими доспехами."
	ITEM.requireFaction = {"Holy Hierarchy"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";

	ITEM.conditionScale = 0.75 -- item degrades 1.5x faster with damage related condition loss

	ITEM.effectiveLimbs = {
		[HITGROUP_HEAD] = true,
	}

	ITEM.protection = 75
	ITEM.hitParticle = "MetalSpark";
	ITEM.type = "plate";

	ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
	ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
	ITEM.slashScale = 0.60; -- reduces slash damage by 40%
	ITEM.bulletScale = 0.60; -- reduces bullet damage by 40%
	ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New("bodygroup_base")
	ITEM.name = "Шлем Юстициария"
	ITEM.model = "models/begotten/headgroups_props/knight_justicar_helmet.mdl"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/knight_justicar_plate_helmet.png"
	ITEM.weight = 1.5
	ITEM.uniqueID = "knight_justicar_helmet"
	ITEM.category = "Helms"
	ITEM.headReplacement = "models/begotten/heads/knight_justicar_helmet.mdl";
	ITEM.description = "Элитная черненая сталь, украшенная цветами знатного рода. Просто прекрасно."
	ITEM.requireFaction = {"Holy Hierarchy"};
	ITEM.useSound = "armor/plate_damage_02.wav";
	ITEM.overlay = "begotten/zomboverlay/gatekeep1";

	ITEM.conditionScale = 0.75 -- item degrades 1.5x faster with damage related condition loss

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
	ITEM.stabilityScale = 0.35; -- reduces stability damage by 65%
	
	ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks"}};
ITEM:Register();