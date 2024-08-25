--[[
	Begotten 3: Jesus Wept
	written by: cash wednesday, DETrooper, gabs and alyousha35.
--]]

local requiredWorkshopAddons = {
	"2442758302",
	"2443016109",
	"2443045596",
	"2442796233",
	"2442809967",
	"2442244710",
	"2465148067",
	"2594063203",
	"2790936125",
};

-- Disabled these for now since gabs added their content to the Begotten III content.
Schema.requiredMounts = {
	--["episodic"] = "Half-Life 2: Episode 1",
	--["ep2"] = "Half-Life 2: Episode 2",
	--["cstrike"] = "Counter-Strike: Source",
};

Schema.cheapleMessages = {"Мне нужно убраться подальше от этой чертовой штуки!", "Оно приближается!", "Что эта штука от меня хочет!?", "Почему никто другой этого не видит!?", "Черт, оно приближается!", "Надо продолжать двигаться... надо продолжать двигаться..."};

if !Schema.contentVerified then
	Schema.contentVerified = "unverified";
end

function Schema:Initialize()
	if (!file.Exists("b3", "DATA")) then
		file.CreateDir("b3")
	end
	
	if (self.tempTextures) then
		for i = 1, #self.tempTextures do
			self:DownloadMaterial(self.tempTextures[i].url, self.tempTextures[i].path);
		end;
	end;
	
	if render.GetHDREnabled() == false and game.GetMap() == "rp_begotten3" then
		RunConsoleCommand("mat_hdr_enabled", "1");
		RunConsoleCommand("retry");
	end
	
	--RunConsoleCommand("fps_max", "300");
	RunConsoleCommand("hud_draw_fixed_reticle", "0");
	RunConsoleCommand("mat_hdr_level", "2");
	RunConsoleCommand("mat_motion_blur_enabled", "1");
end

-- A function to start a sound.
function Schema:StartSound(sound, volume, pitch, dsp)
	if (!sound or type(sound) != "string") then
		return;
	end;
	
	if (Clockwork.Client.customSound) then
		Clockwork.Client.customSound:Stop();
		Clockwork.Client.customSound = nil;
		
		if (Clockwork.Client.customSoundOldDSP) then
			Clockwork.Client.customSoundOldDSP = nil;
		end;
	end;
	
	local pitch = math.Clamp(tonumber(pitch), 30, 255) or 100;
	local volume = tonumber(volume) or 1;
	local dsp = tonumber(dsp) or 0;
	
	if (volume > 1) then
		volume = volume / 100;
	end;
	
	if (!Clockwork.Client.customSound) then
		Clockwork.Client.customSound = CreateSound(Clockwork.Client, sound);
		
		if (Clockwork.Client.customSound and !Clockwork.Client.customSound:IsPlaying()) then
			Clockwork.Client.customSound:SetDSP(dsp);
			Clockwork.Client.customSound:PlayEx(volume, pitch);
		end;
	end;
end;

-- A function to stop a sound.
function Schema:StopSound()
	if (!Clockwork.Client.customSound) then
		return;
	else
		if (Clockwork.Client.customSound:IsPlaying()) then
			Clockwork.Client.customSound:Stop();
			Clockwork.Client.customSound = nil;
		
			if (Clockwork.Client.customSoundOldDSP) then
				Clockwork.Client.customSoundOldDSP = nil;
			end;
		end;
	end;
end;

-- A function to fade out a sound.
function Schema:FadeOut(duration)
	local duration = tonumber(duration) or 3;
	
	if (!Clockwork.Client.customSound or Clockwork.Client.customSoundFadingOut) then
		return;
	else
		if (Clockwork.Client.customSound:IsPlaying()) then
			Clockwork.Client.customSound:FadeOut(duration);
			Clockwork.Client.customSoundFadingOut = true;
			
			timer.Simple(duration, function()
				Clockwork.Client.customSound = nil;
				Clockwork.Client.customSoundFadingOut = nil;
				
				if (Clockwork.Client.customSoundOldDSP) then
					Clockwork.Client.customSoundOldDSP = nil;
				end;
			end);
		end;
	end;
end;

-- A function to change the volume of a sound.
function Schema:ChangeVolume(newVolume, delta)
	local newVolume = tonumber(newVolume) or 0;
	local delta = tonumber(delta) or 3;
	
	if (!Clockwork.Client.customSound or Clockwork.Client.customSoundChangingVolume) then
		return;
	else
		if (Clockwork.Client.customSound:IsPlaying() and Clockwork.Client.customSound:GetVolume() != newVolume) then
			Clockwork.Client.customSound:ChangeVolume(newVolume, delta);
			Clockwork.Client.customSoundChangingVolume = true;
			
			timer.Simple(delta, function()
				Clockwork.Client.customSoundChangingVolume = nil;
			end);
		end;
	end;
end;

-- A function to change the pitch of a sound.
function Schema:ChangePitch(newPitch, delta)
	local newPitch = tonumber(newPitch) or 0;
	local delta = tonumber(delta) or 3;
	
	if (!Clockwork.Client.customSound or Clockwork.Client.customSoundChangingPitch) then
		return;
	else
		if (Clockwork.Client.customSound:IsPlaying() and Clockwork.Client.customSound:GetPitch() != newPitch) then
			Clockwork.Client.customSound:ChangePitch(newPitch, delta);
			Clockwork.Client.customSoundChangingPitch = true;
			
			timer.Simple(delta, function()
				Clockwork.Client.customSoundChangingPitch = nil;
			end);
		end;
	end;
end;

-- A function to change the pitch of a sound.
function Schema:SetDSP(newDSP, reset)
	if (Clockwork.Client.customSoundOldDSP) then
		Clockwork.Client.customSoundOldDSP = nil;
	end;
	
	if (!Clockwork.Client.customSound) then
		return;
	else
		Clockwork.Client.customSoundOldDSP = Clockwork.Client.customSound:GetDSP();
		
		if (Clockwork.Client.customSound:IsPlaying() and Clockwork.Client.customSound:GetDSP() != newDSP) then
			if (!reset) then
				Clockwork.Client.customSound:SetDSP(tonumber(newDSP));
			else
				Clockwork.Client.customSound:SetDSP(Clockwork.Client.customSoundOldDSP);
			end;
		end;
	end;
end;

