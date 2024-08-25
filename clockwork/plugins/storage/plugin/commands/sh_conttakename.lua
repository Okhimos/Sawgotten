--[[
	BEGOTTEN III: Developed by DETrooper, cash wednesday, gabs & alyousha35
--]]

local COMMAND = Clockwork.command:New("ContTakeName")
COMMAND.tip = "Дай имя Контейнеру."
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "a"

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local trace = player:GetEyeTraceNoCursor()

	if (IsValid(trace.Entity)) then
		if (Clockwork.entity:IsPhysicsEntity(trace.Entity)) then
			local model = string.lower(trace.Entity:GetModel())
			local name = table.concat(arguments, " ")

			if (cwStorage.containerList[model]) then
				if (!trace.Entity.cwInventory) then
					cwStorage.storage[trace.Entity] = trace.Entity
					trace.Entity.cwInventory = {}
				end

				trace.Entity:SetNetworkedString("Name", "")
				cwStorage:SaveStorage()
				
				Schema:EasyText(player, "cornflowerblue", "Имя контейнера было Удалено!")
			else
				Schema:EasyText(player, "grey", "["..self.name.."] Это недействительный контейнер!")
			end
		else
			Schema:EasyText(player, "grey", "["..self.name.."] Это недействительный контейнер!")
		end
	else
		Schema:EasyText(player, "grey", "["..self.name.."] Это недействительный контейнер!")
	end
end

COMMAND:Register()