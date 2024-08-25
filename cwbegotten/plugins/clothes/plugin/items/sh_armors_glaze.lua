--[[
- LIGHT ARMOR MINIMUM VALUES

PROTECTION - 25

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%

- MEDIUM ARMOR MINIMUM VALUES

PROTECTION - 40
FALL DAMAGE - +10%

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%

- HEAVY ARMOR MINIMUM VALUES

PROTECTION - 65
FALL DAMAGE - +15%

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

--]]

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Кольчуга Странника";
ITEM.uniqueID = "wanderer_mail";
ITEM.group = "wanderers/wanderermail";
ITEM.model = "models/begotten/headgroups_props/wanderermail.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/wanderer_mail.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 53
ITEM.type = "chainmail";
ITEM.weight = 4.5;
ITEM.weightclass = "Medium";
ITEM.description = "Ржавая железная кольчуга, надетая под выцвешую куртку. На ней нет ни цветов, ни знаков отличия, что делает ее славным комплектом доспехов для настоящего Странника.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "leather", "leather", "leather"}};
ITEM.itemSpawnerInfo = {category = "Armor", rarity = 2500};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-hauberk-1.wav.mp3",
	"armormovement/body-hauberk-2.wav.mp3",
	"armormovement/body-hauberk-3.wav.mp3",
	"armormovement/body-hauberk-4.wav.mp3",
	"armormovement/body-hauberk-5.wav.mp3",
};

ITEM.walkSound = {
	"armormovement/body-hauberk-b4.wav.mp3",
	"armormovement/body-hauberk-b5.wav.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Грубая Кираса Странника";
ITEM.uniqueID = "wanderer_crude_plate";
ITEM.group = "wanderers/crudeplate";
ITEM.model = "models/begotten/headgroups_props/crudeplate.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/crude_plate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 75;
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Грубо сделанный комплект брони, который, тем не менее, обеспечивает достойную защиту. Он состоит из стальных пластин, покрывающих почти все тело.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.15, -- increases fall damage by 15%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "iron_chunks", "iron_chunks", "leather", "cloth", "cloth"}};
ITEM.itemSpawnerInfo = {category = "Armor", rarity = 6250};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-armor-1.WAV.mp3",
	"armormovement/body-armor-2.WAV.mp3",
	"armormovement/body-armor-3.WAV.mp3",
	"armormovement/body-armor-4.WAV.mp3",
	"armormovement/body-armor-5.WAV.mp3",
	"armormovement/body-armor-6.WAV.mp3",
};

ITEM.walkSound = {
	"armormovement/body-armor-b4.WAV.mp3",
	"armormovement/body-armor-b5.WAV.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Латы Привратника";
ITEM.uniqueID = "gatekeeper_plate";
ITEM.group = "gatekeepers/gatekeepermedium";
ITEM.model = "models/items/magic/armors/player_armors/player_armor_chainmail.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/gatekeeper_plate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 55
ITEM.type = "chainmail";
ITEM.weight = 5;
ITEM.weightclass = "Medium";
ITEM.description = "Комплект железных пластинчатых доспехов, обычно используемый Священным Орденом Привратников.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Gatekeeper";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.85; -- reduces bullet damage by 15%

ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-hauberk-1.wav.mp3",
	"armormovement/body-hauberk-2.wav.mp3",
	"armormovement/body-hauberk-3.wav.mp3",
	"armormovement/body-hauberk-4.wav.mp3",
	"armormovement/body-hauberk-5.wav.mp3",
};

ITEM.walkSound = {
	"armormovement/body-hauberk-b4.wav.mp3",
	"armormovement/body-hauberk-b5.wav.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Хорошие Латы Привратника";
ITEM.uniqueID = "fine_gatekeeper_plate";
ITEM.group = "gatekeepers/gatekeeperfine";
ITEM.model = "models/items/magic/armors/player_armors/player_armor_plate.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/heavy_gatekeeper_plate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 65
ITEM.type = "chainmail";
ITEM.weight = 6;
ITEM.weightclass = "Medium";
ITEM.description = "Улучшенный комплект доспехов, созданный на основе Лат Привратника, усиленный высококачественной сталью и дополнительными пластинами.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Gatekeeper";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.85; -- reduces bullet damage by 15%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-hauberk-1.wav.mp3",
	"armormovement/body-hauberk-2.wav.mp3",
	"armormovement/body-hauberk-3.wav.mp3",
	"armormovement/body-hauberk-4.wav.mp3",
	"armormovement/body-hauberk-5.wav.mp3",
};

