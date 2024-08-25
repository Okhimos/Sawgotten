--[[
	Begotten III: Jesus Wept
--]]


PLUGIN:SetGlobalAlias("cwCharacterNeeds");

Clockwork.kernel:IncludePrefixed("cl_hooks.lua");
Clockwork.kernel:IncludePrefixed("sh_hooks.lua");
Clockwork.kernel:IncludePrefixed("sv_hooks.lua");
Clockwork.kernel:IncludePrefixed("sv_plugin.lua");

local COMMAND = Clockwork.command:New("Drink");
COMMAND.tip = "Пейте из сохранившихся водоемов. Это следует делать аккуратно, так как вода в них грязная, и питье из них истощит ваш рассудок.";
COMMAND.text = "<none>";

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local waterLevel = player:WaterLevel();

	if (waterLevel >= 1) then
		local lastZone = player:GetCharacterData("LastZone");
		local thirst = player:GetNeed("thirst", 0);
		
		if player:GetSubfaction() == "Varazdat" then
			Schema:EasyText(player, "chocolate", "В этих водах нет крови, пить из них — спорное решение.");
			
			return;
		end;
		
		if cwBeliefs and (player:HasBelief("the_paradox_riddle_equation") or player:HasBelief("the_storm")) then
			Schema:EasyText(player, "maroon", "Вы лакаете воду в свой приемник, но это начинает замыкать ваши системы!");
			player:TakeDamage(25);
			
			return;
		end
		
		if thirst <= 10 then
			Schema:EasyText(player, "chocolate", "Ты не настолько хочешь пить, чтобы пить отсюда.");
			
			return;
		end
		
		if lastZone == "gore" then
			player:HandleNeed("thirst", -25);
			player:EmitSound("npc/barnacle/barnacle_gulp1.wav");
			Schema:EasyText(player, "olivedrab", "Вы пьете чистую воду Горейского Леса, утоляя жажду.");
		else
			if cwRituals and player.drownedKingActive then
				player:HandleNeed("thirst", -25);
				player:EmitSound("npc/barnacle/barnacle_gulp1.wav");
				Schema:EasyText(player, "olivedrab", "Ты пьешь из Порожденных вод, но защита Утонувшего Короля хранит тебя.");
			else
				if cwBeliefs and player:HasBelief("savage_animal") then
					player:HandleNeed("thirst", -25);
					player:EmitSound("npc/barnacle/barnacle_gulp1.wav");
					Schema:EasyText(player, "olivedrab", "Ты пьешь из вкуснейших вод Порожденного.");
				else
					if cwMedicalSystem then
						if cwBeliefs and player:HasBelief("sanitary") then
							player:HandleDiseaseChance("water", 33);
						else
							player:HandleDiseaseChance("water", 80);
						end
					end
				
					player:HandleSanity(-10);
					player:HandleNeed("thirst", -25);
					player:EmitSound("npc/barnacle/barnacle_gulp1.wav");
					Schema:EasyText(player, "olive", "Ты пьешь из Порожденных вод. Кто знает, какую мерзость ты только что поглотил? Ты чувствуешь, как твой рассудок уходит.");
				end
			end
		end
		
		if cwBeliefs then
			player:HandleXP(cwBeliefs.xpValues["drink"]);
		end
	else
		if cwWeather then
			local lastZone = player:GetCharacterData("LastZone");
			local zoneTable = zones:FindByID(lastZone);
			
			if zoneTable.hasWeather then
				local weather = cwWeather.weather;
				
				if weather == "acidrain" or weather == "bloodstorm" or weather == "thunderstorm" then
					local thirst = player:GetNeed("thirst", 0);
					
					if !cwWeather:IsOutside(player:EyePos()) then
						Schema:EasyText(player, "chocolate", "Чтобы пить, нужно стоять под дождем!");
						
						return;
					end
					
					if cwBeliefs and (player:HasBelief("the_paradox_riddle_equation") or player:HasBelief("the_storm")) then
						Schema:EasyText(player, "maroon", "Вы лакаете воду в свой приемник, но это начинает замыкать ваши системы!");
						player:TakeDamage(25);
						
						return;
					end

					if weather == "acidrain" then
						if player:GetSubfaction() == "Varazdat" then
							Schema:EasyText(player, "chocolate", "В этом дожде нет крови, пить из него — спорное решение.");
							
							return;
						end;
						
						if thirst <= 10 then
							Schema:EasyText(player, "chocolate", "Вы не настолько хотите пить, чтобы пить дождевую воду.");
							
							return;
						end
					
						Schema:EasyText(player, "olive", "Вы набираете в ладонь небольшое количество загрязненной дождевой воды, пьете ее и при этом обжигаете себе горло!");
						player:HandleSanity(-5);
						player:HandleNeed("thirst", -15);
						player:EmitSound("npc/barnacle/barnacle_gulp1.wav");
						
						local d = DamageInfo()
						d:SetDamage(math.random(1, 3));
						d:SetDamageType(DMG_BURN);
						d:SetDamagePosition(player:GetPos() + Vector(0, 0, 48));
						
						player:TakeDamageInfo(d);
						
						Clockwork.kernel:PrintLog(LOGTYPE_MAJOR, player:Name().." has taken "..tostring(d:GetDamage()).." damage from drinking acid rain, leaving them at "..player:Health().." health.");
						
						if cwBeliefs then
							player:HandleXP(cwBeliefs.xpValues["drink"]);
						end
						
						return;
					elseif weather == "bloodstorm" then
						if thirst <= 10 then
							Schema:EasyText(player, "chocolate", "Вы не настолько хотите пить, чтобы пить дождевую воду.");
							
							return;
						end
					
						if cwBeliefs and player:HasBelief("savage_animal") then
							player:HandleNeed("thirst", -25);
							player:EmitSound("npc/barnacle/barnacle_gulp1.wav");
							Schema:EasyText(player, "olive", "Вы собираете в ладони небольшое количество вкуснейшей крови и с удовольствием пьете ее!");
						else
							player:HandleSanity(-20);
							player:HandleNeed("thirst", -15);
							player:EmitSound("npc/barnacle/barnacle_gulp1.wav");
							Schema:EasyText(player, "olive", "Вы собираете в ладони небольшое количество дурно пахнущей жидкости и неохотно пьете ее. На вкус она очень железистая.");
						end
						
						if cwBeliefs then
							player:HandleXP(cwBeliefs.xpValues["drink"]);
						end
						
						return;
					elseif weather == "thunderstorm" then
						if player:GetSubfaction() == "Varazdat" then
							Schema:EasyText(player, "chocolate", "В этом дожде нет крови, пить из него — спорное решение.");
							
							return;
						end;
						
						if thirst <= 10 then
							Schema:EasyText(player, "chocolate", "You aren't thirsty enough to drink from the rain.");
							
							return;
						end
						
						player:HandleNeed("thirst", -15);
						player:EmitSound("npc/barnacle/barnacle_gulp1.wav");
						Schema:EasyText(player, "olive", "Вы собираете в ладони немного дождя и пьете его. На вкус он удивительно свежий.");
						
						if cwBeliefs then
							player:HandleXP(cwBeliefs.xpValues["drink"]);
						end
						
						return;
					end
				end
			end
		end
		
		Schema:EasyText(player, "firebrick", "Вы должны находиться рядом с источником питьевой воды!");
	end;
