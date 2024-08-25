--[[
	Begotten III: Jesus Wept
--]]

-- A function to add a new injury to the master table.
function cwMedicalSystem:RegisterInjury(uniqueID, data)
	if (!self.cwInjuryTable) then
		self.cwInjuryTable = {};
	end;

	if (!uniqueID or !isstring(uniqueID) or !data or !istable(data) or table.IsEmpty(data)) then
		return;
	elseif (!data.uniqueID) then
		data.uniqueID = uniqueID;
	end;

	local healItem = data.healItem;

	if (healItem) then
		if (!self.cwCureItems) then
			self.cwCureItems = {};
		end;
		
		if (!self.cwCureItems[healItem]) then
			self.cwCureItems[healItem] = {};
		end;
		
		table.insert(self.cwCureItems[healItem], uniqueID);
	end;
	
	if (!data.limb or !istable(data.limb) or table.IsEmpty(data.limb)) then
		data.limb = table.Copy(self.cwDefaultLimbs);
	end;

	self.cwInjuryTable[uniqueID] = table.Copy(data);
end;

local INJURY = {};
	INJURY.uniqueID = "broken_bone";
	INJURY.name = "Сломанная Кость";
	INJURY.description = "У этой конечности сломана кость!";
	INJURY.symptom = " appears to be broken.";
cwMedicalSystem:RegisterInjury(INJURY.uniqueID, INJURY);

local INJURY = {};
	INJURY.uniqueID = "burn";
	INJURY.name = "Ожог";
	INJURY.description = "У вас сильный ожог этой конечности!";
	INJURY.symptom = " is severely burnt.";
	INJURY.OnReceive = function(injuryTable, player)
		local maxHealth = player:GetMaxHealth();
		
		player:SetMaxHealth(maxHealth);
		player:SetHealth(math.min(player:Health(), maxHealth));
	end;
	INJURY.OnTake = function(injuryTable, player)
		player:SetMaxHealth(player:GetMaxHealth());
	end;
cwMedicalSystem:RegisterInjury(INJURY.uniqueID, INJURY);

local INJURY = {};
	INJURY.uniqueID = "gash";
	INJURY.name = "Рваная Рана";
	INJURY.description = "У вас серьезная рана на этой конечности! Ее нельзя вылечить обычными повязками.";
	INJURY.symptom = " is torn open and bleeding severely.";
	INJURY.causesBleeding = true;
cwMedicalSystem:RegisterInjury(INJURY.uniqueID, INJURY);

local INJURY = {};
	INJURY.uniqueID = "gunshot_wound";
	INJURY.name = "Огнестрельное Ранение";
	INJURY.description = "У тебя в конечности застряла пуля!";
	INJURY.symptom = " has a bullet hole in it with blood gushing out!";
	INJURY.causesBleeding = true;
	INJURY.surgeryInfo = {
		[1] = {tool = "scalpel", texts = {"begins cutting at the site of the gunshot wound in NAME's LIMB with a scalpel."}, messups = {texts = {"slips and accidentally puncture's NAME's LIMB while trying to make an incision."}, damage = 5, causesBleeding = true}},
		[2] = {tool = "forceps", texts = {"uses a pair of forceps to clamp the bullet inside NAME's LIMB, attempting to dislodge it and pull it out."}, messups = {texts = {"fumbles and accidentally drops the bullet inside NAME's open LIMB."}}},
		[3] = {tool = "suture", texts = {"starts stitching the incision of NAME's LIMB with a thread and needle."}, messups = {texts = {"accidentally stabs NAME's LIMB while trying to stich it up!"}, damage = 5, causesBleeding = true}},
	};
cwMedicalSystem:RegisterInjury(INJURY.uniqueID, INJURY);

local INJURY = {};
	INJURY.uniqueID = "infection";
	INJURY.name = "Инфекция";
	INJURY.description = "У вас инфекция в этой конечности!";
	INJURY.symptom = " has an festering infection at the site of a previous wound.";
cwMedicalSystem:RegisterInjury(INJURY.uniqueID, INJURY);

local INJURY = {};
	INJURY.uniqueID = "minor_infection";
	INJURY.name = "Незначительная Инфекция";
	INJURY.description = "У вас незначительная инфекция на этой конечности!";
	INJURY.symptom = " has a small infection at the site of a previous wound.";
cwMedicalSystem:RegisterInjury(INJURY.uniqueID, INJURY);