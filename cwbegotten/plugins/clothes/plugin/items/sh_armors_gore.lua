local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Армированные Робы Друида Клинка";
ITEM.uniqueID = "armored_blade_druid_robes";
ITEM.group = "goreicwarfighters/armoredbladedruid";
ITEM.model = "models/begotten/headgroups_props/armoredbladedruid.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/armored_blade_druid_robes.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.9
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 55
ITEM.type = "chainmail";
ITEM.weight = 5;
ITEM.weightclass = "Medium";
ITEM.description = "Хотя рожденные Матерью традиционно считаются слабыми, они не считают бой бесполезным, и поэтому вынуждены украшать свои духовные одеяния защитными пластинами. Этот конкретный комплект прекрасно останавливает пули.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior"};
ITEM.excludeSubfactions = {"Clan Grock", "Clan Gore", "Clan Shagalax", "Clan Harald", "Clan Reaver"};

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
ITEM.bulletScale = 0.25; -- reduces bullet damage by 75%

ITEM.attributes = {"mothers_blessing", "increased_regeneration"};
ITEM.components = {breakdownType = "breakdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "leather", "hide", "cloth", "cloth", "cloth"}};

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
ITEM.name = "Робы Друида Клинка";
ITEM.uniqueID = "blade_druid_robes";
ITEM.group = "goreicwarfighters/bladedruid";
ITEM.model = "models/begotten/headgroup_props/bladedruidrobes.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/blade_druid_robes.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.9
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 25
ITEM.type = "leather";
ITEM.weight = 2;
ITEM.weightclass = "Light";
ITEM.description = "Слои шкуры и протравленной ткани напоминают мистические одеяния. Сшиты по образу и подобию древнего ордена друидов, которые были основателями общества и религии Горов. Считается, что только те, кто родился под образом Матери, могут носить такие одеяния.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.requireFaction = {"Goreic Warrior"};
ITEM.excludeSubfactions = {"Clan Grock", "Clan Gore", "Clan Shagalax", "Clan Harald", "Clan Reaver"};

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
	[DMG_FALL] = -0.25, -- increases fall damage by 25%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.95; -- reduces pierce damage by 5%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%

ITEM.attributes = {"mothers_blessing", "increased_regeneration"};
ITEM.components = {breakdownType = "breakdown", items = {"hide", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Морячка Горов";
ITEM.uniqueID = "gore_seafarer_garb";
ITEM.group = "goreicwarfighters/goreseafarer";
ITEM.model = "models/begotten/headgroup_props/seafarerarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_seafarer_garb.png"
ITEM.category = "Armor"
ITEM.weight = 2;
ITEM.description = "Меховой плащ, который традиционно носят горийские морские налетчики. Не предоставляет никакой защиты.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.requireFaction = {"Goreic Warrior"};

ITEM.components = {breakdownType = "breakdown", items = {"cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Шкуры Берсерка Горов";
ITEM.uniqueID = "gore_beserker_armor"; -- due to typo in the old name
ITEM.group = "goreicwarfighters/goreberzerker";
ITEM.model = "models/begotten/headgroup_props/berzerkerarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_beserker_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.9
ITEM.hasHelmet = true;
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 25
ITEM.type = "leather";
ITEM.weight = 2;
ITEM.weightclass = "Light";
ITEM.description = "Медвежья шкура, которую обычно носят горейские берсерки, самые грозные и бесстрашные воины, разрывающие своих врагов в клочья.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.attributes = {"lifeleech", "rage"};
ITEM.requireFaction = {"Goreic Warrior"};
ITEM.excludeSubfactions = {"Clan Grock", "Clan Crast", "Clan Shagalax", "Clan Harald", "Clan Reaver"};

ITEM.effectiveLimbs = {
	[HITGROUP_HEAD] = true,
}

ITEM.bluntScale = 0.60; -- reduces blunt damage by 40%
ITEM.stabilityScale = 0.50; -- reduces stability damage by 50%

ITEM.components = {breakdownType = "breakdown", items = {"hide", "hide", "bearskin", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Кольчуга Горов";
ITEM.uniqueID = "gore_chainmail_armor";
ITEM.group = "goreicwarfighters/gorechainmail";
ITEM.model = "models/begotten/headgroup_props/gorechainmalarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_chainmail.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.9
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 50
ITEM.type = "chainmail";
ITEM.weight = 5;
ITEM.weightclass = "Medium";
ITEM.description = "Грубой сделанная польчуга, надетая поверх кожаной и меховой одежды. Обеспечивает достойную защиту от вражеского оружия и стихий.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
ITEM.excludeSubfactions = {"Clan Grock"};

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

ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "cloth", "cloth", "leather", "cloth"}};

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
ITEM.name = "Латы Хускарла";
ITEM.uniqueID = "gore_housecarl_armor";
ITEM.group = "goreicwarfighters/gorehousecarl";
ITEM.model = "models/begotten/headgroup_props/housecarlarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_housecarl_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 75;
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.type = "chainmail";
ITEM.description = "Доспехи горейского хускарла: сочетание цепной и шагалакской чешуйчатой брони с богатыми кожаными элементами.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior"};
ITEM.excludeSubfactions = {"Clan Grock"};

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
	[DMG_FALL] = -0.25, -- increases fall damage by 25%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.65; -- reduces bullet damage by 35%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks", "steel_chunks", "leather", "leather", "leather", "cloth"}};

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
ITEM.name = "Костянка Гроков";
ITEM.uniqueID = "grockling_rattleshirt_armor";
ITEM.model = "models/begotten/headgroup_props/rattleshirtarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/grockling_rattleshirt_armor.png"
ITEM.category = "Armor"
ITEM.concealsFace = true;
ITEM.conditionScale = 0.9
ITEM.hasHelmet = true;
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 35;
ITEM.weight = 3;
ITEM.weightclass = "Light";
ITEM.type = "leather";
ITEM.description = "Соединенные между собой кости человека и животного образуют защитные пластины. Голова минотавра, образующая ужасающий боевой шлем. Доспехи дребезжат при движении, что придает им особенно устрашающий вид. Эта броня уникально подходит для защиты от тупых атак.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.attributes = {"fear"};
ITEM.requireFaction = {"Goreic Warrior"};
ITEM.excludeSubfactions = {"Clan Reaver", "Clan Harald", "Clan Gore", "Clan Shagalax", "Clan Crast"};
ITEM.overlay = "begotten/zomboverlay/skullhelm";

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

ITEM.bluntScale = 0.60; -- reduces blunt damage by 40%
ITEM.slashScale = 0.90; -- reduces slash damage by 10%
ITEM.stabilityScale = 0.50; -- reduces stability damage by 50%

ITEM.components = {breakdownType = "breakdown", items = {"human_bone", "human_bone", "human_bone", "human_bone", "human_bone", "human_bone", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/goreicwarfighters/gorechieftan.mdl";
	--else
		--return "models/begotten/goreicwarfighters/gorechieftan.mdl";
	--end;
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
ITEM.name = "Броня Горейского Воина";
ITEM.uniqueID =  "warfighter_armor";
ITEM.group = "goreicwarfighters/warfighter";
ITEM.model = "models/begotten/headgroup_props/warfighterarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/warfighter_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.9
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 33
ITEM.type = "leather";
ITEM.weight = 2;
ITEM.weightclass = "Light";
ITEM.description = "Кожаные доспехи, которые обычно носят воины клана Гор. Она обеспечивает разумную степень защиты, не снижая при этом мобильности.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.requireFaction = {"Goreic Warrior"};

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

ITEM.components = {breakdownType = "breakdown", items = {"leather", "leather", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)

end;

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Кольчуга Клана Харальд";
ITEM.uniqueID = "haralder_chainmail";
ITEM.group = "goreicwarfighters/haralderchainmail";
ITEM.model = "models/begotten/headgroup_props/haralderarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/haralder_chainmail.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.9
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 50
ITEM.type = "chainmail";
ITEM.weight = 5;
ITEM.weightclass = "Medium";
ITEM.description = "Безрукавная кольчуга поверх кожаной одежды, стилизованной по моде клана Харальд. Лоскутная кожа отдает сильным запахом северных морей.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
ITEM.excludeSubfactions = {"Clan Grock"};

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
ITEM.pierceScale = 0.80; -- reduces pierce damage by 20%
ITEM.slashScale = 0.75; -- reduces slash damage by 25%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.90; -- reduces bullet damage by 10%

ITEM.components = {breakdownType = "meltdown", items = {"iron_chunks", "iron_chunks", "iron_chunks", "leather", "cloth", "cloth", "cloth"}};

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
ITEM.name = "Латы Красного Волка";
ITEM.uniqueID = "red_wolf_plate";
ITEM.group = "goreicwarfighters/reaverplate";
ITEM.model = "models/begotten/headgroup_props/reaverplate.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/bjornling_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 80;
ITEM.weight = 12;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Тяжелые доспехи элитных воинов клана Ривер, изготовленные из слитков черной адской стали. Украшенные черепами, шкурами людей и демонов, Красные Волки клана Ривер заботятся о том, чтобы их видели на поле Боя.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior"};
ITEM.excludeSubfactions = {"Clan Harald", "Clan Gore", "Clan Shagalax", "Clan Crast", "Clan Grock"};

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
	[DMG_FALL] = -0.25, -- increases fall damage by 25%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.50; -- reduces bullet damage by 50%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "iron_chunks", "iron_chunks", "human_bone", "human_bone"}};

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
ITEM.name = "Горейский Ламмелярный Доспех";
ITEM.uniqueID = "gore_lamellar"
ITEM.group = "goreicwarfighters/gorelamellar";
ITEM.model = "models/begotten/headgroups_props/gorelamellar.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/gore_lamellar.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.9
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 65
ITEM.type = "plate";
ITEM.weight = 6.5;
ITEM.weightclass = "Medium";
ITEM.description = "Стальные пластины, расположенные в виде рыбьей чешуи на плаще-гамбезоне. Он обеспечивает прекрасную защиту, при этом не слишком сковывает движения.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
ITEM.excludeSubfactions = {"Clan Grock"};

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

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "steel_chunks", "steel_chunks", "leather", "cloth", "cloth", "cloth"}};

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
ITEM.name = "Доспех Избранного";
ITEM.uniqueID = "gore_kings_chosen_armor";
ITEM.group = "goreicwarfighters/gorescale";
ITEM.model = "models/begotten/headgroups_props/gorescalearmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/chosenarmor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.75
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 85;
ITEM.weight = 9;
ITEM.weightclass = "Heavy";
ITEM.type = "chainmail";
ITEM.description = "Превосходный чешуйчатый доспех, используемый самыми достойными и сильными горейскими воинами. Она украшена латунными эмблемами пантеона семьи и великого дерева. Это доспехи, которые могут похвастаться благословление со стороны самих богов.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior"};
ITEM.excludeSubfactions = {"Clan Grock"};

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
	[DMG_FALL] = -0.25, -- increases fall damage by 25%
}

ITEM.bluntScale = 0.70; -- reduces blunt damage by 30%
ITEM.pierceScale = 0.70; -- reduces pierce damage by 30%
ITEM.slashScale = 0.60; -- reduces slash damage by 40%
ITEM.bulletScale = 0.30; -- reduces bullet damage by 70%
ITEM.stabilityScale = 0.45; -- reduces stability damage by 55%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "fine_steel_chunks", "leather", "leather", "leather", "cloth"}};

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
ITEM.name = "Древние Робы Друида Клинка";
ITEM.uniqueID = "elder_druid_robes";
ITEM.model = "models/begotten/headgroups_props/elderdruid.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/elder_druid_robes.png"
ITEM.helmetIconOverride = "materials/begotten/ui/itemicons/gore_skull_helm.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.9
ITEM.hitParticle = "GlassImpact";
ITEM.protection = 55
ITEM.type = "leather";
ITEM.hasHelmet = true;
ITEM.weight = 3.5;
ITEM.weightclass = "Light";
ITEM.description = "Оригинальный комплект одеяний друида клинка, каким-то образом хорошо хранившийся на протяжении веков. Она постоянно прикреплена к шлему Грозного Минотавра и надежно защищена аурой Матери. Похоже, что пули совершенно не эффективны против этих доспехов.";
ITEM.useSound = "npc/combine_soldier/zipline_clothing2.wav";
ITEM.requireFaction = {"Goreic Warrior"};
ITEM.excludeSubfactions = {"Clan Grock", "Clan Gore", "Clan Shagalax", "Clan Harald", "Clan Reaver"};
ITEM.overlay = "begotten/zomboverlay/skullhelm";

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
	[DMG_FALL] = -0.25, -- increases fall damage by 25%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.85; -- reduces stability damage by 15%