end;

COMMAND:Register();

local COMMAND = Clockwork.command:New("Sleep");
COMMAND.tip = "Постараетесь поспать. Учтите, что вы будете чувствовать голод и жажду, и что сон на земле не будет таким же эффективным, как сон в нормальной постели.";
COMMAND.text = "<none>";

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	if cwBeliefs and player:HasBelief("yellow_and_black") then
		Schema:EasyText(player, "peru", "Твоему смертному телу больше не нужен сон!")
	
		return false;
	end

	if (player:GetNeed("sleep") >= 40) then
		if cwShacks and cwShacks.shacks then
			for k, v in pairs(cwShacks.shacks) do
				if player:GetPos():WithinAABox(v.pos1, v.pos2) then
					if v.bedTier >= 2 then
						player.sleepData = {health = 50, hunger = 5, thirst = 10, rest = -100, sanity = 50};
					else
						player.sleepData = {health = 25, hunger = 10, thirst = 20, rest = -60, sanity = 25};
					end
					
					--player:HandleSanity(10);
					--player:HandleNeed("sleep", rest);
					
					Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 300);
					
					if v.owner == player:GetCharacterKey() then
						Schema:EasyText(player, "olivedrab", "Вы ложитесь в кровать и немного отдыхаете.");
					else
						Schema:EasyText(player, "olivedrab", "Вы ложитесь в кровать и немного отдыхаете.");
					end
					
					return;
				end
			end
		end
		
		local faction = player:GetSharedVar("kinisgerOverride") or player:GetFaction();
		local playerPos = player:GetPos();
		
		--if faction == "Gatekeeper" or faction == "Holy Hierarchy" then
			--print(cwCharacterNeeds.bedZones["gatekeeper"].pos1);
			--print(cwCharacterNeeds.bedZones["gatekeeper"].pos2);
			--print(playerPos);
			--print(playerPos:WithinAABox(cwCharacterNeeds.bedZones["gatekeeper"].pos2, cwCharacterNeeds.bedZones["gatekeeper"].pos1));
		
			if cwCharacterNeeds.bedZones["gatekeeper"] and playerPos:WithinAABox(cwCharacterNeeds.bedZones["gatekeeper"].pos2, cwCharacterNeeds.bedZones["gatekeeper"].pos1) then
				player.sleepData = {health = 25, hunger = 10, thirst = 20, rest = -60, sanity = 25};
				--player:HandleSanity(25);
				--player:HandleNeed("hunger", 10);
				--player:HandleNeed("thirst", 20);
				--player:HandleNeed("sleep", -60);
				
				Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 150);
				Schema:EasyText(player, "olivedrab", "Вы забираетесь в койку и немного отдыхаете.");
				return;
			end
			--elseif faction == "Holy Hierarchy" then
				if cwCharacterNeeds.bedZones["ministers"] then
					if playerPos:WithinAABox(cwCharacterNeeds.bedZones["ministers"].pos1, cwCharacterNeeds.bedZones["ministers"].pos2) then
						player.sleepData = {health = 50, hunger = 5, thirst = 10, rest = -100, sanity = 50};
						--player:HandleSanity(50);
						--player:HandleNeed("hunger", 5);
						--player:HandleNeed("thirst", 10);
						--player:HandleNeed("sleep", -100);
						
						Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 100);
						Schema:EasyText(player, "olivedrab", "Вы ложитесь в кровать и немного отдыхаете.");
						return;
					end
				end
				
				if cwCharacterNeeds.bedZones["hierarchy"] and playerPos:WithinAABox(cwCharacterNeeds.bedZones["hierarchy"].pos1, cwCharacterNeeds.bedZones["hierarchy"].pos2) then
					player.sleepData = {health = 50, hunger = 5, thirst = 10, rest = -100, sanity = 50};
					--player:HandleSanity(50);
					--player:HandleNeed("hunger", 5);
					--player:HandleNeed("thirst", 10);
					--player:HandleNeed("sleep", -100);
					
					Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 100);
					Schema:EasyText(player, "olivedrab", "Вы ложитесь в кровать и немного отдыхаете.");
					return;
				end
			--end
		--elseif faction == "Goreic Warrior" and cwCharacterNeeds.bedZones["gores"] then
		if cwCharacterNeeds.bedZones["gores"] then
			if playerPos:WithinAABox(cwCharacterNeeds.bedZones["gores"].pos1, cwCharacterNeeds.bedZones["gores"].pos2) then
				player.sleepData = {health = 25, hunger = 10, thirst = 20, rest = -60, sanity = 25};
				--player:HandleSanity(25);
				--player:HandleNeed("hunger", 10);
				--player:HandleNeed("thirst", 20);
				--player:HandleNeed("sleep", -60);
				
				Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 150);
				Schema:EasyText(player, "olivedrab", "Вы забираетесь в койку и немного отдыхаете.");
				return;
			elseif playerPos:WithinAABox(cwCharacterNeeds.bedZones["gorehut"].pos1, cwCharacterNeeds.bedZones["gorehut"].pos2) then
				player.sleepData = {health = 25, hunger = 10, thirst = 20, rest = -60, sanity = 25};
				--player:HandleSanity(25);
				--player:HandleNeed("hunger", 10);
				--player:HandleNeed("thirst", 20);
				--player:HandleNeed("sleep", -60);
				
				Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 150);
				Schema:EasyText(player, "olivedrab", "Вы забираетесь в койку и немного отдыхаете.");
				return;
			end
		end
		-- GetFaction() check incase they're disguised.
		--elseif player:GetFaction() == "Children of Satan" and cwCharacterNeeds.bedZones["satanists"] then
		if cwCharacterNeeds.bedZones["satanists"] then
			if playerPos:WithinAABox(cwCharacterNeeds.bedZones["satanists"].pos1, cwCharacterNeeds.bedZones["satanists"].pos2) then
				player.sleepData = {health = 50, hunger = 5, thirst = 10, rest = -100, sanity = 50};
				--player:HandleSanity(50);
				--player:HandleNeed("hunger", 5);
				--player:HandleNeed("thirst", 10);
				--player:HandleNeed("sleep", -100);
				
				Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 100);
				Schema:EasyText(player, "olivedrab", "Вы ложитесь в кровать и немного отдыхаете.");
				return;
			end
		end
		--elseif faction == "Smog City Pirate" then
			if cwCharacterNeeds.bedZones["scrapper1"] then
				if playerPos:WithinAABox(cwCharacterNeeds.bedZones["scrapper1"].pos1, cwCharacterNeeds.bedZones["scrapper1"].pos2) then
					player.sleepData = {health = 50, hunger = 5, thirst = 10, rest = -100, sanity = 50};
					--player:HandleSanity(50);
					--player:HandleNeed("hunger", 5);
					--player:HandleNeed("thirst", 10);
					--player:HandleNeed("sleep", -100);
					
					Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 100);
					Schema:EasyText(player, "olivedrab", "Вы ложитесь в кровать и немного отдыхаете.");
					return;
				end
			end
		
			if cwCharacterNeeds.bedZones["scrapper2"] then
				if playerPos:WithinAABox(cwCharacterNeeds.bedZones["scrapper2"].pos1, cwCharacterNeeds.bedZones["scrapper2"].pos2) then
					player.sleepData = {health = 50, hunger = 5, thirst = 10, rest = -100, sanity = 50};
					--player:HandleSanity(50);
					--player:HandleNeed("hunger", 5);
					--player:HandleNeed("thirst", 10);
					--player:HandleNeed("sleep", -100);
					
					Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 100);
					Schema:EasyText(player, "olivedrab", "Вы ложитесь в кровать и немного отдыхаете.");
					return;
				end
			end
		--elseif (faction == "The Third Inquisition" or game.GetMap() == "rp_scraptown") and cwCharacterNeeds.bedZones["third_inquisition"] then
		if cwCharacterNeeds.bedZones["third_inquisition"] then
			if playerPos:WithinAABox(cwCharacterNeeds.bedZones["third_inquisition"].pos1, cwCharacterNeeds.bedZones["third_inquisition"].pos2) then
				player.sleepData = {health = 50, hunger = 5, thirst = 10, rest = -100, sanity = 50};
				--player:HandleSanity(50);
				--player:HandleNeed("hunger", 5);
				--player:HandleNeed("thirst", 10);
				--player:HandleNeed("sleep", -100);
				
				Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 100);
				Schema:EasyText(player, "olivedrab", "Вы ложитесь в кровать и немного отдыхаете.");
				return;
			end
		end
	
		if cwCharacterNeeds.bedZones["castle"] and playerPos:WithinAABox(cwCharacterNeeds.bedZones["castle"].pos2, cwCharacterNeeds.bedZones["castle"].pos1) then
			player.sleepData = {health = 25, hunger = 10, thirst = 20, rest = -60, sanity = 25};
			--player:HandleSanity(25);
			--player:HandleNeed("hunger", 10);
			--player:HandleNeed("thirst", 20);
			--player:HandleNeed("sleep", -60);
			
			Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 150);
			Schema:EasyText(player, "olivedrab", "Вы забираетесь в койку и немного отдыхаете.");
			return;
		end
		
		player.sleepData = {health = 10, hunger = 15, thirst = 30, rest = -30};
		--player:HandleNeed("hunger", 15);
		--player:HandleNeed("thirst", 30);
		--player:HandleNeed("sleep", -30);
		
		Clockwork.player:SetRagdollState(player, RAGDOLL_KNOCKEDOUT, 300);
		Schema:EasyText(player, "olivedrab", "Вы спускаетесь на землю и пытаетесь немного отдохнуть.");
	else
		Schema:EasyText(player, "firebrick", "Вы недостаточно устали чтобы спать!");
	end;
