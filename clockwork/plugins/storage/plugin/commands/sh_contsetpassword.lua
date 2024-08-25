--[[
	BEGOTTEN III: Developed by DETrooper, cash wednesday, gabs & alyousha35
--]]

local COMMAND = Clockwork.command:New("ContSetPassword")
COMMAND.tip = "Установите Пароль на Контейнер"
COMMAND.text = "<Введите пароль, чтобы установить его на контейнер>"
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "a"
COMMAND.arguments = 1

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local trace = player:GetEyeTraceNoCursor()

	if (IsValid(trace.Entity)) then
		if (Clockwork.entity:IsPhysicsEntity(trace.Entity)) then
			local model = string.lower(trace.Entity:GetModel())

			if (cwStorage.containerList[model]) then
				if (!trace.Entity.cwInventory) then
					cwStorage.storage[trace.Entity] = trace.Entity
					trace.Entity.cwInventory = {}
				end

				trace.Entity.cwPassword = table.concat(arguments, " ")
				trace.Entity.cwLockTier = 3;
				trace.Entity:SetNWBool("hasPassword", true);
				trace.Entity:SetNWBool("unlocked", false);
				cwStorage:SaveStorage()

				Schema:EasyText(player, "cornflowerblue", "["..self.name.." Новый пароль этого контейнера: '"..trace.Entity.cwPassword.."'.")
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

local COMMAND = Clockwork.command:New("ContGetPassword")
COMMAND.tip = "Получите пароль от Контейнера"
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "a"

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local trace = player:GetEyeTraceNoCursor()

	if (IsValid(trace.Entity)) then
		if (Clockwork.entity:IsPhysicsEntity(trace.Entity)) then
			if (trace.Entity.cwPassword) then
				Schema:EasyText(player, "cornflowerblue", "["..self.name.."] Пароль этого контейнера:'"..trace.Entity.cwPassword.."'.")
			else
				Schema:EasyText(player, "grey", "["..self.name.."] Это недействительный контейнер или у него нет пароля!")
			end
		else
			Schema:EasyText(player, "grey", "["..self.name.."] Это недействительный контейнер!")
		end
	else
		Schema:EasyText(player, "grey", "["..self.name.."] Это недействительный контейнер!")
	end
end

COMMAND:Register()

local COMMAND = Clockwork.command:New("ContForceOpen")
COMMAND.tip = "Открой Контейнер не Имея Пароля"
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "s"

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local trace = player:GetEyeTraceNoCursor()

	if (IsValid(trace.Entity) and Clockwork.entity:IsPhysicsEntity(trace.Entity)) then
		local model = string.lower(trace.Entity:GetModel())

		if (cwStorage.containerList[model]) then
			local containerWeight = cwStorage.containerList[model][1]

			cwStorage:OpenContainer(player, trace.Entity, containerWeight)
		end
	end
end

COMMAND:Register()