function Schema:Think()
	if Clockwork.Client:HasTrait("followed") and Clockwork.Client:Alive() and not self.caughtByCheaple then
		if IsValid(statichitman) then
			if Clockwork.Client.LoadingText then
				return;
			end
			
			local position = Clockwork.Client:GetPos();
			local cheaplePosition = statichitman:GetPos();
			local distance = cheaplePosition:DistToSqr(position);
			local yaw = (position - cheaplePosition):Angle().yaw;
			local forward = statichitman:GetForward();
			local zDifference = position.z - cheaplePosition.z;
			
			if Clockwork.Client:HasTrait("marked") then
				if !statichitman.flaming then
					statichitman.flaming = true;
					
					statichitman:ResetSequence("run_all");
					ParticleEffectAttach("env_fire_large", 1, statichitman, 1);
					
					statichitman:EmitSound("ambient/fire/fire_small1.wav");
				end
			end
				
			if statichitman.flaming then
				statichitman:SetPos(cheaplePosition + (forward * 1.5) + Vector(0, 0, zDifference * FrameTime()));
			else
				statichitman:SetPos(cheaplePosition + (forward * 0.325) + Vector(0, 0, zDifference * FrameTime()));
			end
			
			statichitman:SetAngles(Angle(0, yaw, 0));
			statichitman:FrameAdvance();
			
			if (distance <= 512 * 512) and Clockwork.Client:GetRagdollState() ~= RAGDOLL_KNOCKEDOUT then
				local curTime =  CurTime();
			
				if Clockwork.HeartbeatSound and Clockwork.HeartbeatSound:IsPlaying() then
					Clockwork.HeartbeatSound:Stop();
				end 
			
				if not Schema.HeartbeatSound then
					Schema.HeartbeatSound = CreateSound(Clockwork.Client, "vj_player/heartbeat.wav");
					Schema.HeartbeatSound:Play();
				end
				
				if !self.nextCheapleMessage or self.nextCheapleMessage < curTime then
					self.nextCheapleMessage = curTime + math.random(30, 90);
					
					Clockwork.chatBox:Add(nil, nil, Color(255, 255, 150, 255), "***' "..self.cheapleMessages[math.random(1, #self.cheapleMessages)]);
				end
			else
				if Schema.HeartbeatSound then
					Schema.HeartbeatSound:FadeOut(3);
					Schema.HeartbeatSound = nil;
				end
			end
				
			if !self.nextCheapleSave or self.nextCheapleSave < CurTime() then
				self.nextCheapleSave = CurTime() + 1.5;
				
				netstream.Start("SaveCheaplePos", statichitman:GetPos());
			end
				
			if (distance < 64 * 64) then
				Schema:CheapleCaught();
			end
		end
		
		if Schema.caughtByCheaple and Schema.cheapleLight then
			local dynamicLight = DynamicLight(Clockwork.Client:EntIndex());
			
			dynamicLight.Pos = Vector(260, 4995, -10915); 
			dynamicLight.r = 255;
			dynamicLight.g = 160;
			dynamicLight.b = 160;
			dynamicLight.Brightness = 0.5;
			dynamicLight.Size = 1024;
			dynamicLight.DieTime = curTime + 0.1;
			dynamicLight.Style = 4;
		end
	elseif IsValid(statichitman) then
		self:ClearCheaple();
	elseif !Clockwork.Client:Alive() and Schema.caughtByCheaple then
		Schema.caughtByCheaple = false;
	end
end

netstream.Hook("CheaplePos", function(data)
	if Clockwork.Client:HasTrait("followed") and Clockwork.Client:Alive() and not Schema.caughtByCheaple then
		if IsValid(statichitman) and data then
			statichitman:SetPos(data);
		else
			Schema:CheapleFollows(data);
		end
	end
end);

netstream.Hook("PlayerCustomSoundCheck", function(data)
	local soundPlaying = false;
	
	if (Clockwork.Client.customSound and Clockwork.Client.customSound:IsPlaying()) then
		soundPlaying = true;
	end;
	
	netstream.Start("ConfirmCustomSoundCheck", {soundPlaying});
end);

netstream.Hook("StartCustomSound", function(data)
	local sound = data[1];
	local volume = data[2];
	local pitch = data[3];
	local dsp = data[4] or 0;
	
	Schema:StartSound(sound, volume, pitch, dsp)
end);

netstream.Hook("StopCustomSound", function(data)
	Schema:StopSound();
end);

netstream.Hook("FadeOutCustomSound", function(data)
	if (type(data) == "table") then
		data = data[1];
	end;
	
	Schema:FadeOut(data);
end);

netstream.Hook("CustomSoundChangeVolume", function(data)
	local newVolume = data[1];
	local delta = data[2];

	Schema:ChangeVolume(newVolume, delta);
end);

netstream.Hook("CustomSoundChangePitch", function(data)
	local newPitch = data[1];
	local delta = data[2];

	Schema:ChangePitch(newPitch, delta);
end);

netstream.Hook("CustomSoundChangeDSP", function(data)
	local newDSP = data;
	local reset = false;
	
	if (type(data) == "table") then
		newDSP = data[1];
		reset = data[2] or false;
	end;

	Schema:SetDSP(newDSP, reset);
end);


-- A function to print chatbox text without using RGB color.
function Schema:EasyText(...)
	local args = {...};
	local icon;
	
	for k, v in pairs (args) do
		-- IsColor() doesn't work in all cases.
		if (isentity(v) or (istable(v) and (!v.r and !v.g and !v.b))) then
			args[k] = nil;
			continue;
		end

		if isstring(v) and (string.find(v, ".png")) then
			icon = v;
			args[k] = nil
			continue;
		end;
		
		if (colors[v]) then
			args[k] = colors[v];
		end;
	end;
	
	Clockwork.chatBox:Add(nil, icon, unpack(args));
end;

netstream.Hook("EasyText", function(varargs)
	Schema:EasyText(unpack(varargs))
end);

-- Called when a player's footstep sound should be played.
function Schema:PlayerFootstep(player, position, foot, soundString, volume, recipientFilter)
	local running = nil;
	
	if (player:IsRunning()) then
		running = true;
	end;
	
	if cwPowerArmor and player:IsWearingPowerArmor()then
		if running then
			local runSounds = {
				"npc/dog/dog_footstep1.wav",
				"npc/dog/dog_footstep2.wav",
				"npc/dog/dog_footstep3.wav",
				"npc/dog/dog_footstep4.wav",
			}; 
			
			player:EmitSound(runSounds[math.random(1, #runSounds)]);
		else
			local walkSounds = {
				"npc/dog/dog_footstep_walk01.wav",
				"npc/dog/dog_footstep_walk02.wav",
				"npc/dog/dog_footstep_walk03.wav",
				"npc/dog/dog_footstep_walk04.wav",
				"npc/dog/dog_footstep_walk05.wav",
				"npc/dog/dog_footstep_walk06.wav",
				"npc/dog/dog_footstep_walk07.wav",
				"npc/dog/dog_footstep_walk08.wav",
				"npc/dog/dog_footstep_walk09.wav",
				"npc/dog/dog_footstep_walk10.wav"
			};
			
			player:EmitSound(walkSounds[math.random(1, #walkSounds)]);
		end
		
		return true;
	end
	
	if (player:Crouching() and player:GetNetVar("hasNimble")) or player:GetCharmEquipped("urn_silence") or player:GetColor().a <= 0 then
		return true;
	end;

	local clothesItem = player:GetClothesEquipped();
	
	if (clothesItem) then
		if (running) then
			if (clothesItem.runSound) then
				if (type(clothesItem.runSound) == "table") then
					player:EmitSound(clothesItem.runSound[math.random(1, #clothesItem.runSound)], 65, math.random(95, 100), 0.5);
				else
					player:EmitSound(clothesItem.runSound, 65, math.random(95, 100), 0.50);
				end;
			end;
		elseif (clothesItem.walkSound) then
			if (type(clothesItem.walkSound) == "table") then
				player:EmitSound(clothesItem.walkSound[math.random(1, #clothesItem.walkSound)], 65, math.random(95, 100), 0.5);
			else
				player:EmitSound(clothesItem.walkSound, 65, math.random(95, 100), 0.5);
			end;
		end;
	end;
	
	player:EmitSound(soundString);

	return true;
end;

-- Called when the local player attempts to zoom.
function Schema:PlayerCanZoom()
	return false;
end

local animalModels = {
	"models/animals/deer1.mdl",
	"models/animals/goat.mdl",
	"models/animals/bear.mdl",
	"models/animal_ragd/piratecat_leopard.mdl",
};

-- Called when an entity's menu options are needed.
function Schema:GetEntityMenuOptions(entity, options)
	if Clockwork.Client:Alive() then
		local curTime = CurTime();
		local clientFaction = Clockwork.Client:GetNetVar("kinisgerOverride") or Clockwork.Client:GetFaction();
	
		if entity:IsPlayer() then
			local entFaction = entity:GetNetVar("kinisgerOverride") or entity:GetFaction();
			
			if clientFaction == "Goreic Warrior" and entFaction ~= "Goreic Warrior" and entity:GetNetVar("tied") != 0 then
				for k, v in pairs(ents.FindInSphere(Clockwork.Client:GetPos(), 512)) do
					if v:GetClass() == "cw_salesman" and v:GetNetworkedString("Name") == "Reaver Despoiler" then
						options["Sell Into Slavery"] = "cw_sellSlave";
						
						break;
					end
				end
			elseif entity:IsWanted() and entity:GetNetVar("tied") != 0 then
				for k, v in pairs(ents.FindInSphere(Clockwork.Client:GetPos(), 512)) do
					if v:GetClass() == "cw_bounty_board" then
						options["Turn In"] = "cw_turnInBounty";
						
						break;
					end
				end
			end
		elseif (entity:GetClass() == "prop_ragdoll") then
			local player = Clockwork.entity:GetPlayer(entity);

			if player then
				local playerFaction = player:GetNetVar("kinisgerOverride") or player:GetFaction();
			
				if clientFaction == "Goreic Warrior" and playerFaction ~= "Goreic Warrior" and player:GetNetVar("tied") != 0 then
					for k, v in pairs(ents.FindInSphere(Clockwork.Client:GetPos(), 512)) do
						if v:GetClass() == "cw_salesman" and v:GetNetworkedString("Name") == "Reaver Despoiler" then
							options["Sell Into Slavery"] = "cw_sellSlave";
							
							break;
						end
					end
				elseif player:IsWanted() and player:GetNetVar("tied") != 0 then
					for k, v in pairs(ents.FindInSphere(Clockwork.Client:GetPos(), 512)) do
						if v:GetClass() == "cw_bounty_board" then
							options["Turn In"] = "cw_turnInBounty";
							
							break;
						end
					end
				end
			end
				
			if (!player or (player and (!player:Alive() or player:GetMoveType() ~= MOVETYPE_OBSERVER))) then
				local model = entity:GetModel();
				
				if table.HasValue(animalModels, entity:GetModel()) then
					--local activeWeapon = Clockwork.Client:GetActiveWeapon();
					
					--if IsValid(activeWeapon) and activeWeapon.isDagger then
						options["Mutilate"] = "cwCorpseMutilate";
						options["Skin"] = "cwCorpseSkin";
					--else
						--if !self.skinNotificationTimer or self.skinNotificationTimer < curTime then
							--Clockwork.chatBox:Add(nil, "icon16/error.png", Color(200, 175, 200, 255), "You must have a dagger equipped in order to skin or mutilate this animal!");
							
							--self.skinNotificationTimer = curTime + 0.5;
						--end
					--end
				elseif entity:GetNWEntity("Player"):IsPlayer() or entity:GetNWEntity("Player") == game.GetWorld() then
					options["Pillage"] = "cw_corpseLoot";
					
					if entity:GetNWInt("bountyKey") then
						for k, v in pairs(ents.FindInSphere(Clockwork.Client:GetPos(), 512)) do
							if v:GetClass() == "cw_bounty_board" then
								options["Turn In"] = "cw_turnInBounty";
								
								break;
							end
						end
					end
				end
			end;
			
			if IsValid(entity:GetNWEntity("CinderBlock")) then
				options["Untie Rope"] = "cwUntieCinderBlock"
			end
		elseif (entity:GetClass() == "cw_belongings") then
			options["Open"] = "cw_belongingsOpen";
		elseif (entity:GetClass() == "prop_physics") then
			local model = entity:GetModel();
			
			if entity:GetNWBool("BIsCinderBlock") == true then
				options["Untie Rope"] = "cwUntieCinderBlock"
			elseif model == "models/animals/bear.mdl" then
				--local activeWeapon = Clockwork.Client:GetActiveWeapon();
				
				--if IsValid(activeWeapon) and activeWeapon.isDagger then
					options["Mutilate"] = "cwCorpseMutilate";
					options["Skin"] = "cwCorpseSkin";
				--[[else
					if !self.skinNotificationTimer or self.skinNotificationTimer < curTime then
						Clockwork.chatBox:Add(nil, "icon16/error.png", Color(200, 175, 200, 255), "You must have a dagger equipped in order to skin or mutilate this animal!");
						
						self.skinNotificationTimer = curTime + 0.5;
					end
				end]]--
			end
		elseif (entity:GetClass() == "cw_radio") then
			if (!entity:IsCrazy()) then
				if (!entity:IsOff()) then
					options["Turn Off"] = "cw_radioToggle";
				else
					options["Turn On"] = "cw_radioToggle";
				end;
				
				if !entity:IsStatic() or (entity:IsStatic() and Clockwork.Client:IsAdmin()) then
					options["Set Frequency"] = function()
						Derma_StringRequest("Частота", "Какую частоту вы хотите установить?", frequency, function(text)
							if ( IsValid(entity) ) then
								Clockwork.entity:ForceMenuOption(entity, "Set Frequency", text);
							end;
						end);
					end;
					
					options["Take"] = "cw_radioTake";
				end
			end;
		elseif (entity:GetClass() == "cw_gramophone") then
			if (!entity:IsOff()) then
				options["Turn Off"] = "cwToggleGramophone";
			else
				options["Turn On"] = "cwToggleGramophone";
			end;
		elseif (entity:GetClass() == "cw_siege_ladder") then
			if entity:GetNWEntity("owner") == Clockwork.Client then
				options["Tear Down"] = "cwTearDownSiegeLadder";
			end
		elseif (entity:GetClass() == "cw_bear_trap") then
			options["Examine"] = "cwItemExamine";
		
			if entity:GetNWString("state") == "trap" then
				if !cwBeliefs or Clockwork.Client:HasBelief("ingenious") then
					options["Reset"] = "cwResetBearTrap";
				end
			else
				if !cwBeliefs or Clockwork.Client:HasBelief("ingenious") then
					options["Set"] = "cwSetBearTrap";
				end
				
				options["Take"] = "cwTakeBearTrap";
			end
		end;
	end;
end;

-- Called when a player's character screen info should be adjusted.
function Schema:PlayerAdjustCharacterScreenInfo(character, info)
	info.clothes = character.clothes;
	info.helmet = character.helmet;
	info.shield = character.shield;
	info.kills = character.kills or 0;
	info.kinisgerOverride = character.kinisgerOverride;
	info.kinisgerOverrideSubfaction = character.kinisgerOverrideSubfaction;
	info.rank = character.rank;
	info.rankOverride = character.rankOverride;
	info.faith = character.faith;
	info.subfaith = character.subfaith;
	info.location = character.location;
end

-- Called when the post progress bar info is needed.
function Schema:GetProgressBarInfoAction(action, percentage)
	if (action == "mutilating") then
		return {text = "Вы срезаете мясо с трупа. Нажмите, ЛКМ чтобы отменить.", percentage = percentage, flash = percentage > 75};
	elseif (action == "skinning") then
		return {text = "Вы снимаете шкуру с трупа животного. Нажмите ЛКМ, чтобы отменить.", percentage = percentage, flash = percentage > 75};
	elseif (action == "reloading") then
		local weaponName = Clockwork.Client:GetNetVar("cwProgressBarVerb") or "shot";
		local ammoName = Clockwork.Client:GetNetVar("cwProgressBarItem") or "weapon";
		
		return {text = "Вы перезаряжаете "..weaponName.." используя "..ammoName.." в качестве патрона. Нажми ЛКМ, чтобы отменить.", percentage = percentage, flash = percentage < 0}
		--return {text = "You are reloading your weapon. Click to cancel.", percentage = percentage, flash = percentage > 75};
	elseif (action == "building") then
		return {text = "Вы устанавливаете осадную лестницу.", percentage = percentage, flash = percentage > 75};
	elseif (action == "bloodTest") then
		return {text = "Вы проверяете чью-то кровь на наличие порчи. Нажмите ЛКМ, чтобы отменить.", percentage = percentage, flash = percentage > 75};
	elseif (action == "hell_teleporting") then
		return {text = "Вы используете темную магию для телепортации в Ад. Нажмите ЛКМ, чтобы отменить.", percentage = percentage, flash = percentage < 10};
	end;
end;

function Schema:PlayerCanSeeDateTime()
    return false;
end;

function Schema:GetTargetPlayerName(player)
	if Clockwork.Client:IsAdmin() and Clockwork.player:IsNoClipping(Clockwork.Client) then
		return player:Name();
	end

	if player:GetSubfaction() == "Praeventor" then
		local clientFaction = Clockwork.Client:GetFaction();
		
		if clientFaction ~= "Gatekeeper" and clientFaction ~= "Holy Hierarchy" then
			return player:Name(true);
		end
	end
	
	return player:Name()
end

function Schema:OverrideTeamColor(player, bRecognized)
	local clientFaction = Clockwork.Client:GetFaction();
	local playerFaction = player:GetFaction();
	local clothesItem = player:GetClothesEquipped();
	local helmetItem = player:GetHelmetEquipped();
	local teamColor;
	
	if Clockwork.Client:IsAdmin() and Clockwork.player:IsNoClipping(Clockwork.Client) then
		return;
	end

	if bRecognized then
		if playerFaction == "Gatekeeper" and clientFaction ~= "Gatekeeper" and clientFaction ~= "Holy Hierarchy" then
			if player:GetSubfaction() == "Praeventor" then
				if (!clothesItem or !clothesItem.faction or (clothesItem.faction and clothesItem.faction ~= playerFaction)) and (!helmetItem or !helmetItem.faction or (helmetItem.faction and helmetItem.faction ~= playerFaction)) then
					teamColor = Color(200, 200, 200, 255);
				end
			end
		elseif playerFaction == "Children of Satan" and clientFaction ~= "Children of Satan" then
			if (!clothesItem or !clothesItem.faction or (clothesItem.faction and clothesItem.faction ~= playerFaction)) and (!helmetItem or !helmetItem.faction or (helmetItem.faction and helmetItem.faction ~= playerFaction)) then
				local kinisgerOverride = player:GetNetVar("kinisgerOverride");
				
				if kinisgerOverride then
					local classTable = Clockwork.class:GetStored()[kinisgerOverride];
					
					if classTable then
						teamColor = _team.GetColor(classTable.index) or Color(200, 200, 200, 255);
					else
						teamColor = Color(200, 200, 200, 255);
					end
				else
					teamColor = Color(200, 200, 200, 255);
				end
			end
		end
	else
		if playerFaction == "Gatekeeper" and clientFaction ~= "Gatekeeper" and clientFaction ~= "Holy Hierarchy" then
			if (!clothesItem or !clothesItem.faction or (clothesItem.faction and clothesItem.faction ~= playerFaction)) and (!helmetItem or !helmetItem.faction or (helmetItem.faction and helmetItem.faction ~= playerFaction)) then
				teamColor = Color(200, 200, 200, 255);
			end
		elseif playerFaction == "Children of Satan" and clientFaction ~= "Children of Satan" then
			if (!clothesItem or !clothesItem.faction or (clothesItem.faction and clothesItem.faction ~= playerFaction)) and (!helmetItem or !helmetItem.faction or (helmetItem.faction and helmetItem.faction ~= playerFaction)) then
				local kinisgerOverride = player:GetNetVar("kinisgerOverride");
				
				if kinisgerOverride then
					local classTable = Clockwork.class:GetStored()[kinisgerOverride];
					
					if classTable then
						teamColor = _team.GetColor(classTable.index) or Color(200, 200, 200, 255);
					else
						teamColor = Color(200, 200, 200, 255);
					end
				else
					teamColor = Color(200, 200, 200, 255);
				end
			end
		end
	end
	
	return teamColor;
end

-- Called when an entity's target ID HUD should be painted.
function Schema:HUDPaintEntityTargetID(entity, info)
	local colorTargetID = Clockwork.option:GetColor("target_id");
	local colorWhite = Clockwork.option:GetColor("white");
	
	if (entity:GetClass() == "prop_physics") then
		local physDesc = entity:GetNetworkedString("physDesc");
		
		if (physDesc != "") then
			info.y = Clockwork.kernel:DrawInfo(physDesc, info.x, info.y, colorWhite, info.alpha);
		end;
	elseif (entity:IsNPC() or entity:IsNextBot()) then
		local name = entity:GetNetworkedString("cw_Name");
		local title = entity:GetNetworkedString("cw_Title");
		
		if (name != "" and title != "") then
			info.y = Clockwork.kernel:DrawInfo(name, info.x, info.y, Color(255, 255, 100, 255), info.alpha);
			info.y = Clockwork.kernel:DrawInfo(title, info.x, info.y, Color(255, 255, 255, 255), info.alpha);
		end;
	end;
end;

-- Called when the target's status should be drawn.
function Schema:DrawTargetPlayerStatus(target, alpha, x, y)
	local informationColor = Clockwork.option:GetColor("information");
	local thirdPerson = "him";
	local mainStatus;
	local untieText;
	local gender = "He";
	local action = Clockwork.player:GetAction(target);
	
	if (target:GetGender() == GENDER_FEMALE) then
		thirdPerson = "her";
		gender = "She";
	end;
	
	if (target:Alive()) then
		if (action == "die") then
			mainStatus = gender.." находится в критическом состоянии и медленно умирает.";
		elseif (action == "die_bleedout") then
			mainStatus = gender.." истекает кровью и медленно умирает.";
		elseif (target:GetRagdollState() == RAGDOLL_KNOCKEDOUT) then
			mainStatus = gender.." явно находится без сознания.";
		end;
		
		if (target:GetNetVar("tied") != 0) then
			if (Clockwork.player:GetAction(Clockwork.Client) == "untie") then
				mainStatus = gender.. " развязывается";
			else
				local untieText;
				
				if (target:GetShootPos():Distance(Clockwork.Client:GetShootPos()) <= 192) then
					if (Clockwork.Client:GetNetVar("tied") == 0) then
						mainStatus = "Нажмите :+use: чтобы развязать "..thirdPerson..".";
						
						untieText = true;
					end;
				end;
				
				if (!untieText) then
					mainStatus = gender.." связан.";
				end;
			end;
		elseif (Clockwork.player:GetAction(Clockwork.Client) == "tie") then
			mainStatus = gender.." связывается.";
		end;
		
		if (mainStatus) then
			y = Clockwork.kernel:DrawInfo(Clockwork.kernel:ParseData(mainStatus), x, y, informationColor, alpha);
		end;
		
		return y;
	end;
end;

-- Called when the target's subfaction should be drawn.
function Schema:DrawTargetPlayerSubfaction(target, alpha, x, y)
	local playerSubfaction = Clockwork.Client:GetNetVar("kinisgerOverrideSubfaction") or Clockwork.Client:GetNetVar("subfaction");
	local targetSubfaction = target:GetNetVar("kinisgerOverrideSubfaction") or target:GetNetVar("subfaction");
	local subfactionText;
	
	if targetSubfaction and targetSubfaction ~= "" and targetSubfaction ~= "N/A" then
		local playerFaction = Clockwork.Client:GetNetVar("kinisgerOverride") or Clockwork.Client:GetFaction();
		local targetFaction = target:GetNetVar("kinisgerOverride") or target:GetFaction();
		local textColor = Color(150, 150, 150, 255);

		if playerFaction == "Goreic Warrior" and targetFaction == "Goreic Warrior" then
			local FACTION = Clockwork.faction:FindByID(playerFaction)
			local SUBFACTION = nil;
			
			if FACTION.subfactions then
				for i = 1, #FACTION.subfactions do
					if FACTION.subfactions[i].name == playerSubfaction then
						SUBFACTION = FACTION.subfactions[i];
						break;
					end
				end
			end
			
			if SUBFACTION and SUBFACTION.rivalry == targetSubfaction then
				subfactionText = "A rival member of "..targetSubfaction..".";
				textColor = Color(255, 0, 0, 255);
			elseif playerSubfaction == targetSubfaction then
				subfactionText = "A fellow member of "..targetSubfaction..".";
				textColor = Color(0, 255, 0, 255);
			else
				subfactionText = "A member of "..targetSubfaction..".";
			end
		-- GetFaction() checks incase they're disguised.
		elseif Clockwork.Client:GetFaction() == "Children of Satan" and target:GetFaction() == "Children of Satan" then
			if target:GetModel() == "models/begotten/satanists/lordvasso/male_56.mdl" then
				subfactionText = "Избранник Сатаны, сам Повелитель Ужаса!";
				textColor = Color(0, 255, 0, 255);
			elseif Clockwork.Client:GetNetVar("subfaction") == target:GetNetVar("subfaction") or Clockwork.Client:GetNetVar("subfaction") == "Kinisger" and target:GetNetVar("kinisgerOverrideSubfaction") then
				local brother = "Брат";
				
				if target:GetGender() == GENDER_FEMALE then
					brother = "Сестра";
				end
				
				if target:GetNetVar("kinisgerOverrideSubfaction") then
					subfactionText = "Это мой родственник. "..brother..". из рода Кининсгеров, под маскировкой "..targetSubfaction..".";
				else
					subfactionText = "Это мой родственник. "..brother..". из рода "..targetSubfaction..".";
				end
				
				textColor = Color(0, 255, 0, 255);
			else
				if target:GetNetVar("kinisgerOverrideSubfaction") then
					subfactionText = "Член родословной Кининсгеров, выдающий себя за "..targetSubfaction..".";
				else
					subfactionText = "Член родословной "..targetSubfaction..".";
				end
			end
		elseif targetFaction ~= "Children of Satan" and targetFaction ~= "Goreic Warrior" then
			if targetSubfaction == "Ministry" then
				if playerSubfaction == targetSubfaction then
					subfactionText = "Знаменитый Министр Святой Иерархии.";
					textColor = Color(0, 255, 0, 255);
				else
					subfactionText = "Знаменитый Министр Святой Иерархии.";
				end
			elseif targetSubfaction == "Inquisition" then
				if playerSubfaction == targetSubfaction then
					subfactionText = "Знакомый мне Инквизитор Святой Иерархии.";
					textColor = Color(0, 255, 0, 255);
				else
					subfactionText = "Инквизитор Святой Иерархии.";
				end
			elseif targetSubfaction == "Knights of Sol" then
				if playerSubfaction == targetSubfaction then
					subfactionText = "Знакомый мне Рыцарь Святой Иерархии.";
					textColor = Color(0, 255, 0, 255);
				else
					subfactionText = "Рыцарь Святой Иерархии.";
				end
			elseif playerFaction == "Gatekeeper" or playerFaction == "Holy Hierarchy" then
				if targetSubfaction == "Auxiliary" then
					if playerSubfaction == targetSubfaction then
						subfactionText = "Знакомый мне Ауксилярий из Священного Ордена Привратников.";
						textColor = Color(0, 255, 0, 255);
					else
						subfactionText = "Ауксилярий из Священного Ордена Привратников.";
					end
				elseif targetSubfaction == "Legionary" then
					if playerSubfaction == targetSubfaction then
						subfactionText = "Знакомый мне Солдат из Священного Ордена Привратников.";
						textColor = Color(0, 255, 0, 255);
					else
						subfactionText = "Солдат из Священного Ордена Привратников.";
					end
				elseif targetSubfaction == "Praeventor" then
					if playerSubfaction == targetSubfaction then
						subfactionText = "Знакомый мне разведчик из Священного Ордена Привратников.";
						textColor = Color(0, 255, 0, 255);
					else
						subfactionText = "Разведчик из Священного Ордена Привратников.";
					end
				end
			elseif playerFaction == "Smog City Pirate" then
				if targetSubfaction == "Voltists" then
					if playerSubfaction == targetSubfaction then
						subfactionText = "Мой Брат-Вольтист из Скрап-Тауна.";
						textColor = Color(0, 255, 0, 255);
					else
						subfactionText = "Один из Вольтистов Скрап-Тауна.";
					end
				else
					if playerSubfaction == targetSubfaction then
						subfactionText = "Мой Кент-Пират из Скрап-Сити.";
						textColor = Color(0, 255, 0, 255);
					else
						subfactionText = "Пират из Скрап-Сити.";
					end
				end
			elseif playerFaction ~= "Wanderer" and playerFaction == targetFaction then
				if playerSubfaction == targetSubfaction then
					subfactionText = "Знакомый мне "..targetSubfaction..".";
					textColor = Color(0, 255, 0, 255);
				else
					subfactionText = "Знакомый мне "..targetSubfaction..".";
				end
			end
		end
		
		if subfactionText then
			return Clockwork.kernel:DrawInfo(Clockwork.kernel:ParseData(subfactionText), x, y, textColor, alpha);
		end
	end
end

-- Called when the target's subfaction should be drawn.
function Schema:DrawTargetPlayerLevel(target, alpha, x, y)
	local playerFaction = Clockwork.Client:GetFaction();
	local targetFaction = target:GetNetVar("kinisgerOverride") or target:GetFaction();
	local levelText;
	
	if playerFaction == "Children of Satan" and targetFaction ~= "Children of Satan" then
		local level = target:GetNetVar("level", 1)
		local textColor = Color(255, 100, 100, 255);
		
		if level < 10 then
			local thirdPerson = "его"
			
			if (target:GetGender() == GENDER_FEMALE) then
				thirdPerson = "её"
			end
			
			levelText = "Свеженький и слабенький поросеннок. Принести "..thirdPerson.." в жертву значит оскорбить Темного Лорда.";
		elseif level >= 10 and level < 20 then
			local thirdPerson = "его"
			
			if (target:GetGender() == GENDER_FEMALE) then
				thirdPerson = "её"
			end

			textColor = Color(200, 150, 150, 255);
			levelText = "Окружаемый легкой аурой силы. Можно было бы принести "..thirdPerson.." , но душа не представляла бы большой ценности для Темного Лорда.";
		elseif level >= 20 and level < 30 then
			textColor = Color(150, 200, 150, 255);
			levelText = "Очень зрелая душа, которая бы порадовала Темного Лорда.";
		elseif level >= 30 then
			local thirdPerson = "его"
			
			if (target:GetGender() == GENDER_FEMALE) then
				thirdPerson = "её"
			end
		
			textColor = Color(100, 255, 100, 255);
			levelText = "Мощнейшая аура силы и власти окружает "..thirdPerson..". Душа, что станет великолепным подарком для Темного Лорда!";
		end
		
		if levelText then
			return Clockwork.kernel:DrawInfo(Clockwork.kernel:ParseData(levelText), x, y, textColor, alpha);
		end
	elseif Clockwork.Client:GetNetVar("subfaction") == "Clan Reaver" and targetFaction ~= "Goreic Warrior" then
		local level = target:GetNetVar("level", 1)
		local textColor = Color(255, 100, 100, 255);
		
		if level < 10 then
			local thirdPerson = "его"
			
			if (target:GetGender() == GENDER_FEMALE) then
				thirdPerson = "её"
			end
			
			levelText = thirdPerson.." выглядит мусором, бездарным и бесполезным.";
		elseif level >= 10 and level < 20 then
			local thirdPerson = "Он"
			
			if (target:GetGender() == GENDER_FEMALE) then
				thirdPerson = "Она"
			end

			textColor = Color(200, 150, 150, 255);
			levelText = "Этот слабый и не будет продаваться за большие деньги на невольничьем рынке.";
		elseif level >= 20 and level < 30 then
			textColor = Color(150, 200, 150, 255);
			levelText = "Если бы был здоров, его можно было бы продать за справедливую цену на невольничьем рынке.";
		elseif level >= 30 then
			local thirdPerson = "Он"
			
			if (target:GetGender() == GENDER_FEMALE) then
				thirdPerson = "Она"
			end
		
			textColor = Color(100, 255, 100, 255);
			levelText = thirdPerson.." выглядит очень хорошо и с радостью приобретен";
		end
		
		if levelText then
			return Clockwork.kernel:DrawInfo(Clockwork.kernel:ParseData(levelText), x, y, textColor, alpha);
		end
	end
end

-- Called when a player's scoreboard options are needed.
function Schema:GetPlayerScoreboardOptions(player, options, menu)
	if (Clockwork.command:FindByID("CharSetCustomClass")) then
		if (Clockwork.player:HasFlags(Clockwork.Client, Clockwork.command:FindByID("CharSetCustomClass").access)) then
			options["Custom Class"] = {};
			options["Custom Class"]["Set"] = function()
				Derma_StringRequest(player:Name(), "What would you like to set their custom class to?", player:GetNetVar("customClass"), function(text)
					Clockwork.kernel:RunCommand("CharSetCustomClass", player:Name(), text);
				end);
			end;
			
			if (player:GetNetVar("customClass") != "") then
				options["Custom Class"]["Take"] = function()
					Clockwork.kernel:RunCommand("CharTakeCustomClass", player:Name());
				end;
			end;
		end;
	end;
	
	if (Clockwork.command:FindByID("CharPermaKill")) then
		if (Clockwork.player:HasFlags(Clockwork.Client, Clockwork.command:FindByID("CharPermaKill").access)) then
			options["Perma-Kill"] = function()
				RunConsoleCommand("aura", "CharPermaKill", player:Name());
			end;
		end;
	end;
	
	if (Clockwork.command:FindByID("CharUnPermaKill")) then
		if (Clockwork.player:HasFlags(Clockwork.Client, Clockwork.command:FindByID("CharUnPermaKill").access)) then
			options["Un-Perma-Kill"] = function()
				RunConsoleCommand("aura", "UnCharPermaKill", player:Name());
			end;
		end;
	end;
end;

-- Called when the local player's colorify should be adjusted.
function Schema:PlayerAdjustColorModify(colorModify)
	local frameTime = FrameTime();
	local interval = FrameTime() / 10;
	local curTime = CurTime();
	
	if (!self.colorModify) then
		self.colorModify = {
			brightness = colorModify["$pp_colour_brightness"],
			contrast = colorModify["$pp_colour_contrast"],
			color = colorModify["$pp_colour_colour"]
		};
	end;

	self.colorModify.brightness = math.Approach(self.colorModify.brightness, colorModify["$pp_colour_brightness"], interval);
	self.colorModify.contrast = math.Approach(self.colorModify.contrast, colorModify["$pp_colour_contrast"], interval);
	self.colorModify.color = math.Approach(self.colorModify.color, colorModify["$pp_colour_colour"], interval);

	colorModify["$pp_colour_brightness"] = self.colorModify.brightness;
	colorModify["$pp_colour_contrast"] = self.colorModify.contrast;
	colorModify["$pp_colour_colour"] = self.colorModify.color;
end;

-- Called to get if local player can get the screen text info.
function Schema:CanGetScreenTextInfo()
	if Clockwork.Client.LoadingText then
		return false;
	end
	
	if self.caughtByCheaple then
		return false;
	end
end

-- Called to get the screen text info.
function Schema:GetScreenTextInfo()
	local blackFadeAlpha = Clockwork.kernel:GetBlackFadeAlpha();
	
	if (Clockwork.Client:GetNetVar("permaKilled")) then
		return {
			alpha = blackFadeAlpha,
			title = "ЭТОТ ПЕРСОНАЖ УБИТ",
			text = "Чтобы создать нового персонажа, перейдите в меню."
		};
	elseif (Clockwork.Client:GetNetVar("beingChloro")) then
		return {
			alpha = 255 - blackFadeAlpha,
			title = "КТО-ТО ИСПОЛЬЗУЕТ НА ТЕБЕ ХЛОРОФОРМ"
		};
	elseif (Clockwork.Client:GetNetVar("beingTied")) then
		return {
			alpha = 255 - blackFadeAlpha,
			title = "ТЕБЯ ПЫТАЮТСЯ СВЯЗАТЬ"
		};
	elseif (Clockwork.Client:GetNetVar("tied") != 0) then
		return {
			alpha = 255 - blackFadeAlpha,
			title = "ТЫ СВЯЗАН"
		};
	end;
end;

-- Called when the local player's character screen faction is needed.
function Schema:GetPlayerCharacterScreenFaction(character)
	if (character.customClass and character.customClass != "") then
		return character.customClass;
	end;
end;

-- Called when the cinematic intro info is needed.
--[[function Schema:GetCinematicIntroInfo()
	return {
		credits = "Designed and developed by "..self:GetAuthor()..".",
		title = Clockwork.config:Get("intro_text_big"):Get(),
		text = Clockwork.config:Get("intro_text_small"):Get()
	};
end;]]--

function Schema:ModifyStatusEffects(tab)
	if Clockwork.Client:HasTrait("clumsy") then
		table.insert(tab, {text = "(-) Неуклюжий", color = Color(200, 40, 40)});
	end

	if Clockwork.Client:HasTrait("crosseyed") then
		table.insert(tab, {text = "(-) Косоглазый", color = Color(200, 40, 40)});
	end
	
	if Clockwork.Client:HasTrait("followed") then
		table.insert(tab, {text = "(-) Преследуемый", color = Color(200, 40, 40)});
	end
	
	if Clockwork.Client:HasTrait("gluttony") then
		table.insert(tab, {text = "(-) Обжора", color = Color(200, 40, 40)});
	end

	if Clockwork.Client:HasTrait("imbecile") then
		table.insert(tab, {text = "(-) Имбецил", color = Color(200, 40, 40)});
	end
	
	if Clockwork.Client:HasTrait("marked") then
		table.insert(tab, {text = "(-) Помеченный", color = Color(200, 40, 40)});
	end
	
	if Clockwork.Client:HasTrait("pacifist") then
		table.insert(tab, {text = "(-) Пацифист", color = Color(200, 40, 40)});
	end
	
	if Clockwork.Client:HasTrait("possessed") then
		table.insert(tab, {text = "(-) Одержимый", color = Color(200, 40, 40)});
	end
	
	if Clockwork.Client:HasTrait("scavenger") then
		table.insert(tab, {text = "(+) Мусорщик", color = Color(0, 225, 0)});
	end
	
	if Clockwork.Client:HasTrait("winded") then
		table.insert(tab, {text = "(-) Задыхающийся", color = Color(200, 40, 40)});
	end
end

function Schema:GetAdminESPInfo(info)
	if (Clockwork.ConVars.NPCSPAWNESP and Clockwork.ConVars.NPCSPAWNESP:GetInt() == 1) then
		if (self.npcSpawns) then
			if (table.IsEmpty(self.npcSpawns)) then
				self.npcSpawns = nil;
				
				return;
			end;
			
			for k, v in pairs (self.npcSpawns) do
				for i, v2 in ipairs(v) do
					if (!v2 or !isvector(v2.pos)) then
						self.npcSpawns[k][i] = nil;
						
						continue;
					end;

					info[#info + 1] = {
						position = v2.pos,
						text = k;
						color = Color(255, 150, 150);
					};
				end
			end;
		end;
	end;
end

-- Called when a text entry has gotten focus.
function Schema:OnTextEntryGetFocus(panel)
	self.textEntryFocused = panel;
end;

-- Called when a text entry has lost focus.
function Schema:OnTextEntryLoseFocus(panel)
	self.textEntryFocused = nil;
end;

-- Called when the top screen HUD should be painted.
function Schema:HUDPaintTopScreen(info) end;

-- Called when the player info text is needed.
function Schema:GetPlayerInfoText(playerInfoText) end;

-- Called to check if a player does have an flag.
function Schema:PlayerDoesHaveFlag(player, flag) end;

-- Called to check if a player does recognise another player.
function Schema:PlayerDoesRecognisePlayer(target, status, isAccurate, realValue)
	local playerFaction = Clockwork.Client:GetNetVar("kinisgerOverride") or Clockwork.Client:GetFaction();
	local targetFaction = target:GetNetVar("kinisgerOverride") or target:GetFaction();

	if targetFaction == "Holy Hierarchy" then
		return true;
	elseif targetFaction == "Gatekeeper" then
		if playerFaction == "Gatekeeper" or playerFaction == "Holy Hierarchy" then
			return true;
		end
	elseif targetFaction == "Pope Adyssa's Gatekeepers" then
		if playerFaction == "Pope Adyssa's Gatekeepers" or playerFaction == "Holy Hierarchy" then
			return true;
		end
	elseif targetFaction == "Goreic Warrior" and playerFaction == "Goreic Warrior" then
		return true;
	elseif targetFaction == "Smog City Pirate" and playerFaction == "Smog City Pirate" then
		return true;
	elseif targetFaction == "The Third Inquisition" and playerFaction == "The Third Inquisition" then
		return true;
	-- GetFaction() checks incase they're disguised.
	elseif target:GetFaction() == "Children of Satan" and Clockwork.Client:GetFaction() == "Children of Satan" then
		return true;
	end
end;

-- Called each tick.
function Schema:Tick()
	local curTime = CurTime();
	
	-- This should stop people from loweirng their FPS to make lockpicking easier, at least w/o external programs.
	if !self.nextFPSCheck or curTime >= self.nextFPSCheck then
		self.nextFPSCheck = curTime + 0.05;
		
		--RunConsoleCommand("fps_max", "300");
		RunConsoleCommand("hud_draw_fixed_reticle", "0");
		RunConsoleCommand("mat_motion_blur_enabled", "1");
	end
	
	RunConsoleCommand("r_3dsky", "1");
	RunConsoleCommand("r_pixelfog", "1");
	RunConsoleCommand("mat_monitorgamma_tv_enabled", "0");

	-- Something is fucked with our SWEPs that is causing clientside models to build up and tank FPS.
	if !self.nextClientsideModelCheck or curTime >= self.nextClientsideModelCheck then
		self.nextClientsideModelCheck = curTime + 10;

		if Clockwork.character:IsPanelOpen() then
			return;
		end
		
		-- dunno why this check is needed but it apparently is
		if IsValid(Clockwork.Client) and Clockwork.Client.GetNW2Bool then
			if Clockwork.Client:GetNW2Bool("pac_in_editor") then
				return;
			end
		end
		
		for k, v in pairs(ents.GetAll()) do
			if string.find(v:GetClass(), "class C_BaseFlex") and v:GetModel() then
				if v:GetPos() == Vector(0, 0, 0) then
					if v:GetModel() == Clockwork.Client:GetModel() or v.noDelete then
						continue;
					end
					
					v:Remove();
				end
			end
		end
		
		--[[if IsValid(Clockwork.inventory.panel) then
			if Clockwork.inventory.panel:IsVisible() then
				Clockwork.inventory.panel:Rebuild();
			end
		end]]--
	end
	
	if self.crows then
		local position = Clockwork.Client:GetPos();
		local trace = {};
			trace.start = Clockwork.Client:GetPos();
			trace.endpos = trace.start + Vector(0, 0, 100000);
			trace.filter = {Clockwork.Client};
		local traceLine = util.TraceLine(trace);
		local soundPlayed = false;

		if (!traceLine.HitSky) then
			for k, v in pairs(self.crows) do
				if (IsValid(v)) then
					v:Remove();
					self.crows[k] = nil;
				end;
			end;
		else
			for k, v in pairs(self.crows) do 
				if (IsValid(v)) then 
					local pitchCheck = v:GetAngles().pitch < 10
					
					if ((v.nextFly or 0) < curTime and pitchCheck) then
						v.nextFly = curTime + math.Rand(0.2, 0.3);
						v:ResetSequence(0);
					end;
					
					local crowPosition = v:GetPos();
					crowPosition.z = position.z;
					
					local forward = v:GetPos() + v:GetForward();
					forward.z = math.Clamp(forward.z, v.position.z - 500, v.position.z + 200);
					
					v:SetPos(forward);
					
					local newPosition = (forward.z < v.position.z - 400);
					local forward = (newPosition and 0 or 6);
					local newAngle = v:GetAngles() + Angle(math.Rand(-30, forward), math.Rand(-10, 10), 0);
					
					if (math.random(1, 10) == 2) then 
						v.angle = newAngle;
					end;
					
					local angle = v.angle or newAngle;
					v.newAngle = v.newAngle or angle;
					local frameTime = FrameTime();
					
					v.newAngle.p = math.Approach(v.newAngle.p, angle.p, frameTime * 164);
					v.newAngle.y = math.Approach(v.newAngle.y, angle.y, frameTime * 34);
					
					local finalAngle = v.newAngle or angle;
					finalAngle.pitch = math.Clamp(finalAngle.pitch, -20, 20);
					
					v:SetAngles(finalAngle);
					
					if not soundPlayed then
						if math.random(1, 1000) == 1 then
							soundPlayed = true;

							v:EmitSound("crow"..math.random(3, 4)..".wav", math.random(20, 30));
						end
					end;
					
					if ((crowPosition - position):Length() > 2000) then
						v:Remove();
						self.crows[k] = nil;
					end;
				else
					self.crows[k] = nil;
				end;
			end;
		end;
		
		if table.IsEmpty(self.crows) then
			self.crows = nil;
		end
	end;
end;

-- Called when the local player attempts to see a class.
function Schema:PlayerCanSeeClass(class) end;

-- Called when the local player's motion blurs should be adjusted.
function Schema:PlayerAdjustMotionBlurs(motionBlurs) end;

-- Called when the scoreboard's class players should be sorted.
function Schema:ScoreboardSortClassPlayers(class, a, b) end;

-- Called when a player's scoreboard class is needed.
function Schema:GetPlayerScoreboardClass(player) end;

-- Called when the target player's fade distance is needed.
function Schema:GetTargetPlayerFadeDistance(player) end;

-- Called when the scoreboard's player info should be adjusted.
function Schema:ScoreboardAdjustPlayerInfo(info) end;

-- Called when the local player's class model info should be adjusted.
function Schema:PlayerAdjustClassModelInfo(class, info) end;

-- Called when the chat box info should be adjusted.
function Schema:ChatBoxAdjustInfo(info) end;

-- Called when a Clockwork ConVar has changed.
function Schema:ClockworkConVarChanged(name, previousValue, newValue)
	if (name == "cwWakeupSequence" and newValue) then
		if newValue == "0" then
			if Clockwork.Client.LoadingText then
				self:FinishWakeupSequence();
			end
		end
	end
end

-- Called to get whether the local player's character screen is visible.
function Schema:GetPlayerCharacterScreenVisible()
	if Schema.contentVerified ~= "verified" then
		return false;
	end
end

function Schema:CanShowTabMenu()
	if self.caughtByCheaple then
		return false;
	end
end

function Schema:PlayerCanSeeBars(class)
	if self.caughtByCheaple then
		return false
	end
end

function Schema:CanPaintChatbox()
	if self.caughtByCheaple then
		return false;
	end;
end;

-- Called to get whether the character menu should be created.
function Schema:ShouldCharacterMenuBeCreated()
	if Schema.contentVerified ~= "verified" then
		if Schema.contentVerified == "unverified" then
			for i = 1, #requiredWorkshopAddons do
				local addon = requiredWorkshopAddons[i];
			
				if !steamworks.IsSubscribed(addon) or !steamworks.ShouldMountAddon(addon) then
					local contentPanel = vgui.Create("cwContentNotification");
					
					contentPanel.missingWorkshop = true;
					contentPanel:Rebuild();
					
					Schema.contentVerified = "missing";
					
					return false;
				end
			end
			
			for k, v in pairs(Schema.requiredMounts) do
				if !IsMounted(k) then
					local contentPanel = vgui.Create("cwContentNotification");
					
					contentPanel:Rebuild();
					
					Schema.contentVerified = "missing";
					
					return false;
				end
			end
			
			Schema.contentVerified = "verified";
		end
	
		return false;
	end
end

-- A function to modify an item's markup tooltip.
function Schema:ModifyItemMarkupTooltip(category, maximumWeight, weight, condition, percentage, name, itemTable, x, y, width, height, frame, bShowWeight)
	if (category == "Melee") then
		local damageTypes = {[2] = "Bullet", [4] = "Slash", [16] = "Pierce", [128] = "Blunt"};
		local meleeMax = GetTable("meleemax");
		local meleeMin = GetTable("meleemin");
		local weaponClass = itemTable.uniqueID;
		local weaponStats = {["attack"] = nil, ["defense"] = nil};
		local weaponTable;
		
		if weaponClass then
			weaponTable = _G.weapons.Get(weaponClass);
			
			if weaponTable then
				category = weaponTable.Category or "Melee";
			end
		end
		
		if string.find(category, "(Begotten)") then
			category = string.sub(category, 12)
		end
		
		if category == "Fisted" then
			category = "Fisted Weapon";
		end
		
		if category == "Sacrificial" then
			category = "Sacrificial Weapon";
		end
		
		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
			frame:AddSpacer(2, Color(0, 0, 0, 0));
		end
		
		if itemTable.requiredbeliefs and #itemTable.requiredbeliefs > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.requiredbeliefs do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.requiredbeliefs[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.requiredbeliefs[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Необходимое Убеждение: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end
		
		if itemTable.onerequiredbelief and #itemTable.onerequiredbelief > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.onerequiredbelief do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.onerequiredbelief[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.onerequiredbelief[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Требуемые убеждения (одно из следующих): ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end

		if weaponTable then
			if weaponTable.AttackTable then
				weaponStats["attack"] = GetTable(weaponTable.AttackTable);
			end
			
			if weaponTable.BlockTable then
				weaponStats["defense"] = GetTable(weaponTable.BlockTable);
			end
			
			if weaponStats["attack"] and weaponStats["defense"] then
				frame:AddText("Показатели Оружия: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);

				if weaponStats["attack"].canaltattack then
					if weaponTable.CanSwipeAttack then
						frame:AddText("Альтернативная Атака: Удар", Color(110, 30, 30), nil, 0.9);
					else
						frame:AddText("Альтернативная Атака: Тычок", Color(110, 30, 30), nil, 0.9);
					end
				end
				
				--[[if weaponStats["defense"].blockdamagetypes then
					local blockDamageTypes = "";
					
					for i = 1, #weaponStats["defense"].blockdamagetypes do
						local blockDamageType = weaponStats["defense"].blockdamagetypes[i];
						
						blockDamageTypes = blockDamageTypes..damageTypes[blockDamageType];
						
						if i < #weaponStats["defense"].blockdamagetypes then
							blockDamageTypes = blockDamageTypes..", ";
						end
					end
					
					if blockDamageTypes ~= "" then
						frame:AddText("Blocks Damage Types: "..blockDamageTypes, Color(110, 30, 30), nil, 0.9);
					end
				end]]--
			
				--[[if weaponStats["defense"].canparry then
					frame:AddText("Can Parry", Color(110, 30, 30), nil, 0.9);
				end]]--
				
				if itemTable.canUseShields then
					frame:AddText("Можно экипировать со щитом.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.isSacrifical then
					frame:AddText("Дает порчу при использовании.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.isLongPolearm then
					frame:AddText("Длинное Древковое Оружие: урон увеличивается до +70% по мере удаления от цели.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.isShortPolearm then
					frame:AddText("Короткое Древковое Оружие: урон увеличивается до +50% по мере удаления от цели.", Color(110, 30, 30), nil, 0.9);
				end
				
				if weaponTable.MultiHit then
					frame:AddText("Размашистое: Может поразить до "..tostring(weaponTable.MultiHit).." целей за один удар.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.hasMinimumRange then
					frame:AddText("Имеет минимальную эффективную дальность", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.hasIncreasedDeflectionWindow then
					frame:AddText("Увеличенное окно идеального блока (0,25 с)", Color(110, 30, 30), nil, 0.9);
				end

				if weaponStats["defense"].parrydifficulty and weaponStats["defense"].parrydifficulty > 0.2 then
					frame:AddText("Увеличивает Окно Парирования", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.unrepairable then
					frame:AddText("Не подлежит ремонту: это оружие не подлежит ремонту и всегда будет получать повреждения, независимо от убеждений.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.attributes then
					if table.HasValue(itemTable.attributes, "aoebuff") then
						frame:AddText("Усиление области действия: +15% к урону от атак, -25% к получаемому урону, 1,5-кратная скорость восстановления выносливости, +2 к остаточному приросту рассудка, иммунитет к ослаблениям рассудка и дезориентации от боевых кличей.", Color(110, 30, 30), nil, 0.9);
					end
				
					if table.HasValue(itemTable.attributes, "concealable") then
						frame:AddText("Скрытый: Не отображается, если экипирован.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "conditionless") then
						frame:AddText("Идеальный: Этот предмет не будет получать повреждения от состояний.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "fear") then
						frame:AddText("Страх: Персонажи противоборствующих фракций будут дезориентированы и начнут терять рассудок, смотря на вас.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "ice") then
						frame:AddText("Холод: Превращает врагов в глыбу льда при попадании.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "grounded") then
						frame:AddText("Заземление: Нельзя атаковать во время бега, но попадание по врагам дезориентирует их, не давая им бежать в течение следующих 3 секунд.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "fire") then
						frame:AddText("Огненное: Поджигает врагов при удачном ударе..", Color(110, 30, 30), nil, 0.9);
					end
				
					if table.HasValue(itemTable.attributes, "lifeleech") then
						frame:AddText("Вампиризм (без щита): 50% нанесенного урона возвращается в виде здоровья.", Color(110, 30, 30), nil, 0.9);
					end
				
					if table.HasValue(itemTable.attributes, "rage") then
						frame:AddText("Ярость (без щита): Скорость передвижения увеличивается на 7%..", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "shieldbreaker") then
						frame:AddText("Большое Лезвие: Наносит дополнительный урон, ломающий щиты.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "bell") then
						frame:AddText("По зом звонит колокол: Дезориентирует всех персонажей поблизости с каждым святым ударом.", Color(110, 30, 30), nil, 0.9);
					end
				end
			
				if weaponStats["attack"].dmgtype then
					frame:AddText("Damage Type: "..damageTypes[weaponStats["attack"].dmgtype] or "Unknown", Color(110, 30, 30), nil, 0.9);
				end
				
				if weaponStats["defense"].partialbulletblock then
					frame:AddText("Повышенное Сопротивление Пулям.", Color(110, 30, 30), nil, 0.9);
				end
				
				if string.find(weaponClass, "begotten_spear") or string.find(weaponClass, "begotten_polearm") then
					if weaponClass ~= "begotten_polearm_quarterstaff" then
						frame:AddText("На Лету: Наносит дополнительный урон по в вашу сторону противникам.", Color(110, 30, 30), nil, 0.9);
					end
				elseif weaponTable.isDagger then
					frame:AddText("Удар в Спину: Наносит двойной урон врагам в спину.", Color(110, 30, 30), nil, 0.9);
					frame:AddText("Добивающее: Наносит двойной урон и 100% урона пробитием сбитым с ног врагам. Каждый удар немного увеличивает время, необходимое сбитым с ног врагам, чтобы подняться.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.requireFaction and not table.IsEmpty(itemTable.requireFaction) and itemTable.requireFaction[1] ~= "Wanderer" then
					frame:AddText("Необходимая Фракция:: "..table.concat(itemTable.requireFaction, ", "), Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.requireFaith and not table.IsEmpty(itemTable.requireFaith) then
					frame:AddText("Необходимая Вера:: "..table.concat(itemTable.requireFaith, " or "), Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.requireSubfaction and not table.IsEmpty(itemTable.requireSubfaction) then
					frame:AddText("Необходимая Подфракция:: "..table.concat(itemTable.requireSubfaction, ", "), Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.excludeFactions and not table.IsEmpty(itemTable.excludeFactions) then
					frame:AddText("Недоступные Фракции:: "..table.concat(itemTable.excludeFactions, ", "), Color(110, 30, 30), nil, 0.9);
				end
				
				if Clockwork.Client:GetFaction() == "Goreic Warrior" and itemTable.excludeSubfactions and not table.IsEmpty(itemTable.excludeSubfactions) then
					frame:AddText("Недоступные Подфракции:: "..table.concat(itemTable.excludeSubfactions, ", "), Color(110, 30, 30), nil, 0.9);
				end
				
				frame:AddText("Weapon Stats: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
				
				if weaponStats["attack"].takeammo then
					local percentage = math.min(weaponStats["attack"].takeammo / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Затраты на Атаку", Color(110, 30, 30), nil, 1);
						frame:AddText("Стоимость каждой атаки ближнего боя в потребляемой выносливости. Может зависеть от модификаторов, таких как травмы или убеждения.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].takeammo).." Stamina", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Attack Cost", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["attack"].delay then
					local max_value = meleeMax.delay;
					local min_value = meleeMin.delay;
					local percentage = 1 - ((weaponStats["attack"].delay - min_value) / (max_value - min_value));
					local toolTip = function(frame)
						frame:AddText("Задержка Атаки", Color(110, 30, 30), nil, 1);
						frame:AddText("Задержка перед началом новой атаки после удара.", Color(225, 200, 200), nil, 0.8);
					end
				
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].delay).."s", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Attack Delay", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["attack"].striketime then
					local max_value = meleeMax.striketime;
					local min_value = meleeMin.striketime;
					local percentage = 1 - ((weaponStats["attack"].striketime - min_value) / (max_value - min_value));
					local toolTip = function(frame)
						frame:AddText("Скорость Удара", Color(110, 30, 30), nil, 1);
						frame:AddText("Задержка перед тем, как ваш удар коснется потенциального противника.", Color(225, 200, 200), nil, 0.8);
					end
				
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].striketime).."s", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Swing Speed", Color(110, 30, 30), toolTip, true);
				end
			
				--[[if weaponStats["attack"].delay and weaponStats["attack"].striketime then
					local min_value = 0.75;
					local max_value = 3.5;
					local attack_speed = weaponStats["attack"].delay + weaponStats["attack"].striketime;
					local percentage = 1 - ((attack_speed - min_value) / (max_value - min_value));

					frame:AddBar(12, {{text = tostring(weaponStats["attack"].delay + weaponStats["attack"].striketime).."s", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Attack Speed", Color(110, 30, 30), toolTip, true);
				end]]--
			
				if weaponStats["attack"].armorpiercing then
					local armorpiercing = weaponStats["attack"].armorpiercing;
					local damagetype = weaponStats["attack"].dmgtype;
					local originalAP = armorpiercing;
					
					if armorpiercing then
						if damagetype == DMG_CLUB then
							armorpiercing = math.Round(armorpiercing * Lerp(condition / 100, 0.7, 1));
						else
							armorpiercing = math.Round(armorpiercing * Lerp(condition / 100, 0.5, 1));
						end
					end
				
					local percentage = math.min(armorpiercing / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Бронебойный Урон", Color(110, 30, 30), nil, 1);
						frame:AddText("Бронебойный урон отражает способность вашего оружия пробивать броню ваших врагов. Более высокие значения означают, что меньшая часть основного урона вашего оружия будет нейтрализована их броней.", Color(225, 200, 200), nil, 0.8);
					end
		
					if armorpiercing < originalAP then
						frame:AddBar(12, {{text = tostring(armorpiercing).." / "..tostring(originalAP), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Armor-Piercing Damage", Color(110, 30, 30), toolTip, true);
					else
						frame:AddBar(12, {{text = tostring(armorpiercing), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Armor-Piercing Damage", Color(110, 30, 30), toolTip, true);
					end
				end
			
				if weaponStats["attack"].primarydamage then
					local damage = weaponStats["attack"].primarydamage;
					local damagetype = weaponStats["attack"].dmgtype;
					local originalDamage = damage;
					
					if damage then
						if damagetype == DMG_CLUB then
							damage = math.Round(damage * Lerp(condition / 100, 0.75, 1));
						elseif damagetype == DMG_SLASH then
							damage = math.Round(damage * Lerp(condition / 100, 0.4, 1));
						elseif damagetype == DMG_VEHICLE then
							damage = math.Round(damage * Lerp(condition / 100, 0.5, 1));
						end
					end

					local percentage = math.min(damage / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Первичный Урон", Color(110, 30, 30), nil, 1);
						frame:AddText("Урон здоровью вашего противника, который наносит ваше оружие. Может быть нейтрализован броней пропорционально бронебойному урону вашего оружия.", Color(225, 200, 200), nil, 0.8);
					end
		
					if damage < originalDamage then
						frame:AddBar(12, {{text = tostring(damage).." / "..tostring(originalDamage), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Primary Damage", Color(110, 30, 30), toolTip, true);
					else
						frame:AddBar(12, {{text = tostring(damage), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Primary Damage", Color(110, 30, 30), toolTip, true);
					end
				end
				
				if weaponStats["attack"].stabilitydamage then
					local percentage = math.min(weaponStats["attack"].stabilitydamage / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Урон по Стабильности", Color(110, 30, 30), nil, 1);
						frame:AddText("Урон по стабильности противника, который наносит ваше оружие. Нанесение достаточного количества урона временно сбивает противника с ног. Может быть нейтрализовано вражеской броней.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].stabilitydamage), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Stability Damage", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["attack"].poisedamage then
					local percentage = math.min(weaponStats["attack"].poisedamage / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Урон по Выносливости", Color(110, 30, 30), nil, 1);
						frame:AddText("Урон по Выносливости противника, наносимый вашим оружием. Нанесение урона выносливости снизит выносливость противника в бою или его способность к бегству. Может быть нейтрализовано вражескими щитами.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].poisedamage), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Stamina Damage", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["attack"].meleearc then
					local percentage = math.min(weaponStats["attack"].meleearc / 60, 60);
					local toolTip = function(frame)
						frame:AddText("Дуга Атаки", Color(110, 30, 30), nil, 1);
						frame:AddText("Дуга Атаки оружия определяет, насколько широко будут размахивать ваши атаки. Следует проявлять осторожность с оружием, имеющим большую дугу, так как союзники могут непреднамеренно быть поражены", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].meleearc).."°", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Weapon Arc", Color(110, 30, 30), toolTip, true);
				end

				if weaponStats["attack"].meleerange then
					local percentage = math.min((weaponStats["attack"].meleerange - 425) / (1500 - 425), (1500 - 425));
					local toolTip = function(frame)
						frame:AddText("Радиус Атаки", Color(110, 30, 30), nil, 1);
						frame:AddText("Диапазон эффективности вашего оружия определяет, как далеко вы можете нанести удар. Некоторые виды оружия, такие как древковое оружие и копья, также наносят разный урон в зависимости от того, насколько далеко вы находитесь от пораженного врага.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].meleerange), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Weapon Range", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["attack"].canaltattack then
					--frame:AddSpacer(4, Color(40, 40, 40, 120));
					
					if weaponStats["attack"].alttakeammo then
						local percentage = math.min(weaponStats["attack"].alttakeammo / 100, 100);
						local toolTip = function(frame)
							frame:AddText("Цена Альтернативной Атаки", Color(110, 30, 30), nil, 1);
							frame:AddText("Стоимость каждой атаки ближнего боя льтернативной стойке в потребляемой выносливости. Может зависеть от модификаторов, таких как травмы или убеждения.", Color(225, 200, 200), nil, 0.8);
						end
			
						frame:AddBar(12, {{text = tostring(weaponStats["attack"].alttakeammo).." Stamina", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Alternate Attack Cost", Color(110, 30, 30), toolTip, true);
					end
					
					if weaponStats["attack"].altarmorpiercing then
						local armorpiercing = weaponStats["attack"].altarmorpiercing;
						local damagetype;
						local originalAP = armorpiercing;
						
						if weaponTable.CanSwipeAttack then
							damagetype = DMG_CLUB;
						else
							damagetype = DMG_VEHICLE;
						end
						
						if armorpiercing then
							if damagetype == DMG_CLUB then
								armorpiercing = math.Round(armorpiercing * Lerp(condition / 100, 0.7, 1));
							else
								armorpiercing = math.Round(armorpiercing * Lerp(condition / 100, 0.5, 1));
							end
						end
					
						local percentage = math.min(armorpiercing / 100, 100);
						local toolTip = function(frame)
							frame:AddText("Альтернативный Бронебойный Урон", Color(110, 30, 30), nil, 1);
							frame:AddText("Бронебойный урон отражает способность альтернативных атак вашего оружия пробивать броню ваших врагов. Более высокие значения означают, что меньшая часть основного урона вашего оружия будет нейтрализована их броней.", Color(225, 200, 200), nil, 0.8);
						end
			
						if armorpiercing < originalAP then
							frame:AddBar(12, {{text = tostring(armorpiercing).." / "..tostring(originalAP), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Alternate Attack Armor-Piercing Damage", Color(110, 30, 30), toolTip, true);
						else
							frame:AddBar(12, {{text = tostring(armorpiercing), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Alternate Attack Armor-Piercing Damage", Color(110, 30, 30), toolTip, true);
						end
					end
				
					if weaponStats["attack"].primarydamage and weaponStats["attack"].altattackdamagemodifier then
						local damage = weaponStats["attack"].primarydamage;
						local damagetype;
						local originalDamage = damage;
						
						if weaponTable.CanSwipeAttack then
							damagetype = DMG_CLUB;
						else
							damagetype = DMG_VEHICLE;
						end
						
						if damage then
							if damagetype == DMG_CLUB then
								damage = math.Round(damage * Lerp(condition / 100, 0.75, 1));
							elseif damagetype == DMG_VEHICLE then
								damage = math.Round(damage * Lerp(condition / 100, 0.5, 1));
							end
						end
					
						local percentage = math.min((damage / 100) * weaponStats["attack"].altattackdamagemodifier, 100);
						local toolTip = function(frame)
							frame:AddText("Альтернативный Урон", Color(110, 30, 30), nil, 1);
							frame:AddText("Урон здоровью вашего противника, который наносит альтернативная атака вашего оружия. Может быть нейтрализован броней, пропорциональной бронебойному урону вашего оружия.", Color(225, 200, 200), nil, 0.8);
						end
			
						if damage < originalDamage then
							frame:AddBar(12, {{text = tostring(math.Round(damage * weaponStats["attack"].altattackdamagemodifier)).." / "..tostring(math.Round(originalDamage * weaponStats["attack"].altattackdamagemodifier)), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Alternate Attack Damage", Color(110, 30, 30), toolTip, true);
						else
							frame:AddBar(12, {{text = tostring(math.Round(damage * weaponStats["attack"].altattackdamagemodifier)), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Alternate Attack Damage", Color(110, 30, 30), toolTip, true);
						end
					end
					
					if weaponStats["attack"].stabilitydamage and weaponStats["attack"].altattackstabilitydamagemodifier then
						local percentage = math.min((weaponStats["attack"].stabilitydamage / 100) * weaponStats["attack"].altattackstabilitydamagemodifier, 100);
						local toolTip = function(frame)
							frame:AddText("Альтернативная Атака: Стабильность", Color(110, 30, 30), nil, 1);
							frame:AddText("Урон по стабильности вашего врага, который наносит альтернативная атака вашего оружия. Нанесение достаточного количества урона временно сбивает вашего врага с ног. Может быть нейтрализовано вражеской броней.", Color(225, 200, 200), nil, 0.8);
						end
			
						frame:AddBar(12, {{text = tostring(weaponStats["attack"].stabilitydamage * weaponStats["attack"].altattackstabilitydamagemodifier), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Alternate Attack Stability Damage", Color(110, 30, 30), toolTip, true);
					end
					
					if weaponStats["attack"].poisedamage and weaponStats["attack"].altattackpoisedamagemodifier then
						local percentage = math.min((weaponStats["attack"].poisedamage / 100) * weaponStats["attack"].altattackpoisedamagemodifier, 100);
						local toolTip = function(frame)
							frame:AddText("Альтернативная Атака: Стамина", Color(110, 30, 30), nil, 1);
							frame:AddText("Урон выносливости противника, наносимый альтернативной атакой вашего оружия. Нанесение урона выносливости снизит выносливость противника в бою или его способность к бегству. Может быть нейтрализовано вражескими щитами.", Color(225, 200, 200), nil, 0.8);
						end
			
						frame:AddBar(12, {{text = tostring(weaponStats["attack"].poisedamage * weaponStats["attack"].altattackpoisedamagemodifier), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Alternate Attack Stamina Damage", Color(110, 30, 30), toolTip, true);
					end
					
					if weaponStats["attack"].altmeleearc then
						local percentage = math.min(weaponStats["attack"].altmeleearc / 60, 60);
						local toolTip = function(frame)
							frame:AddText("Альтернативная Атака: Дуга", Color(110, 30, 30), nil, 1);
							frame:AddText("Дуга вашего альтернативного атакующего оружия определяет, насколько широко будут размахивать ваши альтернативные атаки. Следует проявлять осторожность с оружием, имеющим большую дугу, так как союзники могут непреднамеренно пострадать.", Color(225, 200, 200), nil, 0.8);
						end
			
						frame:AddBar(12, {{text = tostring(weaponStats["attack"].altmeleearc).."°", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Alternate Attack Weapon Arc", Color(110, 30, 30), toolTip, true);
					end

					if weaponStats["attack"].meleerange then
						local newRange = weaponStats["attack"].meleerange;
						
						if weaponStats["attack"].altmeleerange then
							newRange = weaponStats["attack"].altmeleerange;
						--[[else
							if weaponTable.CanSwipeAttack then
								newRange = math.Round(newRange * 0.8);
							else
								newRange = math.Round(newRange * 1.2);
							end]]--
						end
						
						if newRange ~= weaponStats["attack"].meleerange then
							local percentage = math.min((newRange - 425) / (1500 - 425), (1500 - 425));
							local toolTip = function(frame)
								frame:AddText("Альтернативная Атака: Радиус", Color(110, 30, 30), nil, 1);
								frame:AddText("Радиус удара альтернативной атаки вашего оружия определяет, как далеко вы можете нанести удар, находясь в альтернативной стойке. Некоторые виды оружия, такие как древковое оружие и копья, также наносят разный урон в зависимости от того, насколько далеко вы находитесь от пораженного врага.", Color(225, 200, 200), nil, 0.8);
							end
			
							frame:AddBar(12, {{text = tostring(newRange), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Альтернативная Атака: Радиус", Color(110, 30, 30), toolTip, true);
						end
					end
				end
				
				if weaponStats["defense"].blockcone then
					local percentage = math.min(weaponStats["defense"].blockcone / 270, 270);
					local toolTip = function(frame)
						frame:AddText("Радиус Блока", Color(110, 30, 30), nil, 1);
						frame:AddText("Радиус блока вашего оружия или щита определяет, под какими углами блокирование будет эффективным, если вы повернетесь лицом к противнику.", Color(225, 200, 200), nil, 0.8);
					end

					frame:AddBar(12, {{text = tostring(weaponStats["defense"].blockcone).."°", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", noDisplay = true}}, "Радиус Блока", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["defense"].guardblockamount then
					local percentage = math.min(weaponStats["defense"].guardblockamount / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Цена Блока (Минимальная)", Color(110, 30, 30), nil, 1);
						frame:AddText("Минимальная стоимость блока вашего оружия или щита в выносливости, если атака противника наносит какой-либо урон выносливости.", Color(225, 200, 200), nil, 0.8);
					end

					frame:AddBar(12, {{text = tostring(weaponStats["defense"].guardblockamount).." Stamina", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Цена Блока", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["defense"].poiseresistance then
					local percentage = math.min(weaponStats["defense"].poiseresistance / 50, 50);
					local toolTip = function(frame)
						frame:AddText("Блок: Защита от урона по Выносливости", Color(110, 30, 30), nil, 1);
						frame:AddText("Сопротивляемость вашего оружия или щита дополнительному урону по выносливости сверх минимальной стоимости при блокировании.", Color(225, 200, 200), nil, 0.8);
					end

					frame:AddBar(12, {{text = tostring(weaponStats["defense"].poiseresistance).." Stamina", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Защита от урона по Выносливости", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["defense"].canparry then
					if weaponStats["defense"].parrytakestamina then
						local percentage = math.min(weaponStats["defense"].parrytakestamina / 40, 40);
						local toolTip = function(frame)
							frame:AddText("Цена Парирования", Color(110, 30, 30), nil, 1);
							frame:AddText("Стоимость выносливости при попытке парирования. Успешное парирование противника вернет половину этой стоимости.", Color(225, 200, 200), nil, 0.8);
						end

						frame:AddBar(12, {{text = tostring(weaponStats["defense"].parrytakestamina).." Stamina", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Цена Парирования", Color(110, 30, 30), toolTip, true);
					end
					
					if weaponStats["defense"].parrydifficulty then
						local percentage = math.Clamp(weaponStats["defense"].parrydifficulty / 0.3, 0, 1);
						local toolTip = function(frame)
							frame:AddText("Окно Парирования", Color(110, 30, 30), nil, 1);
							frame:AddText("Время в секундах после парирования, в течение которого ваше парирование будет активным. Более высокие значения означают, что парирование будет проще, так как окно будет больше.", Color(225, 200, 200), nil, 0.8);
						end

						frame:AddBar(12, {{text = tostring(weaponStats["defense"].parrydifficulty).."s", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Окно Парирования", Color(110, 30, 30), toolTip, true);
					end
				end
			end
		end
		
		return true;
	elseif (category == "Throwables") then
		local damageTypes = {[2] = "Bullet", [4] = "Slash", [16] = "Pierce", [128] = "Blunt", [1073741824] = "Pierce"};
		local weaponClass = itemTable.uniqueID;
		local weaponStats = {["attack"] = nil, ["defense"] = nil};
		local weaponTable;

		if weaponClass then
			weaponTable = _G.weapons.Get(weaponClass);
			category = weaponTable.Category;
		end
		
		if string.find(category, "(Begotten)") then
			category = string.sub(category, 12)
		end
		
		if category == "Throwables" then
			category = "Throwable";
		end
		
		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
			frame:AddSpacer(2, Color(0, 0, 0, 0));
		end
		
		if itemTable.requiredbeliefs and #itemTable.requiredbeliefs > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.requiredbeliefs do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.requiredbeliefs[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.requiredbeliefs[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Required Beliefs: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end
		
		if itemTable.onerequiredbelief and #itemTable.onerequiredbelief > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.onerequiredbelief do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.onerequiredbelief[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.onerequiredbelief[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Required Beliefs (One Of The Following): ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end

		if weaponTable then
			if weaponTable.AttackTable then
				weaponStats["attack"] = GetTable(weaponTable.AttackTable);
			end
			
			if weaponTable.BlockTable then
				weaponStats["defense"] = GetTable(weaponTable.BlockTable);
			end
			
			if weaponStats["attack"] and weaponStats["defense"] then
				frame:AddText("Параметры Оружия: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
				
				frame:AddText("Легко Ремонтируется: ремонт требует меньших затрат на комплект для ручного ремонта.", Color(110, 30, 30), nil, 0.9);
				frame:AddText("Оружие Дальнего Боя: при получении урона при использовании этого оружия, вы будете обезоружены.", Color(110, 30, 30), nil, 0.9);
				frame:AddText("Переменный урон: урон будет увеличиваться или уменьшаться в зависимости от расстояния до цели. Более удаленные цели получат больший урон.", Color(110, 30, 30), nil, 0.9);
				
				if !weaponStats["defense"].candeflect then
					frame:AddText("Не может совершить Идеальный Блок.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.isSacrifical then
					frame:AddText("Дает порчу при использовании.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.attributes then
					if table.HasValue(itemTable.attributes, "concealable") then
						frame:AddText("Скрытый (не виден на человеке)", Color(110, 30, 30), nil, 0.9);
					end
				
					if table.HasValue(itemTable.attributes, "ice") then
						frame:AddText("Холод: Превращает врагов в глыбу льда при контакте.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "fire") then
						frame:AddText("Зажигательное: Поджигает врагов при контакте.", Color(110, 30, 30), nil, 0.9);
					end
				
					if table.HasValue(itemTable.attributes, "lifeleech") then
						frame:AddText("Кровосос (без щита): 50% нанесенного урона возвращается в виде здоровья.", Color(110, 30, 30), nil, 0.9);
					end
				
					if table.HasValue(itemTable.attributes, "rage") then
						frame:AddText("Ярость (без щита): Скорость передвижения увеличивается на 7%.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "malleable") then
						frame:AddText("Одноразовый: ломается при контакте независимо от каких-либо убеждений, чтобы его нельзя было поднять и отбросить обратно.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "shieldbreaker") then
						frame:AddText("Щитолом: Наносит щитам дополнительный урон.", Color(110, 30, 30), nil, 0.9);
					end
				end
			
				if weaponStats["attack"].dmgtype then
					frame:AddText("Тип Урона: "..damageTypes[weaponStats["attack"].dmgtype] or "Unknown", Color(110, 30, 30), nil, 0.9);
				end
				
				frame:AddText("Показатели Оружия: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
				
				if weaponStats["attack"].takeammo then
					local percentage = math.min(weaponStats["attack"].takeammo / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Цена Атаки", Color(110, 30, 30), nil, 1);
						frame:AddText("Стоимость каждого броска копья в потребляемой выносливости. Может зависеть от модификаторов, таких как травмы или убеждения.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].takeammo).." Выносливости", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Цена Атаки", Color(110, 30, 30), toolTip, true);
				end
			
				if weaponStats["attack"].armorpiercing then
					local percentage = math.min(weaponStats["attack"].armorpiercing / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Бронебойный Урон", Color(110, 30, 30), nil, 1);
						frame:AddText("Урон от бронебойности отражает способность вашего оружия пробивать броню ваших врагов. Более высокие значения означают, что меньший основной урон вашего оружия будет нейтрализован их броней. Для дротиков это может масштабироваться в зависимости от расстояния; цели, находящиеся дальше, получат больше урона.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].armorpiercing), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Бронебойный Урон", Color(110, 30, 30), toolTip, true);
				end
			
				if weaponStats["attack"].primarydamage then
					local percentage = math.min(weaponStats["attack"].primarydamage / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Первичный Урон", Color(110, 30, 30), nil, 1);
						frame:AddText("Урон здоровью вашего врага, который наносит ваше оружие. Может быть нейтрализован броней пропорционально бронебойному урону вашего оружия. Для дротиков это может масштабироваться в зависимости от расстояния; цели, находящиеся дальше, получат больше урона.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].primarydamage), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Урон", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["attack"].stabilitydamage then
					local percentage = math.min(weaponStats["attack"].stabilitydamage / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Урон по Стабильности", Color(110, 30, 30), nil, 1);
						frame:AddText("Урон стабильности вашего врага, который наносит ваше оружие. Нанесение достаточного количества урона временно сбивает вашего врага с ног. Может быть нейтрализовано вражеской броней. Для дротиков это может масштабироваться в зависимости от расстояния; цели, находящиеся дальше, получат больше урона.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].stabilitydamage), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Урон по Стабильности", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["attack"].poisedamage then
					local percentage = math.min(weaponStats["attack"].poisedamage / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Урон по Выносливости", Color(110, 30, 30), nil, 1);
						frame:AddText("Урон выносливости противника, наносимый вашим оружием. Нанесение урона выносливости снизит выносливость противника в бою или его способность к бегству. Может быть нейтрализовано вражескими щитами. Для копий это может масштабироваться в зависимости от расстояния; цели, находящиеся дальше, получат больше урона.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponStats["attack"].poisedamage), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Урон по Выносливости", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponStats["attack"].canaltattack then
					--frame:AddSpacer(4, Color(40, 40, 40, 120));
					
					if weaponStats["attack"].alttakeammo then
						local percentage = math.min(weaponStats["attack"].alttakeammo / 100, 100);
						local toolTip = function(frame)
							frame:AddText("Цена Альтернативной Атаки", Color(110, 30, 30), nil, 1);
							frame:AddText("Стоимость каждой атаки ближнего боя альтернативной стойки в потребляемой выносливости. Может зависеть от модификаторов, таких как травмы или убеждения.", Color(225, 200, 200), nil, 0.8);
						end
			
						frame:AddBar(12, {{text = tostring(weaponStats["attack"].alttakeammo).." Stamina", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Цена Альтернативной Атаки", Color(110, 30, 30), toolTip, true);
					end
					
					if weaponStats["attack"].altarmorpiercing then
						local armorpiercing = weaponStats["attack"].altarmorpiercing;
						local damagetype;
						local originalAP = armorpiercing;
						
						if weaponTable.CanSwipeAttack then
							damagetype = DMG_CLUB;
						else
							damagetype = DMG_VEHICLE;
						end
						
						if armorpiercing then
							if damagetype == DMG_CLUB then
								armorpiercing = math.Round(armorpiercing * Lerp(condition / 100, 0.7, 1));
							else
								armorpiercing = math.Round(armorpiercing * Lerp(condition / 100, 0.5, 1));
							end
						end
					
						local percentage = math.min(armorpiercing / 100, 100);
						local toolTip = function(frame)
							frame:AddText("Альтернативная Атака: Бронебойность", Color(110, 30, 30), nil, 1);
							frame:AddText("Бронебойный урон отражает способность альтернативных атак вашего оружия пробивать броню ваших врагов. Более высокие значения означают, что меньшая часть основного урона вашего оружия будет нейтрализована их броней.", Color(225, 200, 200), nil, 0.8);
						end
			
						if armorpiercing < originalAP then
							frame:AddBar(12, {{text = tostring(armorpiercing).." / "..tostring(originalAP), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Альтернативная Атака: Пробитие", Color(110, 30, 30), toolTip, true);
						else
							frame:AddBar(12, {{text = tostring(armorpiercing), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Альтернативная Атака: Пробитие", Color(110, 30, 30), toolTip, true);
						end
					end
				
					if weaponStats["attack"].primarydamage and weaponStats["attack"].altattackdamagemodifier then
						local damage = weaponStats["attack"].primarydamage;
						local damagetype;
						local originalDamage = damage;
						
						if weaponTable.CanSwipeAttack then
							damagetype = DMG_CLUB;
						else
							damagetype = DMG_VEHICLE;
						end
						
						if damage then
							if damagetype == DMG_CLUB then
								damage = math.Round(damage * Lerp(condition / 100, 0.75, 1));
							elseif damagetype == DMG_VEHICLE then
								damage = math.Round(damage * Lerp(condition / 100, 0.5, 1));
							end
						end
					
						local percentage = math.min((damage / 100) * weaponStats["attack"].altattackdamagemodifier, 100);
						local toolTip = function(frame)
							frame:AddText("Альтернативная Атака: Урон", Color(110, 30, 30), nil, 1);
							frame:AddText("Урон здоровью вашего противника, который наносит альтернативная атака вашего оружия. Может быть нейтрализован броней, пропорциональной бронебойному урону вашего оружия.", Color(225, 200, 200), nil, 0.8);
						end
			
						if damage < originalDamage then
							frame:AddBar(12, {{text = tostring(math.Round(damage * weaponStats["attack"].altattackdamagemodifier)).." / "..tostring(math.Round(originalDamage * weaponStats["attack"].altattackdamagemodifier)), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Alternate Attack Damage", Color(110, 30, 30), toolTip, true);
						else
							frame:AddBar(12, {{text = tostring(math.Round(damage * weaponStats["attack"].altattackdamagemodifier)), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Альтернативная Атака: Урон", Color(110, 30, 30), toolTip, true);
						end
					end
					
					if weaponStats["attack"].stabilitydamage and weaponStats["attack"].altattackstabilitydamagemodifier then
						local percentage = math.min((weaponStats["attack"].stabilitydamage / 100) * weaponStats["attack"].altattackstabilitydamagemodifier, 100);
						local toolTip = function(frame)
							frame:AddText("Альтернативная Атака: Стабильность", Color(110, 30, 30), nil, 1);
							frame:AddText("Урон стабильности вашего врага, который наносит альтернативная атака вашего оружия. Нанесение достаточного количества урона временно сбивает вашего врага с ног. Может быть нейтрализовано вражеской броней.", Color(225, 200, 200), nil, 0.8);
						end
			
						frame:AddBar(12, {{text = tostring(weaponStats["attack"].stabilitydamage * weaponStats["attack"].altattackstabilitydamagemodifier), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Альтернативная Атака: Стабильность", Color(110, 30, 30), toolTip, true);
					end
					
					if weaponStats["attack"].poisedamage and weaponStats["attack"].altattackpoisedamagemodifier then
						local percentage = math.min((weaponStats["attack"].poisedamage / 100) * weaponStats["attack"].altattackpoisedamagemodifier, 100);
						local toolTip = function(frame)
							frame:AddText("Альтернативная Атака: Выносливость", Color(110, 30, 30), nil, 1);
							frame:AddText("Урон выносливости противника, наносимый альтернативной атакой вашего оружия. Нанесение урона выносливости снизит выносливость противника в бою или его способность к бегству. Может быть нейтрализовано вражескими щитами.", Color(225, 200, 200), nil, 0.8);
						end
			
						frame:AddBar(12, {{text = tostring(weaponStats["attack"].poisedamage * weaponStats["attack"].altattackpoisedamagemodifier), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Альтернативная Атака: Выносливость", Color(110, 30, 30), toolTip, true);
					end
					
					if weaponStats["attack"].altmeleearc then
						local percentage = math.min(weaponStats["attack"].altmeleearc / 60, 60);
						local toolTip = function(frame)
							frame:AddText("Альтернативная Атака: Дуга", Color(110, 30, 30), nil, 1);
							frame:AddText("Дуга вашего альтернативного атакующего оружия определяет, насколько широко будут размахивать ваши альтернативные атаки. Следует проявлять осторожность с оружием, имеющим большую дугу, так как союзники могут непреднамеренно пострадать.", Color(225, 200, 200), nil, 0.8);
						end
			
						frame:AddBar(12, {{text = tostring(weaponStats["attack"].altmeleearc).."°", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Альтернативная Атака: Дуга", Color(110, 30, 30), toolTip, true);
					end

					if weaponStats["attack"].meleerange then
						local newRange = weaponStats["attack"].meleerange;
						
						if weaponStats["attack"].altmeleerange then
							newRange = weaponStats["attack"].altmeleerange;
						--[[else
							if weaponTable.CanSwipeAttack then
								newRange = math.Round(newRange * 0.8);
							else
								newRange = math.Round(newRange * 1.2);
							end]]--
						end
						
						local percentage = math.min((newRange - 425) / (1500 - 425), (1500 - 425));
						local toolTip = function(frame)
							frame:AddText("Альтернативная Атака: Радиус", Color(110, 30, 30), nil, 1);
							frame:AddText("Диапазон ближнего боя альтернативной атаки вашего оружия определяет, как далеко вы можете нанести удар, находясь в альтернативной стойке. Некоторые виды оружия, такие как древковое оружие и копья, также наносят разный урон в зависимости от того, насколько далеко вы находитесь от пораженного врага.", Color(225, 200, 200), nil, 0.8);
						end
			
						frame:AddBar(12, {{text = tostring(newRange), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Альтернативная Атака: Радиус", Color(110, 30, 30), toolTip, true);
					end
				end
			end
		end
		
		return true;
	elseif (category == "Shields") then
		local damageTypes = {[2] = "Bullet", [4] = "Slash", [16] = "Pierce", [128] = "Blunt", [DMG_BUCKSHOT] = "Grapeshot"};
		local shieldClass = itemTable.uniqueID;
		local shieldStats = nil;
		
		category = "Shield";
		
		if itemTable.requiredbeliefs then
			if table.HasValue(itemTable.requiredbeliefs, "defender") then
				category = "Great Shield";
			end
		end

		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
			frame:AddSpacer(2, Color(0, 0, 0, 0));
		end;
		
		if itemTable.requiredbeliefs and #itemTable.requiredbeliefs > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.requiredbeliefs do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.requiredbeliefs[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.requiredbeliefs[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Required Beliefs: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end
		
		if itemTable.onerequiredbelief and #itemTable.onerequiredbelief > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.onerequiredbelief do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.onerequiredbelief[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.onerequiredbelief[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Необходимое Убеждение: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end
		
		if shieldClass then
			shieldStats = GetTable(shieldClass);
	
			if shieldStats then
				frame:AddText("Показатели Щита: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);

				if shieldStats.blockdamagetypes then
					local blockDamageTypes = "";
					
					for i = 1, #shieldStats.blockdamagetypes do
						local blockDamageType = shieldStats.blockdamagetypes[i];
						
						if damageTypes[blockDamageType] then
							blockDamageTypes = blockDamageTypes..damageTypes[blockDamageType];
							
							if i < #shieldStats.blockdamagetypes then
								blockDamageTypes = blockDamageTypes..", ";
							end
						end
					end
					
					if blockDamageTypes ~= "" then
						frame:AddText("Защита от Типов Урона: "..blockDamageTypes, Color(110, 30, 30), nil, 0.9);
					end
				end
			
				if shieldStats.canparry then
					frame:AddText("Может Парировать", Color(110, 30, 30), nil, 0.9);
				end
				
				if !shieldStats.candeflect then
					frame:AddText("Нет Идеального Блока", Color(110, 30, 30), nil, 0.9);
				end
				
				if shieldStats.partialbulletblock then
					frame:AddText("Имеет защиту от Пуль", Color(110, 30, 30), nil, 0.9);
				end
				
				if shieldStats.parrydifficulty and shieldStats.parrydifficulty > 0.2 then
					frame:AddText("Увеличенное Окно Парирования", Color(110, 30, 30), nil, 0.9);
				end
				
				if category == "Great Shield" then
					frame:AddText("Большой Щит: снижает скорость бега на 10% при удерживании.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.unrepairable then
					frame:AddText("Единственный: Этот щит не подлежит ремонту и всегда будет получать повреждения, независимо от убеждений.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.attributes then
					if table.HasValue(itemTable.attributes, "conditionless") then
						frame:AddText("Безусловный: этот предмет не будет получать повреждения от состояний.", Color(110, 30, 30), nil, 0.9);
					end
					
					if table.HasValue(itemTable.attributes, "electrified") then
						frame:AddText("Электричество: наносит урон электричеством персонажам, которые ударяют по вашему щиту металлическим оружием или кулаками в металлической броне.", Color(110, 30, 30), nil, 0.9);
					end

					if table.HasValue(itemTable.attributes, "unbreakable") then
						frame:AddText("Сопротивление урону от идеального равновесия: вы невосприимчивы к урону от равновесия во время блокировки и будете нести лишь минимальную стоимость блока.", Color(110, 30, 30), nil, 0.9);
					end
				end
				
				if itemTable.requireFaction and not table.IsEmpty(itemTable.requireFaction) and itemTable.requireFaction[1] ~= "Wanderer" then
					frame:AddText("Необходимая Фракция: "..table.concat(itemTable.requireFaction, ", "), Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.requireFaith and not table.IsEmpty(itemTable.requireFaith) then
					frame:AddText("Необходимая Вера: "..table.concat(itemTable.requireFaith, " or "), Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.requireSubfaction and not table.IsEmpty(itemTable.requireSubfaction) then
					frame:AddText("Необходимая Подфракция: "..table.concat(itemTable.requireSubfaction, ", "), Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.excludeFactions and not table.IsEmpty(itemTable.excludeFactions) then
					frame:AddText("Запрещенная Фракция: "..table.concat(itemTable.excludeFactions, ", "), Color(110, 30, 30), nil, 0.9);
				end
				
				if Clockwork.Client:GetFaction() == "Goreic Warrior" and itemTable.excludeSubfactions and not table.IsEmpty(itemTable.excludeSubfactions) then
					frame:AddText("Запрещенная Подфракция: "..table.concat(itemTable.excludeSubfactions, ", "), Color(110, 30, 30), nil, 0.9);
				end
				
				frame:AddText("Показатели Защиты Щита: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
				
				if shieldStats.blockcone then
					local percentage = math.min(shieldStats.blockcone / 270, 270);
					local toolTip = function(frame)
						frame:AddText("Радиус Блока", Color(110, 30, 30), nil, 1);
						frame:AddText("Конус блока вашего оружия или щита определяет, под какими углами блокирование будет эффективным, если вы повернетесь лицом к противнику.", Color(225, 200, 200), nil, 0.8);
					end

					frame:AddBar(12, {{text = tostring(shieldStats.blockcone).."°", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Block Cone", Color(110, 30, 30), toolTip, true);
				end
				
				if shieldStats.guardblockamount then
					local percentage = math.min(shieldStats.guardblockamount / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Цена Блока", Color(110, 30, 30), nil, 1);
						frame:AddText("Минимальная стоимость блока вашего оружия или щита в выносливости, если атака противника наносит какой-либо урон выносливости.", Color(225, 200, 200), nil, 0.8);
					end

					frame:AddBar(12, {{text = tostring(shieldStats.guardblockamount).." Stamina", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Block Cost (Minimum)", Color(110, 30, 30), toolTip, true);
				end
				
				if shieldStats.poiseresistance then
					local percentage = math.min(shieldStats.poiseresistance / 100, 100);
					local toolTip = function(frame)
						frame:AddText("Защита от урона по Выносливости", Color(110, 30, 30), nil, 1);
						frame:AddText("Сопротивляемость вашего оружия или щита дополнительному урону по выносливости сверх минимальной стоимости при блокировании.", Color(225, 200, 200), nil, 0.8);
					end

					frame:AddBar(12, {{text = tostring(shieldStats.poiseresistance).." Stamina", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Block Stamina Damage Resistance", Color(110, 30, 30), toolTip, true);
				end
				
				if shieldStats.canparry then
					if shieldStats.parrytakestamina then
						local percentage = math.min(shieldStats.parrytakestamina / 40, 40);
						local toolTip = function(frame)
							frame:AddText("Цена Парирования", Color(110, 30, 30), nil, 1);
							frame:AddText("Стоимость выносливости при попытке парирования. Успешное парирование противника вернет половину этой стоимости.", Color(225, 200, 200), nil, 0.8);
						end

						frame:AddBar(12, {{text = tostring(shieldStats.parrytakestamina).." Stamina", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Parry Cost", Color(110, 30, 30), toolTip, true);
					end
					
					if shieldStats.parrydifficulty then
						local percentage = 1 - math.min(shieldStats.parrydifficulty / 0.3, 0.3);
						local toolTip = function(frame)
							frame:AddText("Окно Парирования", Color(110, 30, 30), nil, 1);
							frame:AddText("Время в секундах после парирования, в течение которого ваше парирование будет активным. Более высокие значения означают, что парирование будет проще, так как окно будет больше.", Color(225, 200, 200), nil, 0.8);
						end

						frame:AddBar(12, {{text = tostring(shieldStats.parrydifficulty).."s", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Parry Window", Color(110, 30, 30), toolTip, true);
					end
				end
				
				if shieldStats.damagereduction then
					local percentage = math.min(1 - shieldStats.damagereduction, 0.3);
					local toolTip = function(frame)
						frame:AddText("Снижение Урона Оружия", Color(110, 30, 30), nil, 1);
						frame:AddText("Установленные щиты могут снизить урон от установленного оружия до значения 30% для самых тяжелых щитов.", Color(225, 200, 200), nil, 0.8);
					end

					frame:AddBar(12, {{text = tostring((1 - shieldStats.damagereduction) * 100).."%", percentage = percentage * 333.33, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Weapon Damage Reduction", Color(110, 30, 30), toolTip, true);
				end
			end
		end
		
		return true;
	elseif (category == "Armor" or category == "Helms") and itemTable.effectiveLimbs then
		local damageTypes = {[2] = "Bullet", [4] = "Slash", [16] = "Pierce", [128] = "Blunt"};
		local limbs = {[1] = "Head", [2] = "Chest", [3] = "Stomach", [4] = "Left Arm", [5] = "Right Arm", [6] = "Left Leg", [7] = "Right Leg"};
		local name = itemTable:GetName();
		
		if category == "Helms" then
			category = "Helmet";
		end
		
		if itemTable.weightclass and itemTable.type then
			local material = string.upper(string.sub(itemTable.type, 1, 1))..string.sub(itemTable.type, 2);
			
			frame:AddText(name.." - "..itemTable.weightclass.." "..material.." "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		elseif itemTable.type then
			local material = string.upper(string.sub(itemTable.type, 1, 1))..string.sub(itemTable.type, 2);
		
			frame:AddText(name.." - "..material.." "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		else
			frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		end
		
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
			frame:AddSpacer(2, Color(0, 0, 0, 0));
		end;
		
		if itemTable.requiredbeliefs and #itemTable.requiredbeliefs > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.requiredbeliefs do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.requiredbeliefs[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.requiredbeliefs[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Необходимые Убеждения: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end
		
		if itemTable.onerequiredbelief and #itemTable.onerequiredbelief > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.onerequiredbelief do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.onerequiredbelief[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.onerequiredbelief[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Необходимые Убеждения: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end
		
		frame:AddText("Показатели Защиты: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);

		if itemTable.effectiveLimbs then
			local effectiveLimbsText = "Эффективная Конечность: ";
			
			for i = 1, 7 do
				if itemTable.effectiveLimbs[i] then
					if effectiveLimbsText ~= "Effective Limbs: " then
						effectiveLimbsText = effectiveLimbsText..", ";
					end
					
					effectiveLimbsText = effectiveLimbsText..limbs[i];
				end
			end
		
			frame:AddText(effectiveLimbsText, Color(110, 30, 30), nil, 0.9);
		end
		
		if itemTable.unrepairable then
			frame:AddText("Не подлежит ремонту: эта броня не подлежит ремонту и всегда будет получать повреждения, независимо от убеждений.", Color(110, 30, 30), nil, 0.9);
		end
		
		if itemTable.attributes then
			if table.HasValue(itemTable.attributes, "conditionless") then
				frame:AddText("Идеальный: Этот предмет не будет получать повреждения от состояний.", Color(110, 30, 30), nil, 0.9);
			end
			
			if table.HasValue(itemTable.attributes, "disease_resistance") then
				frame:AddText("Устойчивость к Болезням: этот предмет предотвращает заражение вас болезнями, передающимися воздушно-капельным путем.", Color(110, 30, 30), nil, 0.9);
			end
			
			if table.HasValue(itemTable.attributes, "double_jump") then
				frame:AddText("Двойной Прыжок: этот предмет позволяет вам совершить двойной прыжок, нажав клавишу прыжка, находясь в воздухе.", Color(110, 30, 30), nil, 0.9);
			end
			
			if table.HasValue(itemTable.attributes, "electrified") then
				frame:AddText("Электричество: наносит урон электричеством персонажам, которые бьют вас металлическим оружием или кулаками в металлической броне.", Color(110, 30, 30), nil, 0.9);
			end
		
			if table.HasValue(itemTable.attributes, "fear") then
				frame:AddText("Страх: Персонажи противоборствующих фракций будут дезориентированы и потеряют рассудок, если окажутся рядом с вами.", Color(110, 30, 30), nil, 0.9);
			end
			
			if table.HasValue(itemTable.attributes, "increased_regeneration") then
				frame:AddText("Повышенная регенерация: Утраивает регенерацию здоровья от Дара Великого Древа.", Color(110, 30, 30), nil, 0.9);
			end

			if table.HasValue(itemTable.attributes, "lifeleech") then
				frame:AddText("Кровосос (без щита): 50% нанесенного урона возвращается в виде здоровья.", Color(110, 30, 30), nil, 0.9);
			end
			
			if table.HasValue(itemTable.attributes, "mothers_blessing") then
				frame:AddText("Благословение Матери: снижает прирост порчи на 50%", Color(110, 30, 30), nil, 0.9);
			end
			
			if table.HasValue(itemTable.attributes, "night_vision") then
				frame:AddText("Ночное зрение: Ночное зрение можно активировать, щелкнув правой кнопкой мыши по Чувствам, когда надета эта броня", Color(110, 30, 30), nil, 0.9);
			end

			if table.HasValue(itemTable.attributes, "not_unequippable") then
				frame:AddText("Не подлежит снятию: этот предмет нельзя снять после ношения, и он останется на вас до вашей смерти.", Color(110, 30, 30), nil, 0.9);
			end

			if table.HasValue(itemTable.attributes, "rage") then
				frame:AddText("Ярость: Скорость бега увеличена на 7%. (Без щита)", Color(110, 30, 30), nil, 0.9);
			end
			
			if table.HasValue(itemTable.attributes, "thermal_vision") then
				frame:AddText("Тепловое зрение: Тепловое зрение заменяет Чувства, пока надета эта броня.", Color(110, 30, 30), nil, 0.9);
			end

			if table.HasValue(itemTable.attributes, "solblessed") then
				--frame:AddText("Blessed in Hatred: Equipping will grant the 'Hatred' bar, which will fill upon inflicting or taking damage. 100% 'Hatred' will prevent death from damage but will reduce 'Hatred' to 0%.", Color(110, 30, 30), nil, 0.9);
				frame:AddText("Благословенный Ненавистью: экипировка даст шкалу «Ненависти», которая будет заполняться при получении урона. 100% «Ненависти» предотвратит смерть от урона, но снизит «Ненависть» до 0%.", Color(110, 30, 30), nil, 0.9);
			end

			if table.HasValue(itemTable.attributes, "deathknell") then
				frame:AddText("Похоронный Звон: Получение урона в голову дезориентирует и вас, и нападающего..", Color(110, 30, 30), nil, 0.9);
			end

			if table.HasValue(itemTable.attributes, "bloodtoll") then
				frame:AddText("Кровопотеря: любое повреждение головы всегда приводит к кровотечению.", Color(110, 30, 30), nil, 0.9);
			end
		end
		
		--if itemTable.weight then
			if itemTable.weightclass == "Medium" then
				frame:AddText("Скорость передвижения уменьшена на 15%", Color(110, 30, 30), nil, 0.9);
			elseif itemTable.weightclass == "Heavy" then
				frame:AddText("Скорость передвижения уменьшена на 30%", Color(110, 30, 30), nil, 0.9);
			end
		--end
		
		if itemTable.requireFaction and not table.IsEmpty(itemTable.requireFaction) and itemTable.requireFaction[1] ~= "Wanderer" then
			frame:AddText("Необходимая Фракция: "..table.concat(itemTable.requireFaction, ", "), Color(110, 30, 30), nil, 0.9);
		end
		
		if itemTable.requireFaith and not table.IsEmpty(itemTable.requireFaith) then
			frame:AddText("Необходимая Вера: "..table.concat(itemTable.requireFaith, " or "), Color(110, 30, 30), nil, 0.9);
		end
		
		if itemTable.requireSubfaction and not table.IsEmpty(itemTable.requireSubfaction) then
			frame:AddText("Необходимая Подфракция: "..table.concat(itemTable.requireSubfaction, ", "), Color(110, 30, 30), nil, 0.9);
		end
		
		if itemTable.excludeFactions and not table.IsEmpty(itemTable.excludeFactions) then
			frame:AddText("Запрещенная Фракция: "..table.concat(itemTable.excludeFactions, ", "), Color(110, 30, 30), nil, 0.9);
		end
		
		if Clockwork.Client:GetFaction() == "Goreic Warrior" and itemTable.excludeSubfactions and not table.IsEmpty(itemTable.excludeSubfactions) then
			frame:AddText("Запрещенная Подфракция: "..table.concat(itemTable.excludeSubfactions, ", "), Color(110, 30, 30), nil, 0.9);
		end
		
		frame:AddText("Показатели Брони: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
		
		if itemTable.protection then
			local protection = itemTable.protection;
			local originalProtection = protection;
			
			if (condition < 90) then
				protection = math.Round(protection * (condition / 100));
			end
			
			local percentage = math.min(protection, 100);
			local toolTip = function(frame)
				frame:AddText("Эффективность Брони", Color(110, 30, 30), nil, 1);
				frame:AddText("Эффективность брони, как следует из названия, влияет на то, насколько эффективна ваша броня против вражеских атак. Более высокие значения эффективности брони уменьшают урон от вражеских атак, но в свою очередь могут быть уменьшены бронепробивным уроном противника. Обратите внимание, что чем ниже состояние вашей брони, тем ниже будет ваша защита.", Color(225, 200, 200), nil, 0.8);
			end

			if protection < originalProtection then
				frame:AddBar(12, {{text = tostring(protection).."% / "..originalProtection.."%", percentage = percentage, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Эффективность Брони", Color(110, 30, 30), toolTip, true);
			else
				frame:AddBar(12, {{text = tostring(protection).."%", percentage = percentage, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Эффективность Брони", Color(110, 30, 30), toolTip, true);
			end
		end
		
		if itemTable.bluntScale then
			local percentage = (1 - itemTable.bluntScale) * 100;
			local toolTip = function(frame)
				frame:AddText("Сопроитвление Дробящему Урону", Color(110, 30, 30), nil, 1);
				frame:AddText("Снижает урон от тупого оружия на фиксированную величину независимо от эффективности брони.", Color(225, 200, 200), nil, 0.8);
			end

			frame:AddBar(12, {{text = tostring(percentage).."%", percentage = percentage, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Blunt Damage Resistance", Color(110, 30, 30), toolTip, true);
		end
		
		if itemTable.bulletScale then
			local percentage = (1 - itemTable.bulletScale) * 100;
			local toolTip = function(frame)
				frame:AddText("Защита от Пуль", Color(110, 30, 30), nil, 1);
				frame:AddText("Уменьшает урон от пуль на фиксированную величину независимо от эффективности брони.", Color(225, 200, 200), nil, 0.8);
			end

			frame:AddBar(12, {{text = tostring(percentage).."%", percentage = percentage, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Bullet Damage Resistance", Color(110, 30, 30), toolTip, true);
		end
		
		--[[if itemTable.damageTypeScales and itemTable.damageTypeScales[DMG_FALL] then
			local percentage = -itemTable.damageTypeScales[DMG_FALL];

			frame:AddBar(12, {{text = tostring(percentage).."%", percentage = percentage, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Fall Damage Resistance", Color(110, 30, 30), toolTip, true);
		end]]--
		
		if itemTable.pierceScale then
			local percentage = (1 - itemTable.pierceScale) * 100;
			local toolTip = function(frame)
				frame:AddText("Защита от Пробития", Color(110, 30, 30), nil, 1);
				frame:AddText("Снижает проникающий урон на фиксированную величину независимо от эффективности брони.", Color(225, 200, 200), nil, 0.8);
			end

			frame:AddBar(12, {{text = tostring(percentage).."%", percentage = percentage, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Pierce Damage Resistance", Color(110, 30, 30), toolTip, true);
		end
		
		if itemTable.slashScale then
			local percentage = (1 - itemTable.slashScale) * 100;
			local toolTip = function(frame)
				frame:AddText("Защита от Режущих Атак", Color(110, 30, 30), nil, 1);
				frame:AddText("Снижает урон от ударов на фиксированную величину независимо от эффективности брони.", Color(225, 200, 200), nil, 0.8);
			end

			frame:AddBar(12, {{text = tostring(percentage).."%", percentage = percentage, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Slash Damage Resistance", Color(110, 30, 30), toolTip, true);
		end
		
		if itemTable.stabilityScale then
			local percentage = (1 - itemTable.stabilityScale) * 100;
			local toolTip = function(frame)
				frame:AddText("Защита от урона по Стабильности", Color(110, 30, 30), nil, 1);
				frame:AddText("Снижает урон от устойчивости на фиксированную величину независимо от эффективности брони.", Color(225, 200, 200), nil, 0.8);
			end

			frame:AddBar(12, {{text = tostring(percentage).."%", percentage = percentage, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Защита от урона по Стабильности", Color(110, 30, 30), toolTip, true);
		else
			local armorClass = itemTable.weightclass;
			
			if armorClass then
				local percentage = 0;
			
				if armorClass == "Heavy" then
					percentage = 0.4;
				elseif armorClass == "Medium" then
					percentage = 0.3;
				elseif armorClass == "Light" then
					percentage = 0.15;
				end
				
				percentage = percentage * 100;
				
				local toolTip = function(frame)
					frame:AddText("Защита от Урона по Стабильности", Color(110, 30, 30), nil, 1);
					frame:AddText("Снижает урон от устойчивости на фиксированную величину независимо от эффективности брони.", Color(225, 200, 200), nil, 0.8);
				end
				
				frame:AddBar(12, {{text = tostring(percentage).."%", percentage = percentage, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Защита от урона по Стабильности", Color(110, 30, 30), toolTip, true);
			end
		end
		
		return true;
	elseif (category == "Crossbows") or (category == "Firearms") then
		local weaponAmmo = itemTable:GetData("Ammo");
		local weaponClass = itemTable.uniqueID;
		local weaponTable;

		if string.find(category, "(Begotten)") then
			category = string.gsub(category, "(Begotten) ", "");
		end
		
		if itemTable.firearmType then
			category = itemTable.firearmType;
		end
		
		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
			frame:AddSpacer(2, Color(0, 0, 0, 0));
		end
		
		if itemTable.requireFaith and not table.IsEmpty(itemTable.requireFaith) then
			frame:AddText("Необходимая Вера: "..table.concat(itemTable.requireFaith, " or "), Color(110, 30, 30), nil, 0.9);
		end

		if weaponClass then
			weaponTable = _G.weapons.Get(weaponClass);
			
			if weaponTable then
				frame:AddText("Показатели: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);

				if !weaponTable.MisfireChance or weaponTable.MisfireChance == 0 then
					frame:AddText("Не Клинит", Color(110, 30, 30), nil, 0.9);
				end
				
				frame:AddText("Оружие дальнего боя: при получении урона от с этим экипированным оружием, вы будете обезоружены.", Color(110, 30, 30), nil, 0.9);
				
				if itemTable.unrepairable then
					frame:AddText("Не подлежит ремонту: Это оружие не подлежит ремонту и всегда будет получать повреждения, независимо от убеждений.", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.attributes then
					if table.HasValue(itemTable.attributes, "sundering_shot") then
						frame:AddText("Священные Пули: Игнорирует броню и щиты.", Color(110, 30, 30), nil, 0.9);
					elseif table.HasValue(itemTable.attributes, "sundering_shot_grapeshot") then
						frame:AddText("Священные Пули: Игнорирует броню и щиты.", Color(110, 30, 30), nil, 0.9);
					elseif table.HasValue(itemTable.attributes, "variable_damage") then
						frame:AddText("Переменный урон: урон будет увеличиваться или уменьшаться в зависимости от расстояния до цели. Более удаленные цели получат больший урон.", Color(110, 30, 30), nil, 0.9);
					end
				end

				if itemTable.usesMagazine then
					frame:AddText("Использует Съемные Магазины", Color(110, 30, 30), nil, 0.9);
				elseif itemTable.isRevolver then
					frame:AddText("Имеет Несколько Стволов", Color(110, 30, 30), nil, 0.9);
				elseif itemTable.ammoCapacity and itemTable.ammoCapacity > 1 then
					frame:AddText("Имеет Фиксированный Магазин", Color(110, 30, 30), nil, 0.9);
				else
					frame:AddText("Однозарядное", Color(110, 30, 30), nil, 0.9);
				end
				
				if weaponTable.IgnoresBulletResistance then
					frame:AddText("Игнорирует защиту от Пуль", Color(110, 30, 30), nil, 0.9);
				end
				
				if itemTable.ammoTypes then
					frame:AddText("Универсальный Выстрел: ", Color(110, 30, 30), nil, 0.9);
					
					if itemTable.ammoTypesNice then
						for i = 1, #itemTable.ammoTypesNice do
							frame:AddText("   "..itemTable.ammoTypesNice[i], Color(110, 30, 30), nil, 0.9);
						end
					else
						for i = 1, #itemTable.ammoTypes do
							frame:AddText("   "..itemTable.ammoTypes[i], Color(110, 30, 30), nil, 0.9);
						end
					end
				end
				
				frame:AddText("Показатели Оружия: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
				
				if weaponTable.Primary.IronAccuracy then
					local accuracy = weaponTable.Primary.IronAccuracy;
					local originalAccuracy = accuracy;
					
					if condition and condition < 100 then
						accuracy = math.Truncate(accuracy * Lerp(condition / 100, 1.5, 1), 5);
					end
				
					local percentage = 1 - math.min(accuracy * 2, 1);
					local toolTip = function(frame)
						frame:AddText("Точность в Прицеливании", Color(110, 30, 30), nil, 1);
						frame:AddText("Точность вашего оружия при прицеливании. Может быть дополнительно увеличена приседанием и через убеждение «Снайпер».", Color(225, 200, 200), nil, 0.8);
					end
		
					if accuracy > originalAccuracy then
						frame:AddBar(12, {{text = tostring(accuracy).." / "..tostring(originalAccuracy), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Accuracy (Aiming)", Color(110, 30, 30), toolTip, true);
					else
						frame:AddBar(12, {{text = tostring(accuracy), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Точность в Прицеливании", Color(110, 30, 30), toolTip, true);
					end
				end
				
				if weaponTable.Primary.Spread then
					local accuracy = weaponTable.Primary.Spread;
					local originalAccuracy = accuracy;
					
					if condition and condition < 100 then
						accuracy = math.Truncate(accuracy * Lerp(condition / 100, 1.5, 1), 5);
					end
				
					local percentage = 1 - math.min(accuracy * 2, 1);
					local toolTip = function(frame)
						frame:AddText("Точность от Бедра", Color(110, 30, 30), nil, 1);
						frame:AddText("Точность вашего оружия при стрельбе от бедра. Может быть дополнительно увеличена приседанием.", Color(225, 200, 200), nil, 0.8);
					end
		
					if accuracy > originalAccuracy then
						frame:AddBar(12, {{text = tostring(accuracy).." / "..tostring(originalAccuracy), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Accuracy (Hip-Fire)", Color(110, 30, 30), toolTip, true);
					else
						frame:AddBar(12, {{text = tostring(accuracy), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Accuracy (Hip-Fire)", Color(110, 30, 30), toolTip, true);
					end
				end
				
				if weaponTable.Primary.NumShots > 1 then
					local percentage = math.min(weaponTable.Primary.NumShots, 32) / 32;
					local toolTip = function(frame)
						frame:AddText("Количество Зарядов в Патроне", Color(110, 30, 30), nil, 1);
						frame:AddText("Количество снарядов, выпущенных из этого оружия за один выстрел.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponTable.Primary.NumShots), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Pellet Amount", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponTable.Primary.RPM and weaponTable.Primary.ClipSize > 1 then
					local percentage = math.min(weaponTable.Primary.RPM, 650) / 650;
					local toolTip = function(frame)
						frame:AddText("Скорострельность", Color(110, 30, 30), nil, 1);
						frame:AddText("Количество выпущенных патрон за минуту", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponTable.Primary.RPM), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Rate of Fire", Color(110, 30, 30), toolTip, true);
				end
				
				if itemTable.reloadTime then
					local percentage = math.min(itemTable.reloadTime, 10);
					local toolTip = function(frame)
						frame:AddText("Время Перезарядки", Color(110, 30, 30), nil, 1);
						frame:AddText("Время перезарядки этого оружия в секундах.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(itemTable.reloadTime).."s", percentage = percentage * 10, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Reload Time", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponTable.Primary.Damage then
					local percentage = math.min(weaponTable.Primary.Damage / 80, 80);
					local toolTip = function(frame)
						frame:AddText("Урон при Попадании", Color(110, 30, 30), nil, 1);
						frame:AddText("Урон этого оружия короткий. Обратите внимание, что огнестрельное оружие имеет 100% бронебойность.", Color(225, 200, 200), nil, 0.8);
					end
		
					frame:AddBar(12, {{text = tostring(weaponTable.Primary.Damage), percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Shot Damage", Color(110, 30, 30), toolTip, true);
				end
				
				if weaponAmmo then
					if #weaponAmmo > 0 then
						if itemTable.ammoCapacity > 1 then
							if itemTable.usesMagazine then
								frame:AddText("Loaded Shot: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
								
								local clipItem = Clockwork.item:FindByID(string.gsub(string.lower(weaponAmmo[1]), " ", "_"));
								
								if clipItem then
									frame:AddText(weaponAmmo[1].." ("..tostring(#weaponAmmo).."/"..tostring(clipItem.ammoMagazineSize or weaponTable.Primary.ClipSize)..")", Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
								else
									frame:AddText(weaponAmmo[1].." ("..tostring(#weaponAmmo).."/"..tostring(weaponTable.Primary.ClipSize)..")", Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
								end
							else
								-- Likely is multi-barreled gun.
								frame:AddText("Заряженный Патрон: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
								
								for i = 1, weaponTable.Primary.ClipSize do
									if i <= #weaponAmmo then
										frame:AddText(tostring(i)..") "..weaponAmmo[i], Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
									else
										frame:AddText(tostring(i)..") Пустой Патронник", Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
									end
								end
							end
						else
							frame:AddText("Заряжено: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
							frame:AddText(weaponAmmo[1], Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
						end
					else
						frame:AddText("Это оружие пусто", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
					end
				end
			end
		end
		
		return true;
	elseif (category == "Charms") then
		frame:AddText(name.." - Charm", Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
			frame:AddSpacer(2, Color(0, 0, 0, 0));
		end;
		
		if itemTable.requireFaith and not table.IsEmpty(itemTable.requireFaith) then
			frame:AddText("Необходимая Вера: "..table.concat(itemTable.requireFaith, " or "), Color(110, 30, 30), nil, 0.9);
		end
		
		frame:AddText("Эффекты: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable.charmEffects, Color(110, 30, 30), nil, 0.9);
		
		return true;
	elseif (category == "Shot" and itemTable.ammoMagazineSize) then
		local magazineAmmo = itemTable:GetAmmoMagazine();
		
		if magazineAmmo and magazineAmmo <= 0 then
			frame:AddText("Пустой "..itemTable.name.." - Магазин", Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		else
			frame:AddText(itemTable.name.." - Магазин", Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		end
		
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
			frame:AddSpacer(2, Color(0, 0, 0, 0));
		end
		
		if magazineAmmo and magazineAmmo > 0 then
			frame:AddText("Loaded Shot: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddText(itemTable.ammoName.." ("..tostring(magazineAmmo).."/"..tostring(itemTable.ammoMagazineSize)..")", Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		else
			frame:AddText("Этот магазин пуст.", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
		end
		
		return true;
	elseif (category == "Medical") then
		local hitGroupToString = {
			[HITGROUP_CHEST] = "Chest",
			[HITGROUP_HEAD] = "Head",
			[HITGROUP_STOMACH] = "Stomach",
			[HITGROUP_LEFTARM] = "Left Arm",
			[HITGROUP_RIGHTARM] = "Right Arm",
			[HITGROUP_LEFTLEG] = "Left Leg",
			[HITGROUP_RIGHTLEG] = "Right Leg",
			[HITGROUP_GENERIC] = "Generic",
		};

		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
			frame:AddSpacer(2, Color(0, 0, 0, 0));
		end
		
		frame:AddText("Медицинские Показатели: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);

		if itemTable.applicable then
			frame:AddText("Применимый", Color(110, 30, 30), nil, 0.9);
		elseif itemTable.ingestible then
			frame:AddText("Пригодный для приема внутрь", Color(110, 30, 30), nil, 0.9);
		end
		
		if itemTable.canSave then
			frame:AddText("Может вывести из Критического Состояния", Color(110, 30, 30), nil, 0.9);
		end
		
		if itemTable.curesInjuries then
			frame:AddText("Лечит травмы: ", Color(110, 30, 30), nil, 0.9);
			
			for i = 1, #itemTable.curesInjuries do
				local injury = cwMedicalSystem.cwInjuryTable[itemTable.curesInjuries[i]];
				
				if injury then
					frame:AddText("    "..injury.name, Color(110, 30, 30), nil, 0.9);
				end
			end
		end
		
		if itemTable.stopsBleeding then
			frame:AddText("Останавливает Кровотечение", Color(110, 30, 30), nil, 0.9);
		end
		
		if itemTable.limbs then
			if itemTable.limbs == "all" then
				frame:AddText("Восстанавливаемые Конечности: Все", Color(110, 30, 30), nil, 0.9);
			elseif #itemTable.limbs > 0 then
				frame:AddText("Восстанавливаемые Конечности: ", Color(110, 30, 30), nil, 0.9);
				
				for i = 1, #itemTable.limbs do
					frame:AddText("    "..hitGroupToString[itemTable.limbs[i]], Color(110, 30, 30), nil, 0.9);
				end
			end
		end

		if itemTable.healAmount or itemTable.restoresBlood then
			frame:AddText("Медицинские Показатели: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
		
			if itemTable.healAmount and itemTable.healRepetition then	
				local healAmount = itemTable.healAmount;
				local healRepetition = itemTable.healRepetition;
				local healDelay = itemTable.healDelay;
				local percentage = math.min(healAmount / 100, 100);
				local toolTip = function(frame)
					frame:AddText("Количество Исцеления:", Color(110, 30, 30), nil, 1);
					frame:AddText("Количество здоровья, которое этот предмет будет восстанавливать при каждом повторении.", Color(225, 200, 200), nil, 0.8);
				end

				frame:AddBar(12, {{text = healAmount.." Health", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Heal Amount", Color(110, 30, 30), toolTip, true);
				
				percentage = math.min(healRepetition / 8, 8);
				toolTip = function(frame)
					frame:AddText("Количество Использований", Color(110, 30, 30), nil, 1);
					frame:AddText("Количество раз, которое этот предмет будет восстанавливать здоровье.", Color(225, 200, 200), nil, 0.8);
				end

				frame:AddBar(12, {{text = healRepetition, percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Heal Repetitions", Color(110, 30, 30), toolTip, true);
				
				if itemTable.healDelay then
					percentage = math.min(healDelay / 8, 8);
					toolTip = function(frame)
						frame:AddText("Задержка Исцеления", Color(110, 30, 30), nil, 1);
						frame:AddText("Задержка между каждым повторением лечения этим предметом.", Color(225, 200, 200), nil, 0.8);
					end

					frame:AddBar(12, {{text = healDelay.."s", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Heal Delay", Color(110, 30, 30), toolTip, true);
				end
			end
			
			if itemTable.restoresBlood then	
				local healAmount = itemTable.restoresBlood;
				local percentage = math.min(healAmount / 2500, 2500);
				local toolTip = function(frame)
					frame:AddText("Восстанавливает Кровь", Color(110, 30, 30), nil, 1);
					frame:AddText("Общее количество крови, которое восстановит данный медицинский препарат.", Color(225, 200, 200), nil, 0.8);
				end

				frame:AddBar(12, {{text = healAmount.." Blood", percentage = percentage * 100, color = Color(110, 30, 30), font = "DermaDefault", textless = false, noDisplay = true}}, "Restores Blood", Color(110, 30, 30), toolTip, true);
			end
		end
		
		return true;
	end
	
	if category == "Helms" then -- For helms that don't have armor like hats and hoods.
		category = "Headwear";
		
		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
		end;
		
		return true;
	elseif category == "Catalysts" then
		category = "Catalyst";
		
		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
		end;
		
		return true;
	elseif category == "Backpacks" then
		category = "Backpack";
		
		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
		end;
		
		return true;
	elseif category == "Scripture" and cwScriptures then
		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
		end;
		
		if cwScriptures.booksRead then
			if table.HasValue(cwScriptures.booksRead, itemTable.uniqueID) then
				frame:AddText("Уже Прочитано!", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1);
			end
		end
		
		if cwScriptures.booksCopied then
			if table.HasValue(cwScriptures.booksCopied, itemTable.uniqueID) then
				frame:AddText("Уже Скопировано!", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1);
			end
		end
		
		return true;
	else
		if itemTable.GetCustomName then
			name = itemTable:GetCustomName();
		end
	
		frame:AddText(name.." - "..category, Color(180, 20, 20), "nov_IntroTextSmallDETrooper", 1.15);
		frame:AddText(itemTable("description"), Color(180, 170, 170), "nov_IntroTextSmallDETrooper", 0.8);
		
		if (bShowWeight) then
			frame:AddBar(20, {{text = weight.."kg", percentage = percentage * 100, color = Color(96, 96, 128), font = "DermaDefault", leftTextAlign = false, noDisplay = true}}, "Weight", Color(170, 170, 180));
		end;
	
		if itemTable.requiredbeliefs and #itemTable.requiredbeliefs > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.requiredbeliefs do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.requiredbeliefs[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.requiredbeliefs[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Необходимое Убеждение: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end
		
		if itemTable.onerequiredbelief and #itemTable.onerequiredbelief > 0 then
			local beliefIcons = {};
			
			for i = 1, #itemTable.onerequiredbelief do
				local beliefTable = cwBeliefs:FindBeliefByID(itemTable.onerequiredbelief[i]);
				
				if beliefTable then
					local tooltip = function(frame)
						frame:AddText(beliefTable.name, cwBeliefs:FindBeliefTreeByBelief(beliefTable.uniqueID).color, "Civ5ToolTip4");
						
						if beliefTable.quote then
							frame:AddText(beliefTable.description.."\n", Color(225, 200, 200));
							frame:AddText(beliefTable.quote, Color(128, 90, 90, 240));
						else
							frame:AddText(beliefTable.description, Color(225, 200, 200));
						end
					end
					
					if beliefTable.iconOverride then
						table.insert(beliefIcons, {icon = beliefTable.iconOverride, tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					else
						table.insert(beliefIcons, {icon = "begotten/ui/belieficons/"..itemTable.onerequiredbelief[i]..".png", tooltip = tooltip, button = function() cwBeliefs:OpenTree(nil, nil, nil, nil, nil, nil, beliefTable.uniqueID) end});
					end
				end
			end
			
			frame:AddText("Необходимое Убеждение: ", Color(225, 225, 225), "nov_IntroTextSmallDETrooper", 1.15);
			frame:AddIconRow(beliefIcons, 40);
		end
		
		hook.Run("SubModifyItemMarkupTooltip", category, maximumWeight, weight, condition, percentage, name, itemTable, x, y, width, height, frame, bShowWeight);
		
		return true;
	end
end

netstream.Hook("Archives", function(data)
	Schema.archivesBookList = data;
end);

netstream.Hook("CheapleCutscene", function(data)
	Schema:CheapleCutscene();
end);

netstream.Hook("GoreWarhorn", function(data)
	if cwMusic then
		cwMusic:FadeOutAmbientMusic(2, 1);
	end
	
	Clockwork.Client:EmitSound("warhorns/warhorn_gore.mp3", 60, 100);
	
	util.ScreenShake(Clockwork.Client:GetPos(), 2, 5, 15, 1024);
end);

netstream.Hook("NPCSpawnESPInfo", function(data)
	if data then
		if data[1] then
			Schema.npcSpawns = data[1];
		end
	end
end);

-- Save data icon in top right.
local pentaFade;
local pentaAlpha = 0;
local pentaRotate = 0;
local mPentagram = Material("begotten/pentagram_red.png");

net.Receive("ServerSaveData", function()
	if net.ReadBool() then
		hook.Add("DrawOverlay", "DrawOverlayServerSaveData", function()
			if pentaFade then
				pentaAlpha = math.Approach(pentaAlpha, 0, FrameTime() * 400);
			else
				pentaAlpha = math.Approach(pentaAlpha, 255, FrameTime() * 400);
			end
			
			pentaRotate = (pentaRotate + (FrameTime() * 50)) % 360;
			
			local scrW = ScrW()
			local pentaSize = scrW * 0.032;
			
			surface.SetDrawColor(Color(139, 64, 0, pentaAlpha));
			surface.SetMaterial(mPentagram);
			surface.DrawTexturedRectRotated(scrW - pentaSize, pentaSize, pentaSize, pentaSize, pentaRotate);
		end);
	else
		pentaFade = true;
	
		timer.Simple(4, function()
			pentaFade = nil;
			pentaAlpha = 0;
			pentaRotate = 0;
			hook.Remove("DrawOverlay", "DrawOverlayServerSaveData");
		end);
	end
end);