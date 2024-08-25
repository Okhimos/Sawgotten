--[[
	BEGOTTEN III: Developed by DETrooper, cash wednesday, gabs & alyousha35
--]]

local COMMAND = Clockwork.command:New("ContTakePassword")
COMMAND.tip = "Удалить пароль от Контейнера."
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "a"

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

				trace.Entity.cwPassword = nil;
				trace.Entity.cwLockTier = nil;
				trace.Entity:SetNWBool("hasPassword", false);
				trace.Entity:SetNWBool("unlocked", true);
				cwStorage:SaveStorage();

				Schema:EasyText(player, "cornflowerblue", "Пароль на этом контейнере был удален.")
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