end;

COMMAND:Register();

local COMMAND = Clockwork.command:New("CharSetStamina");
COMMAND.tip = "Set a player's stamina level.";
COMMAND.text = "<string Name> <number Amount>";
COMMAND.access = "o";
COMMAND.arguments = 2;
COMMAND.alias = {"SetStamina", "PlySetStamina"};

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID(arguments[1]);
	local amount = tonumber(arguments[2]);
	
	if (!amount) then
		amount = 100;
	end;
	
	if (target) then
		target:SetCharacterData("Stamina", amount);
		target:SetNWInt("Stamina", amount);
		
		if (player != target) then
			Schema:EasyText(GetAdmins(), "cornflowerblue", "["..self.name.."] "..player:Name().." has set "..target:Name().."'s stamina to "..amount..".");
		else
			Schema:EasyText(player, "cornflowerblue", "["..self.name.."] You have set your own stamina to "..amount..".");
		end;
	else
		Schema:EasyText(player, "grey", "["..self.name.."] "..arguments[1].." is not a valid player!");
	end;
end;

COMMAND:Register();

local COMMAND = Clockwork.command:New("CharSetCorruption");
COMMAND.tip = "Set a player's Corruption level. (0 = Not Corrupted, 100 = Possessed)";
COMMAND.text = "<string Name> <number Amount>";
COMMAND.access = "o";
COMMAND.arguments = 2;
COMMAND.alias = {"SetCorruption", "PlySetCorruption"};

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID( arguments[1] )
	local amount = tonumber(arguments[2]);
	
	if (!amount) then
		amount = 100;
	end;
	
	if (target) then
		target:SetNeed("corruption", amount);
		
		if (player != target) then
			Schema:EasyText(GetAdmins(), "cornflowerblue", "["..self.name.."] "..player:Name().." has set "..target:Name().."'s corruption to "..amount..".");
		else
			Schema:EasyText(player, "cornflowerblue", "["..self.name.."] You have set your own corruption to "..amount..".");
		end;
	else
		Schema:EasyText(player, "grey", "["..self.name.."] "..arguments[1].." is not a valid player!");
	end;
