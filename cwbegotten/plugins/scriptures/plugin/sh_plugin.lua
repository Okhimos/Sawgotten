--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

PLUGIN:SetGlobalAlias("cwScriptures");

Clockwork.kernel:IncludePrefixed("sh_bookdata.lua");

local ITEM = Clockwork.item:New(nil, true)
	ITEM.name = "Book Base"
	ITEM.weight = 0
	ITEM.category = "Scripture"
	ITEM.useText = "Прочитать"
	ITEM.uniqueID = "book_base"
	ITEM.notStackable = true
	ITEM.customFunctions = {"Copy"};

	-- Called when the item should be setup.
	function ITEM:OnSetup()
		if not self.setup then
			if (self.bookInformation) then
				for i = 1, #self.bookInformation do
					local background = self.background or "https://i.imgur.com/ofkBgu0.png";
					local text = string.gsub(string.gsub(self.bookInformation[i], "\n", "<br>"), "\t", string.rep("&nbsp", 4));
					
					self.bookInformation[i] = "<html><style>#example {padding-top:48px; padding-left:60px; padding-right:60px; padding-bottom:0px; height: 736px; overflow: visible; background-image: url('"..background.."'); background-repeat: no-repeat; background-size: 100% 790px;}</style><font face='Papyrus' size='3'><div id='example'>"..text.."</div></font></html>"
				end
			end
			
			self.setup = true;
		end
	end
	
	-- Called when the player uses item.
	function ITEM:OnUse(player, itemEntity)
		if !cwBeliefs or (cwBeliefs and player:HasBelief("literacy")) then
			if (!cwBeliefs or (self.bookType == "Glazic" or player:HasBelief("anthropologist"))) then
				local booksRead = player:GetCharacterData("BooksRead", {});
				
				if !table.HasValue(booksRead, self.uniqueID) then
					--if cwBeliefs and player:HasBelief("scribe") then
						player:HandleXP(cwBeliefs.xpValues["read"]);
					--end
					
					table.insert(booksRead, self.uniqueID);
					
					player:SetCharacterData("BooksRead", booksRead);
					netstream.Start(player, "UpdateBooksRead", booksRead);
				end
				
				player:EmitSound("begotten/items/note_turn.wav")
				netstream.Start(player, "OpenBook", self("uniqueID"))
			else
				Schema:EasyText(player, "chocolate", "Вы не можете расшифровать символы в этом писании!");
			end
		else
			Schema:EasyText(player, "chocolate", "Ты слишком тупой! Перестань мычать и закрой ебучую книгу.");
		end
		
		return false
	end
	
	function ITEM:OnCustomFunction(player, name)
		if (name == "Copy") then
			local booksCopied = player:GetCharacterData("BooksCopied", {});
			
			if player:HasItemByID("quill") and player:HasItemByID("paper") then
				if !cwBeliefs or (cwBeliefs and player:HasBelief("scribe")) then
					if !table.HasValue(player:GetCharacterData("BooksRead", {}), self.uniqueID) then
						Schema:EasyText(player, "chocolate", "Вы должны прочитать писание, прежде чем пытаться скопировать его!");
						
						return false;
					end
				
					if (!cwBeliefs or (self.bookType == "Glazic" or player:HasBelief("anthropologist"))) then
						local itemTable = item.CreateInstance(self.uniqueID);
						local bSuccess, fault = player:GiveItem(itemTable, true);
						
						if bSuccess then
							if table.HasValue(booksCopied, self.uniqueID) then
								if cwBeliefs then
									player:HandleXP(math.Round(cwBeliefs.xpValues["copy"] / 2));
								end
							else
								table.insert(booksCopied, self.uniqueID);
								
								player:SetCharacterData("BooksCopied", booksCopied);
								netstream.Start(player, "UpdateBooksCopied", booksCopied);
							
								if cwBeliefs then
									player:HandleXP(cwBeliefs.xpValues["copy"]);
								end
							end
							
							player:TakeItemByID("paper");
							
							local itemList = Clockwork.inventory:GetItemsAsList(player:GetInventory());
							local quillItemTable;
							
							for k, v in pairs (itemList) do
								if v.uniqueID == "quill" then
									quillItemTable = v;
									break;
								end
							end
							
							if quillItemTable then
								local quillCondition = quillItemTable:GetCondition();
								local condition = quillCondition - 34;
								
								if condition <= 0 then
									player:TakeItem(quillItemTable, true);
								else
									quillItemTable:SetCondition(condition, true);
								end
							end
						else
							Schema:EasyText(player, "chocolate", "Вы не можете расшифровать символы в этом писании!");
						end
					else
						--Schema:EasyText(player, "firebrick", "Something went horribly wrong! Please contact an admin using /adminhelp.");
						return false;
					end
				else
					Schema:EasyText(player, "chocolate", "У вас нет необходимого навыка, чтобы сделать это!");
					return false;
				end
			else
				Schema:EasyText(player, "chocolate", "Для копирования Писаний вам нужны бумага и перо!");
				return false;
			end
		end;
	end;
	
	-- Called when a player drops the item.
	function ITEM:OnDrop(player, itemEntity) end
	
	-- A function to get the item's weight based on how many pages the book contains.
	function ITEM:GetItemWeight()
		if (!self.bookInformation or #self.bookInformation <= 0) then
			return 0.25;
		else
			return 0.05 + (#self.bookInformation * 0.05);
		end;
	end;
	
	ITEM:AddQueryProxy("weight", ITEM.GetItemWeight);
ITEM:Register()

local ITEM = Clockwork.item:New();
	ITEM.name = "Перо";
	ITEM.uniqueID = "quill";
	ITEM.cost = 50;
	ITEM.model = "models/begotten/misc/quill.mdl";
	ITEM.weight = 0.1;
	ITEM.category = "Tools";
	ITEM.stackable = true;
	ITEM.description = "Небольшое перо, которым могут пользоваться для письма те, кто достаточно образован.";
	ITEM.iconoverride = "materials/begotten/ui/itemicons/quill.png"

	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 200, onGround = false};

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Бобби Благуна: Библиография"
	ITEM.model = "models/props_monastery/book_small.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_bbab"
	ITEM.description = "Книга в кожаном переплете, названная в честь противоречивой фигуры, фигурирующей в Истории Сияния.."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Booby_Page1, Book_Booby_Page2, Book_Booby_Page3, Book_Booby_Page4}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/book_small.png";

	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1000, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Боксер Харвус Крамми: Библиография"
	ITEM.model = "models/props_monastery/book_small.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_bhkab"
	ITEM.description = "Книга в кожаном переплете, названная в честь уважаемого философа Сияния."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Boxer_Page1, Book_Boxer_Page2, Book_Boxer_Page3, Book_Boxer_Page4, Book_Boxer_Page5}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/book_small.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1000, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Низшие Уезды"
	ITEM.model = "models/props_monastery/book_small.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_tcd"
	ITEM.description = "Книга в кожаном переплете, подробно описывающая историю Низших Уездов."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_County_Page1, Book_County_Page2, Book_County_Page3}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/book_small.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 800, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Сбор Гей Короля"
	ITEM.model = "models/props_monastery/book_large.mdl"
	ITEM.weight = 1.4;
	ITEM.uniqueID = "book_gks"
	ITEM.description = "Эпос, подробно описывающий взлет и падение северной угрозы."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Gay_Page1, Book_Gay_Page2, Book_Gay_Page3, Book_Gay_Page4, Book_Gay_Page5, Book_Gay_Page6, Book_Gay_Page7, Book_Gay_Page8, Book_Gay_Page9, Book_Gay_Page10, Book_Gay_Page11, Book_Gay_Page12, Book_Gay_Page13, Book_Gay_Page14, Book_Gay_Page15, Book_Gay_Page16, Book_Gay_Page17, Book_Gay_Page18, Book_Gay_Page19, Book_Gay_Page20, Book_Gay_Page21, Book_Gay_Page22, Book_Gay_Page23, Book_Gay_Page24, Book_Gay_Page25, Book_Gay_Page26, Book_Gay_Page27, Book_Gay_Page28}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/book_large.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1200, onGround = false};
	
ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Поебище"
	ITEM.model = "models/items/magic/scrolls/scroll_rolled.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_s"
	ITEM.description = "Свиток бумаги, описывающий практику, известную в народе, как 'Поебище'."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Spooning}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scroll.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 800, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Зассыха"
	ITEM.model = "models/items/magic/scrolls/scroll_rolled.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_rot"
	ITEM.description = "Свиток бумаги, описывающий практику, известную в народе, как 'Зассыха'"
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Tears}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scroll.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1100, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Цитаты Возрождения Сияния"
	ITEM.model = "models/items/magic/scrolls/scroll_rolled.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_qogr"
	ITEM.description = "Свиток бумаги, на котором великие цитаты."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Quotes1, Book_Quotes2}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scroll.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1200, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "НесКончаЕмые Побуждения"
	ITEM.model = "models/items/magic/scrolls/scroll_rolled.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_tpu"
	ITEM.description = "Свиток бумаги, касающийся Четвертого запрета эротики."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Urges1}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scroll.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1000, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Сияния"
	ITEM.model = "models/items/magic/scrolls/scroll_rolled.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_g"
	ITEM.description = "Свиток бумаги, посвященный сути творения и источнику всего Света."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Glaze1}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scroll.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1000, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Корабли Смерти"
	ITEM.model = "models/props_monastery/book_small.mdl"
	ITEM.weight = 1;
	ITEM.uniqueID = "book_ds"
	ITEM.description = "Книга в кожаном переплете, посвященная теме Флота Сияния."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Deathships_Page1, Book_Deathships_Page2, Book_Deathships_Page3, Book_Deathships_Page4, Book_Deathships_Page5}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/book_small.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1200, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Осада Усадьбы Номер Восемь"
	ITEM.model = "models/props_monastery/book_small.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_assault"
	ITEM.description = "Книга в кожаном переплете, рассказывающая о событиях ужасной трагедии."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Assault_Page1, Book_Assault_Page2, Book_Assault_Page3, Book_Assault_Page4, Book_Assault_Page5}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/book_small.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1000, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Кармин Вилтан: Библиография"
	ITEM.model = "models/props_monastery/book_small.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_karmine"
	ITEM.description = "Книга в кожаном переплете, названная в честь верующего человека."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Karmine_Page1, Book_Karmine_Page2, Book_Karmine_Page3}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/book_small.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1000, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Лорд Максимус: Библиография"
	ITEM.model = "models/props_monastery/book_large.mdl"
	ITEM.weight = 1.4;
	ITEM.uniqueID = "book_lord"
	ITEM.description = "Эпическое произведение в кожаном переплете, названное в честь величайшего Деятеля Сияния. Перед и после прочтения обязательно совершить молитву."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Maximus_Page1, Book_Maximus_Page2, Book_Maximus_Page3, Book_Maximus_Page4, Book_Maximus_Page5, Book_Maximus_Page6, Book_Maximus_Page7, Book_Maximus_Page8, Book_Maximus_Page9, Book_Maximus_Page10, Book_Maximus_Page11}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/book_large.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1250, onGround = false};
	
ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Ублюдок Джо: Библиография"
	ITEM.model = "models/props_monastery/book_small.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_fuckerjoe"
	ITEM.description = "Книга в кожаном переплете, названная в честь печально известного серийного убийцы и некрофила."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Fucker_Page1, Book_Fucker_Page2, Book_Fucker_Page3, Book_Fucker_Page4}
	ITEM.bookType = "Glazic"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/book_small.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1000, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Напутствие Аламо"
	ITEM.model = "models/items/magic/scrolls/scroll_rolled.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_alamos"
	ITEM.description = "Свиток из Темноземья, изображающий надгробную речь павшему последователю."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Alamos_Page1}
	ITEM.bookType = "Darklander"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scroll.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 3000, onGround = false};