ITEM.bulletScale = 0.10; -- reduces bullet damage by 90%

ITEM.attributes = {"mothers_blessing", "increased_regeneration", "fear"};
ITEM.components = {breakdownType = "breakdown", items = {"hide", "hide", "cloth", "cloth", "cloth"}};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/goreicwarfighters/elderdruid.mdl";
	--else
		--return "models/begotten/satanists/lordvasso/male_56.mdl";
	--end;
end;

ITEM:Register();

local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Ламмелярный Доспех Мародера";
ITEM.uniqueID = "reaver_marauder_lamellar"
ITEM.group = "goreicwarfighters/reaver_marauder";
ITEM.model = "models/begotten/items/reaver_marauder_item.mdl"
ITEM.iconoverride = "begotten/ui/itemicons/reaver_marauder_item.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.80
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 65;
ITEM.weight = 6.5;
ITEM.weightclass = "Medium";
ITEM.type = "plate";
ITEM.description = "Снаряжение из пластинчатого и холоднокованного черного железа. Она покрыта эмблемами и рунами клана Ривер и даже чужеземными символами из далеких северных пустошей. Широко используется в горейских отрядах благодаря прочному защитному металлическому покрытию.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior", "Wanderer"};
ITEM.excludeSubfactions = {"Clan Harald", "Clan Gore", "Clan Shagalax", "Clan Crast", "Clan Grock"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true,
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.80; -- reduces bullet damage by 20%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "iron_chunks", "iron_chunks", "human_bone", "human_bone"}, xp = 30};

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
ITEM.name = "Ламмелярный Доспех Ривера-Дроттинна";
ITEM.uniqueID = "reaver_drottinn_lamellar";
ITEM.group = "goreicwarfighters/reaver_chief";
ITEM.model = "models/begotten/items/reaver_marauder_item.mdl"
ITEM.iconoverride = "begotten/ui/itemicons/reaver_marauder_item.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0.80
ITEM.hitParticle = "MetalSpark";
ITEM.protection = 70;
ITEM.weight = 7.5;
ITEM.weightclass = "Medium";
ITEM.type = "plate";
ITEM.description = "Комплект черненых ламелляров, используемых мучителями, палачами и командирами далеких Мародеров. Эти доспехи были сделаны, чтобы похвастаться горейским мастерством владения тьмой; чтобы использовать ее силу, не будучи ее объектом.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior"};
ITEM.excludeSubfactions = {"Clan Harald", "Clan Gore", "Clan Shagalax", "Clan Crast", "Clan Grock"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_STOMACH] = true,
	[HITGROUP_LEFTARM] = true,
	[HITGROUP_RIGHTARM] = true,
	[HITGROUP_LEFTLEG] = true,
	[HITGROUP_RIGHTLEG] = true,
	[HITGROUP_GEAR] = true,
}

ITEM.damageTypeScales = {
	[DMG_FALL] = -0.10, -- increases fall damage by 10%
}

ITEM.bluntScale = 0.75; -- reduces blunt damage by 25%
ITEM.pierceScale = 0.85; -- reduces pierce damage by 15%
ITEM.slashScale = 0.70; -- reduces slash damage by 30%
ITEM.stabilityScale = 0.75; -- reduces stability damage by 25%
ITEM.bulletScale = 0.75; -- reduces bullet damage by 25%

ITEM.components = {breakdownType = "meltdown", items = {"fine_steel_chunks", "fine_steel_chunks", "iron_chunks", "iron_chunks", "human_bone", "human_bone"}};

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