end;

COMMAND:Register();

local COMMAND = Clockwork.command:New("CharSetHunger");
COMMAND.tip = "Set a player's Hunger level. (0 = Full, 100 = Starving)";
COMMAND.text = "<string Name> <number Amount>";
COMMAND.access = "o";
COMMAND.arguments = 2;
COMMAND.alias = {"SetHunger", "PlySetHunger"};

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID( arguments[1] )
	local amount = tonumber(arguments[2]);
	
	if (!amount) then
		amount = 100;
	end;
	
	if (target) then
		target:SetNeed("hunger", amount);
		
		if (player != target) then
			Schema:EasyText(GetAdmins(), "cornflowerblue", "["..self.name.."] "..player:Name().." has set "..target:Name().."'s hunger to "..amount..".");
		else
			Schema:EasyText(player, "cornflowerblue", "["..self.name.."] You have set your own Hunger to "..amount..".");
		end;
	else
		Schema:EasyText(player, "grey", "["..self.name.."] "..arguments[1].." is not a valid player!");
	end;
end;

COMMAND:Register();

local COMMAND = Clockwork.command:New("CharSetThirst");
COMMAND.tip = "Set a player's Thirst level. (0 = Hydrated, 100 = Dehydrated)";
COMMAND.text = "<string Name> <number Amount>";
COMMAND.access = "o";
COMMAND.arguments = 2;
COMMAND.alias = {"SetThirst", "PlySetThirst"};

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID( arguments[1] )
	local amount = tonumber(arguments[2]);
	
	if (!amount) then
		amount = 100;
	end;
	
	if (target) then
		target:SetNeed("thirst", amount);
		
		if (player != target) then
			Schema:EasyText(GetAdmins(), "cornflowerblue", "["..self.name.."] "..player:Name().." has set "..target:Name().."'s thirst to "..amount..".");
		else
			Schema:EasyText(player, "cornflowerblue", "["..self.name.."] You have set your own thirst to "..amount..".");
		end;
	else
		Schema:EasyText(player, "grey", "["..self.name.."] "..arguments[1].." is not a valid player!");
	end;
