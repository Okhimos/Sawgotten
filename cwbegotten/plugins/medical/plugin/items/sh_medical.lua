--[[
	Begotten III: Jesus Wept
--]]

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Ампула";
	ITEM.useText = "Вколоть";
	ITEM.model = "models/props_c17/TrapPropeller_Lever.mdl";
	ITEM.weight = 0.15;
	ITEM.description = "Стеклянный флакон, наполненный таинственной прозрачной жидкостью, которую можно ввести человеку, чтобы получить прилив энергии.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ampoule.png"
	ITEM.useSound = "begotten/items/meat_inject.mp3";
	ITEM.uniqueID = "ampoule"
	
	ITEM.applicable = true;
	ITEM.healAmount = 10;
	ITEM.healDelay = 5;
	ITEM.healRepetition = 5;
	ITEM.canSave = false; -- Behavior overriden in OnUsed.
	ITEM.restoresBlood = 1000;
	ITEM.useXP = 10;
	ITEM.useTime = 1;

	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 1200};
	ITEM.limbs = "all";
	
	-- Called when the player uses the item.
	function ITEM:OnUsed(player, itemEntity)
		--local action = Clockwork.player:GetAction(player);
		--[[local curTime = CurTime();
		
		player:SetCharacterData("painpills", curTime + 60);]]--
		player:HandleStamina(100);
		--player:GivePoise(player:GetMaxPoise());
		player:HandleSanity(25);
		netstream.Start(player, "Stunned", 1);
		netstream.Start(player, "MorphineDream", 60);
		
		--if action == "die" or action == "die_bleedout" then
		if player:GetRagdollState() == RAGDOLL_KNOCKEDOUT then
			if player:Health() < 10 then
				player:SetHealth(10);
			end
			
			Clockwork.player:SetRagdollState(player, RAGDOLL_FALLENOVER);
			
			Clockwork.chatBox:AddInTargetRadius(player, "me", "резко просыпается!", player:GetPos(), Clockwork.config:Get("talk_radius"):Get() * 2);
		end
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Черный Укол";
	ITEM.useText = "Вколоть";
	ITEM.model = "models/props_c17/TrapPropeller_Lever.mdl";
	ITEM.weight = 0.15;
	ITEM.description = "Шприц, в котором что-то находится...";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ampoule.png"
	ITEM.useSound = "begotten/items/meat_inject.mp3";
	ITEM.uniqueID = "blacksyringe"
	
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 2000, supercrateOnly = true};
		
	-- Called when the player uses the item.
	function ITEM:OnUse(player, itemEntity)
		local health = player:Health();
		local curTime = CurTime();
		
		player:GiveDisease("begotten_plague");
		player:HandleStamina(40);
		player:HandleSanity(25);
		Schema:EasyText(player, "olivedrab","Что сделано, то сделано...");
		netstream.Start(player, "Stunned", 1);
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Антибиотическая Паста";
	ITEM.cost = 100;
	ITEM.model = "models/props_c17/TrapPropeller_Lever.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Apply";
	ITEM.useSound = "begotten/ui/sanity_gain.mp3";
	ITEM.description = "Старый тюбик пасты, которую можно использовать для предотвращения инфекции.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ampoule.png"
	ITEM.uniqueID = "antibiotic_paste"
	
	ITEM.applicable = true;

	ITEM.curesInjuries = {"infection", "minor_infection"};
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 675};
	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
	ITEM.useXP = 25;
	
	function ITEM:OnUsed(player, itemEntity)
		Schema:EasyText(player, "olivedrab","You apply the antibiotic paste to your wound.");
		netstream.Start(self, "Stunned", 2);
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Антибиотики";
	ITEM.cost = 150;
	ITEM.model = "models/props_junk/glassjug01.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Drink";
	ITEM.useSound = "npc/barnacle/barnacle_gulp1.wav";
	ITEM.description = "Действительно редкость! Это древнее лекарство славится своей способностью лечить большинство инфекций.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/laudanum.png"
	ITEM.uniqueID = "antibiotics"

	ITEM.ingestible = {orally = true, anally = false};
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 800};
	ITEM.useXP = 50;
	
	function ITEM:OnUsed(player, itemEntity)
		if player:Alive() and !player:IsRagdolled() then
			Schema:EasyText(player, "olivedrab","Вы глотаете оставшиеся в бутылочке несколько таблеток, надеясь, что это излечит ваши недуги.");
			
			if player:HasDisease("common_cold") or player:HasDisease("flu") then
				player:TakeDisease("common_cold");
				player:TakeDisease("flu");
			end
			
			Clockwork.player:SetMenuOpen(player, false);
			
			if cwBeliefs then
				player:HandleXP(self.useXP);
			end
			
			player:HandleSanity(10);
			player:EmitSound(self.useSound);
			player:TakeItem(self, true);
		end
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Черный Порошок";
	ITEM.cost = 150;
	ITEM.model = "models/weapons/w_oil.mdl";
	ITEM.weight = 0.2;
	ITEM.useText = "Drink";
	ITEM.useSound = "npc/barnacle/barnacle_gulp1.wav";
	ITEM.description = "Мерзкая смесь в черной банке. Может ли это быть лекарством от чумы?";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/small_oil.png";
	ITEM.uniqueID = "black_remedy"

	ITEM.ingestible = {orally = true, anally = false};
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 1500, supercrateOnly = true};
	ITEM.useXP = 100;
	
	function ITEM:OnUsed(player, itemEntity)
		if player:Alive() and !player:IsRagdolled() then
			Schema:EasyText(player, "olivedrab","Вы открываете крышку и засыпаете в свое горло отвратительный порошок, надеясь, что он избавит вас от болезни. Через некоторое время вы чувствуете, что ваш разум проясняется, а кожа светлеет.");
			
			if player:HasDisease("begotten_plague") then
				player:TakeDisease("begotten_plague");
			end
			
			Clockwork.player:SetMenuOpen(player, false);
			
			if cwBeliefs then
				player:HandleXP(self.useXP);
			end
			
			player:HandleSanity(100);
			player:EmitSound(self.useSound);
			player:TakeItem(self, true);
		end
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Окровавленный Бинт";
	ITEM.cost = 8;
	ITEM.model = "models/kali/miscstuff/stalker/aid/bandage.mdl";
	ITEM.weight = 0.1;
	ITEM.useText = "Apply";
	ITEM.useSound = "ambient/voices/citizen_beaten4.wav";
	ITEM.description = "Моток тряпки, который промочен чьей-то кровью и грязью. Конечно, можно перебинтоваться, но стоит ли оно того?";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/bandage.png"
	ITEM.uniqueID = "bandage"
	
	ITEM.applicable = true;
	ITEM.healAmount = 2;
	ITEM.healDelay = 2;
	ITEM.healRepetition = 5;
	ITEM.stopsBleeding = true;
	ITEM.infectionChance = 80;

	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 70};
	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Марля";
	ITEM.cost = 8;
	ITEM.model = "models/healthvial_gauze.mdl";
	ITEM.weight = 0.2;
	ITEM.useText = "Apply";
	ITEM.useSound = "bandaging_1.wav";
	ITEM.description = "Плотная тканая повязка, которую можно использовать для остановки кровотечения из больших рваных ран.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/gauze.png"
	ITEM.uniqueID = "gauze"
	
	ITEM.applicable = true;
	ITEM.healAmount = 4;
	ITEM.healDelay = 2;
	ITEM.healRepetition = 5;
	ITEM.stopsBleeding = true;
	ITEM.infectionChance = 30;
	ITEM.useXP = 15;
	ITEM.useTime = 10;

	ITEM.curesInjuries = {"gash"};
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 225};
	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Марля из Плоти";
	ITEM.cost = 8;
	ITEM.model = "models/mosi/fnv/props/gore/gorehead01.mdl";
	ITEM.weight = 0.4;
	ITEM.useText = "Apply";
	ITEM.useSound = "bandaging_1.wav";
	ITEM.description = "Рулон толстой кожи, скрепленной веревкой. Его можно использовать для перекрытия рваных ран...Но какой ценой?";
	ITEM.iconoverride = "begotten/ui/itemicons/skingauze.png"
	ITEM.uniqueID = "skingauze"
	
	ITEM.applicable = true;
	ITEM.healAmount = 4;
	ITEM.healDelay = 2;
	ITEM.healRepetition = 5;
	ITEM.stopsBleeding = true;
	ITEM.infectionChance = 50;
	ITEM.useXP = 15;
	ITEM.useTime = 10;

	ITEM.curesInjuries = {"gash"};
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 300};
	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};

	-- Called when a player uses the item.
	function ITEM:OnUsed(player, itemEntity)
		Schema:EasyText(player, "olive","Влажный кусочек кожи ближнего твоего осторожно обволакивает рану, не давая крови больше сочиться наружу. В этом есть что-то рвущее душу на части. Жить становится тяжелее, чем обычно...");
		player:HandleSanity(-10);
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Настойка Опия";
	ITEM.model = "models/props_junk/glassjug01.mdl";
	ITEM.weight = 0.3;
	ITEM.useText = "Drink";
	ITEM.description = "Небольших размеров сосуд с прозрачной жидкостью. Расслабляет и дает возможность забыться.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/laudanum.png"
	ITEM.uniqueID = "laudanum";
	ITEM.useSound = "begotten/ui/sanity_gain.mp3";

	ITEM.healAmount = 5;
	ITEM.healDelay = 4;
	ITEM.healRepetition = 5;
	
	ITEM.ingestible = {orally = true, anally = false};
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 250};
	ITEM.useXP = 25;
	
	function ITEM:OnUsed(player, itemEntity)
		if player:Alive() and !player:IsRagdolled() then
			Clockwork.player:SetMenuOpen(player, false);
			
			if cwBeliefs then
				player:HandleXP(self.useXP);
			end
			
			player:HandleSanity(100);
			player:EmitSound(self.useSound);
			player:TakeItem(self, true);
			
			netstream.Start(player, "Stunned", 3);
		end
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Самодельный Бинт";
	ITEM.cost = 15;
	ITEM.model = "models/props_wasteland/prison_toiletchunk01f.mdl";
	ITEM.weight = 0.1;
	ITEM.useText = "Apply";
	ITEM.useSound = "bandaging_1.wav";
	ITEM.description = "Маленький рулон, сделанный из сшитых вместе кусков относительно чистой ткани. Конечно, разорванную конечность не восстановит, но вот кровотечение вполне себе остановит.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/skintape.png"
	ITEM.uniqueID = "crafted_bandage"
	
	ITEM.applicable = true;
	ITEM.healAmount = 3;
	ITEM.healDelay = 2;
	ITEM.healRepetition = 5;
	ITEM.stopsBleeding = true;
	ITEM.infectionChance = 15;
	ITEM.useXP = 8;

	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Мазь";
	ITEM.cost = 8;
	ITEM.model = "models/props_junk/glassjug01.mdl";
	ITEM.weight = 0.5;
	ITEM.useText = "Apply";
	ITEM.useSound = "begotten/ui/sanity_gain.mp3";
	ITEM.description = "Бутылка старой вязкой жижицы для лечения ожогов.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/laudanum.png"
	ITEM.uniqueID = "ointment"
	
	ITEM.applicable = true;
	ITEM.healAmount = 5;
	ITEM.healDelay = 4;
	ITEM.healRepetition = 2;
	ITEM.infectionChance = 25;
	ITEM.useXP = 15;

	ITEM.curesInjuries = {"burn"};
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 700, bNoSupercrate = true};
	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
	
	function ITEM:OnUsed(player, itemEntity)
		Schema:EasyText(player, "olivedrab","The ointment is applied to your skin. It stings like hell, but hopefully it will work.");
		netstream.Start(self, "Stunned", 2);
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Ломоть Кожи";
	ITEM.cost = 15;
	ITEM.model = "models/cofprops/skintape.mdl";
	ITEM.weight = 0.2;
	ITEM.access = "v";
	ITEM.useText = "Mend";
	ITEM.useSound = "begotten/items/skintape.ogg";
	ITEM.description = "Небольшой кусок кожи, которым можно перевязать кровоточащую рану...Но стоит ли оно того?";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/skintape2.png"
	ITEM.uniqueID = "skintape";
	
	ITEM.applicable = true;
	ITEM.healAmount = 4;
	ITEM.healDelay = 4;
	ITEM.healRepetition = 5;
	ITEM.infectionChance = 50;
	ITEM.stopsBleeding = true;
	ITEM.useXP = 5;
	
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 200};
	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};

	-- Called when a player uses the item.
	function ITEM:OnUsed(player, itemEntity)
		Schema:EasyText(player, "olive","Влажный кусочек кожи ближнего твоего осторожно обволакивает рану, не давая крови больше сочиться наружу. В этом есть что-то рвущее душу на части. Жить становится тяжелее, чем обычно...");
		player:HandleSanity(-10);
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Самодельная Шина";
	ITEM.cost = 8;
	ITEM.model = "models/Gibs/wood_gib01b.mdl"; -- find a good model later
	ITEM.weight = 1;
	ITEM.useText = "Place";
	ITEM.useSound = "begotten/items/first_aid.wav";
	ITEM.description = "Самодельная шина, сделанная из деревянной доски и куска проволоки.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/splint.png"
	ITEM.uniqueID = "splint"
	
	ITEM.applicable = true;
	ITEM.useXP = 5;

	ITEM.curesInjuries = {"broken_bone"};
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 125};
	ITEM.limbs = {HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Медицинский Набор";
	ITEM.cost = 30;
	ITEM.model = "models/items/healthkit_nmrih.mdl";
	ITEM.weight = 3;
	ITEM.access = "v";
	ITEM.useText = "Heal";
	ITEM.useSound = "bandaging_1.wav";
	ITEM.description = "Нераспечатанная упаковка, полная медицинских принадлежностей. Лучший день в вашей жизни!";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/survival_pack.png"
	ITEM.uniqueID = "survivalpack"
	
	ITEM.applicable = true;
	ITEM.healAmount = 25;
	ITEM.healDelay = 8;
	ITEM.healRepetition = 8;
	ITEM.stopsBleeding = true;
	ITEM.canSave = true;
	ITEM.useXP = 50;
	ITEM.useTime = 30;

	ITEM.curesInjuries = {"burn", "gash", "gunshot_wound", "minor_infection"};
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 4500};
	ITEM.limbs = "all";
	
	-- Called when a player uses the item.
	function ITEM:OnUsed(player, itemEntity)
		Schema:EasyText(player, "olivedrab","Медицинских принадлежностей в этой сумке настолько много, что вы способны залечить все свои раны...Блаженство.");
		player:HandleSanity(10);
	end;
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Скальпель";
	ITEM.cost = 15;
	ITEM.model = "models/props_c17/TrapPropeller_Lever.mdl";
	ITEM.weight = 0.25;
	ITEM.access = "v";
	ITEM.useText = "Cut";
	ITEM.useSound = "bandaging_1.wav";
	ITEM.description = "Относительно нормальный скальпель, которым можно разрезать плоть.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/ampoule.png"
	ITEM.uniqueID = "scalpel"
	
	ITEM.applicable = true;
	ITEM.useOnSelf = false;
	ITEM.isSurgeryItem = true;

	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 600, bNoSupercrate = true};
	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Щипцы";
	ITEM.cost = 15;
	ITEM.model = "models/downpour/scissors01_m0_ah.mdl";
	ITEM.weight = 0.25;
	ITEM.access = "v";
	ITEM.useText = "Clamp";
	ITEM.useSound = "bandaging_1.wav";
	ITEM.description = "Ржавый пинцет, который можно использовать для извлечения предметов из места разреза.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/forceps.png"
	ITEM.uniqueID = "forceps"
	
	ITEM.applicable = true;
	ITEM.useOnSelf = false;
	ITEM.isSurgeryItem = true;

	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 600, bNoSupercrate = true};
	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
