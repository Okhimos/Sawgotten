Clockwork.kernel:IncludePrefixed("shared.lua")

-- Called when the target ID HUD should be painted.
function ENT:HUDPaintTargetID(x, y, alpha)
	y = Clockwork.kernel:DrawInfo("Старый учебный манекен в форме человека, сделанный из соломы.", x, y, Clockwork.option:GetColor("white"), alpha);
end;

function ENT:Think()
	local armorModel = self:GetNWString("armorModel");
	local helmetModel = self:GetNWString("helmetModel");
	
	if armorModel and armorModel ~= "" then
		if self.armorEntity then
			if self.armorEntity:GetModel() ~= armorModel then
				self.armorEntity:Remove();
				self.armorEntity = ClientsideModel(armorModel);
			end
		else
			self.armorEntity = ClientsideModel(armorModel);
		end
		
		self.armorEntity:SetPos(self:GetPos() + (self:GetUp() * 52));
		self.armorEntity:SetAngles(self:GetAngles() + self:GetRight():Angle());
	elseif self.armorEntity then
		self.armorEntity:Remove();
		self.armorEntity = nil;
	end
	
	if helmetModel and helmetModel ~= "" then
		if self.helmetEntity then
			if self.helmetEntity:GetModel() ~= helmetModel then
				self.helmetEntity:Remove();
				self.helmetEntity = ClientsideModel(helmetModel);
			end
		else
			self.helmetEntity = ClientsideModel(helmetModel);
		end
		
		self.helmetEntity:SetPos(self:GetPos() + (self:GetUp() * 64));
		self.helmetEntity:SetAngles(self:GetAngles() + self:GetRight():Angle());
	elseif self.helmetEntity then
		self.helmetEntity:Remove();
		self.helmetEntity = nil;
	end
end

function ENT:OnRemove()
	if self.armorEntity then
		self.armorEntity:Remove();
		self.armorEntity = nil;
	end
	
	if self.helmetEntity then
		self.helmetEntity:Remove();
		self.helmetEntity = nil;
	end
end