--[[
	Begotten III: Jesus Wept
	By: DETrooper, cash wednesday, gabs, alyousha35

	Other credits: kurozael, Alex Grist, Mr. Meow, zigbomb
--]]

CreateFont = CreateFont or surface.CreateFont

function surface.CreateFont(...)
	Clockwork.fonts:Add(...)
end

library.New("fonts", Clockwork)

Clockwork.fonts.stored = Clockwork.fonts.stored or {}
Clockwork.fonts.sizes = Clockwork.fonts.sizes or {}

-- A function to add a new font to the system.
function Clockwork.fonts:Add(name, fontTable, bForce)
	if (self.stored[name] and !bForce) then return end

	fontTable.extended = true; -- Force the font to load all characters.
	self.stored[name] = fontTable
	CreateFont(name, self.stored[name])
end

-- A function to find a font by name.
function Clockwork.fonts:FindByName(name)
	return self.stored[name]
end

-- A function to grab a font by size (creating what doesn't exist.)
function Clockwork.fonts:GetSize(name, size)
	local fontKey = name..size

	if (self.sizes[fontKey]) then
		return fontKey
	end

	if (!self.stored[name]) then
		return name
	end

	self.sizes[fontKey] = table.Copy(self.stored[name])
	self.sizes[fontKey].size = size

	CreateFont(fontKey, self.sizes[fontKey])
	return fontKey
end

-- A function to grab a font by multiplier.
function Clockwork.fonts:GetMultiplied(name, multiplier)
	local fontTable = self:FindByName(name)
	if (fontTable == nil) then return name; end

	return self:GetSize(name, fontTable.size * multiplier)
end

Clockwork.fonts:Add("cwMainText",
{
	font		= "Vinque Rg",
	size		= Clockwork.kernel:FontScreenScale(7),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended	= true
})
Clockwork.fonts:Add("cwESPText",
{
	font		= "Oranienbaum",
	size		= Clockwork.kernel:FontScreenScale(5.5),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended 	= true
})
Clockwork.fonts:Add("cwTooltip",
{
	font		= "ERThird",
	size		= Clockwork.kernel:FontScreenScale(6),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended	= true
})
Clockwork.fonts:Add("Clockwork.menuTextBig",
{
	font		= "Oranienbaum",
	size		= Clockwork.kernel:FontScreenScale(15),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended 	= true
})
Clockwork.fonts:Add("Clockwork.menuTextTiny",
{
	font		= "Oranienbaum",
	size		= Clockwork.kernel:FontScreenScale(10),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended	= true
})
Clockwork.fonts:Add("cwInfoTextFont",
{
	font		= "Oranienbaum",
	size		= Clockwork.kernel:FontScreenScale(12),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended	= true
})
Clockwork.fonts:Add("Clockwork.menuTextHuge",
{
	font		= "Oranienbaum",
	size		= Clockwork.kernel:FontScreenScale(30),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended	= true
})
Clockwork.fonts:Add("Clockwork.menuTextSmall",
{
	font		= "ERThird",
	size		= Clockwork.kernel:FontScreenScale(8),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended	= true
})
Clockwork.fonts:Add("cwIntroTextBig",
{
	font		= "Oranienbaum",
	size		= Clockwork.kernel:FontScreenScale(18),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended	= true
})
Clockwork.fonts:Add("cwIntroTextTiny",
{
	font		= "Oranienbaum",
	size		= Clockwork.kernel:FontScreenScale(15),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended	= true
})
Clockwork.fonts:Add("cwIntroTextSmall",
{
	font		= "Oranienbaum",
	size		= Clockwork.kernel:FontScreenScale(15),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended	= true
})
Clockwork.fonts:Add("cwLarge3D2D",
{
	font		= "Uk_Antique",
	size		= Clockwork.kernel:GetFontSize3D(),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended 	= true
})
Clockwork.fonts:Add("cwScoreboardName",
{
	font		= "Uk_Antique",
	size		= Clockwork.kernel:FontScreenScale(15),
	weight		= 600,
	antialiase	= true,
	additive 	= false,
	extended 	= true
})
Clockwork.fonts:Add("cwScoreboardDesc",
{
	font		= "Uk_Antique",
	size		= Clockwork.kernel:FontScreenScale(5),
	weight		= 600,
	antialiase	= true,
	additive 	= false,
	extended 	= true
})
Clockwork.fonts:Add("cwCinematicText",
{
	font		= "Uk_Antique",
	size		= Clockwork.kernel:FontScreenScale(8),
	weight		= 700,
	antialiase	= true,
	additive 	= false,
	extended 	= true
})
Clockwork.fonts:Add("cwChatSyntax",
{
	font		= "Uk_Antique",
	size		= Clockwork.kernel:FontScreenScale(7),
	weight		= 600,
	antialiase	= true,
	additive 	= false,
	extended 	= true
})
Clockwork.fonts:Add("cwChatGore",
{
	font		= "Moderno Two",
	size		= Clockwork.kernel:FontScreenScale(7),
	weight		= 600,
	antialiase	= true,
	additive 	= false,
	extended 	= true
})

Clockwork.fonts:Add("cwChatVoltist",
{
	font		= "FK Aarco.kz",
	size		= Clockwork.kernel:FontScreenScale(8),
	weight		= 600,
	antialiase	= true,
	additive 	= false,
	extended 	= true
})