ITEM:Register();

local ITEM = Clockwork.item:New("medical_base");
	ITEM.name = "Хирургическая Нить";
	ITEM.cost = 15;
	ITEM.model = "models/props_junk/cardboard_box004a.mdl";
	ITEM.weight = 0.25;
	ITEM.access = "v";
	ITEM.useText = "Stitch";
	ITEM.useSound = "bandaging_1.wav";
	ITEM.description = "Коробка с нитками и иглой для зашивания ран.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/box.png"
	ITEM.uniqueID = "suture"
	
	ITEM.applicable = true;
	ITEM.useOnSelf = false;
	ITEM.isSurgeryItem = true;

	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 900, bNoSupercrate = true};
	ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Хлороформ";
	ITEM.cost = 50;
	ITEM.model = "models/props_junk/garbage_newspaper001a.mdl";
	ITEM.weight = 0.1;
	ITEM.useText = "Knock Out";
	ITEM.category = "Medical";
	ITEM.description = "Используя это средство, можно лишить человека сознания на несколько минут.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/chloroform.png"
	ITEM.stackable = true;

	-- Called when a player uses the item.
	function ITEM:OnUse(player, itemEntity)
		if (player.isChloroforming) then
			Schema:EasyText(player, "peru", "Вы уже делаете это!");
			
			return false;
		else
			local trace = player:GetEyeTraceNoCursor();
			local target = Clockwork.entity:GetPlayer(trace.Entity);
			
			if (target and target:Alive()) then
				if (target:GetShootPos():Distance(player:GetShootPos()) <= 192) then
					local canChloroform = (target:GetAimVector():DotProduct(player:GetAimVector()) > 0);
					local chloroformTime = 5;
					
					if cwBeliefs and player:HasBelief("doctor") then
						chloroformTime = 2.5;
					end
					
					if (canChloroform or target:IsRagdolled()) then
						Clockwork.player:SetAction(player, "chloroform", chloroformTime);
						
						target:SetSharedVar("beingChloro", true);
						
						Clockwork.player:EntityConditionTimer(player, target, trace.Entity, chloroformTime, 192, function()
							local canChloroform = (target:GetAimVector():DotProduct(player:GetAimVector()) > 0);
							
							if ((canChloroform or target:IsRagdolled()) and player:Alive() and !player:IsRagdolled()) then
								return true;
							end;
						end, function(success)
							if (success) then
								player.isChloroforming = nil;
								
								Clockwork.player:SetRagdollState(target, RAGDOLL_KNOCKEDOUT, 240);
								
								player:TakeItem(self, true);
							else
								player.isChloroforming = nil;
							end;
							
							Clockwork.player:SetAction(player, "chloroform", false);
							
							if (IsValid(target)) then
								target:SetSharedVar("beingChloro", false);
							end;
						end);
					else
						Schema:EasyText(player, "firebrick", "Вы можете использовать Хлороформ только на тех, кто стоит к вам спиной!");
						
						return false;
					end;
					
					Clockwork.player:SetMenuOpen(player, false);
					
					player.isChloroforming = true;
					
					return false;
				else
					Schema:EasyText(player, "firebrick", "Он слишком далеко!");
					
					return false;
				end;
			else
				Schema:EasyText(player, "grey","Вы должны смотреть на кого-нибудь, дабы применить Хлороформ!");
				
				return false;
			end;
		end;
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
	ITEM.itemSpawnerInfo = {category = "Medical", rarity = 1000, bNoSupercrate = true};
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Микрросхема";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/mosi/fallout4/props/junk/components/circuitry.mdl";
	ITEM.weight = 0.2;
	ITEM.uniqueID = "tech";
	ITEM.description = "Микросхема, находящаяся здесь с незапамятных времен. Представляет большую ценность для вольтистов.";
	ITEM.useSound = "physics/plastic/plastic_barrel_break1.wav";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = false;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 55};
	
	if cwMedicalSystem then
		ITEM.useText = "Использовать";
		ITEM.applicable = true;
		ITEM.isMedical = true;
		ITEM.useOnSelf = true; -- Can use on self.
		ITEM.limbs = {HITGROUP_CHEST, HITGROUP_HEAD, HITGROUP_STOMACH, HITGROUP_LEFTARM, HITGROUP_RIGHTARM, HITGROUP_LEFTLEG, HITGROUP_RIGHTLEG};
		ITEM.curesInjuries = {"burn", "gash", "gunshot_wound"};
		
		ITEM.canSave = true; -- Can save people in critical condition.
		ITEM.healAmount = 5; -- Amount of HP healed per repetition.
		ITEM.healDelay = 2; -- Delay between repetitions.
		ITEM.healRepetition = 5; -- # of repetitions.
		ITEM.morphine = false; -- Has morphine effects.
		ITEM.stopsBleeding = true; -- Stops bleeding.
		ITEM.isSurgeryItem = false; -- Is it a surgery item?
		
		-- Called when a player uses the item.
		function ITEM:OnUseCustom(player, itemEntity, hitGroup)
			if (Clockwork.plugin:Call("PlayerCanUseMedical", player, self)) ~= false and self.useOnSelf ~= false then
				if player:HasBelief("the_paradox_riddle_equation") then
					local action = Clockwork.player:GetAction(player);
						
					if (action == "heal") then
						Schema:EasyText(player, "peru", "Вы уже лечите себя!");
						
						return false;
					elseif (action == "healing") then
						Schema:EasyText(player, "peru", "Вы уже лечите его!");
						
						return false;
					elseif (action == "performing_surgery") then
						Schema:EasyText(player, "peru", "Вы уже проводите кому-то операцию!");
						
						return false;
					else
						Clockwork.player:SetMenuOpen(player, false);
						
						cwMedicalSystem:PlayerUseMedical(player, self, hitGroup);
						--Clockwork.plugin:Call("PlayerUseMedical", player, self, hitGroup);
					end;
				else
					local d = DamageInfo()
					d:SetDamage(5 * math.Rand(0.5, 1));
					d:SetAttacker(player);
					d:SetDamagePosition(player:GetPos() + Vector(0, 0, 48));
					
					player:TakeDamageInfo(d);
					
					player:TakeItem(self, true);
					
					Schema:EasyText(player, "olive", "Вы уже используете Микросхему!");
				end
			end;
		end;
		
		-- Called when a player uses the item.
		function ITEM:OnUseTarget(player, target, itemEntity, hitGroup)
			if (Clockwork.plugin:Call("PlayerCanUseMedical", player, self)) ~= false then
				if target:HasBelief("the_paradox_riddle_equation") then
					local action = Clockwork.player:GetAction(player);
						
					if (action == "heal") then
						Schema:EasyText(player, "peru", "Вы уже лечите себя!");
						
						return false;
					elseif (action == "healing") then
						Schema:EasyText(player, "peru", "Вы уже лечите его!");
						
						return false;
					elseif (action == "performing_surgery") then
						Schema:EasyText(player, "peru", "Вы уже проводите кому-то операцию!");
						
						return false;
					else
						Clockwork.player:SetMenuOpen(player, false);
						
						if !self.isSurgeryItem then
							cwMedicalSystem:HealPlayer(player, target, self, hitGroup);
							--Clockwork.plugin:Call("HealPlayer", player, target, self, hitGroup);
						else
							cwMedicalSystem:PerformSurgeryOnPlayer(player, target, self, hitGroup);
						end
					end;
				end;
			end;
		end;
		
		-- Called when a player drops the item.
		function ITEM:OnDrop(player, position)
			local action = Clockwork.player:GetAction(player);
				
			if (action == "heal") then
				Schema:EasyText(player, "firebrick", "Ты не можешь выбросить это, пока лечишься!");
				
				return false;
			elseif (action == "healing") then
				Schema:EasyText(player, "firebrick", "Ты не можешь выбросить это, пока лечишь кого-то!");
				
				return false;
			elseif (action == "performing_surgery") then
				Schema:EasyText(player, "firebrick", "Ты не можешь выбросить это, пока проводишь кому-то операцию!");
				
				return false;
			end;
		end;
	end
	
	if ITEM.customFunctions then
		table.insert(ITEM.customFunctions, "Consume");
	else
		ITEM.customFunctions = {"Consume"};
	end
	
	if (SERVER) then
		function ITEM:OnCustomFunction(player, name)
			if (name == "Consume") then
				if player:HasBelief("jacobs_ladder") then
					local condition = self:GetCondition() or 100;
					local malus = condition / 100;
					
					player:HandleNeed("sleep", -50 * malus);
					player:HandleNeed("corruption", -40 * malus);
					player:HandleXP(80 * malus);
					player:TakeItem(self, true);
					player:EmitSound("physics/plastic/plastic_barrel_break1.wav");
				else
					local d = DamageInfo()
					d:SetDamage(10 * math.Rand(0.5, 1));
					d:SetAttacker(player);
					d:SetDamagePosition(player:GetPos() + Vector(0, 0, 64));
					
					player:TakeDamageInfo(d);
					player:TakeItem(self, true);
					
					Schema:EasyText(player, "olive", "Ты засовываешь микросхему в рот и начинаешь ее жевать! Зубам больно, но что поделать....!");
				end
			end;
		end;
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();

