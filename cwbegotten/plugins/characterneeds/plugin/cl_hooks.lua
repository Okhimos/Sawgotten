--[[
	Begotten III: Jesus Wept
--]]

-- 5th is description.
local needTexts = {
	["corruption"] = {"Чистый", "Засоренный", "Испорченный", "Без Надеждый", "Порча представляет собой влияние различных демонических и нечестивых сил на вашего персонажа. Обычно она усиливается из-за участия в нечестивых действиях или из-за отсутствия молитвы. Порча отрицательно влияет на приобретение веры, а высокий уровень порчи может привести к одержимости демонами или подозрениям и казни со стороны духовенства.."},
	["hunger"] = {"Сытый", "Голодный", "Очень Голодный", "Истощенный", "Голод — это мера питания вашего персонажа. Чтобы выжить, вы должны регулярно есть еду. Голод также влияет на скорость регенерации крови."},
	["thirst"] = {"Сытый", "Жаждущий", "Обезвоженный", "Иссохший", "Жажда — это мера гидратации вашего персонажа. Чтобы выжить, вам необходимо регулярно пить воду. Жажда также влияет на скорость регенерации крови и замедляет регенерацию выносливости при низком уровне."},
	["sleep"] = {"Отдохнувший", "Сонный", "Уставший", "Истощенный", "Усталость — это мера истощения вашего персонажа, в основном накапливаемая за время бодрствования, хотя на нее могут влиять и другие факторы. Усталость можно уменьшить с помощью сна или определенных расходных материалов, а когда она низкая, она отрицательно сказывается на регенерации выносливости."},
	["sleepVoltist"] = {"Полностью Работоспособен", "Работоспособен", "Малый Заряд", "Системы Отключаются", "Для вольтистов с убеждением «Желто-черный» усталость — это мера энергии. Она уменьшается со временем или при использовании способностей экзоскелета и может быть восполнена потреблением микросхем или самоэлектризацией."},
};

local needsInverted = {"hunger", "thirst"};

-- Called when the F1 Text is needed.
function cwCharacterNeeds:PostMainMenuRebuild(menu)
	if IsValid(menu) then
		local hunger = tonumber(Clockwork.Client:GetNetVar("hunger"));
		local thirst = tonumber(Clockwork.Client:GetNetVar("thirst"));
		local corruption = tonumber(Clockwork.Client:GetNetVar("corruption"));
		local sleep = tonumber(Clockwork.Client:GetNetVar("sleep"));

		self.hunger = math.Round(hunger);
		self.thirst = math.Round(thirst);
		self.corruption = math.Round(corruption);
		self.sleep = math.Round(sleep);

		if IsValid(menu.statusInfo) then
			local hungerColor = Color(50 + hunger, 100 - hunger, 0, 225);
			local thirstColor = Color(50 + thirst, 100 - thirst, 0, 225);
			local corruptionColor = Color(50 + corruption, 100 - corruption, 0, 225);
			local sleepColor = Color(50 + sleep, 100 - sleep, 0, 225);
		
			menu.statusInfo.iconFrame.iconHunger:SetColor(hungerColor);
			menu.statusInfo.iconFrame.iconHunger.text:SetTextColor(hungerColor);
			menu.statusInfo.iconFrame.iconHunger.text:SetText(tostring(100 - self.hunger).."%");
			
			menu.statusInfo.iconFrame.iconThirst:SetColor(thirstColor);
			menu.statusInfo.iconFrame.iconThirst.text:SetTextColor(thirstColor);
			menu.statusInfo.iconFrame.iconThirst.text:SetText(tostring(100 - self.thirst).."%");
			
			menu.statusInfo.iconFrame.iconCorruption:SetColor(corruptionColor);
			menu.statusInfo.iconFrame.iconCorruption.text:SetTextColor(corruptionColor);
			menu.statusInfo.iconFrame.iconCorruption.text:SetText(tostring(self.corruption).."%");
			
			menu.statusInfo.iconFrame.iconSleep:SetColor(sleepColor);
			menu.statusInfo.iconFrame.iconSleep.text:SetTextColor(sleepColor);
			menu.statusInfo.iconFrame.iconSleep.text:SetText(tostring(self.sleep).."%");
		end
	end;
end

-- A function to get a need's markup tooltip.
function cwCharacterNeeds:BuildNeedTooltip(need, x, y, width, height, frame)
	local needNumber = tonumber(Clockwork.Client:GetNetVar(need));
	local needTextTable = needTexts[need];
	
	if need == "sleep" and cwBeliefs and cwBeliefs:HasBelief("yellow_and_black") then
		needTextTable = needTexts["sleepVoltist"];
	end
	
	if needNumber and needTextTable then
		if table.HasValue(needsInverted, need) then
			local needColor = Color(needNumber, 100 - needNumber, 0, 225);
			local needName = string.upper(string.sub(need, 1, 1))..string.sub(need, 2, #need);
			local selectedText = math.Clamp(math.Round(needNumber / 25), 1, 4);
			
			frame:AddText(needName, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddText(needTextTable[5], Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
			frame:AddBar(20, {{text = tostring(needNumber).."%", percentage = 100 - needNumber, color = needColor, font = "DermaDefault", textless = true, noDisplay = true}}, needTextTable[selectedText], needColor);
		else
			local needColor = Color(needNumber, 100 - needNumber, 0, 225);
			local needName = string.upper(string.sub(need, 1, 1))..string.sub(need, 2, #need);
			local selectedText = math.Clamp(math.Round(needNumber / 25), 1, 4);
			
			if needName == "Sleep" then
				if cwBeliefs and cwBeliefs:HasBelief("yellow_and_black") then 
					needName = "Energy";
				else
					needName = "Fatigue";
				end
			end
			
			frame:AddText(needName, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddText(needTextTable[5], Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
			frame:AddBar(20, {{text = tostring(needNumber).."%", percentage = needNumber, color = needColor, font = "DermaDefault", textless = true, noDisplay = true}}, needTextTable[selectedText], needColor);
		end
	end
end;

function cwCharacterNeeds:ModifyStatusEffects(tab)
	local hunger = tonumber(Clockwork.Client:GetNetVar("hunger"));
	local thirst = tonumber(Clockwork.Client:GetNetVar("thirst"));
	local corruption = tonumber(Clockwork.Client:GetNetVar("corruption"));
	local sleep = tonumber(Clockwork.Client:GetNetVar("sleep"));
	
	if hunger >= 75 then
		table.insert(tab, {text = "(-) Голод", color = Color(200, 40, 40)});
	end
	
	if thirst >= 75 then
		table.insert(tab, {text = "(-) Обезвоживание", color = Color(200, 40, 40)});
	end
	
	if corruption >= 75 then
		table.insert(tab, {text = "(-) Порченный", color = Color(200, 40, 40)});
	end
	
	if sleep >= 75 then
		if cwBeliefs and cwBeliefs:HasBelief("yellow_and_black") then
			table.insert(tab, {text = "(-) Низкий Заряд", color = Color(200, 40, 40)});
		else
			table.insert(tab, {text = "(-) Истощенный", color = Color(200, 40, 40)});
		end
	end
end

-- Called when the screenspace effects are rendered.
function cwCharacterNeeds:RenderScreenspaceEffects()
	if Clockwork.Client:HasInitialized() then
		local hunger = tonumber(Clockwork.Client:GetNetVar("hunger", 0));
		local thirst = tonumber(Clockwork.Client:GetNetVar("thirst", 0));
		
		if hunger > 90 or thirst > 90 then
			DrawMotionBlur(0.05, 1.5, 0.01)
		end;
	end
end;