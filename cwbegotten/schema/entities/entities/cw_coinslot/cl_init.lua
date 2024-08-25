--[[
	Begotten III: Jesus Wept
	By: DETrooper, cash wednesday, gabs, alyousha35

	Other credits: kurozael, Alex Grist, Mr. Meow, zigbomb
--]]

include("shared.lua");

-- Called when the target ID HUD should be painted.
function ENT:HUDPaintTargetID(x, y, alpha)
	local colorTargetID = Clockwork.option:GetColor("target_id")
	local colorWhite = Clockwork.option:GetColor("white")
	
	y = Clockwork.kernel:DrawInfo("Касса", x, y, colorTargetID, alpha)
	y = Clockwork.kernel:DrawInfo("Древняя машина, которая стоит здесь не просто так. Имеет украшенный слот для монет и пару рычажков.", x, y, colorWhite, alpha);
end;

local function CreateMenu(state)
	if (IsValid(menu)) then
		menu:Remove();
	end;
	
	local scrW = ScrW();
	local scrH = ScrH();
	local menu = DermaMenu();
		
	menu:SetMinimumWidth(150);
	
	if state ~= "Gore" then
		menu:AddOption("Получить Рацион", function() Clockwork.Client:ConCommand("cw_CoinslotRation") end);
		
		if state == "Gatekeeper" then
			if !Clockwork.Client:GetNetVar("collectedGear") then
				menu:AddOption("Получить Набор Привратника", function() Clockwork.Client:ConCommand("cw_CoinslotGear") end);
			end
		end
		
		menu:AddOption("Пожертвовать", function() 
			Derma_StringRequest("Coinslot", "Сколько денег вы хотите пожертвовать?", nil, function(text)
				Clockwork.kernel:RunCommand("CoinslotDonate", text);
			end)
		end);
		
		if cwShacks.shacks and Clockwork.Client:GetFaction() ~= "Holy Hierarchy" then
			local playerShack = Clockwork.Client:GetNetVar("shack");
			
			if !playerShack then
				local subMenu = menu:AddSubMenu("Купить Помещение");
				local marketMenu = subMenu:AddSubMenu("Рыночная Площадь");
				
				for k, v in SortedPairsByMemberValue(cwShacks.shackData["market"], "name") do
					if not cwShacks.shacks[k].owner then
						marketMenu:AddOption("("..tostring(v.price)..") "..v.name, function() Clockwork.kernel:RunCommand("CoinslotPurchase", k) end);
					else
						marketMenu:AddOption("(ПРОДАТЬ) "..v.name, function() end);
					end
				end
				
				local groundFloorMenu = subMenu:AddSubMenu("Первый Этаж");
				
				for k, v in SortedPairsByMemberValue(cwShacks.shackData["floor1"], "name") do
					if not cwShacks.shacks[k].owner then
						groundFloorMenu:AddOption("("..tostring(v.price)..") "..v.name, function() Clockwork.kernel:RunCommand("CoinslotPurchase", k) end);
					else
						groundFloorMenu:AddOption("(ПРОДАТЬ) "..v.name, function() end);
					end
				end
				
				local secondFloorMenu = subMenu:AddSubMenu("Второй Этаж");
				
				for k, v in SortedPairsByMemberValue(cwShacks.shackData["floor2"], "name") do
					if not cwShacks.shacks[k].owner then
						secondFloorMenu:AddOption("("..tostring(v.price)..") "..v.name, function() Clockwork.kernel:RunCommand("CoinslotPurchase", k) end);
					else
						secondFloorMenu:AddOption("(ПРОДАТЬ) "..v.name, function() end);
					end
				end
				
				local thirdFloorMenu = subMenu:AddSubMenu("Третий Этаж");
				
				for k, v in SortedPairsByMemberValue(cwShacks.shackData["floor3"], "name") do
					if not cwShacks.shacks[k].owner then
						thirdFloorMenu:AddOption("("..tostring(v.price)..") "..v.name, function() Clockwork.kernel:RunCommand("CoinslotPurchase", k) end);
					else
						thirdFloorMenu:AddOption("(ПРОДАТЬ) "..v.name, function() end);
					end
				end
				
				local fourthFloorMenu = subMenu:AddSubMenu("Четвертый Этаж");
				
				for k, v in SortedPairsByMemberValue(cwShacks.shackData["floor4"], "name") do
					if not cwShacks.shacks[k].owner then
						fourthFloorMenu:AddOption("("..tostring(v.price)..") "..v.name, function() Clockwork.kernel:RunCommand("CoinslotPurchase", k) end);
					else
						fourthFloorMenu:AddOption("(ПРОДАТЬ) "..v.name, function() end);
					end
				end
			else
				local subMenu = menu:AddSubMenu("Продать Помещение");
				
				for k, v in pairs(cwShacks.shackData) do
					for k2, v2 in pairs(v) do
						if k2 == playerShack then
							subMenu:AddOption("("..tostring(v2.price / 2)..") "..v2.name, function() Clockwork.kernel:RunCommand("CoinslotSell", k2) end);
							
							local ownerData = cwShacks.shacks[k2];
							
							if ownerData then
								if !ownerData.coowners or (table.Count(ownerData.coowners) < cwShacks.maxCoowners) then
									menu:AddOption("Добавить Совладельца", function() Clockwork.kernel:RunCommand("CoinslotAddCoowner") end);
								end

								if ownerData.coowners and table.Count(ownerData.coowners) > 0 then
									local removeMenu = menu:AddSubMenu("Убрать Совладельца");
									
									for k3, v3 in pairs(ownerData.coowners) do
										removeMenu:AddOption(v3, function() Clockwork.kernel:RunCommand("CoinslotRemoveCoowner", k3) end);
									end
								end
							end
						
							break;
						end
					end
				end
			end
		end
	end
	
	if state == "Gatekeeper" then
		local subMenu = menu:AddSubMenu("Зарплата");
		
		subMenu:AddOption("Проверить", function() Clockwork.Client:ConCommand("cw_CoinslotSalaryCheck") end);
		subMenu:AddOption("Получить", function() Clockwork.Client:ConCommand("cw_CoinslotSalary") end);
	end
	
	if state == "Hierarchy" then
		local subMenu = menu:AddSubMenu("Treasury");
		
		subMenu:AddOption("Check", function() Clockwork.Client:ConCommand("cw_CoinslotTreasury") end);
		--[[subMenu:AddOption("Collect", function() 
			Derma_StringRequest("Coinslot", "How much coin would you collect from the Coinslot?", nil, function(text)
				Clockwork.kernel:RunCommand("CoinslotCollect", text);
			end) 
		end);]]--
	elseif Clockwork.Client:IsAdmin() then
		local subMenu = menu:AddSubMenu("(Админ) Казна");
		
		subMenu:AddOption("Проверить", function() Clockwork.Client:ConCommand("cw_CoinslotTreasury") end);
		subMenu:AddOption("Забрать", function() 
			Derma_StringRequest("Coinslot", "How much coin would you collect from the Coinslot?", nil, function(text)
				Clockwork.kernel:RunCommand("CoinslotCollect", text);
			end) 
		end);
		subMenu:AddOption("Установить Пошлину", function() 
			Derma_StringRequest("Coinslot", "Какую Пошлину вы хотите установить? (1-99)", nil, function(text)
				Clockwork.kernel:RunCommand("CoinslotTax", text);
			end) 
		end);
	end
	
	menu:Open();
	menu:SetPos(scrW / 2 - (menu:GetWide() / 2), scrH / 2 - (menu:GetTall() / 2));
end

Clockwork.datastream:Hook("OpenCoinslotMenu", function(state)
	CreateMenu(state);
end);