--[[
	Begotten III: Jesus Wept	By: DETrooper, cash wednesday, gabs, alyousha35	Other credits: kurozael, Alex Grist, Mr. Meow, zigbomb
--]]if (SERVER) then	AddCSLuaFile("shared.lua");end;if (CLIENT) then	SWEP.Slot = 4;	SWEP.SlotPos = 2;	SWEP.DrawAmmo = false;	SWEP.PrintName = "Flare";	SWEP.DrawCrosshair = true;endSWEP.Instructions = "Primary Fire: Throw.";SWEP.Purpose = "Creating a temporary light source to illuminate an area.";SWEP.Contact = "";SWEP.Author	= "cash";SWEP.ViewModel = "models/v_onehandedbegotten.mdl"SWEP.WorldModel = "models/weapons/w_begotten_melee.mdl"SWEP.ViewModelFOV = 80SWEP.AdminSpawnable = false;SWEP.Spawnable = false;SWEP.HoldType = "wos-begotten_javelin_1h"SWEP.UseHands = true  SWEP.Primary.DefaultClip = 0;SWEP.Primary.Automatic = false;SWEP.Primary.ClipSize = -1;SWEP.Primary.Damage = 0;SWEP.Primary.Delay = 1;SWEP.Primary.Ammo = "grenade";SWEP.Secondary.DefaultClip = 0;SWEP.Secondary.Automatic = false;SWEP.Secondary.ClipSize = -1;SWEP.Secondary.Delay = 1;SWEP.Secondary.Ammo	= "";SWEP.NoIronSightFovChange = true;SWEP.NoIronSightAttack = true;SWEP.IronSightPos = Vector(0, 0, 0);SWEP.IronSightAng = Vector(0, 0, 0);-- A function to set the sweps item table.function SWEP:SetInfo(player, itemTable)	self.fuseTime = itemTable:GetData("fuseTime") or 3;	self.itemTable = itemTable;	self.player = player;	self:SetNWEntity("player", player);end;function SWEP:TriggerAnim(target, anim)	if (SERVER and IsValid(self.player)) then		net.Start("BegottenAnim")		net.WriteEntity(self.player);		net.WriteString(anim);		net.Broadcast();	end;		local vm = self.Owner:GetViewModel()	vm:SendViewModelMatchingSequence(vm:LookupSequence("misscenter1"))	self.Owner:GetViewModel():SetPlaybackRate(2)end;-- Called each frame.function SWEP:Think()	local curTime = CurTime();		if (SERVER) then		local itemTable = self.itemTable;					if (itemTable and itemTable.GrenadeWeaponThink) then			itemTable:GrenadeWeaponThink(self, self.player);		end;	end;		if (self.PulledBack) then		if (!self.Owner:KeyDown(IN_ATTACK)) then			if (curTime >= self.PulledBack) then				self.Attacking = curTime + (self.Primary.Delay / 2);				self.Raised = curTime + self.Primary.Delay + 2;								if (!self.AttackTime) then					self.AttackTime = curTime;				end;								self:TriggerAnim(self.Owner, "a_javelin_throw");				self.Owner:ViewPunch(Angle(4, 1, 0))								if (SERVER) then					self:CreateGrenade(math.Clamp(curTime - self.AttackTime, 0, 10) * 40, math.abs(self.fuseTime - math.abs(curTime - self.PulledBack)));										if (self.itemTable and self.itemTable.throwSound) then						self:EmitSound(self.itemTable.throwSound or "WeaponFrag.Throw");					end;				end;								self.PulledBack = nil;								self:SendWeaponAnim(ACT_VM_THROW);				self:SetNextPrimaryFire(curTime + self.Primary.Delay);			end;		else			if (SERVER) then				if (math.abs(curTime - self.PulledBack) > self.fuseTime) then					local itemTable = self.itemTable;										if (itemTable and itemTable.CookExplode) then						itemTable:CookExplode(self, self.player);					end;				end;			end;		end;	elseif (type(self.Attacking) == "number") then		if (curTime >= self.Attacking) then			self.Attacking = nil;						self:SendWeaponAnim(ACT_VM_DRAW);						if (SERVER) then				self.player:RemoveAmmo(1, "grenade");								if (self.player:GetAmmoCount("grenade") == 0) then					self.player:StripWeapon(self:GetClass());				end;			end;		end;	end;end;-- Called when the SWEP is deployed.function SWEP:Deploy()	if (SERVER) then		self:SetWeaponHoldType("grenade");				local itemTable = self.itemTable;				if (itemTable and itemTable.OnGrenadeDeploy) then			itemTable:OnGrenadeDeploy(self, self.player);		end;	end;		self:SendWeaponAnim(ACT_VM_DRAW);	self.Owner:ViewPunch(Angle(1, 1, 0))		self.PulledBack = nil;	self.Attacking = nil;end;-- Called when the SWEP is holstered.function SWEP:Holster(switchingTo)	local player = self.Owner;	if CLIENT and IsValid(player) and player:IsPlayer() then		local vm = player:GetViewModel()				if IsValid(vm) then			self:ResetBonePositions(vm)			vm:SetSubMaterial(0, "")			vm:SetSubMaterial(1, "")			vm:SetSubMaterial(2, "")		end	end		if (SERVER) then		local itemTable = self.itemTable;				if (itemTable and itemTable.OnGrenadeHolster) then			itemTable:OnGrenadeHolster(self, self.player);		end;	end;		self:SendWeaponAnim(ACT_VM_HOLSTER);		self.PulledBack = nil;	self.Attacking = nil;		return true;end;-- Called to get whether the SWEP is raised.function SWEP:GetRaised()	local curTime = CurTime();		if (self.Attacking or (self.Raised and self.Raised > curTime)) then		return true;	end;end;-- Called when the SWEP is initialized.function SWEP:Initialize()	if (SERVER) then		self:SetWeaponHoldType("grenade");	end;		self:InitFunc();	if CLIENT then		self:SetHoldType(self.HoldType);				self.VElements = table.FullCopy(self.VElements)		self.WElements = table.FullCopy(self.WElements)		self.ViewModelBoneMods = table.FullCopy(self.ViewModelBoneMods)		if LocalPlayer() == self.Owner then			self:CreateModels(self.VElements) // create viewmodels		end				self:CreateModels(self.WElements) // create worldmodels		if IsValid(self.Owner) and self.Owner:IsPlayer() then			local vm = self.Owner:GetViewModel()						if IsValid(vm) then				self:ResetBonePositions(vm);			end		end	endend;if (SERVER) then	-- A function to create the SWEP's grenade.	function SWEP:CreateGrenade(power, fuseTime)		self.player:SetWeaponRaised(false);		self.player:SelectWeapon("begotten_fists");				local position = self.player:GetShootPos() + (self.player:GetAimVector() * 64);		local entity = ents.Create("cw_throwable_entity");		local trace = self.player:GetEyeTraceNoCursor();				if (trace.HitPos:Distance(self.player:GetShootPos()) <= 80) then			position = trace.HitPos - (self.player:GetAimVector() * 16);		end;				entity:SetPos(position);		entity:Spawn();		entity:SetUpGrenade(self.player, table.Copy(self.itemTable));				if (IsValid(entity)) then			if (IsValid(entity:GetPhysicsObject())) then				entity:GetPhysicsObject():ApplyForceCenter(self.player:GetAimVector() * (800 + power));				entity:GetPhysicsObject():AddAngleVelocity(Vector(600, math.random(-1200, 1200), 0));			end;						local itemTable = self.itemTable;						if (itemTable and !itemTable.fuseless) then				timer.Simple(fuseTime or 3, function()					if (IsValid(entity) and !entity:HasExploded()) then						entity:Explode();					end;				end);			end;		end;		self.player:TakeItem(self.itemTable);	end;end;-- Called when the player attempts to primary fire.function SWEP:PrimaryAttack()	local curTime = CurTime();		if (!self.Attacking) then		self:SendWeaponAnim(ACT_VM_PULLBACK_HIGH);				if (SERVER) then			local itemTable = self.itemTable;						if (itemTable and itemTable.OnPinPull) then				itemTable:OnPinPull(self, self.player);			end;		end;				self.PulledBack = curTime;		self.AttackTime = curTime;		self.Attacking = true;	end;		return false;end;-- Called when the player attempts to secondary fire.function SWEP:SecondaryAttack() end;SWEP.VElements = {	["v_grenade"] = { type = "Model", model = "models/Items/grenadeAmmo.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3, 0.4, 0), angle = Angle(-8.183, 104.026, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 2, bodygroup = {} }}SWEP.WElements = {	["w_grenade"] = { type = "Model", model = "models/Items/grenadeAmmo.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2, 3, -2), angle = Angle(-135, 45, 1.169), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 2, bodygroup = {} }}-- A function to merge the offset table.function SWEP:MergeElementsTable(vElements, wElements)	if (vElements and istable(vElements) and !table.IsEmpty(vElements)) then		table.Merge(self.VElements, vElements);	end;		if (wElements and istable(wElements) and !table.IsEmpty(wElements)) then		table.Merge(self.WElements, wElements);	end;end;--[[	FUCKFEST BELOW--]]SWEP.SomeData = {}SWEP.SomeData.SubMat0 = nilSWEP.SomeData.SubMat1 = nilSWEP.SomeData.SubMat2 = nilSWEP.SomeData.SubMat3 = nilfunction SWEP:InitFunc()endfunction SWEP:OnRemove()	if (CLIENT) then		self:RemoveModels();	endendfunction SWEP:RemoveModels()	if self.vRenderOrder then		for k, name in ipairs(self.vRenderOrder) do			local v = self.VElements[name]			if (!v) then self.vRenderOrder = nil break end						local model = v.modelEnt;						if (v.type == "Model" and IsValid(model)) then				model:Remove();			end		end	end		if self.wRenderOrder then		for k, name in pairs(self.wRenderOrder) do			local v = self.WElements[name]			if (!v) then self.wRenderOrder = nil break end						local model = v.modelEnt;			if (v.type == "Model" and IsValid(model)) then				model:Remove();			end		end	endendfunction SWEP:SubMatFunc()	local vm = self.Owner:GetViewModel()--Get view model	local wep = self.Weapon		if vm:IsValid() then		if self.SomeData.SubMat0 != nil and self.Skins == false then			vm:SetSubMaterial(0, self.SomeData.SubMat0)--Change its material		else			vm:SetSubMaterial(0, "")		end				if self.Skins == true then 			vm:SetSubMaterial(0, self.SkinsTable[self.Weapon:GetNWInt("hgskin")].path)		end		if self.SomeData.SubMat1 != nil and self.Skins == false then			vm:SetSubMaterial(1, self.SomeData.SubMat1)--Change its material		else			vm:SetSubMaterial(1, "")		end		endendlocal rndr = renderlocal mth = mathlocal srface = surfacelocal inpat = inputif CLIENT then	local redflare = Material("effects/redflare") 	SWEP.vRenderOrder = nil	function SWEP:ViewModelDrawn(vm)		self:CustomDrawn(vm)		self:SubMatFunc()				local vm = self.Owner:GetViewModel()		self:UpdateBonePositions(vm)				if !IsValid(vm) then return end		if (!self.VElements) then return end				self:UpdateBonePositions(vm)		if (!self.vRenderOrder) then			self.vRenderOrder = {}			for k, v in pairs(self.VElements) do				if (v.type == "Model") then					table.insert(self.vRenderOrder, 1, k)				elseif (v.type == "Sprite" or v.type == "Quad") then					table.insert(self.vRenderOrder, k)				end			end		end		for k, name in ipairs(self.vRenderOrder) do			local v = self.VElements[name]			if (!v) then self.vRenderOrder = nil break end			if (v.hide) then continue end						local model = v.modelEnt			local sprite = v.spriteMaterial						if (!v.bone) then continue end						local pos, ang = self:GetBoneOrientation(self.VElements, v, vm)						if (!pos) then continue end						if (v.type == "Model" and IsValid(model)) then				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z)				ang:RotateAroundAxis(ang:Up(), v.angle.y)				ang:RotateAroundAxis(ang:Right(), v.angle.p)				ang:RotateAroundAxis(ang:Forward(), v.angle.r)				model:SetAngles(ang)				local matrix = Matrix()				matrix:Scale(v.size)				model:EnableMatrix("RenderMultiply", matrix)								if (v.material == "") then					model:SetMaterial("")				elseif (model:GetMaterial() != v.material) then					model:SetMaterial(v.material)				end								if (v.skin and v.skin != model:GetSkin()) then					model:SetSkin(v.skin)				end								if (v.bodygroup) then					for k, v in pairs(v.bodygroup) do						if (model:GetBodygroup(k) != v) then							model:SetBodygroup(k, v)						end					end				end								if (v.surpresslightning) then					rndr.SuppressEngineLighting(true)				end								rndr.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)				rndr.SetBlend(v.color.a/255)				model:DrawModel()				rndr.SetBlend(1)				rndr.SetColorModulation(1, 1, 1)								if (v.surpresslightning) then					rndr.SuppressEngineLighting(false)				end			elseif (v.type == "Sprite" and sprite) then				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z				rndr.SetMaterial(sprite)				rndr.DrawSprite(drawpos, v.size.x, v.size.y, v.color)			elseif (v.type == "Quad" and v.draw_func) then				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z				ang:RotateAroundAxis(ang:Up(), v.angle.y)				ang:RotateAroundAxis(ang:Right(), v.angle.p)				ang:RotateAroundAxis(ang:Forward(), v.angle.r)								cam.Start3D2D(drawpos, ang, v.size)					v.draw_func(self)				cam.End3D2D()			end		end	end		function SWEP:CustomWorldDrawn()	end	SWEP.wRenderOrder = nil	function SWEP:DrawWorldModel()		self:CustomWorldDrawn()				if (self.ShowWorldModel == nil or self.ShowWorldModel) then			self:DrawModel()		end				if (!self.WElements) then return end				if (!self.wRenderOrder) then			self.wRenderOrder = {}			for k, v in pairs(self.WElements) do				if (v.type == "Model") then					table.insert(self.wRenderOrder, 1, k)				elseif (v.type == "Sprite" or v.type == "Quad") then					table.insert(self.wRenderOrder, k)				end			end		end				if (IsValid(self.Owner)) then			bone_ent = self.Owner		else			bone_ent = self		end				for k, name in pairs(self.wRenderOrder) do					local v = self.WElements[name]			if (!v) then self.wRenderOrder = nil break end			if (v.hide) then continue end						local pos, ang						if (v.bone) then				pos, ang = self:GetBoneOrientation(self.WElements, v, bone_ent)			else				pos, ang = self:GetBoneOrientation(self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand")			end						if (!pos) then continue end						local model = v.modelEnt			local sprite = v.spriteMaterial						if (v.type == "Model" and IsValid(model)) then				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z)				ang:RotateAroundAxis(ang:Up(), v.angle.y)				ang:RotateAroundAxis(ang:Right(), v.angle.p)				ang:RotateAroundAxis(ang:Forward(), v.angle.r)				model:SetAngles(ang)				local matrix = Matrix()				matrix:Scale(v.size)				model:EnableMatrix("RenderMultiply", matrix)								if (v.material == "") then					model:SetMaterial("")				elseif (model:GetMaterial() != v.material) then					model:SetMaterial(v.material)				end								if (v.skin and v.skin != model:GetSkin()) then					model:SetSkin(v.skin)				end								if (v.bodygroup) then					for k, v in pairs(v.bodygroup) do						if (model:GetBodygroup(k) != v) then							model:SetBodygroup(k, v)						end					end				end								if (v.surpresslightning) then					rndr.SuppressEngineLighting(true)				end								rndr.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)				rndr.SetBlend(v.color.a/255)				model:DrawModel()				rndr.SetBlend(1)				rndr.SetColorModulation(1, 1, 1)								if (v.surpresslightning) then					rndr.SuppressEngineLighting(false)				end							elseif (v.type == "Sprite" and sprite) then								local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z				rndr.SetMaterial(sprite)				rndr.DrawSprite(drawpos, v.size.x, v.size.y, v.color)							elseif (v.type == "Quad" and v.draw_func) then								local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z				ang:RotateAroundAxis(ang:Up(), v.angle.y)				ang:RotateAroundAxis(ang:Right(), v.angle.p)				ang:RotateAroundAxis(ang:Forward(), v.angle.r)								cam.Start3D2D(drawpos, ang, v.size)					v.draw_func(self)				cam.End3D2D()			end		end	end	function SWEP:GetBoneOrientation(basetab, tab, ent, bone_override)		local bone, pos, ang		if (tab.rel and tab.rel != "") then			local v = basetab[tab.rel]			if (!v) then return end			pos, ang = self:GetBoneOrientation(basetab, v, ent)			if (!pos) then return end			pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z			ang:RotateAroundAxis(ang:Up(), v.angle.y)			ang:RotateAroundAxis(ang:Right(), v.angle.p)			ang:RotateAroundAxis(ang:Forward(), v.angle.r)		else			bone = ent:LookupBone(bone_override or tab.bone)			if (!bone) then return end			pos, ang = Vector(0,0,0), Angle(0,0,0)			local m = ent:GetBoneMatrix(bone)			if (m) then				pos, ang = m:GetTranslation(), m:GetAngles()			end			if (IsValid(self.Owner) and self.Owner:IsPlayer() and 				ent == self.Owner:GetViewModel() and self.ViewModelFlip) then				ang.r = -ang.r 			end		end		return pos, ang	end	function SWEP:CreateModels(tab)		if (!tab) then return end		for k, v in pairs(tab) do			if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and 				string.find(v.model, ".mdl") and file.Exists (v.model, "GAME")) then								if IsValid(v.modelEnt) then					v.modelEnt:Remove();				end								v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)								if (IsValid(v.modelEnt)) then					v.modelEnt:SetPos(self:GetPos())					v.modelEnt:SetAngles(self:GetAngles())					v.modelEnt:SetParent(self)					v.modelEnt:SetNoDraw(true)					v.createdModel = v.model				else					v.modelEnt = nil				end							elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite) and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then				local name = v.sprite.."-"				local params = { ["$basetexture"] = v.sprite }				local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }				for i, j in pairs(tocheck) do					if (v[j]) then						params["$"..j] = 1						name = name.."1"					else						name = name.."0"					end				end				v.createdSprite = v.sprite				v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)							end		end	end		local allbones	local hasGarryFixedBoneScalingYet = false	function SWEP:UpdateBonePositions(vm)		if self.ViewModelBoneMods then			if (!vm:GetBoneCount()) then return end						local loopthrough = self.ViewModelBoneMods			if (!hasGarryFixedBoneScalingYet) then				allbones = {}				for i=0, vm:GetBoneCount() do					local bonename = vm:GetBoneName(i)					if (self.ViewModelBoneMods[bonename]) then 						allbones[bonename] = self.ViewModelBoneMods[bonename]					else						allbones[bonename] = { 							scale = Vector(1,1,1),							pos = Vector(0,0,0),							angle = Angle(0,0,0)						}					end				end				loopthrough = allbones			end			for k, v in pairs(loopthrough) do				local bone = vm:LookupBone(k)				if (!bone) then continue end				local s = Vector(v.scale.x,v.scale.y,v.scale.z)				local p = Vector(v.pos.x,v.pos.y,v.pos.z)				local ms = Vector(1,1,1)				if (!hasGarryFixedBoneScalingYet) then					local cur = vm:GetBoneParent(bone)					while(cur >= 0) do						local pscale = loopthrough[vm:GetBoneName(cur)].scale						ms = ms * pscale						cur = vm:GetBoneParent(cur)					end				end								s = s * ms				if vm:GetManipulateBoneScale(bone) != s then					vm:ManipulateBoneScale(bone, s)				end				if vm:GetManipulateBoneAngles(bone) != v.angle then					vm:ManipulateBoneAngles(bone, v.angle)				end				if vm:GetManipulateBonePosition(bone) != p then					vm:ManipulateBonePosition(bone, p)				end			end		else			self:ResetBonePositions(vm)		end	end	 	function SWEP:ResetBonePositions(vm)			if !vm then return end;		if (!vm:GetBoneCount()) then return end				for i = 0, vm:GetBoneCount() do			vm:ManipulateBoneScale(i, Vector(1, 1, 1))			vm:ManipulateBoneAngles(i, Angle(0, 0, 0))			vm:ManipulateBonePosition(i, Vector(0, 0, 0))		end	end		function SWEP:CustomDrawn()	end	function table.FullCopy(tab)		if (!tab) then return nil end				local res = {}		for k, v in pairs(tab) do			if (type(v) == "table") then				res[k] = table.FullCopy(v) // recursion ho!			elseif (type(v) == "Vector") then				res[k] = Vector(v.x, v.y, v.z)			elseif (type(v) == "Angle") then				res[k] = Angle(v.p, v.y, v.r)			else				res[k] = v			end		end		return res	endend-- what a fucking eyesore