ITEM.walkSound = {
	"armormovement/body-hauberk-b4.wav.mp3",
	"armormovement/body-hauberk-b5.wav.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Исключительные Латы Привратника";
ITEM.uniqueID = "ornate_gatekeeper_plate";
ITEM.group = "gatekeepers/gatekeeperornate";
ITEM.model = "models/items/magic/armors/player_armors/player_armor_plate_magic.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/ornate_gatekeeper_plate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 70
ITEM.type = "chainmail";
ITEM.weight = 6;
ITEM.weightclass = "Medium";
ITEM.description = "Очень дорогой позолоченный доспехов, созданный на основе Лат Привратника, усиленный высококачественной сталью и дополнительными пластинами.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Gatekeeper";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.80; -- reduces bullet damage by 20%

ITEM.components = {breakdownType = "meltdown", items = {"gold_ingot", "gold_ingot", "fine_steel_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-hauberk-1.wav.mp3",
	"armormovement/body-hauberk-2.wav.mp3",
	"armormovement/body-hauberk-3.wav.mp3",
	"armormovement/body-hauberk-4.wav.mp3",
	"armormovement/body-hauberk-5.wav.mp3",
};

ITEM.walkSound = {
	"armormovement/body-hauberk-b4.wav.mp3",
	"armormovement/body-hauberk-b5.wav.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Латы Привратника-Знаменосца";
ITEM.uniqueID = "vexillifer_gatekeeper_plate";
ITEM.model = "models/items/magic/armors/player_armors/player_armor_plate_magic.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/ornate_gatekeeper_plate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 70
ITEM.type = "chainmail";
ITEM.hasHelmet = true;
ITEM.weight = 8;
ITEM.weightclass = "Medium";
ITEM.description = "Золотые и богато украшенные доспехи, усиленные тонкой сталью и увенчанные львиной шкурой и железной маской с ликом святого. Узрев легионы с сотнями развевающихся Знамен, дикари замолят о пощаде, но будет уже слишком поздно.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Gatekeeper";

ITEM.attributes = {"fear"};

ITEM.effectiveLimbs = {
	[HITGROUP_HEAD] = true,
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.80; -- reduces bullet damage by 20%

ITEM.components = {breakdownType = "meltdown", items = {"gold_ingot", "fine_steel_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	return "models/begotten/gatekeepers/vexi.mdl";
end;

ITEM.runSound = {
	"armormovement/body-hauberk-1.wav.mp3",
	"armormovement/body-hauberk-2.wav.mp3",
	"armormovement/body-hauberk-3.wav.mp3",
	"armormovement/body-hauberk-4.wav.mp3",
	"armormovement/body-hauberk-5.wav.mp3",
};

ITEM.walkSound = {
	"armormovement/body-hauberk-b4.wav.mp3",
	"armormovement/body-hauberk-b5.wav.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Гамбенезон Ауксилярия";
ITEM.uniqueID = "auxiliary_gambeson";
ITEM.group = "gatekeepers/gatekeeperlight_black";
ITEM.model = "models/begotten/headgroup_props/gatekeeperlightarmor_black.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/auxiliary_gambeson.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 30
ITEM.type = "leather";
ITEM.weight = 2;
ITEM.weightclass = "Light";
ITEM.description = "Украшенный заклепками кожаный гамбезон с тканевыми рукавами, окрашенными в черный цвет, чтобы отличать Войска Снабжения от обычных Солдатов.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Gatekeeper";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "leather", "leather", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Гамбенезон Привратника";
ITEM.uniqueID = "gatekeeper_gambeson"
ITEM.group = "gatekeepers/gatekeeperlight";
ITEM.model = "models/begotten/headgroup_props/gatekeeperlightarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/gatekeeper_gambeson_new.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 30
ITEM.type = "leather";
ITEM.weight = 2;
ITEM.weightclass = "Light";
ITEM.description = "Кожаный гамбезон с заклепками и тканевыми рукавами, окрашенными в ярко-красный цвет. Минималистская защита для простых гвардейцев.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Gatekeeper";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "leather", "leather", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Гамбенезон Разведчика";
ITEM.uniqueID = "praeventor_gambeson";
ITEM.group = "gatekeepers/gatekeeperlight_brown";
ITEM.model = "models/begotten/headgroup_props/gatekeeperlightarmor_brown.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/praeventor_gambeson.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 30
ITEM.type = "leather";
ITEM.weight = 2;
ITEM.weightclass = "Light";
ITEM.description = "Украшенный заклепками кожаный гамбезон с тканевыми рукавами, окрашенными в коричневый цвет, чтобы помочь разведчику получше замаскироваться в Пустошах.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Gatekeeper";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "leather", "leather", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Гамбенезон Привратника-Отступника";
ITEM.uniqueID = "renegade_disciple_robes";
ITEM.model = "models/begotten/headgroups_props/renegadearmor2.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/renegade_disciple_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1;
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 25
ITEM.type = "leather";
ITEM.hasHelmet = true;
ITEM.weight = 1.7;
ITEM.weightclass = "Light";
ITEM.description = "Кожаные одеяния, которые носили привратники папы Адиссы.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Pope Adyssa's Gatekeepers";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%

ITEM.components = {breakdownType = "breakdown", items = {"leather", "leather", "leather", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	return "models/begotten/gatekeepers/renegadedisciple.mdl";
end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Латы Привратника-Отступника";
ITEM.uniqueID = "renegade_acolyte_robes";
ITEM.model = "models/begotten/headgroups_props/renegadearmor1.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/renegade_acoylte_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1;
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 30
ITEM.type = "leather";
ITEM.hasHelmet = true;
ITEM.weight = 1.8;
ITEM.weightclass = "Light";
ITEM.description = "Комплект лат, которые носили привратники папы Адиссы.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Pope Adyssa's Gatekeepers";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%

ITEM.components = {breakdownType = "breakdown", items = {"leather", "leather", "leather", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	return "models/begotten/gatekeepers/renegadeacolyte.mdl";
end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Стеганое Пальто";
ITEM.uniqueID = "padded_coat";
ITEM.group = "wanderers/leather";
ITEM.model = "models/begotten/headgroup_props/paddedcoat.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/padded_coat.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 37
ITEM.type = "leather";
ITEM.weight = 3;
ITEM.weightclass = "Light";
ITEM.description = "Стеганое пальто из кожи и плотной ткани, обеспечивающее достойную защиту.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%

ITEM.components = {breakdownType = "breakdown", items = {"leather", "leather", "leather", "leather", "cloth", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Роба Православного Монаха";
ITEM.uniqueID = "orthodoxist_monk_robes";
ITEM.group = "wanderers/monkrobes";
ITEM.model = "models/begotten/headgroups_props/monkrobes.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/monk_robes.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 25
ITEM.type = "leather";
ITEM.weight = 2;
ITEM.weightclass = "Light";
ITEM.description = "Коричневая роба, имеющая минимальную защиту. Одеяния благочестивого ордена крестьян-флагеллянтов. Кажется, что они защищены особой аурой, которая приносит грешникам большое беспокойство.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";

ITEM.kinisgerOverride = true;
ITEM.requiredbeliefs = {"repentant"};

ITEM.attributes = {"solblessed"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%

ITEM.components = {breakdownType = "breakdown", items = {"leather", "leather", "cloth", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Боевая Роба Православного Монаха";
ITEM.uniqueID = "orthodoxist_battle_monk_robes";
ITEM.group = "wanderers/monkmail";
ITEM.model = "models/begotten/headgroups_props/monkmail.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/battle_monk_robes.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 55
ITEM.type = "chainmail";
ITEM.weight = 4;
ITEM.weightclass = "Medium";
ITEM.description = "Кольчужное одеяние, изготовлено для ордена боевых монахов. Кажется, что оно защищено осуждающей аурой, которая вселяет животный ужас в еретическую тварь. Особенно когда глаза такого монаха светиться желтым.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";

ITEM.kinisgerOverride = true;
ITEM.requiredbeliefs = {"repentant"};

ITEM.attributes = {"solblessed"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "cloth", "leather", "leather"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-hauberk-1.wav.mp3",
	"armormovement/body-hauberk-2.wav.mp3",
	"armormovement/body-hauberk-3.wav.mp3",
	"armormovement/body-hauberk-4.wav.mp3",
	"armormovement/body-hauberk-5.wav.mp3",
};

ITEM.walkSound = {
	"armormovement/body-hauberk-b4.wav.mp3",
	"armormovement/body-hauberk-b5.wav.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Броня Старого Солдата";
ITEM.uniqueID = "old_soldier_cuirass";
ITEM.group = "wanderers/oldsoldier";
ITEM.model = "models/begottenprelude/items/oldsoldier.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/old_soldier_cuirass.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 40
ITEM.type = "metal";
ITEM.weight = 2.5;
ITEM.weightclass = "Light";
ITEM.description = "Потрепанная униформа солдата, служившего в полевых армиях Империи Света, возможно, даже в знаменитых кампаниях Лорда Максимуса. Очень удобна и не сковывает движений.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "iron_chunks", "leather", "leather", "cloth", "cloth", "cloth"}};
ITEM.itemSpawnerInfo = {category = "Armor", rarity = 3000};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Лёгкая Бригантина";
ITEM.uniqueID = "light_brigandine_armor";
ITEM.group = "wanderers/brigandinelight";
ITEM.model = "models/begotten/headgroup_props/brigandinelight.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/light_brigandine.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 35
ITEM.type = "leather";
ITEM.weight = 2;
ITEM.weightclass = "Light";
ITEM.description = "Легкая кожаная бригантина, обеспечивающая достаточную защиту при своем небольшом весе.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "leather", "leather", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Полная Бригантина";
ITEM.uniqueID = "brigandine_armor";
ITEM.group = "wanderers/brigandine";
ITEM.model = "models/begotten/headgroup_props/brigandinemedium.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/brigandine.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 50
ITEM.type = "leather";
ITEM.weight = 3.5;
ITEM.weightclass = "Medium";
ITEM.description = "Кожаная бригандина с железными пластинами, обеспечивающая достаточную защиту при своем небольшом весе. Сковывает движения.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.80; -- reduces bullet damage by 20%

ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "iron_chunks", "leather", "leather", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Одеяние Торговца Специями";
ITEM.uniqueID = "merchant_robes";
ITEM.group = "wanderers/merchant";
ITEM.model = "models/begotten/headgroup_props/merchant.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/merchant_robes.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 15
ITEM.type = "leather";
ITEM.weight = 1.5;
ITEM.weightclass = "Light";
ITEM.description = "Эти мантии стилизованы под одежду торговцев из Темноземья, известных своей торговлей экзотическими товарами. Они обеспечивают разумную степень защиты, несмотря на свою легкость.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%

ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth", "cloth", "cloth", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Роба Писца";
ITEM.uniqueID = "scribe_robes";
ITEM.group = "wanderers/scribe";
ITEM.model = "models/begotten/headgroup_props/scribe.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/scribe_robes.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 15
ITEM.type = "leather";
ITEM.weight = 1.5;
ITEM.weightclass = "Light";
ITEM.description = "Одеяния, которые носили писари Святой Иерархии, указывающие на их статус.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%

ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth", "cloth", "cloth", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Одеяние Чумного Доктора";
ITEM.uniqueID = "plague_doctor_robes";
ITEM.model = "models/begotten/headgroup_props/plaguedocclothes.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/plague_doctor_outfit.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 15
ITEM.type = "leather";
ITEM.hasHelmet = true;
ITEM.weight = 1.5;
ITEM.weightclass = "Light";
ITEM.description = "Прекрасные черные одежды с клювовидной маской, набитой странно пахнущими травами. Она прививает своему владельцу силуэт, синонимичный смерти; Чума пришла за всеми нами.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.overlay = "begotten/zomboverlay/skullhelm";

ITEM.requiredbeliefs = {"plague_doctor"};

ITEM.effectiveLimbs = {
	[HITGROUP_HEAD] = true,
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%

ITEM.attributes = {"disease_resistance"};
ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth", "cloth", "cloth", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/wanderers/plaguedoc.mdl";
	--else
		--return "models/begotten/wanderers/plaguedoc.mdl";
	--end;
end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();


local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Броня Скраппера-Пехотинца";
ITEM.uniqueID = "scrapper_grunt_plate";
ITEM.group = "wanderers/scrappergrunt";
ITEM.model = "models/begotten/headgroup_props/scrappergrunt.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/scrapper_grunt_plate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 45
ITEM.type = "plate";
ITEM.weight = 5;
ITEM.weightclass = "Medium";
ITEM.description = "Серия собранных из кусочков пластин, образующих грубый, но эффективный комплект брони.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeSubfactions = {"Clan Gore", "Clan Harald", "Clan Reaver", "Clan Crast", "Clan Grock"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%

ITEM.components = {breakdownType = "breakdown", items = {"scrap", "scrap", "scrap", "scrap", "scrap", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-armor-1.WAV.mp3",
	"armormovement/body-armor-2.WAV.mp3",
	"armormovement/body-armor-3.WAV.mp3",
	"armormovement/body-armor-4.WAV.mp3",
	"armormovement/body-armor-5.WAV.mp3",
	"armormovement/body-armor-6.WAV.mp3",
};

ITEM.walkSound = {
	"armormovement/body-armor-b4.WAV.mp3",
	"armormovement/body-armor-b5.WAV.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Броня Скраппера-Машиниста";
ITEM.uniqueID = "scrapper_machinist_plate";
ITEM.group = "wanderers/scrapper";
ITEM.model = "models/begotten/headgroup_props/scrapperarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/scrapper_machinist_plate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 70
ITEM.type = "plate";
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.description = "Серия собранных из кусочков пластин, образующих грубый, но эффективный комплект брони.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeSubfactions = {"Clan Gore", "Clan Harald", "Clan Reaver", "Clan Crast", "Clan Grock"};

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.15, -- increases fall damage by 15%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "breakdown", items = {"scrap", "scrap", "scrap", "scrap", "scrap", "scrap", "scrap", "scrap"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-armor-1.WAV.mp3",
	"armormovement/body-armor-2.WAV.mp3",
	"armormovement/body-armor-3.WAV.mp3",
	"armormovement/body-armor-4.WAV.mp3",
	"armormovement/body-armor-5.WAV.mp3",
	"armormovement/body-armor-6.WAV.mp3",
};

ITEM.walkSound = {
	"armormovement/body-armor-b4.WAV.mp3",
	"armormovement/body-armor-b5.WAV.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Латы Рыцаря-Изганника";
ITEM.uniqueID = "exile_knight_armor";
ITEM.model = "models/begotten/headgroup_props/exileknightarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/exile_knight_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.concealsFace = true;
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 80;
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Старый комплект доспехов, когда-то принадлежавший опозоренному Рыцарю Солнца. Хотя доспехи покрыты рваной тканью, которая едва выдержала суровые условия пустоши, сами пластины находятся в значительно лучшем состоянии, чем все, что вы можете найти на Пустошах.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.overlay = "begotten/zomboverlay/gatekeep1";

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_HEAD] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.15, -- increases fall damage by 15%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks", "leather", "cloth", "cloth"}};
ITEM.itemSpawnerInfo = {category = "Armor", rarity = 1000, supercrateOnly = true};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/wanderers/exileknight.mdl";
	--else
		--return "models/begotten/gatekeepers/highgatekeeper02.mdl";
	--end;
end;

ITEM.runSound = {
	"armormovement/body-armor-1.WAV.mp3",
	"armormovement/body-armor-2.WAV.mp3",
	"armormovement/body-armor-3.WAV.mp3",
	"armormovement/body-armor-4.WAV.mp3",
	"armormovement/body-armor-5.WAV.mp3",
	"armormovement/body-armor-6.WAV.mp3",
};

ITEM.walkSound = {
	"armormovement/body-armor-b4.WAV.mp3",
	"armormovement/body-armor-b5.WAV.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Рыцарские Латы";
ITEM.uniqueID = "knight_plate";
ITEM.group = "gatekeepers/knight_set";
ITEM.model = "models/begotten/headgroup_props/knightarmor.mdl";
ITEM.iconoverride = "materials/begotten/ui/itemicons/knight_plate.png";
ITEM.category = "Armor";
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 85;
ITEM.weight = 9;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Комплект готических стальных пластинчатых доспехов, используемых Рыцарями Солнца. Он был благословлен самим СОЛ'ом и по этому любой недостойный, что осмелится надеть на себя латы, будет заживо сожжен внутри.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Holy Hierarchy"};
ITEM.faction = "Holy Hierarchy";
ITEM.genderless = true;

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.15, -- increases fall damage by 15%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.65; -- reduces bullet damage by 35%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks", "leather", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-armor-1.WAV.mp3",
	"armormovement/body-armor-2.WAV.mp3",
	"armormovement/body-armor-3.WAV.mp3",
	"armormovement/body-armor-4.WAV.mp3",
	"armormovement/body-armor-5.WAV.mp3",
	"armormovement/body-armor-6.WAV.mp3",
};

ITEM.walkSound = {
	"armormovement/body-armor-b4.WAV.mp3",
	"armormovement/body-armor-b5.WAV.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Латы Рыцаря Юстициария";
ITEM.uniqueID = "knight_justicar_armor";
ITEM.group = "gatekeepers/knight_justicar"
ITEM.model = "models/begotten/headgroups_props/justicararmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/knight_justicar_plate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 90;
ITEM.weight = 9;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Элитная черненая сталь, украшенная цветами знатного рода. Доспех был благословлен самим СОЛ'ом и по этому любой недостойный, что осмелится надеть на себя латы, будет заживо сожжен внутри. Говорят, что последний носитель таких доспехов, а именно Юстициарий Маркус Руфаниус, был подло заколот в спину..";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Holy Hierarchy"};
--ITEM.overlay = "begotten/zomboverlay/gatekeep1";
ITEM.faction = "Holy Hierarchy";
ITEM.genderless = true;

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.15, -- increases fall damage by 15%
}
ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.60; -- reduces bullet damage by 40%
ITEM.stabilityScale = 0.35; -- reduces stability damage by 65%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks", "steel_chunks", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-armor-1.WAV.mp3",
	"armormovement/body-armor-2.WAV.mp3",
	"armormovement/body-armor-3.WAV.mp3",
	"armormovement/body-armor-4.WAV.mp3",
	"armormovement/body-armor-5.WAV.mp3",
	"armormovement/body-armor-6.WAV.mp3",
};

ITEM.walkSound = {
	"armormovement/body-armor-b4.WAV.mp3",
	"armormovement/body-armor-b5.WAV.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Одежды Инквизитора";
ITEM.uniqueID = "inquisitor_armor";
ITEM.group = "gatekeepers/inquisitor";
ITEM.model = "models/begotten/headgroup_props/inquisitorarmor_brown.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/inquisitor_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 55;
ITEM.weight = 6;
ITEM.weightclass = "Medium";
ITEM.type = "leather";
ITEM.description = "Прочный коричневый кожаный плащ с подкладкой и сумками поверх железного нагрудника с боевыми шрамами. Это хорошо сделанный комплект доспехов, который может похвастаться как своими знаками отличия, так и дизайном, не сковывая при этом движения владельца.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Holy Hierarchy";
ITEM.bodygroupCharms = {["holy_sigils"] = {1, 1}};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.08, -- increases fall damage by 8%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%

ITEM.components = {breakdownType = "breakdown", items = {"steel_chunks", "leather", "leather", "leather", "leather", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Черные Одежды Инквизитора";
ITEM.uniqueID = "black_inquisitor_armor";
ITEM.group = "gatekeepers/blackinquisitor";
ITEM.model = "models/begotten/headgroup_props/inquisitorarmor_black.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/black_inquisitor_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 60;
ITEM.weight = 6.2;
ITEM.weightclass = "Medium";
ITEM.type = "leather";
ITEM.description = "Прочный коричневый кожаный плащ с подкладкой и сумками поверх железного нагрудника с боевыми шрамами. Это хорошо сделанный комплект доспехов, который может похвастаться как своими знаками отличия, так и дизайном, не сковывая при этом движения владельца. Именно этот комплект имеет черную раскраску.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Holy Hierarchy";
ITEM.bodygroupCharms = {["holy_sigils"] = {1, 1}};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.08, -- increases fall damage by 8%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%

ITEM.components = {breakdownType = "breakdown", items = {"steel_chunks", "leather", "leather", "leather", "leather", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Белые Одежды Инквизитора";
ITEM.uniqueID = "high_inquisitor_armor";
ITEM.group = "gatekeepers/whiteinquisitor";
ITEM.model = "models/begotten/headgroup_props/inquisitorarmor_white.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/high_inquisitor_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 65;
ITEM.weight = 6.5;
ITEM.weightclass = "Medium";
ITEM.type = "leather";
ITEM.description = "Прочный белый кожаный плащ с подкладкой и сумками поверх искусно сделанного стального нагрудника. Это хорошо сделанный комплект доспехов, который может похвастаться как своими знаками отличия, так и дизайном, не сковывая движения владельца. Этот конкретный комплект доспехов Инквизиции очень хорошо сделан и почитаем.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Holy Hierarchy";
ITEM.bodygroupCharms = {["holy_sigils"] = {1, 1}};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.08, -- increases fall damage by 8%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%

ITEM.components = {breakdownType = "breakdown", items = {"steel_chunks", "leather", "leather", "leather", "leather", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

--[[ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};]]--

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Укрепленные Тяжелые Латы Привратника";
ITEM.uniqueID = "high_gatekeeper_reinforced_plate";
ITEM.model = "models/begotten/headgroup_props/highgatekeeperarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/high_gatekeeper_reinforced_armor.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0.75
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 80;
ITEM.weight = 8.5;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Эта броня, дополнительно усиленная за счет увеличенной толщины стали, бронирована по стандарту рыцарских доспехов.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.overlay = "begotten/zomboverlay/gatekeep1";
ITEM.faction = "Gatekeeper";

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_HEAD] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.15, -- increases fall damage by 15%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/gatekeepers/highgatekeeper02.mdl";
	--else
		--return "models/begotten/gatekeepers/highgatekeeper02.mdl";
	--end;
end;

ITEM.runSound = {
	"armormovement/body-armor-1.WAV.mp3",
	"armormovement/body-armor-2.WAV.mp3",
	"armormovement/body-armor-3.WAV.mp3",
	"armormovement/body-armor-4.WAV.mp3",
	"armormovement/body-armor-5.WAV.mp3",
	"armormovement/body-armor-6.WAV.mp3",
};

ITEM.walkSound = {
	"armormovement/body-armor-b4.WAV.mp3",
	"armormovement/body-armor-b5.WAV.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Тяжелые Латы Привратника";
ITEM.uniqueID = "high_gatekeeper_heavy_plate";
ITEM.model = "models/begotten/headgroup_props/highgatekeeperarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/high_gatekeeper_armor.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0.75
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 75;
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Прочный комплект стальных пластинчатых доспехов, покрытый шрамами от постоянных сражений и войн.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.overlay = "begotten/zomboverlay/gatekeep1";
ITEM.faction = "Gatekeeper";

ITEM.requiredbeliefs = {"hauberk"};

-- specifies which hitgroups will be affected by blunt, slash, pierce and other damage type scaling.
ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_HEAD] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.15, -- increases fall damage by 15%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/gatekeepers/highgatekeeper01.mdl";
	--else
		--return "models/begotten/gatekeepers/highgatekeeper01.mdl";
	--end;
end;

ITEM.runSound = {
	"armormovement/body-armor-1.WAV.mp3",
	"armormovement/body-armor-2.WAV.mp3",
	"armormovement/body-armor-3.WAV.mp3",
	"armormovement/body-armor-4.WAV.mp3",
	"armormovement/body-armor-5.WAV.mp3",
	"armormovement/body-armor-6.WAV.mp3",
};

ITEM.walkSound = {
	"armormovement/body-armor-b4.WAV.mp3",
	"armormovement/body-armor-b5.WAV.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Броня Угнетателя";
ITEM.uniqueID = "wanderer_oppressor_armor";
ITEM.model = "models/begotten/headgroup_props/wandereroppressor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/wanderer_oppressor_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 70
ITEM.type = "leather";
ITEM.hasHelmet = true;
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.description = "Броня тирана пустоши. Она оснащена грубыми стальными пластинами и скреплена металлоломом.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeSubfactions = {"Clan Gore", "Clan Harald", "Clan Reaver", "Clan Crast", "Clan Grock"};
ITEM.overlay = "begotten/zomboverlay/skullhelm";

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_HEAD] = true,
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.15, -- increases fall damage by 15%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "breakdown", items = {"leather", "leather", "scrap", "scrap", "steel_chunks", "steel_chunks"}};
ITEM.itemSpawnerInfo = {category = "Armor", rarity = 1000, supercrateOnly = true};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/wanderers/wandereroppressor.mdl";
	--else
		--return "models/begotten/wanderers/plaguedoc.mdl";
	--end;
end;

ITEM.runSound = {
	"armormovement/body-lobe-1.wav.mp3",
	"armormovement/body-lobe-2.wav.mp3",
	"armormovement/body-lobe-3.wav.mp3",
	"armormovement/body-lobe-4.wav.mp3",
	"armormovement/body-lobe-5.wav.mp3",
};

ITEM.walkSound = {
	"armormovement/body-lobe-b1.wav.mp3",
	"armormovement/body-lobe-b2.wav.mp3",
};

ITEM:Register();

--
--
-- VOLTIST STUFF
--
--

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Экзоскелет «Архангел» Вольтистов";
ITEM.uniqueID = "voltist_archangel_exoskeleton";
ITEM.model = "models/begotten/headgroup_props/voltistarchangelexoarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/voltist_archangel_exoskeleton.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 60
ITEM.weight = 7;
ITEM.weightclass = "Medium";
ITEM.type = "plate";
ITEM.description = "Пластины из окрашенного металла, которые нужно воткнуть в плоть. Стержни, которые нужно вставить в глазницы и проткнуть лобную долю. Крылья из металла, оскорбляющие верующих. Все это скреплено ужасными проводами, доведено до безумия. Только полный псих или жертва, лишенная свободы воли, подвергнет себя электрозомбированию.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.permanent = true; -- Cannot be unequipped.
ITEM.overlay = "begotten/zomboverlay/voltyellow";

ITEM.attributes = {"conditionless", "double_jump", "not_unequippable", "night_vision", "thermal_vision"};
ITEM.requiredbeliefs = {"yellow_and_black"};

-- specifies which hitgroups will be affected by blunt, slash, pierce and other damage type scaling.
ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_HEAD] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%

ITEM.components = {breakdownType = "meltdown", items = {"tech", "tech", "tech", "tech", "scrap", "scrap", "scrap", "scrap", "scrap"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/wanderers/voltist_heavy.mdl";
	--else
		--return "models/begotten/wanderers/voltist_heavy.mdl";
	--end;
end;

-- Called when a player has unequipped the item.
function ITEM:OnPlayerUnequipped(player, extraData)
	if player:GetSubfaith() == "Voltism" then
		Schema:EasyText(player, "peru", "This armor is grafted into your skin and fused with your flesh, and cannot be unequipped!");
		return false;
	end

	if self:HasPlayerEquipped(player) then
		local useSound = self.useSound;
		
		if !player:IsNoClipping() and (!player.GetCharmEquipped or !player:GetCharmEquipped("urn_silence")) then
			if (useSound) then
				if (type(useSound) == "table") then
					player:EmitSound(useSound[math.random(1, #useSound)]);
				else
					player:EmitSound(useSound);
				end;
			elseif (useSound != false) then
				player:EmitSound("begotten/items/first_aid.wav");
			end;
		end
		
		if self.concealsFace == true then
			player:SetSharedVar("faceConcealed", false);
		end
	end
end

-- Called when a player has unequipped the item.
function ITEM:OnTakeFromPlayer(player)
	if (player:GetClothesEquipped() == self) then
		if player:Alive() and player:GetSubfaith() == "Voltism" then
			Schema:EasyText(player, "peru", "This armor is grafted into this character's skin and fused with their flesh, and cannot be unequipped!");
			return false;
		end

		if self.concealsFace == true then
			player:SetSharedVar("faceConcealed", false);
		end
	end
end

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
	if (player:GetClothesEquipped() == self) then
		if player:Alive() and player:GetSubfaith() == "Voltism" then
			Schema:EasyText(player, "peru", "This armor is grafted into this character's skin and fused with their flesh, and cannot be unequipped!");
			return false;
		end
	
		Schema:EasyText(player, "firebrick", "You cannot drop an item you're currently wearing.")
		return false
	end
end

ITEM.runSound = {
	"mvm/player/footsteps/robostep_05.wav",
	"mvm/player/footsteps/robostep_09.wav",
	"mvm/player/footsteps/robostep_13.wav",
	"mvm/player/footsteps/robostep_15.wav",
};

ITEM.walkSound = {
	"mvm/giant_scout/giant_scout_step_01.wav",
	"mvm/giant_scout/giant_scout_step_02.wav",
	"mvm/giant_scout/giant_scout_step_03.wav",
	"mvm/giant_scout/giant_scout_step_04.wav",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Экзоскелет Вольтистов";
ITEM.uniqueID = "voltist_exoskeleton";
ITEM.model = "models/begotten/headgroup_props/voltistexoarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/voltist_exoskeleton.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 40
ITEM.weight = 5;
ITEM.weightclass = "Light";
ITEM.type = "plate";
ITEM.description = "Пластины из окрашенного металла, которые нужно вцепить в плоть. Стержни, которые нужно вставить в глазницы и через лобную долю. Все это скреплено ужасными проводами, неправильно управляемыми до безумия. Только полный псих или жертва, лишенная свободы воли, подвергнет себя электрозомбированию.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.permanent = true; -- Cannot be unequipped.
ITEM.overlay = "begotten/zomboverlay/voltyellow";

ITEM.attributes = {"conditionless", "not_unequippable", "night_vision", "thermal_vision"};
ITEM.requiredbeliefs = {"yellow_and_black"};

-- specifies which hitgroups will be affected by blunt, slash, pierce and other damage type scaling.
ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_HEAD] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%

ITEM.components = {breakdownType = "meltdown", items = {"tech", "tech", "scrap", "scrap", "scrap", "scrap", "scrap"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/wanderers/voltist_medium.mdl";
	--else
		--return "models/begotten/wanderers/voltist_medium.mdl";
	--end;
end;

-- Called when a player has unequipped the item.
function ITEM:OnPlayerUnequipped(player, extraData)
	if player:GetSubfaith() == "Voltism" then
		Schema:EasyText(player, "peru", "This armor is grafted into your skin and fused with your flesh, and cannot be unequipped!");
		return false;
	end

	if self:HasPlayerEquipped(player) then
		local useSound = self.useSound;
		
		if !player:IsNoClipping() and (!player.GetCharmEquipped or !player:GetCharmEquipped("urn_silence")) then
			if (useSound) then
				if (type(useSound) == "table") then
					player:EmitSound(useSound[math.random(1, #useSound)]);
				else
					player:EmitSound(useSound);
				end;
			elseif (useSound != false) then
				player:EmitSound("begotten/items/first_aid.wav");
			end;
		end
		
		if self.concealsFace == true then
			player:SetSharedVar("faceConcealed", false);
		end
	end
end

-- Called when a player has unequipped the item.
function ITEM:OnTakeFromPlayer(player)
	if (player:GetClothesEquipped() == self) then
		if player:Alive() and player:GetSubfaith() == "Voltism" then
			Schema:EasyText(player, "peru", "This armor is grafted into this character's skin and fused with their flesh, and cannot be unequipped!");
			return false;
		end

		if self.concealsFace == true then
			player:SetSharedVar("faceConcealed", false);
		end
	end
end

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
	if (player:GetClothesEquipped() == self) then
		if player:Alive() and player:GetSubfaith() == "Voltism" then
			Schema:EasyText(player, "peru", "This armor is grafted into this character's skin and fused with their flesh, and cannot be unequipped!");
			return false;
		end
	
		Schema:EasyText(player, "peru", "You cannot drop an item you're currently wearing.")
		return false
	end
end

ITEM.runSound = {
	"mvm/player/footsteps/robostep_05.wav",
	"mvm/player/footsteps/robostep_09.wav",
	"mvm/player/footsteps/robostep_13.wav",
	"mvm/player/footsteps/robostep_15.wav",
};

ITEM.walkSound = {
	"mvm/giant_scout/giant_scout_step_01.wav",
	"mvm/giant_scout/giant_scout_step_02.wav",
	"mvm/giant_scout/giant_scout_step_03.wav",
	"mvm/giant_scout/giant_scout_step_04.wav",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Экзоскелет «Повелитель Бури» Вольтистов";
ITEM.uniqueID = "voltist_stormchaser_exoskeleton";
ITEM.model = "models/begotten/headgroups_props/voltisttechnoheavy.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/voltist_stormchaser_exoskeleton.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 90
ITEM.weight = 10;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Пластины из окрашенного металла, которые нужно вцепить в плоть. Стержни для погружения в глазницы через лобную долю. Светящиеся пилоны, которые излучают псионическую, порабощающую разум энергию. Покрытые и сколоченные с удивительной эффективностью, хотя чрезвычайно громоздкие и ужасно неудобные для своего хозяина. Этот экзоскелет был явно сделан для Повелителя Бури, техноеретического гения, обладающего более высоким чувством воли и тактической предусмотрительности, чем их зомбированные коллеги.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.permanent = true; -- Cannot be unequipped.
ITEM.overlay = "begotten/zomboverlay/voltyellow";

ITEM.attributes = {"conditionless", "electrified", "not_unequippable", "night_vision", "thermal_vision"};
ITEM.requiredbeliefs = {"yellow_and_black", "hauberk"};

-- specifies which hitgroups will be affected by blunt, slash, pierce and other damage type scaling.
ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_HEAD] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.15, -- increases fall damage by 15%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.3; -- reduces bullet damage by 70%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks", "technocraft", "tech", "tech", "tech"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/wanderers/voltist_technoheavy.mdl";
	--else
		--return "models/begotten/wanderers/voltist_heavy.mdl";
	--end;
end;

-- Called when a player has unequipped the item.
function ITEM:OnPlayerUnequipped(player, extraData)
	if player:GetSubfaith() == "Voltism" then
		Schema:EasyText(player, "peru", "This armor is grafted into your skin and fused with your flesh, and cannot be unequipped!");
		return false;
	end

	if self:HasPlayerEquipped(player) then
		local useSound = self.useSound;
		
		if !player:IsNoClipping() and (!player.GetCharmEquipped or !player:GetCharmEquipped("urn_silence")) then
			if (useSound) then
				if (type(useSound) == "table") then
					player:EmitSound(useSound[math.random(1, #useSound)]);
				else
					player:EmitSound(useSound);
				end;
			elseif (useSound != false) then
				player:EmitSound("begotten/items/first_aid.wav");
			end;
		end
		
		if self.concealsFace == true then
			player:SetSharedVar("faceConcealed", false);
		end
	end
end

-- Called when a player has unequipped the item.
function ITEM:OnTakeFromPlayer(player)
	if (player:GetClothesEquipped() == self) then
		if player:Alive() and player:GetSubfaith() == "Voltism" then
			Schema:EasyText(player, "peru", "This armor is grafted into this character's skin and fused with their flesh, and cannot be unequipped!");
			return false;
		end
		
		if self.concealsFace == true then
			player:SetSharedVar("faceConcealed", false);
		end
	end
end

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
	if (player:GetClothesEquipped() == self) then
		if player:Alive() and player:GetSubfaith() == "Voltism" then
			Schema:EasyText(player, "peru", "This armor is grafted into this character's skin and fused with their flesh, and cannot be unequipped!");
			return false;
		end
	
		Schema:EasyText(player, "firebrick", "You cannot drop an item you're currently wearing.")
		return false
	end
end

ITEM.runSound = {
	"mvm/player/footsteps/robostep_05.wav",
	"mvm/player/footsteps/robostep_09.wav",
	"mvm/player/footsteps/robostep_13.wav",
	"mvm/player/footsteps/robostep_15.wav",
};

ITEM.walkSound = {
	"mvm/giant_scout/giant_scout_step_01.wav",
	"mvm/giant_scout/giant_scout_step_02.wav",
	"mvm/giant_scout/giant_scout_step_03.wav",
	"mvm/giant_scout/giant_scout_step_04.wav",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Доспехи Мастера Войны";
ITEM.uniqueID = "masteratarms_gatekeeper_plate"
ITEM.group = "gatekeepers/masteratarms";
ITEM.model = "models/begotten/headgroups_props/masteratarmsplate.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/masteratarms_gatekeeper_plate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 80
ITEM.type = "chainmail";
ITEM.weight = 6;
ITEM.weightclass = "Medium";
ITEM.description = "Уникальный комплект доспехов Привратника, изготовленный из лучших материалов и специально разработанный для защиты Мастера Войны";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Gatekeeper"};
ITEM.faction = "Gatekeeper";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.7; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.65; -- reduces pierce damage by 35%
ITEM.slashScale = 0.55; -- reduces slash damage by 45%
ITEM.bulletScale = 0.3; -- reduces bullet damage by 70%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "steel_chunks", "steel_chunks", "iron_chunks", "iron_chunks", "iron_chunks"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-hauberk-1.wav.mp3",
	"armormovement/body-hauberk-2.wav.mp3",
	"armormovement/body-hauberk-3.wav.mp3",
	"armormovement/body-hauberk-4.wav.mp3",
	"armormovement/body-hauberk-5.wav.mp3",
};

ITEM.walkSound = {
	"armormovement/body-hauberk-b4.wav.mp3",
	"armormovement/body-hauberk-b5.wav.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Броня Людоеда";
ITEM.uniqueID = "twisted_fuck_armor";
ITEM.group = "wanderers/wandererbone";
ITEM.model = "models/begotten/headgroups_props/wandererbone.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/twisted_fuck_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.5;
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 25;
ITEM.weight = 2.5;
ITEM.weightclass = "Light";
ITEM.type = "leather";
ITEM.description = "Созданная из костей бесчисленных жертв, эта броня выставляет на общее обозрение извращенный менталитет ее владельца. Гремит при движении, что придает ей особенно устрашающий вид.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.excludeFactions = {"Goreic Warrior"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.bluntScale = 0.60; -- reduces blunt damage by 40%
ITEM.stabilityScale = 0.50; -- reduces stability damage by 50%

ITEM.components = {breakdownType = "breakdown", items = {"human_bone", "human_bone", "human_bone", "human_bone", "human_bone", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/rattle1.mp3",
	"armormovement/rattle2.mp3",
	"armormovement/rattle3.mp3",
	"armormovement/rattle4.mp3",
	"armormovement/rattle5.mp3",
	"armormovement/rattle6.mp3",
	"armormovement/rattle7.mp3",
	"armormovement/rattle8.mp3",
	"armormovement/rattle9.mp3",
};

ITEM.walkSound = {
	"armormovement/rattle1.mp3",
	"armormovement/rattle2.mp3",
	"armormovement/rattle3.mp3",
	"armormovement/rattle4.mp3",
	"armormovement/rattle5.mp3",
	"armormovement/rattle6.mp3",
	"armormovement/rattle7.mp3",
	"armormovement/rattle8.mp3",
	"armormovement/rattle9.mp3",
};

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Полулаты Привратника";
ITEM.uniqueID = "gatekeeper_halfplate";
ITEM.group = "gatekeepers/gatekeeperhalfplate";
ITEM.model = "models/begotten/items/gatekeeperhalfplate.mdl"
ITEM.iconoverride = "begotten/ui/itemicons/gatekeeperhalfplate.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 48
ITEM.type = "chainmail";
ITEM.weight = 4;
ITEM.weightclass = "Medium";
ITEM.description = "Нагрудник, надеваемый поверх Гамбезона, с цветами Святого Ордена Привратников. Дешевый, но очень практичный элемент доспехов.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Gatekeeper";

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.75; -- reduces slash damage by 25%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM.runSound = {
	"armormovement/body-hauberk-1.wav.mp3",
	"armormovement/body-hauberk-2.wav.mp3",
	"armormovement/body-hauberk-3.wav.mp3",
	"armormovement/body-hauberk-4.wav.mp3",
	"armormovement/body-hauberk-5.wav.mp3",
};

ITEM.walkSound = {
	"armormovement/body-hauberk-b4.wav.mp3",
	"armormovement/body-hauberk-b5.wav.mp3",
};

ITEM:Register();
