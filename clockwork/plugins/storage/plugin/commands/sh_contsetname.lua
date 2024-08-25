--[[
	BEGOTTEN III: Developed by DETrooper, cash wednesday, gabs & alyousha35
--]]

local COMMAND = Clockwork.command:New("ContSetName")
COMMAND.tip = "Установите Название Контейнеру"
COMMAND.text = "[Укажите Название для Контейнера]"
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "a"
COMMAND.arguments = 1

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

				trace.Entity:SetNetworkedString("Name", name)
				cwStorage:SaveStorage()
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