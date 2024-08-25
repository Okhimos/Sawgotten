local ITEM = Clockwork.item:New("clothes_base");
ITEM.name = "Броня Лорда Вассо";
ITEM.uniqueID = "lord_vasso_armor";
ITEM.model = "models/begotten/headgroup_props/hellspikearmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/lord_vasso_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0 -- item does not degrade
--ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.isUnique = true;
ITEM.protection = 90;
ITEM.weight = 6;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Личный комплект выкованных в аду доспехов лорда Вассо, стиль которых напоминает о временах до появления Империи Света.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Children of Satan"};

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	--[HITGROUP_HEAD] = true,
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
ITEM.pierceScale = 0.60; -- reduces pierce damage by 40%
ITEM.slashScale = 0.50; -- reduces slash damage by 50%
ITEM.bulletScale = 0.15; -- reduces bullet damage by 85%
ITEM.stabilityScale = 0.20; -- reduces stability damage by 80%

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/satanists/lordvasso/male_56.mdl";
	--else
		--return "models/begotten/satanists/lordvasso/male_56.mdl";
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
ITEM.name = "Латы Верховного Рыцаря";
ITEM.uniqueID = "grand_knight_armor";
ITEM.model = "models/begotten/headgroup_props/knightarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/grand_knight_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0 -- item does not degrade
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.isUnique = true;
ITEM.protection = 90;
ITEM.weight = 6;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Пластинчатый доспех, покрытый святой тканью и благословенными символами. Шлем, выкованный из Максимиллианской стали с золотыми гравюрами. Он предназначался для самых сильных воинов Сияния.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	[HITGROUP_HEAD] = true,
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
ITEM.pierceScale = 0.60; -- reduces pierce damage by 40%
ITEM.slashScale = 0.50; -- reduces slash damage by 50%
ITEM.bulletScale = 0.15; -- reduces bullet damage by 85%
ITEM.stabilityScale = 0.20; -- reduces stability damage by 80%

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/gatekeepers/grandknight.mdl";
	--else
		--return "models/begotten/gatekeepers/grandknight.mdl";
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
ITEM.name = "Доспех Чемпиона Красных Волков";
ITEM.uniqueID = "bjorling_red_wolf_plate";
ITEM.model = "models/begotten/headgroup_props/reaverplate.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/bjornling_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0 -- item does not degrade
ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.isUnique = true;
ITEM.protection = 90;
ITEM.weight = 8;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Тяжелая броня из адского черного железа. Украшенные черепами и шкурами людей и демонов, Красные Волки Клана Ривера следят за тем, чтобы о них знали.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior"};

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
ITEM.pierceScale = 0.60; -- reduces pierce damage by 40%
ITEM.slashScale = 0.50; -- reduces slash damage by 50%
ITEM.bulletScale = 0.15; -- reduces bullet damage by 85%
ITEM.stabilityScale = 0.20; -- reduces stability damage by 80%

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/goreicwarfighters/bjornling.mdl";
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
ITEM.name = "Латы Короля Горов";
ITEM.uniqueID = "gore_king_plate";
ITEM.model = "models/begotten/headgroup_props/housecarlarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/lord_vasso_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0 -- item does not degrade
--ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.isUnique = true;
ITEM.protection = 90;
ITEM.weight = 6;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Броня, выкованная из превосходной Шагалакской стали. Она предназначена для Короля Народа Копья.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior"};

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	--[HITGROUP_HEAD] = true,
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
ITEM.pierceScale = 0.60; -- reduces pierce damage by 40%
ITEM.slashScale = 0.50; -- reduces slash damage by 50%
ITEM.bulletScale = 0.15; -- reduces bullet damage by 85%
ITEM.stabilityScale = 0.20; -- reduces stability damage by 80%

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/goreicwarfighters/goreking.mdl";
	--else
		--return "models/begotten/satanists/lordvasso/male_56.mdl";
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
ITEM.name = "Доспехи Черного Волка";
ITEM.uniqueID = "black_wolf_armor";
ITEM.model = "models/begotten/headgroup_props/housecarlarmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/lord_vasso_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0 -- item does not degrade
--ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.isUnique = true;
ITEM.protection = 90;
ITEM.weight = 6;
ITEM.weightclass = "Heavy";
ITEM.type = "chainmail";
ITEM.description = "Шагалакская кольчуга, вареная кожа и окровавленная волчья шкура. Жестокий комплект доспехов, который хорошо справляется со своей задачей.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Goreic Warrior"};

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	--[HITGROUP_HEAD] = true,
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
ITEM.pierceScale = 0.60; -- reduces pierce damage by 40%
ITEM.slashScale = 0.50; -- reduces slash damage by 50%
ITEM.bulletScale = 0.15; -- reduces bullet damage by 85%
ITEM.stabilityScale = 0.20; -- reduces stability damage by 80%

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/goreicwarfighters/shingar.mdl";
	--else
		--return "models/begotten/satanists/lordvasso/male_56.mdl";
	--end;
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
ITEM.name = "Броня Императора Вараздат";
ITEM.uniqueID = "varazdat_emperor_armor";
ITEM.model = "models/begotten/headgroup_props/hellspikearmor.mdl"
ITEM.iconoverride = "materials/begotten/ui/itemicons/lord_vasso_armor.png"
ITEM.category = "Armor"
ITEM.conditionScale = 0 -- item does not degrade
--ITEM.hasHelmet = true;
ITEM.hitParticle = "MetalSpark";
ITEM.isUnique = true;
ITEM.protection = 90;
ITEM.weight = 6;
ITEM.weightclass = "Heavy";
ITEM.type = "plate";
ITEM.description = "Доспехи императора Восточной Нигерийской империи. Они явно рассчитаны на дородную фигуру.";
ITEM.useSound = "armormovement/body-armor-b4.WAV.mp3";
ITEM.requireFaction = {"Children of Satan"};

ITEM.requiredbeliefs = {"hauberk"};

ITEM.effectiveLimbs = {
	[HITGROUP_GENERIC] = true,
	[HITGROUP_CHEST] = true,
	--[HITGROUP_HEAD] = true,
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
ITEM.pierceScale = 0.60; -- reduces pierce damage by 40%
ITEM.slashScale = 0.50; -- reduces slash damage by 50%
ITEM.bulletScale = 0.15; -- reduces bullet damage by 85%
ITEM.stabilityScale = 0.20; -- reduces stability damage by 80%

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	--if (player:GetGender() == GENDER_FEMALE) then
		return "models/begotten/satanists/emperorvarazdat.mdl";
	--else
		--return "models/begotten/satanists/lordvasso/male_56.mdl";
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