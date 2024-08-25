local ITEM = Clockwork.item:New();
	ITEM.name = "Отмычка";
	ITEM.uniqueID = "lockpick";
	ITEM.model = "models/items/special/lockpicks/lockpick_01.mdl";
	ITEM.weight = 0.2;
	ITEM.category = "Tools";
	ITEM.stackable = true;
	ITEM.description = "Ржавая отмычка, похоже, она едва ли выдержет резкое движение.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png"
	
	ITEM.itemSpawnerInfo = {category = "Junk", rarity = 350, onGround = false};

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();