ITEM:Register()

local ITEM = Clockwork.item:New("book_base")
	ITEM.name = "Орден Золотого Фаллоса"
	ITEM.model = "models/items/magic/scrolls/scroll_rolled.mdl"
	ITEM.weight = 0.6;
	ITEM.uniqueID = "book_phallus"
	ITEM.description = "Свиток с Дальнего Востока. На нем иностранные слова, написанные красным текстом."
	ITEM.background = "https://i.imgur.com/ofkBgu0.png"
	ITEM.bookInformation = {Book_Phallus_Page1, Book_Phallus_Page2}
	ITEM.bookType = "Darklander"
	ITEM.iconoverride = "materials/begotten/ui/itemicons/scroll.png";
	
	ITEM.itemSpawnerInfo = {category = "City Junk", rarity = 1500, onGround = false};

ITEM:Register()

Clockwork.item:Initialize(); -- This fixes shit for autorefresh I guess?

if (SERVER) then
	function cwScriptures:PlayerCharacterLoaded(player)
		local booksCopied = player:GetCharacterData("BooksCopied", {});
		local booksRead = player:GetCharacterData("BooksRead", {});
		
		netstream.Start(player, "UpdateBooksCopied", booksCopied);
		netstream.Start(player, "UpdateBooksRead", booksRead);
	end
