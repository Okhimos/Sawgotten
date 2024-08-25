--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local RITUAL = cwRituals.rituals:New("purifying_stone_rite");
	RITUAL.name = "(T2) Стих Камня Очищения";
	RITUAL.description = "Наделить вещь не только чистотой, но и способностью распространять свою очищенную природу на окружающее пространство - это акт веры, который практикуют немногие. Выполнив этот ритуал, вы вызываете предмет «Камень Очищения». Снимает 10 порчи.";
	RITUAL.onerequiredbelief = {"man_become_beast", "one_with_the_druids", "daring_trout", "shedskin", "flagellant", "acolyte", "soothsayer", "heretic"}; -- Tier II Shared Ritual
	
	RITUAL.requirements = {"light_catalyst", "up_catalyst", "up_catalyst"};
	RITUAL.result = {
		["purifying_stone"] = {amount = 1},
	};
	RITUAL.corruptionCost = -10; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 50; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
		if cwSanity then
			player:HandleSanity(20);
		end
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("yellow_banner_of_quelling");
	RITUAL.name = "(T2) Желтое Знаями Оков";
	RITUAL.description = "Дети Сатаны убегают, когда видят невидимое знамя. Пусть сатанинская тварь дрогнет когда поймет, что теперь прикованы к этим смертным землям, которые они так долго оскверняли. Проведение этого ритуала разрывает связь с адом, блокируя телепортацию в большом радиусе и маскировку в меньшем радиусе вокруг вас на 30 минут. Будьте внимательны, этот ритуал рисует огромную мишень на вашей голове для любого члена Адского Легиона. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"man_become_beast", "one_with_the_druids", "daring_trout", "shedskin", "flagellant", "acolyte"}; -- Tier II Light/Family Ritual
	
	RITUAL.requirements = {"purifying_stone", "xolotl_catalyst", "down_catalyst"};

	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 75; -- XP gained from performing the ritual.

	function RITUAL:OnPerformed(player)
		player:SetSharedVar("yellowBanner", true);

		timer.Create("YellowBannerTimer_"..player:EntIndex(), 1800, 1, function()
			if IsValid(player) then
				if player:GetSharedVar("yellowBanner", false) then
					player:GetSharedVar("yellowBanner", false);

					Clockwork.hint:Send(player, "The 'Yellow Banner of Quelling' ritual has worn off...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("xolotl_catalyst");
	RITUAL.name = "(T2) Стих Каталиста Ксаотля";
	RITUAL.description = "Энергия, собранная в камень. Она может быть использована для чего-то большего. Выполнение этого ритуала вызывает предмет Каталист Ксаотля. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"man_become_beast", "one_with_the_druids", "daring_trout", "shedskin", "flagellant", "acolyte", "soothsayer", "heretic"}; -- Tier II Shared Ritual
	
	RITUAL.requirements = {"down_catalyst", "up_catalyst", "ice_catalyst"};
	RITUAL.result = {
		["xolotl_catalyst"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 50; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("holy_spirit_rite");
	RITUAL.name = "(T2) Стих Святого Духа";
	RITUAL.description = "После смерти Бога духи бродят по землям людей. Запечатлейте одного из них в камне, пока он не испортился от нечистоты! При выполнении этого ритуала вызывается предмет Святой Дух. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"flagellant", "acolyte"}; -- Tier II Faith of the Light Ritual
	
	RITUAL.requirements = {"light_catalyst", "trinity_catalyst", "light_catalyst"};
	RITUAL.result = {
		["holy_spirit"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 50; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("tortured_spirit_rite");
	RITUAL.name = "(T2) Стих Измученного Духа";
	RITUAL.description = "Поймайте в ловушку светлого духа, терпящего вечную агонию, и используйте его как источник запретной силы. При выполнении этого ритуала вызывается предмет Измученный Дух. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"soothsayer", "heretic", "shedskin"}; -- Tier II Faith of the Dark Ritual
	
	RITUAL.requirements = {"down_catalyst", "belphegor_catalyst", "belphegor_catalyst"};
	RITUAL.result = {
		["tortured_spirit"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 50; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("pentagram_catalyst_rite");
	RITUAL.name = "(T2) Стих Каталиста Пентаграммы";
	RITUAL.description = "Страх, боль и крики несчастных кристаллизуются в вашей ладони. При выполнении этого ритуала вызывается предмет Каталист Пентаграммы. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"soothsayer", "heretic", "shedskin"}; -- Tier II Faith of the Dark Ritual
	
	RITUAL.requirements = {"down_catalyst", "belphegor_catalyst", "down_catalyst"};
	RITUAL.result = {
		["pentagram_catalyst"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 50; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("judgement_sigil_rite");
	RITUAL.name = "(Уникальное) Стих Камня Осуждения";
	RITUAL.description = "Выразите свою ненависть и стыд в камне-сигиле. При выполнении этого ритуала вызывается предмет Камень Осуждения. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"extinctionist"}; -- Unique Sol Orthodoxy Ritual
	
	RITUAL.requirements = {"down_catalyst", "light_catalyst", "purifying_stone"};
	RITUAL.result = {
		["judgemental_sigil_stone"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 75; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("judgement_sigil_vengeful");
	RITUAL.name = "(T3) Стих Камня Мести";
	RITUAL.description = "Выразите свой гнев в камне-сигиле. При выполнении этого ритуала вызывается предмет Камень Мести. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"watchful_raven"}; -- Tier III Faith of the Family Ritual
	
	RITUAL.requirements = {"familial_catalyst", "xolotl_catalyst", "purifying_stone"};
	RITUAL.result = {
		["vengeful_sigil_stone"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 75; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("unholy_sigil_stone_rite");
	RITUAL.name = "(T2) Стих Нечестивого Камня";
	RITUAL.description = "Вы смеетесь в лицо всему доброму и праведному. При выполнении этого ритуала вызывается предмет Нечестивый Камень. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"soothsayer", "heretic", "shedskin"}; -- Tier II Faith of the Dark Ritual

	RITUAL.requirements = {"down_catalyst", "belphegor_catalyst", "pentagram_catalyst"};
	RITUAL.result = {
		["unholy_sigil_stone"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 75; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("fire_sigil_stone_rite");
	RITUAL.name = "(T3) Стих Камня Огня";
	RITUAL.description = "Создайте Камень Огня. При выполнении этого ритуала вызывается предмет Камень Огня. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"sorcerer", "watchful_raven", "emissary", "extinctionist"}; -- Tier III Shared Ritual
	
	RITUAL.requirements = {"light_catalyst", "belphegor_catalyst", "xolotl_catalyst"};
	RITUAL.result = {
		["fire_sigil_stone"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 75; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("ice_sigil_stone_rite");
	RITUAL.name = "(T3) Стих Камня Льда";
	RITUAL.description = "Создайте Камень Льда. При выполнении этого ритуала вызывается предмет Камень Льда. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"sorcerer", "watchful_raven", "emissary", "extinctionist"}; -- Tier III Shared Ritual
	
	RITUAL.requirements = {"ice_catalyst", "ice_catalyst", "xolotl_catalyst"};
	RITUAL.result = {
		["ice_sigil_stone"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 75; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("glazic_sigil_stone_rite");
	RITUAL.name = "(T3) Стих Камня Сияния";
	RITUAL.description = "Создайте Камень Сияния. При выполнении этого ритуала вызывается предмет Камень Света. Ритуал дает 5 порчи.";
	RITUAL.onerequiredbelief = {"emissary"}; -- Hard-Glazed Unique Ritual
	
	RITUAL.requirements = {"holy_spirit", "xolotl_catalyst", "xolotl_catalyst"};
	RITUAL.result = {
		["glazic_sigil_stone"] = {amount = 1},
	};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 75; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("a_feast_of_ash_and_twig");
	RITUAL.name = "(T1) Пир из Пыли да Веток";
	RITUAL.description = "При совершении подношения аппетит человека расширяется и включает в себя объедки мусора, грязи или всего того, что можно найти, что раньше было не очень питательным. Выполнение этого ритуала возвращает 80 % голода и жажды, а также 80 % уровня крови. Снимает 5 порчи.";
	RITUAL.onerequiredbelief = {"repentant", "disciple"}; -- Tier I Faith of the Light Ritual
	
	RITUAL.requirements = {"up_catalyst", "up_catalyst", "trinity_catalyst"};
	RITUAL.corruptionCost = -5;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 25;
	
	function RITUAL:OnPerformed(player)
		player:HandleNeed("hunger", -80);
		player:HandleNeed("thirst", -80);
		player:ModifyBloodLevel(4000);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("aura_of_the_mother");
	RITUAL.name = "(T3) Аура Матери";
	RITUAL.description = "Друиды могут использовать свои целительные силы и распространять их на окружающих. С каждым новым воином война против корнегрызов продолжается. Выполнение этого ритуала пассивно исцеляет всех персонажей «Веры в семью» на расстоянии разговора в течение следующих 10 минут. Дает 20 порчи.";
	RITUAL.onerequiredbelief = {"watchful_raven"}; -- Tier III Faith of the Family Ritual
	
	RITUAL.requirements = {"familial_catalyst", "pantheistic_catalyst", "purifying_stone"};
	RITUAL.corruptionCost = 20;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 75;

	function RITUAL:OnPerformed(player)
		player:SetSharedVar("auraMotherActive", true);
	
		timer.Create("auraMotherTimer_"..player:EntIndex(), 5, 120, function() 
			if IsValid(player) then
				for k, v in pairs (ents.FindInSphere(player:GetPos(), config.Get("talk_radius"):Get())) do
					if (v:IsPlayer() and v:GetFaith() == "Faith of the Family") then
						v:SetHealth(math.min(v:Health() + 6, v:GetMaxHealth()));
						v:ModifyBloodLevel(150);
					end
				end
			end
		end);
		
		timer.Simple(600, function()
			if IsValid(player) then
				player:SetSharedVar("auraMotherActive", false);
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("blessing_of_coin");
	RITUAL.name = "(T1) Благословение Монет";
	RITUAL.description = "Действительно ли это милость Сияния или статистическая иллюзия? Конечно, это не помешает вам подать милостыню за обильный урожай. Выполнение этого ритуала увеличивает количество монет, найденных в контейнерах, на 40 минут. Дает 10 порчи.";
	RITUAL.onerequiredbelief = {"repentant", "disciple"}; -- Tier I Faith of the Light Ritual
	
	RITUAL.requirements = {"trinity_catalyst", "up_catalyst", "light_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 25;

	function RITUAL:OnPerformed(player)
		player:SetNetVar("blessingOfCoin", true);

		timer.Create("BlessingOfCoinTimer_"..player:EntIndex(), 2400, 1, function()
			if IsValid(player) then
				if player:GetNetVar("blessingOfCoin", false) then
					player:SetNetVar("blessingOfCoin", false);

					Clockwork.hint:Send(player, "Благословление монет спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("bloodhowl");
	RITUAL.name = "(T2) Кровавый Вой";
	RITUAL.description = "Трепет битвы придает вам сил! При выполнении этого ритуала ваши боевые крики будут восстанавливать 90 пунктов выносливости в течение 40 минут. Дает 10 порчи.";
	RITUAL.onerequiredbelief = {"man_become_beast", "one_with_the_druids", "daring_trout", "shedskin"}; -- Tier II Faith of the Family Ritual
	
	RITUAL.requirements = {"down_catalyst", "familial_catalyst", "pantheistic_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;

	function RITUAL:OnPerformed(player)
		player.bloodHowlActive = true;

		timer.Create("BloodhowlTimer_"..player:EntIndex(), 2400, 1, function()
			if IsValid(player) then
				if player.bloodHowlActive then
					player.bloodHowlActive = nil;

					Clockwork.hint:Send(player, "Ритуал кровавого воя спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("bloodwings");
	RITUAL.name = "(T3) Кровавые Крылья";
	RITUAL.description = "Небеса кровоточат, когда ангелы машут крыльями. Выполнение этого ритуала дает способность к двойному прыжку ценой 15 единиц крови в течение следующих 30 минут. Дает 10 порчи.";
	RITUAL.onerequiredbelief = {"sorcerer"}; -- Tier III Faith of the Dark Ritual
	RITUAL.requiredBeliefsSubfactionOverride = {["Rekh-khet-sa"] = {"embrace_the_darkness"}}; -- Tier III Faith of the Dark Ritual
	
	RITUAL.requirements = {"belphegor_catalyst", "up_catalyst", "up_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;

	function RITUAL:OnPerformed(player)
		player.bloodWingsActive = true;

		timer.Create("BloodwingsTimer_"..player:EntIndex(), 1800, 1, function()
			if IsValid(player) then
				if player.bloodWingsActive then
					player.bloodWingsActive = nil;

					Clockwork.hint:Send(player, "Ритуал кровавых крыльев спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("call_of_the_blood_moon");
	RITUAL.name = "(Уникальное) Вызов Кровавой Луны";
	RITUAL.description = "Как известно любому первобытному человеку, Кровавая луна требует регулярных жертв, чтобы ее можно было умиротворить. Для тех, кто готов убивать ради этого, власть Кровавой Луны над пустошью может быть продлена на некоторое время. Выполнение этого ритуала продлит ночной цикл на пятнадцать минут. Дает 75 единиц порчи.";
	RITUAL.onerequiredbelief = {"thirst_blood_moon"}; -- Primevalist Unique Ritual
	
	RITUAL.requirements = {"tortured_spirit", "down_catalyst", "pentagram_catalyst"};
	RITUAL.corruptionCost = 75;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 100;
	
	function RITUAL:OnPerformed(player)
		if cwDayNight then
			if cwDayNight.currentCycle == "night" then
				Clockwork.chatBox:Add(player, nil, "event", "Вы чувствуете, как сияние Кровавой луны пульсирует, словно черпая из чего-то энергию.");
				netstream.Start(player, "PlaySound", "begotten/ui/sanity_touch.mp3");
			
				for i, v in ipairs(_player.GetAll()) do
					if IsValid(v) and v:HasInitialized() then
						local lastZone = v:GetCharacterData("LastZone");

						if lastZone == "wasteland" or lastZone == "tower" then
							if v ~= player then
								Clockwork.chatBox:Add(v, nil, "event", "Вы чувствуете, как сияние Кровавой луны пульсирует, словно черпая из чего-то энергию.");
								netstream.Start(v, "PlaySound", "begotten/ambient/hits/wall_stomp5.mp3");
							end
							
							v:Disorient(3);
							
							for i = 1, 5 do
								timer.Simple(i * 3, function()
									if IsValid(v) then
										netstream.Start(v, "PlaySound", "begotten/ambient/hits/wall_stomp"..tostring(i)..".mp3");
										v:Disorient(3);
									end
								end);
							end
						end
					end
				end
				
				cwDayNight:ModifyCycleTimeLeft(900);
				return true;
			end
		end
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		if cwDayNight then
			if cwDayNight.currentCycle == "night" then
				if cwDayNight.nextCycleTime - CurTime() <= 10 then
					-- Add enough time to complete the ritual!
					cwDayNight:ModifyCycleTimeLeft(10);
				end
				
				return true;
			else
				Schema:EasyText(player, "peru", "Для проведения этого ритуала необходимо, чтобы села Кровавая Луна!");
				
				return false;
			end
		end
		
		return false;
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("call_of_the_blood_storm");
	RITUAL.name = "(Уникальное) Зов Кровавого Шторма";
	RITUAL.description = "Тысячи лет племена луны и джунгли джуджус танцевали вокруг своих фетиш-алтарей, пропитанных кровью, взывая к дождям, чтобы очистить их, но они так и не пришли. Только те, кто продолжал танцевать после того, как их костры догорели, могут почувствовать теплую багровую каплю на своей щеке. Выполнение этого ритуала вызовет кровавую бурю в течение минуты после выполнения. Дает 90 единиц порчи.";
	RITUAL.onerequiredbelief = {"thirst_blood_moon"}; -- Primevalist Unique Ritual
	
	RITUAL.requirements = {"tortured_spirit", "tortured_spirit", "tortured_spirit"};
	RITUAL.corruptionCost = 90;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 200;
	
	function RITUAL:OnPerformed(player)
		if cwWeather then
			cwWeather:SetWeather("bloodstorm");
			
			return true;
		end
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		if cwWeather then
			if cwWeather.weather ~= "bloodstorm" then
				if cwWeather.nextWeatherTime - CurTime() <= 10 then
					-- Add enough time to complete the ritual!
					cwWeather.nextWeatherTime = CurTime() + 10;
				end
				
				return true;
			else
				Schema:EasyText(player, "peru", "Сейчас уже идет кровавый шторм!");
				
				return false;
			end
		end
		
		return false;
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("call_to_darkness");
	RITUAL.name = "(T2) Зов к Тьме";
	RITUAL.description = "Открыть себя для темного носителя - высший знак преданности своим хозяевам. Темные силы обычно используют смертных в качестве временных сосудов для более непосредственного исполнения своей воли. Совершив этот ритуал, вы пригласите кого-то использовать ваше тело в качестве сосуда и заставите его подчиниться вашим приказам. Дает 40 единиц порчи.";
	RITUAL.onerequiredbelief = {"soothsayer", "heretic", "shedskin"}; -- Tier II Faith of the Dark Ritual
	
	RITUAL.requirements = {"down_catalyst", "down_catalyst", "pentagram_catalyst"};
	RITUAL.corruptionCost = 40;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
		Schema:EasyText(GetAdmins(), "tomato", player:Name().." has performed the 'Call to Darkness' ritual, meaning that an admin should probably possess them!");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("cherished_by_evil");
	RITUAL.name = "(T1) Лелеемый Злом";
	RITUAL.description = "Безумие - для слабых, а вашу душу точно не возьмут без разумной суммы. Выполнение этого ритуала мгновенно восстанавливает ваше здравомыслие до полного и снимает 50 пунктов порчи.";
	RITUAL.onerequiredbelief = {"soothsayer", "witch", "witch_druid"}; -- Tier I Faith of the Dark Ritual
	
	RITUAL.requirements = {"ice_catalyst", "purifying_stone", "elysian_catalyst"};
	RITUAL.corruptionCost = -50;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 25;
	
	function RITUAL:OnPerformed(player)
		player:HandleSanity(100);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("cloak_of_always_burning");
	RITUAL.name = "(T2) Плащ Вечного Пламени";
	RITUAL.description = "Поднеся каталисты, руны и плетеные ветви, вы получите устойчивость к естественным и неестественным силам жизни. Совершив этот ритуал, вы получите 100 %-ное сопротивление урону от огня и льда на 40 минут. Дает 10 порчи";
	RITUAL.onerequiredbelief = {"man_become_beast", "one_with_the_druids", "daring_trout", "shedskin"}; -- Tier II Faith of the Family Ritual
	
	RITUAL.requirements = {"belphegor_catalyst", "ice_catalyst", "familial_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;

	function RITUAL:OnPerformed(player)
		player.cloakBurningActive = true;

		timer.Create("CloakBurnTimer_"..player:EntIndex(), 2400, 1, function()
			if IsValid(player) then
				if player.cloakBurningActive then
					player.cloakBurningActive = nil;

					Clockwork.hint:Send(player, "Плащ вечного пламени спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("cries_of_the_drowned_king");
	RITUAL.name = "(T1) Плачь Утопленного Короля";
	RITUAL.description = "После долгого пребывания в море вы можете услышать бульканье и причитания утонувшей легенды. Совершите подношение богам, и вы сможете прислушаться к его мудрости. Выполнив этот ритуал, вы не сможете терять кислород под водой в течение 1 часа, и в это время вы сможете пить из водоемов без последствий. Дает 5 порчи.";
	RITUAL.onerequiredbelief = {"honor_the_gods", "one_with_the_druids", "the_black_sea", "witch_druid"}; -- Tier I Faith of the Family Ritual
	
	RITUAL.requirements = {"down_catalyst", "down_catalyst", "down_catalyst"};
	--RITUAL.corruptionCost = 5; -- Corruption gets added once the UI is closed.
	RITUAL.ritualTime = 10;
	RITUAL.experience = 25;

	function RITUAL:OnPerformed(player)
		player.drownedKingActive = true;

		timer.Create("DrownedKingTimer_"..player:EntIndex(), 3600, 1, function()
			if IsValid(player) then
				if player.drownedKingActive then
					player.drownedKingActive = nil;

					Clockwork.hint:Send(player, "Ритуал плачь утопленного короля спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("demon_hunter");
	RITUAL.name = "(T1) Охотник на Демонов";
	RITUAL.description = "Покажите свое высокомерие, попросите бросить вам вызов, достойный вашей боевой доблести! Выполнив этот ритуал, вы получите 25 минут на истребление случайного количества порожденных, которые затем вознаградят вас 1000 веры (опытом).";
	RITUAL.onerequiredbelief = {"honor_the_gods", "one_with_the_druids", "the_black_sea", "witch_druid"}; -- Tier I Faith of the Family Ritual
	
	RITUAL.requirements = {"light_catalyst", "elysian_catalyst", "pantheistic_catalyst"};
	--RITUAL.corruptionCost = 5; -- Corruption gets added once the UI is closed.
	RITUAL.ritualTime = 10;
	RITUAL.experience = 25;

	function RITUAL:OnPerformed(player)
		player.demonHunterActive = true;
		player.thrallsToKill = math.random(1, 3);
		
		Schema:EasyText(player, "goldenrod", "У вас есть 25 минут чтобы убить "..player.thrallsToKill.." порожденных чтобы получить свою награду.");
		
		Schema:EasyText(GetAdmins(), "tomato", player:Name().." just activated the 'Demon Hunter' ritual! Make sure there are enough thrall NPCs ("..player.thrallsToKill..") for him to kill!");
		if(math.random(1,10) == 1) then Schema:EasyText(GetAdmin(), "tomato", "The die have been cast...by random chance, an admin thrall has been requested to participate in this ritual!"); end

		timer.Create("DemonHunterTimer_"..player:EntIndex(), 1500, 1, function()
			if IsValid(player) then
				if player.demonHunterActive then
					player.demonHunterActive = nil;

					Clockwork.hint:Send(player, "The 'Demon Hunter' ritual has worn off...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

-- This is apparently quite unbalanced, so gabs has asked me to remove it.
--[[RITUAL = cwRituals.rituals:New("infernal_incursion");
	RITUAL.name = "(T1) Infernal Incursion";
    RITUAL.description = "Loosen the veil between realms and agitate a few demons while you're at it. Preforming this ritual will give you twenty five minutes to slay a random number of thralls, which will then reward you with 1000 faith (experience).";
	RITUAL.onerequiredbelief = {"soothsayer", "witch", "witch_druid"}; -- Tier I Faith of the Dark Ritual
	RITUAL.requirements = {"belphegor_catalyst", "pentagram_catalyst", "up_catalyst"};
	RITUAL.corruptionCost = 5;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 5;
	
	function RITUAL:OnPerformed(player)
		player.thrallsToKill = math.random(1, 3);
		
		Schema:EasyText(player, "goldenrod", "You now have 25 minutes to kill "..player.thrallsToKill.." Begotten thralls for your reward.");
		Schema:EasyText(GetAdmins(), "tomato", player:Name().." just activated the 'Infernal Incursion' ritual! Make sure there are enough thrall NPCs ("..player.thrallsToKill..") for him to kill!");
		if(math.random(1,10) == 1) then Schema:EasyText(GetAdmin(), "tomato", "The die have been cast...by random chance, an admin thrall has been requested to participate in this ritual!"); end
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()]]--

RITUAL = cwRituals.rituals:New("empowered_blood");
	RITUAL.name = "(T2) Кровавая Сила";
	RITUAL.description = "Кровные линии значат для Детей Сатаны все, особенно те, что ведут свое происхождение от древних королей и колдунов. Обладатели чистейшей родословной могут использовать силу своих предков, чтобы временно увеличить максимальный запас здоровья на 50 единиц на 15 минут. Дает 10 порчи";
	RITUAL.onerequiredbelief = {"soothsayer", "heretic", "shedskin"}; -- Tier II Faith of the Dark Ritual
	
	RITUAL.requirements = {"pentagram_catalyst", "belphegor_catalyst", "elysian_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
		player.maxHealthBoost = 50;
		player:SetMaxHealth(player:GetMaxHealth());
		player:SetHealth(player:Health() + 50);
		
		timer.Create("EmpoweredBloodTimer_"..player:EntIndex(), 900, 1, function()
			if IsValid(player) then
				player.maxHealthBoost = nil;
				
				local maxHealth = player:GetMaxHealth();
				
				player:SetMaxHealth(maxHealth);
				
				if player:Health() > maxHealth then
					player:SetHealth(maxHealth);
				end
				
				Clockwork.hint:Send(player, "Вы чувствуете как ритуал спадает и сила в вашей крови угасает...", 10, Color(175, 100, 100), true, true);
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("familial_seed");
	RITUAL.name = "(T1) Семя Семьи";
	RITUAL.description = "Горейский лес пышен и кишит жизнью по сравнению с теми царствами, в которых обитают последователи Глаза. Горейские войны могут призвать магию Горейского леса, чтобы помочь залечить свои раны. Выполнение этого ритуала восстанавливает 150 здоровья, 60 % крови и исцеляет указанную конечность от повреждений. Снимает 25 порчи.";
	RITUAL.onerequiredbelief = {"honor_the_gods", "one_with_the_druids", "the_black_sea", "witch_druid"}; -- Tier I Faith of the Family Ritual
	
	RITUAL.requirements = {"familial_catalyst", "familial_catalyst", "familial_catalyst"};
	RITUAL.corruptionCost = -25; -- Corruption gets added once the UI is closed.
	RITUAL.ritualTime = 10;
	RITUAL.experience = 25;
	
	function RITUAL:OnPerformed(player)
		player.selectingRegrowthLimb = true;
		
		netstream.Start(player, "OpenRegrowthMenu");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("hail_prince_thieves");
	RITUAL.name = "(T1) Славься Принц Воров!";
	RITUAL.description = "От трущоб Темных земель до целомудренных полей окружных районов воры молятся одному и тому же принцу. Проведение этого ритуала значительно облегчает взлом замков и увеличивает шанс найти добычу из запертых контейнеров на 10 % в течение следующих 30 минут. Дает 5 порчи.";
	RITUAL.onerequiredbelief = {"soothsayer", "witch", "witch_druid"}; -- Tier I Faith of the Dark Ritual
	
	RITUAL.requirements = {"down_catalyst", "ice_catalyst", "ice_catalyst"};
	RITUAL.corruptionCost = 5;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 30;

	function RITUAL:OnPerformed(player)
		player:SetNetVar("princeOfThieves", true);

		timer.Create("PrinceOfThievesTimer_"..player:EntIndex(), 1800, 1, function()
			if IsValid(player) then
				if player:GetNetVar("princeOfThieves", false) then
					player:SetNetVar("princeOfThieves", false);

					Clockwork.hint:Send(player, "Благославление Принца Воров спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("hear_me");
	RITUAL.name = "(T1) Услыш Меня";
	RITUAL.description = "Вы не являетесь никем, пока не заявите о себе. Выполнение этого ритуала дает вам 300 веры (опыта). Дает 10 порчи.";
	RITUAL.onerequiredbelief = {"soothsayer", "witch", "witch_druid"}; -- Tier I Faith of the Dark Ritual
	
	RITUAL.requirements = {"belphegor_catalyst", "belphegor_catalyst", "belphegor_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 300;
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("hellgorge");
	RITUAL.name = "(T1) Адская Дань";
	RITUAL.description = "За простое подношение вам дадут самый маленький кусочек из рога изобилия. Этого может быть достаточно, чтобы насытиться, но вы наверняка захотите еще. Выполнение этого ритуала мгновенно снизит ваши голод, жажду и усталость до нуля. Снимает 15 порчи.";
	RITUAL.onerequiredbelief = {"soothsayer", "witch", "witch_druid"}; -- Tier I Faith of the Dark Ritual
	
	RITUAL.requirements = {"up_catalyst", "down_catalyst", "belphegor_catalyst"};
	RITUAL.corruptionCost = -15;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 25;
	
	function RITUAL:OnPerformed(player)
		player:SetNeed("thirst", 0);
		player:SetNeed("hunger", 0);
		player:SetNeed("sleep", 0);
		
		Clockwork.chatBox:Add(player, nil, "itnofake", "Непреодолимый прилив облегчения охватывает вас, и вы чувствуете себя будто помолодевшим.");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("holy_powderkeg");
	RITUAL.name = "(T2) Святой Порох";
	RITUAL.description = "Hand me your rifles, lend me your spent pepper-poppers and snapdragons! I will cock, load, pump and magazine every gun of every faithful Philimonjio in our Lord’s army as I was born and bred to do so! Performing this ritual significantly increases reload speed for the next 15 minutes. Incurs 5 corruption.";
	RITUAL.onerequiredbelief = {"flagellant", "acolyte"}; -- Tier II Faith of the Light Ritual
	
	RITUAL.requirements = {"holy_spirit", "light_catalyst", "trinity_catalyst"};
	RITUAL.corruptionCost = 5; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 50; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
		player.holyPowderkegActive = true;

		timer.Create("HolyPowderTimer_"..player:EntIndex(), 900, 1, function()
			if IsValid(player) then
				if player.holyPowderkegActive then
					player.holyPowderkegActive = nil;

					Clockwork.hint:Send(player, "Святой Порох спадает с вашего ружья...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("cloak_of_the_black_hat");
	RITUAL.name = "(Уникальный) Мантия Черношляпника";
	RITUAL.description = "Любой ребенок знает, как спрятаться в темноте. Черная Шляпа приносит тьму с собой, преследуя залы знати, которая ошибочно считает себя в безопасности. Они больше никогда не будут одиноки. Выполнив этот ритуал, вы станете невидимым в присяди в течение следующих 30 минут, но не сможете атаковать, будучи замаскированным. Дает 25 порчи.";
	RITUAL.requiredSubfaction = {"Kinisger"}; -- Subfaction Ritual
	
	RITUAL.requirements = {"pentagram_catalyst", "xolotl_catalyst", "ice_catalyst"};
	RITUAL.corruptionCost = 25; -- Corruption gets added once the UI is closed.
	RITUAL.ritualTime = 15;
	
	function RITUAL:OnPerformed(player)
		player:SetNetVar("kinisgerCloak", true);
		
		timer.Simple(1800, function()
			if IsValid(player) then
				if player:GetNetVar("kinisgerCloak", false) then
					player:SetNetVar("kinisgerCloak", false);
					
					if player.cloaked then
						player:Uncloak();
					end
					
					Clockwork.hint:Send(player, "Мантия Черной Шляпы спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("kinisger_appearance_alteration");
	RITUAL.name = "(Уникальное) Внешности Дома";
	RITUAL.description = "Члены Дома Кинисгер - мастера проникновения, благодаря использованию темной магии и своей мутантской крови для изменения внешности. Дает 50 порчи.";
	RITUAL.requiredSubfaction = {"Kinisger"}; -- Subfaction Ritual
	
	RITUAL.requirements = {"down_catalyst", "down_catalyst", "ice_catalyst"};
	--RITUAL.corruptionCost = 50; -- Corruption gets added once the UI is closed.
	RITUAL.ritualTime = 15;
	RITUAL.isSilent = true;
	
	function RITUAL:OnPerformed(player)
		player.selectingNewAppearance = true;
		
		netstream.Start(player, "OpenAppearanceAlterationMenu");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("apostle_of_many_faces");
	RITUAL.name = "(Уникальное) Апостол Многих Лиц";
	RITUAL.description = "Испытание веры для истинного чернокнижника - нести чучела языческих и благочестивых верований, противоположных твоей собственной. Играть роль чужого аколита настолько хорошо, что обмануть даже богов - признак мастера-чернокнижника! Выполнение этого ритуала навсегда позволяет вам экипировать или использовать все снаряжение, не связанное с верой вольтизма. Дает 50 порчи.";
	RITUAL.requiredSubfaction = {"Kinisger"}; -- Subfaction Ritual
	
	RITUAL.requirements = {"xolotl_catalyst", "xolotl_catalyst", "xolotl_catalyst"};
	RITUAL.corruptionCost = 50;
	RITUAL.ritualTime = 15;
	
	function RITUAL:OnPerformed(player)
		player:SetCharacterData("apostle_of_many_faces", true);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		if player:GetCharacterData("apostle_of_many_faces") then
			Schema:EasyText(player, "firebrick", "Вы уже исполнили этот ритуал!");
		
			return false;
		end
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("ritual_of_shadow");
	RITUAL.name = "(Unique) Покров Тьмы";
	RITUAL.description = "Хотя члены Дома Рекх-хет-са обычно не могут перемещаться по поверхности в дневное время, существует ритуал, который может временно окутать их тьмой и защитить от света. Выполнив этот ритуал, вы не сможете получать урон в дневное время в Пустоши в течение следующих 40 минут.";
	RITUAL.requiredSubfaction = {"Rekh-khet-sa"}; -- Subfaction Ritual
	
	RITUAL.requirements = {"light_catalyst", "down_catalyst", "ice_catalyst"};
	RITUAL.ritualTime = 30;

	function RITUAL:OnPerformed(player)
		player.ritualOfShadow = true;

		timer.Create("RitualOfShadowTimer_"..player:EntIndex(), 2400, 1, function()
			if IsValid(player) then
				if player.ritualOfShadow then
					player.ritualOfShadow = nil;

					Clockwork.hint:Send(player, "Тьма спадает с тебя...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("mark_of_the_devil");
	RITUAL.name = "(T2) Марка Дьявола";
	RITUAL.description = "Тех, кто оскорбляет Темного Властелина или его слуг, ждет страшная и ужасающая смерть, ибо они будут отмечены для смерти руками Детей Сатаны. Совершение этого ритуала пометит персонажа на смерть, высветив его для всех последователей Веры Тьмы, когда они окажутся поблизости. Убийство отмеченных персонажей принесет большую награду, особенно если они будут принесены в жертву.";
	RITUAL.onerequiredbelief = {"soothsayer", "heretic", "shedskin"}; -- Tier II Faith of the Dark Ritual
	
	RITUAL.requirements = {"down_catalyst", "pentagram_catalyst", "down_catalyst"};
	--RITUAL.corruptionCost = 30; -- Corruption gets added once the UI is closed.
	RITUAL.ritualTime = 10;
	RITUAL.takeCatalysts = false;
	
	function RITUAL:OnPerformed(player)
		Clockwork.dermaRequest:RequestString(player, "Mark A Character", "Впишите имя человека, которого желаете пометить.", nil, function(result)
			local target = Clockwork.player:FindByID(result)
			
			if IsValid(target) then
				if target:Alive() then
					if target:GetFaction() ~= "Children of Satan" then
						Clockwork.dermaRequest:RequestConfirmation(player, "Подтверждение", "Вы уверены что хотите пометить "..target:Name().."на смерть?", function()
							
							if IsValid(target) and target:Alive() and target:GetFaction() ~= "Children of Satan" then
								local ritualTable = cwRituals.rituals.stored["mark_of_the_devil"];
								
								if !cwRituals:PlayerMeetsRitualItemRequirements(player, ritualTable, ritualTable.requirements, true) then return end;
								
								target:SetCharacterData("markedBySatanist", true);
								target:SetSharedVar("markedBySatanist", true);
								
								Schema:EasyText(player, "maroon", target:Name().." был помечен на смерть.");
								Schema:EasyText(GetAdmins(), "tomato", target:Name().."  был помечен на протрах чушкой под именем "..player:Name().."!");
								
								for k, v in pairs (_player.GetAll()) do
									if v:HasInitialized() then
										if v == player or v:GetFaith() == "Faith of the Dark" then
											Clockwork.chatBox:Add(v, nil, "darkwhispernoprefix", player:Name().." взывает ко всем служителям тьмы, помечая  "..target:Name().." на смерть за его действия против Темного Лорда.");
										end
									end
								end
								
								if player:GetSubfaction() ~= "Rekh-khet-sa" then
									player:HandleNeed("corruption", 30);
								end
							end
						end);
						
						return true;
					else
						Schema:EasyText(player, "firebrick", "Этого персонажа защищает непонятная аура, его нельзя пометить!");
					end
				else
					Schema:EasyText(player, "darkgrey", "Цель уже мертва!");
				end
			else
				Schema:EasyText(player, "grey", tostring(result).." не существует!");
			end
		end)

		return false;
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("mark_of_the_devil_target");
	RITUAL.name = "(T2) Марка Дьявола (Прямое)";
	RITUAL.description = "Вы должны смотреть на цель. Тех, кто оскорбляет Темного Властелина или его слуг, ждет страшная и ужасающая смерть, ибо они будут отмечены для смерти руками Детей Сатаны. Совершение этого ритуала пометит персонажа на смерть, высветив его для всех последователей Веры Тьмы, когда они окажутся поблизости. Убийство отмеченных персонажей принесет большую награду, особенно если они будут принесены в жертву.";
	RITUAL.onerequiredbelief = {"soothsayer", "heretic", "shedskin"}; -- Tier II Faith of the Dark Ritual
	
	RITUAL.requirements = {"pentagram_catalyst", "down_catalyst", "down_catalyst"};
	--RITUAL.corruptionCost = 30; -- Corruption gets added once the UI is closed.
	RITUAL.ritualTime = 2;
	RITUAL.isSilent = true;
	RITUAL.takeCatalysts = false;
	
	function RITUAL:OnPerformed(player)
		local target = player:GetEyeTraceNoCursor().Entity;
		
		if IsValid(target) and target:IsPlayer() then
			if target:Alive() then
				--if target:GetFaith() ~= "Faith of the Dark" then
				if target:GetFaction() ~= "Children of Satan" then
					if (target:GetShootPos():Distance(player:GetShootPos()) <= 192) then
						Clockwork.dermaRequest:RequestConfirmation(player, "Подтверждение", "Вы уверены что хотите пометить "..target:Name().." на смерть?", function()
							if IsValid(target) and target:Alive() and target:GetFaction() ~= "Children of Satan" then
								local ritualTable = cwRituals.rituals.stored["mark_of_the_devil_target"];
								
								if !cwRituals:PlayerMeetsRitualItemRequirements(player, ritualTable, ritualTable.requirements, true) then return end;
							
								target:SetCharacterData("markedBySatanist", true);
								target:SetSharedVar("markedBySatanist", true);
								
								Schema:EasyText(player, "maroon", target:Name().." был помечен на смерть");
								Schema:EasyText(GetAdmins(), "tomato", target:Name().." был помечен на протрах чушкой под именем "..player:Name().."!");
								
								if player:GetSubfaction() ~= "Rekh-khet-sa" then
									player:HandleNeed("corruption", 30);
								end
							end
						end);
						
						return true;
					else
						Schema:EasyText(player, "firebrick", "Персонаж слишком далеко!");
					end
				else
					Schema:EasyText(player, "firebrick", "Этого персонажа защищает непонятная аура, его нельзя пометить!");
				end
			else
				Schema:EasyText(player, "darkgrey", "Цель уже мертва!");
			end
		else
			Schema:EasyText(player, "firebrick", "Вы должны смотреть на цель!");
		end

		return false;
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		local target = player:GetEyeTraceNoCursor().Entity;
		
		if IsValid(target) and target:IsPlayer() then
			if target:Alive() then
				--if target:GetFaith() ~= "Faith of the Dark" then
				if target:GetFaction() ~= "Children of Satan" then
					if (target:GetShootPos():Distance(player:GetShootPos()) <= 192) then
						return true;
					else
						Schema:EasyText(player, "firebrick", "Персонаж слишком далеко!");
					end
				else
					Schema:EasyText(player, "firebrick", "Этого персонажа защищает непонятная аура, его нельзя пометить!");
				end
			else
				Schema:EasyText(player, "darkgrey", "Цель уже мертва!");
			end
		else
			Schema:EasyText(player, "firebrick", "Вы должны смотреть на персонажа!");
		end
		
		return false;
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("noble_stature");
	RITUAL.name = "(T2) Благородная стойка";
	RITUAL.description = "Испугавшись звериного рыка, вы только пригласите его клыки. Вы будете стоять непоколебимо, решительно перед лицом дикости. При выполнении этого ритуала вы получаете на 50% меньше урона и урона устойчивости, если стоите совершенно неподвижно. Ритуал длится 15 минут. Дает 10 порчи.";
	RITUAL.onerequiredbelief = {"flagellant", "acolyte"}; -- Tier II Faith of the Light Ritual
	
	RITUAL.requirements = {"ice_catalyst", "down_catalyst", "light_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;

	function RITUAL:OnPerformed(player)
		player.nobleStatureActive = true;

		timer.Create("NobleStatureTimer_"..player:EntIndex(), 900, 1, function()
			if IsValid(player) then
				if player.nobleStatureActive then
					player.nobleStatureActive = nil;

					Clockwork.hint:Send(player, "Ритуал Благородной Стойки спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("payment_of_light");
	RITUAL.name = "(T1) Плата Сиянияt";
	RITUAL.description = "Поднимите разбитые останки бога и предложите их великому Сиянию. Выполнение этого ритуала дает вам 300 веры (опыта). Дает 10 порчи.";
	RITUAL.onerequiredbelief = {"repentant", "disciple"}; -- Tier I Faith of the Light Ritual
	
	RITUAL.requirements = {"light_catalyst", "light_catalyst", "light_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 300;
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("perseverance");
	RITUAL.name = "(T2) Выдержка";
	RITUAL.description = "В низших уездах работа бесконечна, отнимает силы и очищает. Выполнение этого ритуала увеличивает скорость регенерации вашей выносливости в два раза на 40 минут. Дает 10 порчи";
	RITUAL.onerequiredbelief = {"flagellant", "acolyte"}; -- Tier II Faith of the Light Ritual
	
	RITUAL.requirements = {"light_catalyst", "elysian_catalyst", "down_catalyst"};
	RITUAL.corruptionCost = 10; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 25; -- XP gained from performing the ritual.
	
	function RITUAL:OnPerformed(player)
		player.perseveranceActive = true;

		timer.Create("PerseveranceTimer_"..player:EntIndex(), 2400, 1, function()
			if IsValid(player) then
				if player.perseveranceActive then
					player.perseveranceActive = nil;

					Clockwork.hint:Send(player, "Ритуал выдержки спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("regrowth");
	RITUAL.name = "(T3) Регенерация";
	RITUAL.description = "Горейский лес пышен и кишит жизнью по сравнению с теми царствами, которые населяют последователи Сияния. Горейские шаманы могут призвать магию Горейского леса, чтобы помочь залечить свои раны. Выполнение этого ритуала полностью исцелит вас от всех травм, недугов и порчи.";
	RITUAL.onerequiredbelief = {"watchful_raven"}; -- Tier III Faith of the Family Ritual
	
	RITUAL.requirements = {"purifying_stone", "familial_catalyst", "up_catalyst"};
	RITUAL.corruptionCost = 0;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
		--local max_poise = player:GetMaxPoise();
		local max_stability = player:GetMaxStability();
		local max_stamina = player:GetMaxStamina();
	
		player:ResetInjuries();
		player:TakeAllDiseases();
		player:SetHealth(player:GetMaxHealth() or 100);
		player:SetNeed("thirst", 0);
		player:SetNeed("hunger", 0);
		player:SetNeed("corruption", 0);
		player:SetNeed("sleep", 0);
		player:SetSharedVar("sanity", 100);
		player:SetCharacterData("sanity", 100);
		player:SetCharacterData("Stamina", max_stamina);
		player:SetNWInt("Stamina", max_stamina);
		player:SetCharacterData("stability", max_stability);
		--player:SetCharacterData("meleeStamina", max_poise);
		--player:SetNWInt("meleeStamina", max_poise);
		player:SetNWInt("freeze", 0);
		player:SetBloodLevel(5000);
		player:StopAllBleeding();
		Clockwork.limb:HealBody(player, 100);
		Clockwork.player:SetAction(player, "die", false);
		Clockwork.player:SetAction(player, "die_bleedout", false);
		
		if player:GetRagdollState() == RAGDOLL_KNOCKEDOUT then
			Clockwork.player:SetRagdollState(player, RAGDOLL_NONE);
		end
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("regrowth_target");
	RITUAL.name = "(T3) Регенерация (Цель)";
	RITUAL.description = "Горейский лес пышен и кишит жизнью по сравнению с теми царствами, которые населяют последователи Сияния. Горейские шаманы могут призвать магию Горейского леса, чтобы помочь залечить свои раны. Выполнение этого ритуала полностью исцелит вас от всех травм, недугов и порчи.";
	RITUAL.onerequiredbelief = {"watchful_raven"}; -- Tier III Faith of the Family Ritual
	
	RITUAL.requirements = {"familial_catalyst", "up_catalyst", "purifying_stone"};
	RITUAL.corruptionCost = 0;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		local target = player:GetEyeTraceNoCursor().Entity;
		
		if IsValid(target) and target:IsPlayer() then
			if target:Alive() then
				if (target:GetShootPos():Distance(player:GetShootPos()) <= 192) then
					return true;
				else
					Schema:EasyText(player, "firebrick", "Персонаж слишком далеко!");
				end
			else
				Schema:EasyText(player, "darkgrey", "Этот персонаж уже мертв!");
			end
		else
			Schema:EasyText(player, "firebrick", "Вы должны смотреть на персонажа!");
		end
		
		return false;
	end;
	function RITUAL:EndRitual(player)
		local target = player:GetEyeTraceNoCursor().Entity;
		
		if IsValid(target) and target:IsPlayer() then
			if target:Alive() then
				if (target:GetShootPos():Distance(player:GetShootPos()) <= 192) then
					--local max_poise = target:GetMaxPoise();
					local max_stability = target:GetMaxStability();
					local max_stamina = target:GetMaxStamina();

					target:ResetInjuries();
					target:TakeAllDiseases();
					target:SetHealth(target:GetMaxHealth() or 100);
					target:SetNeed("thirst", 0);
					target:SetNeed("hunger", 0);
					target:SetNeed("corruption", 0);
					target:SetNeed("sleep", 0);
					target:SetSharedVar("sanity", 100);
					target:SetCharacterData("sanity", 100);
					target:SetCharacterData("Stamina", max_stamina);
					target:SetNWInt("Stamina", max_stamina);
					target:SetCharacterData("stability", max_stability);
					--target:SetCharacterData("meleeStamina", max_poise);
					--target:SetNWInt("meleeStamina", max_poise);
					target:SetNWInt("freeze", 0);
					target:SetBloodLevel(5000);
					target:StopAllBleeding();
					Clockwork.limb:HealBody(target, 100);
					Clockwork.player:SetAction(target, "die", false);
					Clockwork.player:SetAction(target, "die_bleedout", false);
					
					if target:GetRagdollState() == RAGDOLL_KNOCKEDOUT then
						Clockwork.player:SetRagdollState(target, RAGDOLL_NONE);
					end
					
					return true;
				else
					Schema:EasyText(player, "firebrick", "Персонаж слишком далеко!");
				end
			else
				Schema:EasyText(player, "darkgrey", "Этот персонаж уже мертв");
			end
		else
			Schema:EasyText(player, "firebrick", "Вы должны смотреть на персонажа!");
		end
		
		return false;
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("aura_of_powderheel");
	RITUAL.name = "(T3) Аура Отца";
	RITUAL.description = "Call upon the power of the Great Tree in times of battle against its enemies to protect you from their non-traditional weaponry. Performing this ritual generates a spherical forcefield for 10 minutes, which reduces bullet damage to everyone around you within talking distance by 50%. Attempting to fire while inside the sphere will guarantee a misfire. Incurs 15 corruption.";
	RITUAL.onerequiredbelief = {"watchful_raven"}; -- Tier III Faith of the Family Ritual
	
	RITUAL.requirements = {"pantheistic_catalyst", "xolotl_catalyst", "xolotl_catalyst"};
	RITUAL.corruptionCost = 15; -- Corruption incurred from performing rituals.
	RITUAL.ritualTime = 10; -- Time it takes for the ritual action bar to complete.
	RITUAL.experience = 75; -- XP gained from performing the ritual.

	function RITUAL:OnPerformed(player)
		player:SetSharedVar("powderheelActive", true);

		timer.Create("PowderheelTimer_"..player:EntIndex(), 600, 1, function()
			if IsValid(player) then
				if player:GetSharedVar("powderheelActive") then
					player:SetSharedVar("powderheelActive", false);

					Clockwork.hint:Send(player, "Вы чувствуете как барьер постепенно угасает...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("eye_of_the_storm");
	RITUAL.name = "(Unique)  Глаз Шторма";
	RITUAL.description = "Харальдры утверждают, что каждый удар грома исходит от боевого топора Старого Сына, который рубит небесных чудовищ, проливающих дождь на земли. Крастеры утверждают, что грозовые тучи - от Матери, которая плачет, чтобы зародить новую жизнь в круговороте природы. Кланы могут не соглашаться, но, тем не менее, им обоим полезны соленые воды, в которых тонут их многочисленные враги. Выполнение этого ритуала вызовет грозу в течение минуты после выполнения. Дает 50 порчи.";
	RITUAL.onerequiredbelief = {"daring_trout", "watchful_raven"}; -- Unique Mother/Old Son Ritual
	
	RITUAL.requirements = {"purifying_stone", "up_catalyst", "xolotl_catalyst"};
	RITUAL.corruptionCost = 50;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 150;
	
	function RITUAL:OnPerformed(player)
		if cwWeather then
			cwWeather:SetWeather("thunderstorm");
			
			return true;
		end
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		if cwWeather then
			if cwWeather.weather ~= "thunderstorm" then
				if cwWeather.nextWeatherTime - CurTime() <= 10 then
					-- Add enough time to complete the ritual!
					cwWeather.nextWeatherTime = CurTime() + 10;
				end
				
				return true;
			else
				Schema:EasyText(player, "peru", "В пустошах уже бушует буря!");
				
				return false;
			end
		end
		
		return false;
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("Sister's Blessing");
	RITUAL.name = "(Уникальное) Благословление Сестры";
	RITUAL.description = "Считается, что река Стикс - это кипящая лава, в которой обитают мертвые и проклятые. С помощью правильного ритуала магии крови Риверы смогли договориться с демонами о том, что их переправа будет оплачена душами которые они принесли в ад. Дает 75 порчи.";
	RITUAL.onerequiredbelief = {"shedskin", "watchful_raven"}; -- Unique Mother/Sister Ritual

	RITUAL.requirements = {"xolotl_catalyst", "pentagram_catalyst", "xolotl_catalyst"};
	RITUAL.corruptionCost = 75;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 200;

	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		local target = player:GetEyeTraceNoCursor().Entity;

		if target:GetClass() != "cw_longship" then 
			Schema:EasyText(player, "firebrick", "Вы должны смотреть на корабль!");
			return false;
		end

		if (target:GetPos():Distance(player:GetShootPos()) > 256) then
			Schema:EasyText(player, "firebrick", "Вы слишком далеко от корабля!");
			return false;
		end

		if target.enchantment == true then
			Schema:EasyText(player, "firebrick", "Этот корабль уже благославлен.");
			return false;
		end

		return true;

	end;
	
	function RITUAL:EndRitual(player)
		local target = player:GetEyeTraceNoCursor().Entity;

		if target:GetClass() != "cw_longship" then 
			Schema:EasyText(player, "firebrick", "Вы должны смотреть на корабль!");
			return false;
		end

		if (target:GetPos():Distance(player:GetShootPos()) > 256) then
			Schema:EasyText(player, "firebrick", "Вы слишком далеко от корабля!");
			return false;
		end

		if target.enchantment == true then
			Schema:EasyText(player, "firebrick", "Этот корабль уже благославлен.");
			return false;
		end

		Schema:EasyText(player, "icon16/anchor.png", "cornflowerblue", "This ship can now navigate the River Styx!");
		Schema:EasyText(GetAdmins(), "icon16/anchor.png", "goldenrod", player:Name() .. " has enchanted a boat to navigate the River Styx! You can perform the /ToggleHellSailing command to allow them to sail to the Hell Manor!")
		target.enchantment = true;
		
		return true;
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("rooting");
	RITUAL.name = "(T1) Корнеплод";
	RITUAL.description = "Когда непрекращающиеся демонические песнопения приводят вас в ярость, подумайте о том, чтобы изгнать их обратно в породившие их преисподние. Выполнение этого ритуала снимет 45 порчи.";
	RITUAL.onerequiredbelief = {"honor_the_gods", "one_with_the_druids", "the_black_sea", "witch_druid"}; -- Tier I Faith of the Family Ritual
	
	RITUAL.requirements = {"pantheistic_catalyst", "familial_catalyst", "familial_catalyst"};
	RITUAL.corruptionCost = -45;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("scornificationism");
	RITUAL.name = "(Уникальное) Щит Сола";
	RITUAL.description = "Вы питаете такую лютую ненависть к греховной природе человека, что отказываетесь умирать, не забрав грешников с собой! Выполнение этого ритуала не позволит урону игрока или NPC убить вас или ввести в критическое состояние в течение следующих 120 секунд, но вы все равно можете быть убиты или покорены другими способами. Дает 15 порчи.";
	RITUAL.onerequiredbelief = {"extinctionist"}; -- Unique Sol Orthodoxy Ritual
	
	RITUAL.requirements = {"purifying_stone", "light_catalyst", "elysian_catalyst"};
	RITUAL.corruptionCost = 15;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 100;

	function RITUAL:OnPerformed(player)
		player.scornificationismActive = true;

		timer.Create("ScornificationismTimer_"..player:EntIndex(), 120, 1, function()
			if IsValid(player) then
				if player.scornificationismActive then
					player.scornificationismActive = nil;

					Clockwork.hint:Send(player, "Щит Сола спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("sprouting");
	RITUAL.name = "(T2) Проростание";
	RITUAL.description = "There is something to be learned from leaves, dirt, and bone. Performing this ritual will restore 200 health and 100% of blood, as well as healing all injuries. Removes 5 corruption.";
	RITUAL.onerequiredbelief = {"man_become_beast", "one_with_the_druids", "daring_trout", "shedskin"}; -- Tier II Faith of the Family Ritual
	
	RITUAL.requirements = {"pantheistic_catalyst", "pantheistic_catalyst", "pantheistic_catalyst"};
	RITUAL.corruptionCost = -5;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 25;
	
	function RITUAL:OnPerformed(player)
		player:ResetInjuries();
		player:SetHealth(math.min(player:Health() + 200, player:GetMaxHealth()));
		player:SetBloodLevel(5000);
		
		Clockwork.chatBox:Add(player, nil, "itnofake", "Вы чувствуете невероятный прилив сил, вы будто переродились!");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("soulscorch");
	RITUAL.name = "(Уникальное) Выжигание души";
	RITUAL.description = "Станьте катализатором вымирания человечества. Когда вы будете убиты, Сияние поразит их! Совершив этот ритуал, вы будете излучать свет в течение 5 минут, а после смерти нанесете количество урона, соответствующее уровню вашего таинства, всем, кто не принадлежит к Вере Света, за исключением вольтижеров (или половину, если они таковыми являются), на расстоянии разговора. Дает 15 порчи.";
	RITUAL.onerequiredbelief = {"extinctionist"}; -- Unique Sol Orthodoxy Ritual
	
	RITUAL.requirements = {"light_catalyst", "holy_spirit", "light_catalyst"};
	RITUAL.corruptionCost = 15;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;

	function RITUAL:OnPerformed(player)
		player.soulscorchActive = true;
		player:SetSharedVar("soulscorchActive", true);

		timer.Create("SoulScorchTimer_"..player:EntIndex(), 300, 1, function()
			if IsValid(player) then
				if player.soulscorchActive then
					player.soulscorchActive = nil;
					player:SetSharedVar("soulscorchActive", false);

					Clockwork.hint:Send(player, "Ритуал выжигания души спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
		
		Clockwork.chatBox:AddInTargetRadius(player, "me", "начинает сиять с невероятной силой!", player:GetPos(), config.Get("talk_radius"):Get() * 2);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "Неизвестная энергия не позволяет вам сделать это!");
				return false;
			end
		end
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("steel_will");
	RITUAL.name = "(T3) Стальная Воля";
	RITUAL.description = "Непоколебимый, непоколебимый - Сияние с вами! Выполнение этого ритуала полностью восстанавливает ваше здравомыслие, уменьшает потерю здравомыслия на 90% и делает вас невосприимчивым к эффектам страха на 15 минут. Дает 10 порчи.";
	RITUAL.onerequiredbelief = {"emissary", "extinctionist"}; -- Tier III Faith of the Light Ritual
	
	RITUAL.requirements = {"xolotl_catalyst", "holy_spirit", "light_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;

	function RITUAL:OnPerformed(player)
		player:SetNetVar("steelWill", true);
		player:HandleSanity(100);

		timer.Create("SteelWillTimer_"..player:EntIndex(), 900, 1, function()
			if IsValid(player) then
				if player:GetNetVar("steelWill", false) then
					player:SetNetVar("steelWill", false);

					Clockwork.hint:Send(player, "Стальная воля покидает ваш разум...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
		
		Clockwork.chatBox:Add(player, nil, "itnofake", "Ты чувствуешь как твое сознание укрепляется!");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("enlightenment");
	RITUAL.name = "(T3) Просвещение";
	RITUAL.description = "Вы достигли вершины глазического понимания. Совершив этот ритуал, вы на 15 минут озарите святым светом большую площадь вокруг себя. Он повышает здравомыслие всех персонажей веры Стойкого Сияния, попавших под его свет, а также сжигает всех приближающихся еретиков родословной Рекх-хет-са. Дает 10 порчи.";
	RITUAL.onerequiredbelief = {"emissary", "extinctionist"}; -- Tier III Faith of the Light Ritual
	
	RITUAL.requirements = {"holy_spirit", "light_catalyst", "light_catalyst"};
	RITUAL.corruptionCost = 10;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
		player:SetSharedVar("enlightenmentActive", true);
		
		timer.Create("EnlightenmentTimer_"..player:EntIndex(), 900, 1, function()
			if IsValid(player) then
				if player:GetSharedVar("enlightenmentActive", false) then
					player:SetSharedVar("enlightenmentActive", false);
					
					Clockwork.hint:Send(player, "Ритуал просвещения спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
		
		Clockwork.chatBox:Add(player, nil, "itnofake", "Вы чувствуете как теплое свечение покидает ваше тело!");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("summon_eddie");
	RITUAL.name = "(T3) Призыв демона(Эдди)";
	RITUAL.description = "Призовите оболочку порожденного, ставшего вместилищем для демона ада. Он будет враждебно относиться ко всем, кто не принадлежит к Вере Тьмы. Время призыва 10 секунд. Дает 15 порчи.";
	RITUAL.onerequiredbelief = {"sorcerer"}; -- Tier III Faith of the Dark Ritual
	RITUAL.requiredBeliefsSubfactionOverride = {["Rekh-khet-sa"] = {"embrace_the_darkness"}}; -- Tier III Faith of the Dark Ritual
	
	RITUAL.requirements = {"belphegor_catalyst", "tortured_spirit", "down_catalyst"};
	RITUAL.corruptionCost = 15;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 35;
	
	function RITUAL:OnPerformed(player)
		Schema:EasyText(GetAdmins(), "tomato", player:Name().." has performed the 'Summon Demon' ritual, spawning an Eddie near their position!");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
				return false;
			end
		end

		if lastZone == "gore_tree" or lastZone == "gore_hallway" or lastZone == "gore" or lastZone == "sea_rough" or lastZone == "sea_calm" or lastZone == "sea_styx" or lastZone == "gore_soil" then
			Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
			return false;
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) > 192) then
			Schema:EasyText(player, "firebrick", "Вы не можете призывать так далеко.");
			
			return false;
		end;
	end;
	function RITUAL:EndRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "gore_tree" or lastZone == "gore_hallway" or lastZone == "gore" or lastZone == "sea_rough" or lastZone == "sea_calm" or lastZone == "sea_styx" or lastZone == "gore_soil" then
			Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
			return false;
		end

		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
				return false;
			end
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) <= 192) then
			--Schema:EasyText(player, "maroon", "The ground opens up beneath you, and a creature of hell crawls out! What have you done?!");

			local entity = ents.Create("npc_bgt_eddie");
			local playerFaith = player:GetFaith();
			
			ParticleEffect("teleport_fx",trace.HitPos, Angle(0,0,0), nil)
			sound.Play("misc/summon.wav",trace.HitPos, 100, 100)
			--entity:SetPos(trace.HitPos);
			
			timer.Simple(0.5, function()
				if IsValid(entity) then
					entity:CustomInitialize();
					entity:Spawn();
					entity:Activate();
					entity:SetHealth(525);

					entity:SetColor(Color(255,0,0));
					entity:SetMaterial("models/effects/splode_sheet");
					
					entity:AddEntityRelationship(player, D_LI, 99);
					entity.summonedFaith = playerFaith;
					
					for k, v in pairs(_player.GetAll()) do
						if v:GetFaith() == playerFaith then
							entity:AddEntityRelationship(v, D_LI, 99);
						end
					end
					
					if !cwRituals.summonedNPCs then
						cwRituals.summonedNPCs = {};
						
						table.insert(cwRituals.summonedNPCs, entity);
					end
					
					Clockwork.entity:MakeFlushToGround(entity, trace.HitPos + Vector(0, 0, 64), trace.HitNormal);
					Clockwork.chatBox:AddInTargetRadius(player, "it", "Ослепительная вспышка света и громоподобный шум - внезапно появляется нечестивое порождение Ада!", trace.HitPos, config.Get("talk_radius"):Get() * 3);
				end
			end);
		else
			Schema:EasyText(player, "firebrick", "Вы не можете призывать так далеко.");
			
			return false;
		end;
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("summon_otis");
	RITUAL.name = "(T3) Summon Demon (Otis)";
	RITUAL.description = "Summon a strong chainsaw-wielding Begotten Thrall that has become the host of a hell demon. It will be hostile towards anyone not of the Faith of the Dark. 15 second cast time. Incurs 25 corruption.";
	RITUAL.onerequiredbelief = {"sorcerer"}; -- Tier III Faith of the Dark Ritual
	RITUAL.requiredBeliefsSubfactionOverride = {["Rekh-khet-sa"] = {"embrace_the_darkness"}}; -- Tier III Faith of the Dark Ritual
	
	RITUAL.requirements = {"pentagram_catalyst", "tortured_spirit", "pentagram_catalyst"};
	RITUAL.corruptionCost = 25;
	RITUAL.ritualTime = 15;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
		Schema:EasyText(GetAdmins(), "tomato", player:Name().." has performed the 'Summon Demon' ritual, spawning an Otis near their position!");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "There is some sort of supernatural force preventing you from doing this here!");
				return false;
			end
		end

		if lastZone == "gore_tree" or lastZone == "gore_hallway" or lastZone == "gore" or lastZone == "sea_rough" or lastZone == "sea_calm" or lastZone == "sea_styx" or lastZone == "gore_soil" then
			Schema:EasyText(player, "firebrick", "There is some sort of supernatural force preventing you from doing this here!");
			return false;
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) > 192) then
			Schema:EasyText(player, "firebrick", "You cannot summon that far away!");
			
			return false;
		end;
	end;
	function RITUAL:EndRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "gore_tree" or lastZone == "gore_hallway" or lastZone == "gore" or lastZone == "sea_rough" or lastZone == "sea_calm" or lastZone == "sea_styx" or lastZone == "gore_soil" then
			Schema:EasyText(player, "firebrick", "There is some sort of supernatural force preventing you from doing this here!");
			return false;
		end

		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "There is some sort of supernatural force preventing you from doing this here!");
				return false;
			end
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) <= 192) then
			--Schema:EasyText(player, "maroon", "The ground opens up beneath you, and a creature of hell crawls out! What have you done?!");

			local entity = ents.Create("npc_bgt_otis");
			local playerFaith = player:GetFaith();
			
			ParticleEffect("teleport_fx",trace.HitPos, Angle(0,0,0), nil)
			sound.Play("misc/summon.wav",trace.HitPos, 100, 100)
			--entity:SetPos(trace.HitPos);
			
			timer.Simple(0.5, function()
				if IsValid(entity) then
					entity:CustomInitialize();
					entity:Spawn();
					entity:Activate();
					entity:SetHealth(400);

					entity:SetColor(Color(255,0,0));
					entity:SetMaterial("models/effects/splode_sheet");
					
					entity:AddEntityRelationship(player, D_LI, 99);
					entity.summonedFaith = playerFaith;
					
					for k, v in pairs(_player.GetAll()) do
						if v:GetFaith() == playerFaith then
							entity:AddEntityRelationship(v, D_LI, 99);
						end
					end
					
					if !cwRituals.summonedNPCs then
						cwRituals.summonedNPCs = {};
						
						table.insert(cwRituals.summonedNPCs, entity);
					end
					
					Clockwork.entity:MakeFlushToGround(entity, trace.HitPos + Vector(0, 0, 64), trace.HitNormal);
					Clockwork.chatBox:AddInTargetRadius(player, "it", "There is a blinding flash of light and thunderous noise as an unholy creature of Hell suddenly appears!", trace.HitPos, config.Get("talk_radius"):Get() * 3);
				end
			end);
		else
			Schema:EasyText(player, "firebrick", "You cannot summon that far away!");
			
			return false;
		end;
	end;

RITUAL = cwRituals.rituals:New("summon_sprinter");
	RITUAL.name = "(T3) Призыв Демона (Анозеры)";
	RITUAL.description = "Призовите двух ебаных анозеров, которые даже не бегают днем. Хуйня ебаная, а не ритуал. 25 порчи за это говно.";
	RITUAL.onerequiredbelief = {"sorcerer"}; -- Tier III Faith of the Dark Ritual
	RITUAL.requiredBeliefsSubfactionOverride = {["Rekh-khet-sa"] = {"embrace_the_darkness"}}; -- Tier III Faith of the Dark Ritual
	
	RITUAL.requirements = {"tortured_spirit", "tortured_spirit", "pentagram_catalyst"};
	RITUAL.corruptionCost = 25;
	RITUAL.ritualTime = 15;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
		Schema:EasyText(GetAdmins(), "tomato", player:Name().." has performed the 'Summon Sprinter' ritual, spawning 2 sprinters near their position! God save their enemies.");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "gore_tree" or lastZone == "gore_hallway" or lastZone == "gore" or lastZone == "sea_rough" or lastZone == "sea_calm" or lastZone == "sea_styx" or lastZone == "gore_soil" then
			Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
			return false;
		end

		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
				return false;
			end
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) > 192) then
			Schema:EasyText(player, "firebrick", "Вы не можете призвать так далеко!");
			
			return false;
		end;
	end;
	function RITUAL:EndRitual(player)
		local lastZone = player:GetCharacterData("LastZone");


		if lastZone == "gore_tree" or lastZone == "gore_hallway" or lastZone == "gore" or lastZone == "sea_rough" or lastZone == "sea_calm" or lastZone == "sea_styx" or lastZone == "gore_soil" then
			Schema:EasyText(player, "firebrick", "There is some sort of supernatural force preventing you from doing this here!");
			return false;
		end
		
		
		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
				return false;
			end
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) <= 192) then
			--Schema:EasyText(player, "maroon", "Ослепительная вспышка света и громоподобный шум - внезапно появляется нечестивое порождение Ада!");

			local positions = {
				["1"] = trace.HitPos + (player:GetRight() * 25),
				["2"] = trace.HitPos - (player:GetRight() * 25),

			};

			local playerFaith = player:GetFaith();

			for _, v in pairs(positions) do
				ParticleEffect("teleport_fx", v, Angle(0,0,0), nil)
				sound.Play("misc/summon.wav", v, 100, 100)

			end
			
			timer.Simple(0.5, function()
				for _, v in pairs(positions) do
					local entity = ents.Create("npc_bgt_another");

					if !IsValid(entity) then continue; end

					entity:CustomInitialize();
					entity:Spawn();
					entity:Activate();
					entity:SetModel("models/begotten/thralls/another_sprinter.mdl");
					entity:SetHealth(275);
					
					entity:SetColor(Color(255,0,0));
					entity:SetMaterial("models/effects/splode_sheet");

					entity:AddEntityRelationship(player, D_LI, 99);
					entity.summonedFaith = playerFaith;
					entity.RunAnimation = ACT_RUN;
					entity.Summoned = true;

					for k, v in pairs(_player.GetAll()) do
						if v:GetFaith() == playerFaith then
							entity:AddEntityRelationship(v, D_LI, 99);
						end
					end

					Clockwork.entity:MakeFlushToGround(entity, v + Vector(0, 0, 64), trace.HitNormal);

				end
					
				Clockwork.chatBox:AddInTargetRadius(player, "it", "Ослепительная вспышка света и громоподобный шум - внезапно появляется нечестивое порождение Ада!", trace.HitPos, config.Get("talk_radius"):Get() * 3);

			end);
		else
			Schema:EasyText(player, "firebrick", "Вы не можете призвать так далеко!");
			
			return false;
		end;
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("summon_familiar_bear");
	RITUAL.name = "(T3) Призыв Духа (Медведь)";
	RITUAL.description = "Вызовите медведя-духа из горейского леса, дабы тот сражался на вашей стороне. Он будет враждебно относиться ко всем, кто не принадлежит к Вере Семьи. Время призыва 20 секунд. Дает 25 порчи.";
	RITUAL.onerequiredbelief = {"watchful_raven"}; -- Tier III Faith of the Family Ritual
	
	RITUAL.requirements = {"xolotl_catalyst", "familial_catalyst", "xolotl_catalyst"};
	RITUAL.corruptionCost = 25;
	RITUAL.ritualTime = 15;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
		Schema:EasyText(GetAdmins(), "tomato", player:Name().." has performed the 'Summon Familiar' ritual, spawning a spirit bear near their position!");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
				return false;
			end
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) > 192) then
			Schema:EasyText(player, "firebrick", "Вы не можете призвать так далеко");
			
			return false;
		end;
	end;
	function RITUAL:EndRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
				return false;
			end
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) <= 192) then
			--Schema:EasyText(player, "maroon", "The ground opens up beneath you, and a creature of hell crawls out! What have you done?!");

			local entity = ents.Create("npc_drg_animals_bear_spirit");
			local playerFaith = player:GetFaith();
			
			ParticleEffect("teleport_fx",trace.HitPos, Angle(0,0,0), nil)
			sound.Play("misc/summon.wav",trace.HitPos, 100, 100)
			--entity:SetPos(trace.HitPos);
			
			timer.Simple(0.5, function()
				if IsValid(entity) then
					entity:Spawn();
					entity:SetHealth(700);
					entity:Activate(); 
					entity:SetMaterial("models/props_combine/portalball001_sheet")
					entity:AddEntityRelationship(player, D_LI, 99);
					entity.XPValue = 250;
					
					entity.summonedFaith = playerFaith;
					
					for k, v in pairs(_player.GetAll()) do
						if v:GetFaith() == playerFaith then
							entity:AddEntityRelationship(v, D_LI, 99);
						else					
							local faction = v:GetSharedVar("kinisgerOverride") or v:GetFaction();
							
							if faction == "Goreic Warrior" then
								entity:AddEntityRelationship(v, D_LI, 99);
							end
						end
					end
					
					if !cwRituals.summonedNPCs then
						cwRituals.summonedNPCs = {};
						
						table.insert(cwRituals.summonedNPCs, entity);
					end
					
					Clockwork.entity:MakeFlushToGround(entity, trace.HitPos + Vector(0, 0, 64), trace.HitNormal);
					Clockwork.chatBox:AddInTargetRadius(player, "it", "Ослепительная вспышка света и громоподобный шум - внезапно появляется существо из горейского леса!", trace.HitPos, config.Get("talk_radius"):Get() * 3);
				end
			end);
		else
			Schema:EasyText(player, "firebrick", "Вы не можете призвать так далеко");
			
			return false;
		end;
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("summon_familiar_leopard");
	RITUAL.name = "(T3) Призыв Духа (Леопард)";
	RITUAL.description = "Вызовите леопарда-духа из горейского леса, дабы тот сражался на вашей стороне. Он будет враждебно относиться ко всем, кто не принадлежит к Вере Семьи. Время призыва 20 секунд. Дает 25 порчи.";
	RITUAL.onerequiredbelief = {"watchful_raven"}; -- Tier III Faith of the Family Ritual
	
	RITUAL.requirements = {"xolotl_catalyst", "pantheistic_catalyst", "purifying_stone"};
	RITUAL.corruptionCost = 20;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 50;
	
	function RITUAL:OnPerformed(player)
		Schema:EasyText(GetAdmins(), "tomato", player:Name().." has performed the 'Summon Familiar' ritual, spawning a spirit leopard near their position!");
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
				return false;
			end
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) > 192) then
			Schema:EasyText(player, "firebrick", "Вы не можете призвать так далеко");
			
			return false;
		end;
	end;
	function RITUAL:EndRitual(player)
		local lastZone = player:GetCharacterData("LastZone");
		
		if lastZone == "theater" or lastZone == "tower" then
			if Schema.towerSafeZoneEnabled then
				Schema:EasyText(player, "firebrick", "Неизвестный хуй упирается в вашу жопу.. Из его дырочки вы слышите тихий голос: Вам нельзя делать это здесь.");
				return false;
			end
		end
		
		local trace = player:GetEyeTraceNoCursor();
		
		if (trace.HitPos:Distance(player:GetShootPos()) <= 192) then
			--Schema:EasyText(player, "maroon", "The ground opens up beneath you, and a creature of hell crawls out! What have you done?!");

			local entity = ents.Create("npc_drg_animals_snowleopard_spirit");
			local playerFaith = player:GetFaith();
			
			ParticleEffect("teleport_fx",trace.HitPos, Angle(0,0,0), nil)
			sound.Play("misc/summon.wav",trace.HitPos, 100, 100)
			--entity:SetPos(trace.HitPos);
			
			timer.Simple(0.5, function()
				if IsValid(entity) then
					entity:Spawn();
					entity:SetHealth(475);
					entity:Activate(); 
					entity:SetMaterial("models/props_combine/portalball001_sheet")
					entity:AddEntityRelationship(player, D_LI, 99);
					entity.XPValue = 250;
					
					entity.summonedFaith = playerFaith;
					
					for k, v in pairs(_player.GetAll()) do
						if v:GetFaith() == playerFaith then
							entity:AddEntityRelationship(v, D_LI, 99);
						else					
							local faction = v:GetSharedVar("kinisgerOverride") or v:GetFaction();
							
							if faction == "Goreic Warrior" then
								entity:AddEntityRelationship(v, D_LI, 99);
							end
						end
					end
					
					if !cwRituals.summonedNPCs then
						cwRituals.summonedNPCs = {};
						
						table.insert(cwRituals.summonedNPCs, entity);
					end
					
					Clockwork.entity:MakeFlushToGround(entity, trace.HitPos + Vector(0, 0, 64), trace.HitNormal);
					Clockwork.chatBox:AddInTargetRadius(player, "it", "Ослепительная вспышка света и громоподобный шум - внезапно появляется существо из горейского леса!!", trace.HitPos, config.Get("talk_radius"):Get() * 3);
				end
			end);
		else
			Schema:EasyText(player, "firebrick", "Вы не можете призвать так далеко");
			
			return false;
		end;
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("triumph_of_the_bark");
	RITUAL.name = "(T2) Забота Матери";
	RITUAL.description = "Мать может быть создательницей недугов, но она может исцелять тех, кого считает сильными. Выполнив этот ритуал, вы излечитесь от всех болезней. Дает 20 порчи.";
	RITUAL.onerequiredbelief = {"man_become_beast", "one_with_the_druids", "daring_trout", "shedskin"}; -- Tier II Faith of the Family Ritual
	
	RITUAL.requirements = {"up_catalyst", "pantheistic_catalyst", "pantheistic_catalyst"};
	RITUAL.corruptionCost = 20;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 30;
	
	function RITUAL:OnPerformed(player)
		local diseases = player:GetCharacterData("diseases", {});
		
		for i = 1, #diseases do
			local disease = diseases[i];
			
			if istable(disease) --[[and disease.uniqueID ~= "begotten_plague"]] then
				diseases[i] = nil;
			end
		end
		
		player:SetCharacterData("diseases", diseases);
		player:NetworkDiseases();
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()

RITUAL = cwRituals.rituals:New("upstaged");
	RITUAL.name = "(T2) Бесовское Танго";
	RITUAL.description = "Не пытайтесь повторить танец шута. Один неверный шаг - и вы будете изгнаны в ад. Выполнение этого ритуала вызывает рипост-атаки, обезоруживающие противника. Длится 40 минут. Дает 5 порчи.";
	RITUAL.onerequiredbelief = {"soothsayer", "heretic", "shedskin"}; -- Tier II Faith of the Dark Ritual
	
	RITUAL.requirements = {"up_catalyst", "belphegor_catalyst", "belphegor_catalyst"};
	RITUAL.corruptionCost = 5;
	RITUAL.ritualTime = 10;
	RITUAL.experience = 30;
	
	function RITUAL:OnPerformed(player)
		player.upstagedActive = true;

		timer.Create("UpstagedTimer_"..player:EntIndex(), 2400, 1, function()
			if IsValid(player) then
				if player.upstagedActive then
					player.upstagedActive = nil;

					Clockwork.hint:Send(player, "Ритуал бесовского танго спадает с вас...", 10, Color(175, 100, 100), true, true);
				end
			end
		end);
	end;
	function RITUAL:OnFail(player)
	end;
	function RITUAL:StartRitual(player)
	end;
	function RITUAL:EndRitual(player)
	end;
RITUAL:Register()
