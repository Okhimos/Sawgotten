--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

library.New("faiths", Schema);
Schema.faiths.stored = Schema.faiths.stored or {};
local FAITHS = {__index = FAITHS};

-- Called when the faith is converted to a string.
function FAITHS:__tostring()
	return self.uniqueID;
end;

-- Called when the faith is invoked as a function.
function FAITHS:__call(varName, failSafe)
	return self[varName] or failSafe;
end;

-- A function to register a faith..
function FAITHS:Register()
	Schema.faiths:Register(self);
end;

-- A function to get a new faith.
function Schema.faiths:New(uniqueID)
	if (!uniqueID) then
		return;
	end;
	
	local object = Clockwork.kernel:NewMetaTable(FAITHS);
		object.uniqueID = Schema.faiths:SafeName(uniqueID);
	return object;
end;

-- A function to register a faith.
function Schema.faiths:Register(faith)
	if (faith) then
		if (!faith.uniqueID) then
			return;
		end
		
		local tab = {};
		
		if (CLIENT) then
			tab = table.Copy(faith);
		else
			tab.uniqueID = faith.uniqueID;
			tab.name = faith.name or "Faith";
			tab.subfaiths = faith.subfaiths;
		end
		
		self.stored[faith.uniqueID] = tab;
	end;
end;

-- A function to convert a string to a uniqueID.
function Schema.faiths:SafeName(uniqueID)
	return string.lower(string.gsub(uniqueID, "['%.]", ""));
end;

-- A function to get all of the faiths.
function Schema.faiths:GetFaiths()
	return self.stored;
end;

-- A function to find a specific faith.
function Schema.faiths:GetFaith(identifier)
	if identifier then
		identifier = string.lower(identifier);
		
		if (self.stored[identifier]) then
			return self.stored[identifier];
		else
			for k, v in pairs(self.stored) do
				if v.uniqueID == identifier or string.lower(v.name) == identifier then
					return self.stored[k];
				end;
			end;
		end;
	end;
end;

local LIGHT = Schema.faiths:New("light")
	LIGHT.name = "Faith of the Light";
	LIGHT.color = Color(230, 209, 87, 255);
	LIGHT.subfaiths = {"Sol Orthodoxy", "Hard-Glazed", "Voltism"};
	
	-- for character creation
	LIGHT.description = "Вера Света, также известная как Стойкое Сияние или сокращенно Сияние, представляет собой совокупность идей и верований, широко распространенных на территории ныне исчезнувшей Империи Света. Говорят, что эта вера зародилась в течение ста лет лишений, пока она, наконец, не спровоцировала Войны Святой Иерархии, которые привели к окончательному созданию указанного правительства. \n\nПодавляющее большинство тех, кто следует и практикует Веру Света, имеют лишь упрощенное и смутное представление о ней. Обычные люди, далекие от работы правительства, часто создают свои собственные интерпретации, которые сильно отличаются от официального текста. Действительно, истинное понимание Сияния чрезвычайно сложно, часто смешивая философские исследования, произведения абстрактного искусства и даже некоторые сложные математические уравнения. 'Непросвещенные ебланы', критики путей Света, часто утверждают, что причина, по которой Стойкое Сияние так сложно для понимания, заключается в том, что простые люди не смогут ее понять, и, таким образом, не смогут подвергнуть сомнению приказ их господина.\n\nХотя учения разбросаны среди многих тысяч древних писаний, предположительно существует единственный Манифест - оригинальный первый текст Стойкого Сияния. Хотя множество поисков артефактов было заказано различными священнослужителями, ни один живой человек не знает местонахождения этой святой реликвии. Популярная поговорка среди Священной Иерархии гласит: «Все согласно манифесту...».";
	LIGHT.image = "begotten/ui/bgtbtnfaithlight.png";
Schema.faiths:Register(LIGHT)

local FAMILY = Schema.faiths:New("family")
	FAMILY.name = "Faith of the Family";
	FAMILY.color = Color(163, 153, 143, 255);
	FAMILY.subfaiths = {"Faith of the Father", "Faith of the Mother", "Faith of the Old Son", "Faith of the Young Son", "Faith of the Sister"};
	
	-- for character creation
	FAMILY.description = "Вера Семьи — это форма политеизма, которой следуют Горы и многие банды драчунов. Первоначальными основателями этой религии были Друиды Клинка, названные так из-за их способности ковать стальное оружие. Говорят, что эти Друиды посадили в землю семя, из которого выросло большое и славное дерево, достигавшее небес. Горы того времени были безбожниками, убивавшими друг друга костяными дубинками и острыми палками, поскольку Север был слишком суровым местом для какого-либо прогресса. Когда они пришли к Великому Древу, Друиды научили их своим путям, которые включали веру в Пятерых Богов.\n\nХотя эти друиды вскоре были преданы дикими Горами, а истинные имена Пяти Богов были забыты, они продолжают жить как Семья: Мать, Отец, Старший Сын, Сестра и Младший Сын. С тех пор, как Великое Древо было сожжено руками Лорда Максимуса, оставшиеся Горы объединились с единственной целью отомстить за свою Святыню. Когда Бог Света вскоре совершил самоубийство, его раздробленное могущество пролилось на Великое Древо, даровав ему проблеск жизни. Теперь у Горов есть проблеск надежды уберечь свое Древо от гибели через кровавые жертвоприношения, хотя для того, чтобы просто остаться в живых, требуются сотни трупов в год.";
	FAMILY.image = "begotten/ui/bgtbtnfaithfamily.png";
