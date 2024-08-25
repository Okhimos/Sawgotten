local ITEM = Clockwork.item:New();
	ITEM.name = "Кодовый Замок";
	ITEM.model = "models/props_wasteland/prison_padlock001a.mdl";
	ITEM.weight = 0.5;
	ITEM.category = "Locks";
	ITEM.description = "Обычный на вид замок с 4-значным кодом.";
	ITEM.lockType = "combo";

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		local trace = player:GetEyeTraceNoCursor();
		local entity = trace.Entity;
		
		if (IsValid(entity)) then
			cwStorage:ApplyLock(player, self, entity);
		end;
		
		return false;
	end;
ITEM:Register();