end

if (CLIENT) then
	local PANEL = {}

	-- Called when the panel is initialized.
	function PANEL:Init()
		local unixTime = SysTime()
		local scrW = ScrW()
		local scrH = ScrH()
		
		self:SetTitle("")
		self:SetBackgroundBlur(true)
		self:SetDeleteOnClose(false)
		self:ShowCloseButton(false)

		self:SetSize(749, 870)
		self:SetPos((scrW / 2) - (self:GetWide() / 2), (scrH / 2) - (self:GetTall() / 2) )
		
		local loadingText = vgui.Create("DLabel", self)
		loadingText:SetText("Loading...")
		loadingText:SetFont("Subtitle_Yell")
		loadingText:SetTextColor(Color(255, 0, 0, 150))
		loadingText:SetPos((self:GetWide() / 2) - (GetFontWidth("Subtitle_Yell", "Loading...") / 2), (self:GetTall() / 2) - (GetFontHeight("Subtitle_Yell", "Loading...") / 2))
		loadingText:SizeToContents()
		
		-- Called when the button is clicked.
		function self.btnClose.DoClick(button)
			self:Close() self:Remove()
			
			gui.EnableScreenClicker(false)
		end
		
		Clockwork.Client.currentPage = 1
		Clockwork.kernel:RegisterBackgroundBlur(self, unixTime)
	end

	-- Called each frame.
	function PANEL:Think()
		if (self.alwaysDisabled) then
			return
		end
		
		if (IsValid(self.leftButton)) then
			if (Clockwork.Client.currentPage <= 1) then
				self.leftButton:SetEnabled(false)
			else
				self.leftButton:SetEnabled(true)
			end
		end
		
		if (IsValid(self.rightButton)) then
			if (Clockwork.Client.currentPage >= #pages) then
				self.rightButton:SetEnabled(false)
			else
				self.rightButton:SetEnabled(true)
			end
		end
	end

	-- Called each frame.
	function PANEL:Paint()
		
	end

	-- A function to populate the panel.
	function PANEL:Populate(itemTable)
		Clockwork.Client.CurrentitemTable = itemTable
		pages = itemTable.bookInformation
		
		self.leftButton = vgui.Create("DButton", self)
		self.leftButton:SetSize((self:GetWide() - 8) / 2, 48 + 4 - 8)
		self.leftButton:SetPos(4, 870 - 48 - 4 - 16 + 4)
		self.leftButton:SetText("<")
		
		-- Called when the button is clicked.
		function self.leftButton:DoClick()
			PANEL:DoPage(true)
		end
		
		self.rightButton = vgui.Create("DButton", self)
		self.rightButton:SetSize(((self:GetWide() - 8) / 2), 48 + 4 - 8)
		self.rightButton:SetPos(self.leftButton:GetPos() + self.leftButton:GetWide() + 4, 870 - 48 - 4 - 16 + 4)
		self.rightButton:SetText(">")
		
		-- Called when the button is clicked.
		function self.rightButton:DoClick()
			PANEL:DoPage(false)
		end

		local x, y = self.rightButton:GetPos()
		
		self.closebutton = vgui.Create("DButton", self)
		self.closebutton:SetSize(self:GetWide() - 4, 16)
		self.closebutton:SetPos(4, 870 - 48 - 4 + 36)
		self.closebutton:SetText("  Close Scripture")
		
		if (#pages <= 1) then
			self.alwaysDisabled = true
			self.leftButton:SetVisible(false)
			self.rightButton:SetVisible(false)
			self.closebutton:SetPos(4, 804)
		end
		
		-- Called when the button is clicked.
		function self.closebutton:DoClick()
			Clockwork.Client.BookPanel:Close() Clockwork.Client.BookPanel:Remove()
			gui.EnableScreenClicker(false)
			surface.PlaySound("begotten/items/note_turn.wav")
		end

		htmlPanel = vgui.Create("DHTML", self)
		htmlPanel:SetHTML(pages[Clockwork.Client.currentPage])
		htmlPanel:SetWrap(true)
		gui.EnableScreenClicker(true)
	end

	-- A function to change the page.
	function PANEL:DoPage(bLeft)
		surface.PlaySound("begotten/items/note_turn.wav")
		
		if (!Clockwork.Client.currentPage) then
			Clockwork.Client.currentPage = 1
		end
		
		if (bLeft) then
			Clockwork.Client.currentPage = math.Clamp(Clockwork.Client.currentPage - 1, 1, 100)
			htmlPanel:SetHTML(pages[Clockwork.Client.currentPage])
		else
			Clockwork.Client.currentPage = math.Clamp(Clockwork.Client.currentPage + 1, 1, #pages)
			htmlPanel:SetHTML(pages[Clockwork.Client.currentPage])
		end
	end

	-- Called when the layout should be performed.
	function PANEL:PerformLayout()
		--htmlPanel:StretchToParent(4, 24, 4, 52)
		htmlPanel:SetSize(770, 800);
		DFrame.PerformLayout(self)
	end

	-- Called when the panel is closed.
	function PANEL:OnClose()
		Clockwork.kernel:RemoveBackgroundBlur(self)
	end

	vgui.Register("cwViewBook", PANEL, "DFrame")
	
	if (IsValid(Clockwork.Client.BookPanel)) then
		Clockwork.Client.BookPanel:Close()
		Clockwork.Client.BookPanel:Remove()
	end
	
	netstream.Hook("OpenBook", function(data)
		local itemTable = Clockwork.item:FindByID(data)

		if (itemTable and itemTable.bookInformation) then
			if (IsValid(Clockwork.Client.BookPanel)) then
				Clockwork.Client.BookPanel:Close()
				Clockwork.Client.BookPanel:Remove()
			end
			
			Clockwork.Client.BookPanel = vgui.Create("cwViewBook")
			Clockwork.Client.BookPanel:Populate(itemTable)
			Clockwork.Client.BookPanel:MakePopup()
			
			if (Clockwork.menu:GetOpen()) then
				Clockwork.menu:SetOpen(false)
			end
		end
	end)
	
	netstream.Hook("UpdateBooksRead", function(data)
		if data then
			cwScriptures.booksRead = data;
		end
	end)
	
	netstream.Hook("UpdateBooksCopied", function(data)
		if data then
			cwScriptures.booksCopied = data;
		end
	end)
end