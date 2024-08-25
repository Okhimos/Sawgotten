local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "Черный Коготь";
	ITEM.model = "models/begotten/weapons/uniquegoresword.mdl";
	ITEM.weight = 3;
	ITEM.uniqueID = "begotten_unique_1h_blackclaw";
	ITEM.category = "Melee";
	ITEM.description = "Черный шагалакский стальной меч, каким-то образом выкованный в адском огне. Он проклят душами своих жертв, тысячами павших врагов, блуждающих в черной пустоте без голов. Это оружие явно не предназначено для того, чтобы держать его в руках.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/blackclaw.png"
	ITEM.meleeWeapon = true;
	ITEM.isAttachment = true;
	ITEM.isUnique = true;
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine1";
	ITEM.attachmentOffsetAngles = Angle(273.48, 6.96, 251.6);
	ITEM.attachmentOffsetVector = Vector(-8.49, -12.02, -19.09);
	ITEM.canUseShields = true;
ITEM:Register();