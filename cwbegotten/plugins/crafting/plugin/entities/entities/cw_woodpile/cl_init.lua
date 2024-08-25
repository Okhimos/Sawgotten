--[[
	Begotten III: Jesus Wept
	By: DETrooper, cash wednesday, gabs, alyousha35

	Other credits: kurozael, Alex Grist, Mr. Meow, zigbomb
--]]

Clockwork.kernel:IncludePrefixed("shared.lua")

-- Called when the target ID HUD should be painted.
function ENT:HUDPaintTargetID(x, y, alpha)
	y = Clockwork.kernel:DrawInfo("Куча старой древесины из упавших деревьев и веток. Если ее разбить, содержимое можно использовать в качестве материала для создания предметов.", x, y, Clockwork.option:GetColor("white"), alpha);
end;