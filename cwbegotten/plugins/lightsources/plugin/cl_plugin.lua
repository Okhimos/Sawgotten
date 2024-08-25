--[[
	Begotten III: Jesus Wept
--]]

-- A function to get the oil text.
function cwLantern:GetOilText()
	local oil = Clockwork.Client:GetNetVar("oil", 0);
	local text = "No Information";

	if (oil) then
		if (oil <= 100 and oil >= 60) then
			text = "Полная Лампа";
		elseif (oil < 60 and oil >= 15) then
			text = "Масло Убывает...";
		elseif (oil < 15 and oil >= 1) then
			text = "Масло Скоро Кончится...";
		elseif (oil <= 0) then
			text = "Масло Закончилось";
		end;
	end;
	
	return text;
end;