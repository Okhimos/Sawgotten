--[[
	BEGOTTEN III: Developed by DETrooper, cash wednesday, gabs & alyousha35
--]]

local COMMAND = Clockwork.command:New("ContSetMessage")
COMMAND.tip = "Установите сообщение контейнера."
COMMAND.text = "<Установите Сообщение>"
COMMAND.flags = CMD_DEFAULT
COMMAND.arguments = 1
COMMAND.access = "o";

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local trace = player:GetEyeTraceNoCursor()

	if (IsValid(trace.Entity)) then
		if (Clockwork.entity:IsPhysicsEntity(trace.Entity)) then
			trace.Entity.cwMessage = arguments[1]
			cwStorage:SaveStorage()

			Schema:EasyText(player, "cornflowerblue", "["..self.name.."] Вы установили сообщение на этот Контейнер.")
		else
			Schema:EasyText(player, "grey", "["..self.name.."] Это недействительный Контейнер.")
		end
	else
		Schema:EasyText(player, "grey", "["..self.name.."] Это недействительный Контейнер!")
	end
end

COMMAND:Register()