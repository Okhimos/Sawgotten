if (SERVER) then
	local map = game.GetMap();

	Schema.siegeLadderPositions = {};

	if map == "rp_begotten3" then
		Schema.siegeLadderPositions = {
			-- Tower
			{pos = Vector(4265.21875, 12294.34375, -1583), ang = Angle(-45, 0, 0), boundsA = Vector(3250, 11942, -1092), boundsB = Vector(4690, 12861, -2000)},
			{pos = Vector(3703.65625, 10982.875, -1796.5625), ang = Angle(-56, 0, 0), boundsA = Vector(3250, 11942, -1092), boundsB = Vector(3782, 10180, -2000)},
			{pos = Vector(365.625, 9597.0625, -1645.875), ang = Angle(-61.935, -112.714, -5.279), boundsA = Vector(103, 9311, -1801), boundsB = Vector(1107, 10108, -1234)},
			{pos = Vector(-268.65625, 9617, -1634.53125), ang = Angle(-58.508, -72.021, 2.065), boundsA = Vector(103, 9311, -1801), boundsB = Vector(-818, 10238, -1133)},
			{pos = Vector(-5141.9375, 13244.65625, -1456.78125), ang = Angle(-45.582, -170.986, -0.692), boundsA = Vector(-4533, 13545, -845), boundsB = Vector(-5492, 12580, -1807)},
			
			-- Castle
			{pos = Vector(-11592, -13690, -1680), ang = Angle(-62, 0, 0), boundsA = Vector(-11113, -14113, -1732), boundsB = Vector(-12148, -12889, -1314)},
			{pos = Vector(-11592, -12340, -1680), ang = Angle(-62, 0, 0), boundsA = Vector(-11187, -11653, -1732), boundsB = Vector(-12148, -12889, -1314)},
			
			-- Gorewatch
			{pos = Vector(9731.46875, 12398.34375, -1387.8125), ang = Angle(53.740, -87.638, 0.566), boundsA = Vector(10075, 12370, -1235), boundsB = Vector(9198, 11844, -940)},
			{pos = Vector(9718.8125, 9857.78125, -1286.84375), ang = Angle(61.908, 90.989, 1.417), boundsA = Vector(10053, 9873, -1221), boundsB = Vector(9262, 10410, -952)},
		}
	elseif map == "rp_begotten_redux" then
		Schema.siegeLadderPositions = {
			-- Town
			{pos = Vector(-8332.8125, -8357.53125, 68.03125), ang = Angle(-62.611, 0, 0), boundsA = Vector(-8942, -8678, 53), boundsB = Vector(-8155, -8130, 584)},
			{pos = Vector(-8334.15625, -7899.34375, 52.0625), ang = Angle(-62.425, 0, 0), boundsA = Vector(-8155, -8130, 584), boundsB = Vector(-8942, -7572, 53)},
			
			-- Old Manor Fort
			{pos = Vector(10553.375, 9878.125, 684.65625), ang = Angle(-78.387, -176.287, -3.532), boundsA = Vector(11045, 13394, 680), boundsB = Vector(10130, 11804, 1076)},
			{pos = Vector(10653.15625, 10881.3125, 684.34375), ang = Angle(-58.656, 179.824, 0.786), boundsA = Vector(10130, 11804, 1076), boundsB = Vector(11248, 10366, 630)},
			{pos = Vector(10424.65625, 12854.96875, 674.8125), ang = Angle(-72.065, -173.32, -5.262), boundsA = Vector(11248, 10366, 630), boundsB = Vector(10405, 9455, 1140)},
		}
	elseif map == "rp_scraptown" then
		Schema.siegeLadderPositions = {
			-- Scrap Town Bridge
			{pos = Vector(-505.0625, -3355.15625, 343.90625), ang = Angle(-89.703, 147.766, -147.343), boundsA = Vector(-100, -3260, 325), boundsB = Vector(-1460, -3449, 550)},
			{pos = Vector(-495.78125, -3530.9375, 345.1875), ang = Angle(-89.995, -179, 180), boundsA = Vector(-1460, -3449, 550), boundsB = Vector(-100, -3630, 325)},
			-- Scrap Town Gate
			{pos = Vector(-1861.375, -3282.84375, 186.125), ang = Angle(67.401, 180, 0), boundsA = Vector(-1619, -2970, 113), boundsB = Vector(-2447, -3455, 562)},
			{pos = Vector(-1859.59375, -3643.625, 188.4375), ang = Angle(67.401, 180, 0), boundsA = Vector(-2447, -3455, 562), boundsB = Vector(-1736, -3869, 153)},
		}
	end
