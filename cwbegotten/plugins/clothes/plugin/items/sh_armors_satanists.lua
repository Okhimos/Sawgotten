local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Латы Темноземского Стража";
ITEM.uniqueID = "darklander_spice_guard_armor";
ITEM.model = "models/begotten/headgroups_props/spiceguard.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/darklander_spice_guard_armor.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0.75
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 62;
ITEM.weight = 7;
ITEM.weightclass = "Medium";
ITEM.type = "plate";
ITEM.description = "Отлитый из самой чистой адской стали и украшенный тончайшим шелком с востока, этот комплект доспехов явно когда-то принадлежал члену Темноземской Стражи. Эти темноземские войны охраняют торговые пути и сопровождают купцов.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaith = {"Faith of the Dark"};
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.overlay = "begotten/zomboverlay/helmeyes";
ITEM.faction = "Children of Satan";

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
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks", "steel_chunks", "steel_chunks", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/satanists/darklanderspiceguard.mdl";
	--else
		--return "models/begotten/satanists/darklanderspiceguard.mdl";
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
ITEM.name = "Латы Рока";
ITEM.uniqueID = "dread_armor";
ITEM.model = "models/begotten/headgroup_props/dreadarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/dread_armor.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0.75
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 80;
ITEM.weight = 9;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Тяжелые доспехи, выкованные в адском пламени и подобающие только самым верным последователям Темного Лорда. Адская сталь обеспечивает превосходную защиту от всех видов повреждений.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaith = {"Faith of the Dark"};
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.overlay = "begotten/zomboverlay/helmeyes";
ITEM.faction = "Children of Satan";

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
ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/satanists/dreadarmor.mdl";
	--else
		--return "models/begotten/satanists/dreadarmor.mdl";
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
ITEM.name = "Элегантные Робы";
ITEM.uniqueID = "elegant_robes";
ITEM.group = "satanists/elegantrobes";
ITEM.model = "models/begotten/headgroup_props/elegantrobes.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/elegant_robes.png"
ITEM.category = "Armor"
ITEM.conditionScale = 1.1
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 45
ITEM.type = "leather";
ITEM.weight = 2;
ITEM.weightclass = "Light";
ITEM.description = "Элегантные одеяния, подобающие только выдающимся последователям Сатаны. Она создана из экзотических тканей, которые демонстрируют превосходство и богатство, а также обеспечивают непревзойденную защиту, не уступая в изяществе и подвижности.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.requireFaith = {"Faith of the Dark"};
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Children of Satan";

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

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%

ITEM.components = {breakdownType = "breakdown", items = {"fine_steel_chunks", "cloth", "cloth", "cloth", "cloth", "cloth", "cloth"}};

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
ITEM.name = "Укрепленные Адские Латы";
ITEM.uniqueID = "heavy_hellplate_armor";
ITEM.group = "satanists/hellplateheavy";
ITEM.model = "models/begotten/headgroup_props/hellplateheavyarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/heavy_hellplate_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 85;
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Когда-то эти доспехи были достойной броней Белых Стражей и символом Дома Филимаксио, но с тех пор они многократно переплавлялись в адском пламени, лишь отдаленно напоминая свою первоначальную форму. Ее существование - позор для Ордена Привратников и откровенная насмешка над Светом. Именно этот комплект был усилен дополнительными пластинами, что сделало его высокозащитным за счет снижения подвижности и изящества.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaith = {"Faith of the Dark"};
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Children of Satan";

ITEM.requiredbeliefs = {"hauberk"};

-- specifies which hitgroups will be affected by blunt, slash, pierce and other damage type scaling.
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

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks", "steel_chunks", "steel_chunks", "steel_chunks", "cloth", "cloth"}};

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
ITEM.name = "Адские Латы";
ITEM.uniqueID = "hellplate_armor"
ITEM.group = "satanists/hellplatemedium";
ITEM.model = "models/begotten/headgroup_props/hellplatemediumarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/hellplate_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.9
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 65;
ITEM.weight = 5;
ITEM.weightclass = "Medium";
ITEM.type = "plate";
ITEM.description = "Когда-то эти доспехи были достойной броней Белых Стражей и символом Дома Филимаксио, но с тех пор они многократно переплавлялись в адском пламени, лишь отдаленно напоминая свою первоначальную форму. Ее существование - позор для Ордена Привратников и откровенная насмешка над Светом.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaith = {"Faith of the Dark"};
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.faction = "Children of Satan";

-- specifies which hitgroups will be affected by blunt, slash, pierce and other damage type scaling.
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

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "steel_chunks", "steel_chunks", "cloth", "cloth"}};

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
ITEM.name = "Шипастые Латы Ада";
ITEM.uniqueID = "hellspike_armor"
ITEM.model = "models/begotten/headgroup_props/hellspikearmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/hellspike_armor.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0.75
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 75;
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Набор металлических пластинчатых доспехов, украшенных шипами, дизайн которых был родом из Темных земель. Когда-то эти восточные виды доспехов были ценным достоянием в коллекциях глазикских дворян, но теперь они стали синонимом последователей Темного Властелина.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaith = {"Faith of the Dark"};
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.overlay = "begotten/zomboverlay/helmeyes";
ITEM.faction = "Children of Satan";

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

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks", "iron_chunks", "iron_chunks", "iron_chunks", "iron_chunks"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/satanists/hellspike_armor.mdl";
	--else
		--return "models/begotten/satanists/hellspike_armor.mdl";
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
ITEM.name = "Латы Ужаса";
ITEM.uniqueID = "wraith_armor";
ITEM.model = "models/begotten/headgroup_props/wraitharmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/wraith_armor.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0.75
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 80;
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Говорят, что в доспехах из кованой в аду стали хранятся кости многих жертвоприношений. Они выполнены в форме скелета и, несомненно, наводят ужас на врагов.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaith = {"Faith of the Dark"};
ITEM.excludeFactions = {"Goreic Warrior"};
ITEM.overlay = "begotten/zomboverlay/skullhelm";
ITEM.faction = "Children of Satan";

ITEM.attributes = {"fear"};
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

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "human_bone", "human_bone", "human_bone", "human_bone", "human_bone"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/satanists/wraitharmor.mdl";
	--else
		--return "models/begotten/satanists/hellspike_armor.mdl";
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
ITEM.name = "Темноземские Латы Бессмертного";
ITEM.uniqueID = "darklander_immortal_armor";
ITEM.model = "models/begotten/headgroups_props/darklanderimmortal.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/darklander_immortal_armor.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0.75
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 85;
ITEM.weight = 11;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Тяжелые пластинчатые доспехи, изготовленные в Восточной Нигерии. Они предназначены для печально известных Бессмертных, элитного отряда воинов, преданных императору. Темная магия не позволяет носить эти доспехи никому, кроме потомков Царя царей.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Children of Satan"};
ITEM.overlay = "begotten/zomboverlay/skullhelm";
ITEM.faction = "Children of Satan";

ITEM.requiredbeliefs = {"hauberk"};
ITEM.requireSubfaction = {"Varazdat"};

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
ITEM.bulletScale = 0.70; -- reduces bullet damage by 30%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "human_bone", "human_bone", "human_bone", "human_bone", "human_bone"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/satanists/darklanderimmortal.mdl";
	--else
		--return "models/begotten/satanists/hellspike_armor.mdl";
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