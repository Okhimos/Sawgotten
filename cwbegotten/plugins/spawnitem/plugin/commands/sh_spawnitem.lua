local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("SpawnItem");
COMMAND.tip = "Spawn an item where you are looking.";
COMMAND.text = "<string Item>";
COMMAND.access = "s";
COMMAND.arguments = 1;

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
		local itemTable = Clockwork.item:FindByID(arguments[1]);
				
				if (itemTable and !itemTable.isBaseItem) then
					local trace = player:GetEyeTraceNoCursor();
					
					if (player:GetShootPos():Distance(trace.HitPos) <= 192) then
						local itemTable = Clockwork.item:CreateInstance(itemTable("uniqueID"));
						local entity = Clockwork.entity:CreateItem(player, itemTable, trace.HitPos);
						
						if (IsValid(entity)) then
							Clockwork.entity:MakeFlushToGround(entity, trace.HitPos, trace.HitNormal);
						end;
					else
						Schema:EasyText(player, "firebrick", "Ты не можешь выкинуть свое оружие так далеко!");
					end;
			
			
				else
					Schema:EasyText(player, "grey", "Это не действительный предмет!");
				end;
end;

COMMAND:Register();