Schema.faiths:Register(FAMILY)

local DARK = Schema.faiths:New("dark")
	DARK.name = "Faith of the Dark";
	DARK.color = Color(137, 0, 0, 255);
	DARK.subfaiths = {"Primevalism", "Satanism"};
	
	-- for character creation
	DARK.description = "Вера Тьмы - это название, данное самой истинной вере из всех. Человечество сделало выбор лишить себя удовольствий ради надежды на что-то большее, своего рода оправдания своих страданий. Они совершили ошибку, последовав за Светом, чем-то, что существует только для того, чтобы сбивать людей с пути их истинных желаний. Эти люди молятся богу, который никогда не слушает, богу, который мертв во многих отношениях. Они верят, что должны страдать от жизни в страданиях и боли ради загробной жизни в блаженстве и невежестве. Вера Тьмы - это противоположность этой вере.\n\nВера Тьмы существовала в тайне тысячи лет, но никогда не было настоящего Легиона под ее властью до прихода Подземного бога, когда его последователи наконец решили, что пришло время выйти из укрытия. Были также те, кто поклонялся Сатане неосознанно, их собственные боги были извращенными проявлениями его присутствия. Никто на самом деле не знает, какие из Богов были реальны, а какие были просто доверенными лицами Темного Лорда. Далеко на восток от земель Империи Света находилась огромная Нигерийская Империя, разделенная на враждующие государства, которыми правили многие князья. Эта Империя часто рассматривается источниками Иерархии как первый Темный Легион, поскольку все их Боги были марионетками или промежуточными формами Сатаны. Однако с приходом Подбога весь этот ландшафт был поглощен, не выдержав мощи заклятого врага Сатаны.";
	DARK.image = "begotten/ui/bgtbtnfaithdark.png";
Schema.faiths:Register(DARK)

local COMMAND = Clockwork.command:New("CharTransferFaith");
	COMMAND.tip = "Transfer a character to a faith.";
	COMMAND.text = "<string Name> <string Faith>";
	COMMAND.access = "o";
	COMMAND.arguments = 2;
	COMMAND.alias = {"TransferFaith", "PlyTransferFaith", "SetFaith", "CharSetFaith", "PlySetFaith"};

	-- Called when the command has been run.
	function COMMAND:OnRun(player, arguments)
		local target = Clockwork.player:FindByID(arguments[1])
		
		if (target) then
			local faith = string.gsub(arguments[2], "\"", "");
			local faithTable = Schema.faiths:GetFaith(faith);
			
			if faithTable then
				if target:GetFaith() ~= faithTable.name then
					local name = target:Name();

					if cwBeliefs then
						local beliefTrees = cwBeliefs.beliefTrees.stored;
						local targetBeliefs = target:GetCharacterData("beliefs", {});
						local oldFaith = target:GetFaith();
						local points = target:GetCharacterData("points", 0);
						
						for k, beliefTree in pairs(beliefTrees) do
							if beliefTree.requiredFaiths and table.HasValue(beliefTree.requiredFaiths, oldFaith) then
								for k2, v2 in pairs(beliefTree.beliefs) do
									for k3, v3 in pairs(v2) do
										for k4, v4 in pairs(targetBeliefs) do
											if k3 == k4 and v4 == true then
												targetBeliefs[k4] = false;
												points = points + 1;
											end
										end
									end
								end
								
								if beliefTree.hasFinisher and targetBeliefs[k.."_finisher"] then
									targetBeliefs[k.."_finisher"] = false;
								end
							end
						end
						
						target:SetCharacterData("beliefs", targetBeliefs);
						target:SetCharacterData("points", points);
					end
					
					target:SetCharacterData("Faith", faithTable.name, true);
					target.cwCharacter.subfaith = nil;
					
					Clockwork.player:LoadCharacter(target, Clockwork.player:GetCharacterID(target));
					Clockwork.player:NotifyAll(player:Name().." has transferred "..name.." to the "..faithTable.name.." faith.");
				else
					Clockwork.player:Notify(player, target:GetName().." is already a member of the "..faithTable.name.." faith!");
				end
			else
				Clockwork.player:Notify(player, arguments[2].." is not a valid faith!");
			end
		else
			Clockwork.player:Notify(player, arguments[1].." is not a valid player!");
		end;
	end;
COMMAND:Register();