local ITEM = Clockwork.item:New();
	ITEM.name = "Технокрафт";
	ITEM.category = "Crafting Materials";
	ITEM.model = "models/props/cs_office/computer_caseb_p7a.mdl";
	ITEM.weight = 1;
	ITEM.uniqueID = "technocraft";
	ITEM.description = "Слияние древних технологий вместе. Настоящая находка для Вольтиста.";
	ITEM.useSound = "physics/plastic/plastic_barrel_break1.wav";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/"..ITEM.uniqueID..".png";
	ITEM.stackable = false;
	
	ITEM.itemSpawnerInfo = {category = "Crafting Materials", rarity = 700, supercrateOnly = true};
	
	if cwMedicalSystem then
		ITEM.useText = "Apply";
		ITEM.applicable = true;
		ITEM.isMedical = true;
		ITEM.useOnSelf = true; -- Can use on self.
		ITEM.limbs = "all";
		ITEM.curesInjuries = {"burn", "gash", "gunshot_wound"};
		
		ITEM.canSave = true; -- Can save people in critical condition.
		ITEM.healAmount = 25; -- Amount of HP healed per repetition.
		ITEM.healDelay = 8; -- Delay between repetitions.
		ITEM.healRepetition = 8; -- # of repetitions.
		ITEM.morphine = false; -- Has morphine effects.
		ITEM.stopsBleeding = true; -- Stops bleeding.
		ITEM.isSurgeryItem = false; -- Is it a surgery item?
		
		-- Called when a player uses the item.
		function ITEM:OnUseCustom(player, itemEntity, hitGroup)
			if (Clockwork.plugin:Call("PlayerCanUseMedical", player, self)) ~= false and self.useOnSelf ~= false then
				if player:HasBelief("the_paradox_riddle_equation") then
					local action = Clockwork.player:GetAction(player);
						
					if (action == "heal") then
						Schema:EasyText(player, "peru", "Ты уже лечишь себя!");
						
						return false;
					elseif (action == "healing") then
						Schema:EasyText(player, "peru", "Ты уже лечишь его!");
						
						return false;
					elseif (action == "performing_surgery") then
						Schema:EasyText(player, "peru", "Ты уже проводишь операцию на нем!");
						
						return false;
					else
						Clockwork.player:SetMenuOpen(player, false);
						
						cwMedicalSystem:PlayerUseMedical(player, self, hitGroup);
						--Clockwork.plugin:Call("PlayerUseMedical", player, self, hitGroup);
					end;
				else
					local d = DamageInfo()
					d:SetDamage(5 * math.Rand(0.5, 1));
					d:SetAttacker(player);
					d:SetDamagePosition(player:GetPos() + Vector(0, 0, 48));
					
					player:TakeDamageInfo(d);
					
					Schema:EasyText(player, "olive", "Вы используете это на себе!");
				end
			end;
		end;
		
		-- Called when a player uses the item.
		function ITEM:OnUseTarget(player, target, itemEntity, hitGroup)
			if (Clockwork.plugin:Call("PlayerCanUseMedical", player, self)) ~= false then
				if target:HasBelief("the_paradox_riddle_equation") then
					local action = Clockwork.player:GetAction(player);
						
					if (action == "heal") then
						Schema:EasyText(player, "peru", "Ты уже лечишь себя!");
						
						return false;
					elseif (action == "healing") then
						Schema:EasyText(player, "peru", "Ты уже лечишь его!");
						
						return false;
					elseif (action == "performing_surgery") then
						Schema:EasyText(player, "peru", "Ты уже проводишь на нем операцию!");
						
						return false;
					else
						Clockwork.player:SetMenuOpen(player, false);
						
						if !self.isSurgeryItem then
							cwMedicalSystem:HealPlayer(player, target, self, hitGroup);
							--Clockwork.plugin:Call("HealPlayer", player, target, self, hitGroup);
						else
							cwMedicalSystem:PerformSurgeryOnPlayer(player, target, self, hitGroup);
						end
					end;
				end
			end;
		end;
		
		-- Called when a player drops the item.
		function ITEM:OnDrop(player, position)
			local action = Clockwork.player:GetAction(player);
				
			if (action == "heal") then
				Schema:EasyText(player, "firebrick", "Ты не можешь выкинуть это, пока лечишься!");
				
				return false;
			elseif (action == "healing") then
				Schema:EasyText(player, "firebrick", "Ты не можешь выкинуть это, пока лечишь кого-то!");
				
				return false;
			elseif (action == "performing_surgery") then
				Schema:EasyText(player, "firebrick", "Ты не можешьв ыкинуть это, пока проводишь кому-то операцию!");
				
				return false;
			end;
		end;
	end
	
	if ITEM.customFunctions then
		table.insert(ITEM.customFunctions, "Consume");
	else
		ITEM.customFunctions = {"Consume"};
	end
	
	if (SERVER) then
		function ITEM:OnCustomFunction(player, name)
			if (name == "Consume") then
				if player:HasBelief("jacobs_ladder") then
					local condition = self:GetCondition() or 100;
					local malus = condition / 100;
					
					player:HandleNeed("sleep", -200 * malus);
					player:HandleNeed("corruption", -200 * malus);
					player:HandleXP(500 * malus);
					player:TakeItem(self, true);
					player:EmitSound("physics/plastic/plastic_barrel_break1.wav");
				else
					local d = DamageInfo()
					d:SetDamage(10 * math.Rand(0.5, 1));
					d:SetAttacker(player);
					d:SetDamagePosition(player:GetPos() + Vector(0, 0, 64));
					
					player:TakeDamageInfo(d);
					player:TakeItem(self, true);
					
					Schema:EasyText(player, "olive", "Ты засовываешь микросхему в рот и начинаешь ее жевать! Зубам больно, но что поделать....!");
				end
			end;
		end;
	end;

	-- Called when a player drops the item.
	function ITEM:OnDrop(player, position) end;
	
ITEM:Register();