end;

COMMAND:Register();

local COMMAND = Clockwork.command:New("CharSetSleep");
COMMAND.tip = "Set a player's Sleep level. (0 = Rested, 100 = Exhausted)";
COMMAND.text = "<string Name> <number Amount>";
COMMAND.access = "o";
COMMAND.arguments = 2;
COMMAND.alias = {"SetSleep", "PlySetSleep", "SetFatigue", "CharSetFatigue", "PlySetFatigue"};

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID( arguments[1] )
	local amount = tonumber(arguments[2]);
	
	if (!amount) then
		amount = 100;
	end;
	
	if (target) then
		target:SetNeed("sleep", amount);
		
		if (player != target) then
			Schema:EasyText(GetAdmins(), "cornflowerblue", "["..self.name.."] "..player:Name().." has set "..target:Name().."'s sleep to "..amount..".");
		else
			Schema:EasyText(player, "cornflowerblue", "["..self.name.."] You have set your own sleep to "..amount..".");
		end;
	else
		Schema:EasyText(player, "grey", "["..self.name.."] "..arguments[1].." is not a valid player!");
	end;
end;

COMMAND:Register();

local COMMAND = Clockwork.command:New("CharGetNeeds");
	COMMAND.tip = "Display a list of a character's needs and their current status. Values of 0 are the default despite what might display on the UI.";
	COMMAND.text = "<string Name>";
	COMMAND.access = "o";
	COMMAND.arguments = 1;
	COMMAND.alias = {"GetNeeds", "PlyGetNeeds"};

	-- Called when the command has been run.
	function COMMAND:OnRun(player, arguments)
		local target = Clockwork.player:FindByID(arguments[1]);
		
		if (target and target:HasInitialized() and target:Alive()) then
			local hunger = target:GetNeed("hunger", 0);
			local thirst = target:GetNeed("thirst", 0);
			local fatigue = target:GetNeed("sleep", 0);
			local corruption = target:GetNeed("corruption", 0);
			local needsStr = "Hunger: "..hunger.."  Thirst: "..thirst.."  Fatigue: "..fatigue.."  Corruption: "..corruption;

			Schema:EasyText(player, "cornflowerblue", "["..self.name.."] "..target:Name().." has the following needs: "..needsStr);
		else
			Schema:EasyText(player, "grey", "["..self.name.."] "..arguments[1].." is not a valid player!");
		end;
	end;
COMMAND:Register();