end

local ITEM = Clockwork.item:New();
	ITEM.name = "Медвежий Капкан";
	ITEM.uniqueID = "bear_trap";
	ITEM.model = "models/begotten/beartrap/beartrapopen.mdl";
	ITEM.weight = 8;
	ITEM.category = "Tools";
	ITEM.description = "Нажимная металлическая ловушка с острыми зубьями, предназначенная для поимки различных существ, независимо от того, животное это или человек.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bear_trap.png";
	ITEM.useText = "Установить";
	ITEM.requiredbeliefs = {"ingenious"};
	
	function ITEM:OnUse(player, itemEntity)
		if Schema.towerSafeZoneEnabled and player:InTower() then
			Schema:EasyText(player, "chocolate", "Вы не можете установить медвежий капкан, находясь в сейфзоне!");
			
			return false;
		end

		local trapEnt = ents.Create("cw_bear_trap");
		
		if IsValid(trapEnt) then
			trapEnt:SetAngles(player:GetAngles());
			trapEnt:SetPos(player:GetPos());
			trapEnt.condition = self:GetCondition() or 100;
			trapEnt.owner = player;
			trapEnt:Spawn();
		end
	end
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
	ITEM.components = {breakdownType = "meltdown", items = {"scrap", "scrap", "scrap", "iron_chunks"}};
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Набор для Разведения Костра";
	ITEM.uniqueID = "campfire_kit"
	ITEM.model = "models/mosi/fallout4/props/junk/components/wood.mdl";
	ITEM.weight = 2;
	ITEM.useText = "Развести";
	ITEM.category = "Other";
	ITEM.useSound = "physics/wood/wood_strain3.wav";
	ITEM.description = "Набор для разведения костра, горения которого хватит где-то на пятнадцать минут. Впрочем, вы всегда можете подкинуть дров.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/wood.png"
	ITEM.stackable = false;

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		local tr = player:GetEyeTrace();
		local position = tr.HitPos;
		local valuewater = bit.band(util.PointContents(position), CONTENTS_WATER) == CONTENTS_WATER;
		
		if player:InTower() then
			Schema:EasyText(player, "peru", "Вы не можете развести костер в Башне Света!");
			return false;
		end
		
		if tr.Entity and tr.Entity:GetClass() == "cw_longship" then
			Schema:EasyText(player, "peru", "Вы не можете развести костер на длинном корабле!");
			return false;
		end
		
		for i, v in ipairs(ents.FindByClass("cw_longship")) do
			if v.playersOnBoard then
				for i2, v2 in ipairs(v.playersOnBoard) do
					if player == v2 then
						Schema:EasyText(player, "peru", "Вы не можете развести костер во время плавания!");
						return false;
					end
				end
			end
		end
		
		if (player:GetPos():DistToSqr(position) <= 36864) and valuewater == false then
			local ent = ents.Create("cw_fireplace")
			ent:SetPos(position)
			ent:Spawn()
		elseif valuewater == true then
			Schema:EasyText(player, "peru", "Вы не можете развести костер под водой!");
			return false;
		else
			Schema:EasyText(player, "peru", "Вы не можете развести костер так далеко!")
			return false;
		end
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Осадная Лестница";
	ITEM.uniqueID = "siege_ladder";
	ITEM.model = "models/begotten/misc/siegeladder_compact.mdl";
	ITEM.weight = 11;
	ITEM.category = "Tools";
	ITEM.description = "Длинная и прочная осадная лестница, предназначенная для преодоления крепостных сооружений Замка, Горвотча или Башни Света.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/siege_ladder.png";
	ITEM.useText = "Возвести";
	
	function ITEM:OnUse(player, itemEntity)
		local playerPos = player:GetPos();
		
		for i = 1, #Schema.siegeLadderPositions do
			local ladderPos = Schema.siegeLadderPositions[i];
			
			if not ladderPos.occupier then
				if playerPos:WithinAABox(ladderPos.boundsA, ladderPos.boundsB) then
					player.ladderConstructing = {index = i, condition = self:GetCondition()};
					ladderPos.occupier = "constructing";
					
					Clockwork.chatBox:AddInTargetRadius(player, "me", "начинает возводить осадную лестницу!", player:GetPos(), config.Get("talk_radius"):Get() * 2);
					
					Clockwork.player:SetAction(player, "building", 30, 3, function()
						if IsValid(player) and player.ladderConstructing then
							local ladderPos = Schema.siegeLadderPositions[player.ladderConstructing.index];
							local ladderEnt = ents.Create("cw_siege_ladder");
							if IsValid(ladderEnt) then
								ladderEnt:SetAngles(ladderPos.ang);
								ladderEnt:SetPos(ladderPos.pos);
								ladderEnt:SetNWEntity("owner", player);
								ladderEnt:Spawn();
								
								ladderEnt.strikesRequired = math.Round(15 * ((self:GetCondition() or 100) / 100));
							end
							
							ladderPos.occupier = ladderEnt;
							ladderEnt.occupyingPosition = player.ladderConstructing.index;
							player.ladderConstructing = nil;
						else
							ladderPos.occupier = nil;
						end
					end);
					
					return;
				end
			end
		end
	
		Schema:EasyText(player, "chocolate", "Вы должны возводить осадную лестницу в подходящем месте, например, за стенами Замка, Горвотча или Башни Света!");
		return false;
	end
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
	ITEM.components = {breakdownType = "breakdown", items = {"wood", "wood", "wood", "wood", "wood", "wood"}};
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Сноу-дог";
	ITEM.uniqueID = "snow_dog";
	ITEM.model = "models/food/hotdog.mdl";
	ITEM.category = "Garbage";
	ITEM.weight = 0.3;
	ITEM.description = "Сноу-дог. Вы можете носить его как шапку...";
	ITEM.uniqueID = "snowdog";
	ITEM.useText = "Надеть"
	-- Called when a player drops the item.
	function ITEM:OnUse(player, position)
		Clockwork.player:Notify(player, "Вы пытаетесь надеть свою новенькую призовую шапку в виде сноу-дога, но вместо этого съедаете ее.");
		player:EmitSound("npc/barnacle/barnacle_digesting1.wav");
		timer.Simple(0.5, function()
			if (player:GetGender() == GENDER_MALE) then
				player:EmitSound("vo/npc/male01/moan0"..math.random(1, 4)..".wav")
			else
				player:EmitSound("vo/npc/female01/moan0"..math.random(1, 4)..".wav")
			end;
		end);
		timer.Create(player:EntIndex().."snowdawg", 3, 2, function()
			if (!IsValid(player)) then
				return;
			end;
		if (player:GetGender() == GENDER_MALE) then
			player:EmitSound("vo/npc/male01/moan0"..math.random(1, 4)..".wav")
		else
			player:EmitSound("vo/npc/female01/moan0"..math.random(1, 4)..".wav")
		end;
		end);
	end;
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/props/cs_office/snowmana");
	end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Набор для Починки Брони";
	ITEM.uniqueID = "armor_repair_kit";
	ITEM.cost = 50;
	ITEM.model = "models/props/de_prodigy/ammo_can_02.mdl";
	ITEM.weight = 1;
	ITEM.category = "Tools";
	ITEM.description = "Набор, состоящий из инструментов и материалов, которыми можно воспользоваться при починке одежды или доспехов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/repair_kit.png";
	ITEM.conditionReplenishment = 200;
	ITEM.stackable = false;
	
	ITEM.itemSpawnerInfo = {category = "Repair Kits", rarity = 900, bNoSupercrate = true};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Набор для Починки Огнестрела";
	ITEM.uniqueID = "firearm_repair_kit";
	ITEM.cost = 50;
	ITEM.model = "models/props/de_prodigy/ammo_can_02.mdl";
	ITEM.weight = 1;
	ITEM.category = "Tools";
	ITEM.description = "Набор, состоящий из инструментов и запасных частей, которыми можно воспользоваться при починке огнестрельного оружия.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/repair_kit.png";
	ITEM.conditionReplenishment = 200;
	ITEM.stackable = false;
	
	ITEM.itemSpawnerInfo = {category = "Repair Kits", rarity = 900, bNoSupercrate = true};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Набор для Починки Оружия";
	ITEM.uniqueID = "weapon_repair_kit";
	ITEM.cost = 50;
	ITEM.model = "models/props/de_prodigy/ammo_can_02.mdl";
	ITEM.weight = 1;
	ITEM.category = "Tools";
	ITEM.description = "Набор, состоящий из инструментов и материалов, которыми можно воспользоваться при починке холодного оружия или щитов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/repair_kit.png";
	ITEM.conditionReplenishment = 200;
	ITEM.stackable = false;
	
	ITEM.itemSpawnerInfo = {category = "Repair Kits", rarity = 700, bNoSupercrate = true};
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Штихель";
	ITEM.uniqueID = "engraving_tool";
	ITEM.cost = 50;
	ITEM.model = "models/props_c17/TrapPropeller_Lever.mdl";
	ITEM.weight = 0.25;
	ITEM.category = "Tools";
	ITEM.description = "Небольшой инструмент, применяемый при нанесении гравировки на оружие или щиты.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ampoule.png"
	--ITEM.itemSpawnerInfo = {category = "Junk", rarity = 95};
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Стяжки";
	ITEM.uniqueID = "bindings";
	ITEM.category = "Tools";
	ITEM.cost = 4;
	ITEM.model = "models/begotten/misc/rope.mdl";
	ITEM.weight = 0.2;
	ITEM.access = "v";
	ITEM.useText = "Связать";
	ITEM.description = "Набор веревок, которыми можно связать человека по рукам и ногам.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bindings.png"
	
	ITEM.stackable = true;
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if (player.isTying) then
			Schema:EasyText(player, "peru", "Вы уже связываете какого-то персонажа!");
			
			return false;
		else
			local trace = player:GetEyeTraceNoCursor();
			local target = Clockwork.entity:GetPlayer(trace.Entity);
			local tieTime = 6;
			
			if player.HasBelief and player:HasBelief("dexterity") then
				tieTime = 4;
			end
			
			if (target) then
				if (!target:HasGodMode() and !target.cwObserverMode and !target.possessor) then
					if (target:GetSharedVar("tied") == 0) then
						if (target:GetShootPos():Distance( player:GetShootPos() ) <= 192) then
							if (target:GetAimVector():DotProduct( player:GetAimVector() ) > 0 or (target:IsRagdolled() and !trace.Entity.cwIsBelongings)) then
								local faction = player:GetFaction();
								
								if target:InTower() and Schema.towerSafeZoneEnabled and (faction ~= "Gatekeeper" and faction ~= "Holy Hierarchy") then
									Schema:EasyText(player, "peru", "Вы не можете связывать людей, находясь в Башне Света, если вы не принадлежите к Святой Иерархии!");
									return false;
								end
								
								if player:GetMoveType() == MOVETYPE_WALK then
									for k, v in pairs(ents.FindInSphere(player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2)) do
										if v:IsPlayer() then
											Clockwork.chatBox:Add(v, player, "me", "начинает связывать "..Clockwork.player:FormatRecognisedText(v, "%s", target)..".");
										end
									end
								end
								Clockwork.player:SetAction(player, "tie", tieTime);
								
								Clockwork.player:EntityConditionTimer(player, target, trace.Entity, tieTime, 192, function()
									if (player:Alive() and !player:IsRagdolled() and target:GetSharedVar("tied") == 0 and !target.cwObserverMode and !target.possessor 
									and (target:GetAimVector():DotProduct(player:GetAimVector()) > 0 or (target:IsRagdolled() and !trace.Entity.cwIsBelongings))) then
										return true;
									end;
								end, function(success)
									if (success) then
										player.isTying = nil;
										
										Schema:TiePlayer(target, true, nil);
										
										player:TakeItem(self, true);
									else
										player.isTying = nil;
									end;
									
									Clockwork.player:SetAction(player, "tie", false);
								end);
							else
								Schema:EasyText(player, "peru", "Вы не можете связать персонажа, стоящего к вам лицом!");
								
								return false;
							end;
							
							player.isTying = true;
							
							Clockwork.player:SetMenuOpen(player, false);
							
							return false;
						else
							Schema:EasyText(player, "firebrick", "Этот персонаж находится слишком далеко!");
							
							return false;
						end;
					else
						Schema:EasyText(player, "peru", "Этот персонаж уже связан!");
						
						return false;
					end;
				else
					if player.cwWakingUp then
						Schema:EasyText(player, "firebrick", "Вы не можете связать просыпающегося персонажа!");
					else
						Schema:EasyText(player, "firebrick", "Вы не можете связать этого персонажа в данный момент!");
					end
					
					return false;
				end
			else
				Schema:EasyText(player, "firebrick", "Этот персонаж не является действительным!");
				
				return false;
			end;
		end;
	end;
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position)
		if (player.isTying) then
			Schema:EasyText(player, "peru", "Вы уже связываете какого-то персонажа!");
			
			return false;
		end;
	end;
	ITEM.itemSpawnerInfo = {category = "Junk", rarity = 200};
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Восстановленный Набор для Теста Крови";
	ITEM.uniqueID = "refurbished_blood_test_kit";
	ITEM.category = "Tools";
	ITEM.cost = 100;
	ITEM.model = "models/kali/miscstuff/stalker/aid/first aid kit.mdl";
	ITEM.weight = 0.4;
	ITEM.useText = "Проверить Кровь";
	ITEM.description = "Древний прибор, используемый для проверки крови человека на наличие порчи. Он потрепан временем и довольно сомнителен.";
	ITEM.stackable = false;
	
	ITEM.iconoverride = "materials/begotten/ui/itemicons/blood_test_kit.png"
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if (player.isTying) then
			Schema:EasyText(player, "peru", "Вы уже проверяете какого-то персонажа!");
			
			return false;
		else
			local trace = player:GetEyeTraceNoCursor();
			local target = Clockwork.entity:GetPlayer(trace.Entity);
			local testTime = 15;
			
			if (target) then
				if (target:GetShootPos():Distance(player:GetShootPos()) <= 192) then
					if player:GetMoveType() == MOVETYPE_WALK then
						for k, v in pairs(ents.FindInSphere(player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2)) do
							if v:IsPlayer() then
								Clockwork.chatBox:Add(v, player, "me", "начинает проверять кровь "..Clockwork.player:FormatRecognisedText(v, "%s", target).." на наличие порчи.");
							end
						end
					end
					Clockwork.player:SetAction(player, "bloodTest", testTime);
					
					Clockwork.player:EntityConditionTimer(player, target, trace.Entity, testTime, 192, function()
						if (player:Alive() and !player:IsRagdolled() and player:HasItemInstance(self)) then
							return true;
						end;
					end, function(success)
						if (success) then
							player.isTying = nil;
							
							Schema:BloodTestPlayer(target, true);
							
							if self then
								local condition = self:GetCondition() - 20;
							
								if condition <= 0 then
									player:TakeItem(self, true);
								else
									self:SetCondition(condition);
								end
							end
						else
							player.isTying = nil;
						end;
						
						Clockwork.player:SetAction(player, "bloodTest", false);
					end);
					
					player.isTying = true;
					
					Clockwork.player:SetMenuOpen(player, false);
					
					return false;
				else
					Schema:EasyText(player, "firebrick", "Этот персонаж находится слишком далеко!");
					
					return false;
				end;
			else
				Schema:EasyText(player, "firebrick", "Этот персонаж не является действительным!");
				
				return false;
			end;
		end;
	end;
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position)
		if (player.isTying) then
			Schema:EasyText(player, "peru", "Вы уже проверяете какого-то персонажа!");
			
			return false;
		end;
	end;
	--ITEM.itemSpawnerInfo = {category = "Medical", rarity = 500};
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Продвинутый Набор для Теста Крови";
	ITEM.uniqueID = "advanced_blood_test_kit";
	ITEM.category = "Tools";
	ITEM.cost = 2500;
	ITEM.model = "models/kali/miscstuff/stalker/aid/first aid kit.mdl";
	ITEM.weight = 0.4;
	ITEM.useText = "Проверить Кровь";
	ITEM.description = "Древний прибор, используемый для проверки крови человека на наличие порчи. Является продвинутой моделью, созданной учеными Скайлайта и позволяющей выявить так называемые Черные Шляпы.";
	ITEM.stackable = false;
	
	ITEM.iconoverride = "materials/begotten/ui/itemicons/blood_test_kit.png"
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if (player.isTying) then
			Schema:EasyText(player, "peru", "Вы уже проверяете какого-то персонажа!");
			
			return false;
		else
			local trace = player:GetEyeTraceNoCursor();
			local target = Clockwork.entity:GetPlayer(trace.Entity);
			local testTime = 15;
			
			if (target) then
				if (target:GetShootPos():Distance(player:GetShootPos()) <= 192) then
					if player:GetMoveType() == MOVETYPE_WALK then
						for k, v in pairs(ents.FindInSphere(player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2)) do
							if v:IsPlayer() then
								Clockwork.chatBox:Add(v, player, "me", "начинает проверять кровь "..Clockwork.player:FormatRecognisedText(v, "%s", target).." на наличие порчи.");
							end
						end
					end
					Clockwork.player:SetAction(player, "bloodTest", testTime);
					
					Clockwork.player:EntityConditionTimer(player, target, trace.Entity, testTime, 192, function()
						if (player:Alive() and !player:IsRagdolled() and player:HasItemInstance(self)) then
							return true;
						end;
					end, function(success)
						if (success) then
							player.isTying = nil;
							
							Schema:BloodTestPlayer(target, false, true);
							
							if self then
								local condition = self:GetCondition() - 10;
							
								if condition <= 0 then
									player:TakeItem(self, true);
								else
									self:SetCondition(condition);
								end
							end
						else
							player.isTying = nil;
						end;
						
						Clockwork.player:SetAction(player, "bloodTest", false);
					end);
					
					player.isTying = true;
					
					Clockwork.player:SetMenuOpen(player, false);
					
					return false;
				else
					Schema:EasyText(player, "firebrick", "Этот персонаж находится слишком далеко!");
					
					return false;
				end;
			else
				Schema:EasyText(player, "firebrick", "Этот персонаж не является действительным!");
				
				return false;
			end;
		end;
	end;
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position)
		if (player.isTying) then
			Schema:EasyText(player, "peru", "Вы уже проверяете какого-то персонажа!");
			
			return false;
		end;
	end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Набор для Теста Крови";
	ITEM.uniqueID = "blood_test_kit";
	ITEM.category = "Tools";
	ITEM.cost = 1000;
	ITEM.model = "models/kali/miscstuff/stalker/aid/first aid kit.mdl";
	ITEM.weight = 0.4;
	ITEM.useText = "Проверить Кровь";
	ITEM.description = "Древний прибор, используемый для проверки крови человека на наличие порчи.";
	ITEM.stackable = false;
	
	ITEM.iconoverride = "materials/begotten/ui/itemicons/blood_test_kit.png"
	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if (player.isTying) then
			Schema:EasyText(player, "peru", "Вы уже проверяете какого-то персонажа!");
			
			return false;
		else
			local trace = player:GetEyeTraceNoCursor();
			local target = Clockwork.entity:GetPlayer(trace.Entity);
			local testTime = 15;
			
			if (target) then
				if (target:GetShootPos():Distance(player:GetShootPos()) <= 192) then
					if player:GetMoveType() == MOVETYPE_WALK then
						for k, v in pairs(ents.FindInSphere(player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2)) do
							if v:IsPlayer() then
								Clockwork.chatBox:Add(v, player, "me", "начинает проверять кровь "..Clockwork.player:FormatRecognisedText(v, "%s", target).." на наличие порчи.");
							end
						end
					end
					Clockwork.player:SetAction(player, "bloodTest", testTime);
					
					Clockwork.player:EntityConditionTimer(player, target, trace.Entity, testTime, 192, function()
						if (player:Alive() and !player:IsRagdolled() and player:HasItemInstance(self)) then
							return true;
						end;
					end, function(success)
						if (success) then
							player.isTying = nil;
							
							Schema:BloodTestPlayer(target, false);
							
							if self then
								local condition = self:GetCondition() - 10;
							
								if condition <= 0 then
									player:TakeItem(self, true);
								else
									self:SetCondition(condition);
								end
							end
						else
							player.isTying = nil;
						end;
						
						Clockwork.player:SetAction(player, "bloodTest", false);
					end);
					
					player.isTying = true;
					
					Clockwork.player:SetMenuOpen(player, false);
					
					return false;
				else
					Schema:EasyText(player, "firebrick", "Этот персонаж находится слишком далеко!");
					
					return false;
				end;
			else
				Schema:EasyText(player, "firebrick", "Этот персонаж не является действительным!");
				
				return false;
			end;
		end;
	end;
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position)
		if (player.isTying) then
			Schema:EasyText(player, "peru", "Вы уже проверяете какого-то персонажа!");
			
			return false;
		end;
	end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Энергоячейка Первого Дистрикта";
	ITEM.uniqueID = "power_cell";
	ITEM.cost = 500;
	ITEM.model = "models/mosi/fallout4/props/junk/components/nuclear.mdl";
	ITEM.weight = 1;
	ITEM.category = "Tools";
	ITEM.description = "Ядерная энергоячейка, произведенная в стенах древней фабрики Сияния. Предназначена для питания силовой брони Дистрикта Один.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/power_cell.png"
	ITEM.useText = "Перезарядить";
	ITEM.useSound = "items/battery_pickup.wav";
	
	ITEM.itemSpawnerInfo = {category = "Armor", rarity = 600, supercrateOnly = true};
	
	function ITEM:OnUse(player, itemEntity)
		if player:IsWearingPowerArmor() then
			local currentCharge = player:GetCharacterData("battery", 0);
		
			player:SetCharacterData("battery", math.Clamp(currentCharge + 75, 0, 100));
			player:SetSharedVar("battery", math.Round(player:GetCharacterData("battery", 0), 0));
			
			player.nextChargeDepleted = CurTime() + 120;
		else
			Schema:EasyText(player, "chocolate", "Чтобы воспользоваться энергоячейкой, вы должны находиться внутри силовой брони!");
			
			return false;
		end
	end;
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Боевой Рог";
	ITEM.uniqueID = "warhorn";
	ITEM.model = "models/begotten/misc/warhorn.mdl";
	ITEM.weight = 1;
	ITEM.category = "Communication"
	ITEM.description = "Плотный боевой рог, предназначенный для подавания сигналов находящимся поблизости союзникам.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/warhorn.png"
	ITEM.customFunctions = {"Sound Attack", "Sound Rally", "Sound Rally - Marching Formation", "Sound Rally - Shieldwall", "Sound Retreat"};
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
	if (SERVER) then
		function ITEM:OnCustomFunction(player, name)
			local curTime = CurTime();
		
			if !player.nextWarHorn or player.nextWarHorn <= curTime then
				player.nextWarHorn = curTime + 5;
				
				local faction = player:GetSharedVar("kinisgerOverride") or player:GetFaction();
				local playerPos = player:GetPos();
				local radius = Clockwork.config:Get("talk_radius"):Get() * 4;
			
				if faction == "Gatekeeper" or faction == "Holy Hierarchy" then
					if (name == "Sound Attack") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == "Gatekeeper" or vFaction == "Holy Hierarchy" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к атаке!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/warhorn3.mp3", 100, math.random(98, 102));
					elseif (name == "Sound Rally") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == "Gatekeeper" or vFaction == "Holy Hierarchy" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к перегруппировке!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/warhorn7.mp3", 100, math.random(98, 102));
					elseif (name == "Sound Rally - Marching Formation") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == "Gatekeeper" or vFaction == "Holy Hierarchy" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к перегруппировке в походный строй!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/warhorn8.mp3", 100, math.random(98, 102));
					elseif (name == "Sound Rally - Shieldwall") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == "Gatekeeper" or vFaction == "Holy Hierarchy" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к перегруппировке в стену щитов!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/warhorn4.mp3", 100, math.random(98, 102));
					elseif (name == "Sound Retreat") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == "Gatekeeper" or vFaction == "Holy Hierarchy" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к отступлению!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/warhorn6.mp3", 100, math.random(98, 102));
					end;
				elseif faction == "Goreic Warrior" then
					if (name == "Sound Attack") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == faction then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к атаке!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/gore_warhorn_attack.mp3", 100, math.random(88, 108));
					elseif (name == "Sound Rally") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == faction then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к перегруппировке!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/gore_warhorn_rally.mp3", 100, math.random(88, 108));
					elseif (name == "Sound Rally - Marching Formation") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == faction then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к перегруппировке в походный строй!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/gore_warhorn_formation.mp3", 100, math.random(95, 118));
					elseif (name == "Sound Rally - Shieldwall") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == faction then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к перегруппировке в стену щитов!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/gore_warhorn_formation.mp3", 100, math.random(77, 86));
					elseif (name == "Sound Retreat") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == faction then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, подавая сигнал к отступлению!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в боевой рог, но зачем именно вам неизвестно!");
								end
							end
						end
						
						player:EmitSound("warhorns/gore_warhorn_retreat.mp3", 100, math.random(88, 108));
					end;
 
				else
					Schema:EasyText(player, "peru", "Вы не можете воспользоваться боевым рогом, так как не принадлежите к нужной фракции!");
				end
			end
		end;
	end;
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Свисток Смерти";
	ITEM.uniqueID = "death_whistle";
	ITEM.model = "models/begotten/misc/skull.mdl";
	ITEM.weight = 1;
	ITEM.category = "Communication"
	ITEM.description = "Человеческий череп, в котором проделаны отверстия для создания леденящего душу свиста.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/skull.png"
	ITEM.customFunctions = {"Sound Attack", "Sound Rally", "Sound Rally - Marching Formation", "Sound Rally - Shieldwall", "Sound Retreat"};
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
	if (SERVER) then
		function ITEM:OnCustomFunction(player, name)
			local curTime = CurTime();
			
			if !player.nextWarHorn or player.nextWarHorn <= curTime then
				player.nextWarHorn = curTime + 5;
				
				local faction = player:GetFaction();
				local playerPos = player:GetPos();
				local radius = Clockwork.config:Get("talk_radius"):Get() * 4;
				
				if faction == "Children of Satan" then
					if (name == "Sound Attack") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								if vFaction == "Children of Satan" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в свисток смерти, подавая сигнал к атаке!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в ужасающий свисток смерти!");
								end
							end
						end
						player:EmitSound("warhorns/deathwhistle"..math.random(1,2)..".mp3", 100, math.random(98, 102));
					elseif (name == "Sound Rally") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == "Children of Satan" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в свисток смерти, подавая сигнал к перегруппировке!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в ужасающий свисток смерти!");
								end
							end
						end
						player:EmitSound("warhorns/deathwhistle5.mp3", 100, math.random(98, 102));
					elseif (name == "Sound Rally - Marching Formation") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == "Children of Satan" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в свисток смерти, подавая сигнал к перегруппировке в походный строй!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в ужасающий свисток смерти!");
								end
							end
						end
						player:EmitSound("warhorns/deathwhistle5.mp3", 100, math.random(98, 102));
					elseif (name == "Sound Rally - Shieldwall") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								
								if vFaction == "Children of Satan" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в свисток смерти, подавая сигнал к перегруппировке в стену щитов!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в ужасающий свисток смерти!");
								end
							end
						end
						player:EmitSound("warhorns/deathwhistle5.mp3", 100, math.random(98, 102));
					elseif (name == "Sound Retreat") then
						for k, v in pairs(ents.FindInSphere(playerPos, radius)) do
							if v:IsPlayer() then
								local vFaction = v:GetFaction();
								if vFaction == "Children of Satan" then
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в свисток смерти, подавая сигнал к отступлению!");
								else
									Clockwork.chatBox:Add(v, nil, "localevent", player:Name().." дует в ужасающий свисток смерти!");
								end
							end
						end
						player:EmitSound("warhorns/deathwhistle"..math.random(3,4)..".mp3", 100, math.random(98, 102));
					end;
				else
					Schema:EasyText(player, "peru", "Вы не можете воспользоваться свистком смерти, так как не принадлежите к нужной фракции!");
				end
			end
		end;
	end;
ITEM:Register();