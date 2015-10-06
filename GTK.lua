GamonKillTimer = CreateFrame("Frame",nil); -- Event Frame
GamonKillTimer.ACE = AceLibrary("AceAddon-2.0"):new("CandyBar-2.0")
GamonKillTimer:RegisterEvent("ADDON_LOADED")
GamonKillTimer:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH")

function GamonKillTimer:OnEvent()
	if event == "CHAT_MSG_COMBAT_HOSTILE_DEATH" then
		if arg1 == "Gamon dies." then
			GamonKillTimer:ShowBar()
		end
		
	elseif event == "ADDON_LOADED" and arg1 == "GamonKillTimer" then
		local name = "Gamon"
		GamonKillTimer.ACE:RegisterCandyBar(name, 360, "Gamon Respawn", nil, "yellow")
		GamonKillTimer.ACE:SetCandyBarScale(name, 1)
		GamonKillTimer.ACE:SetCandyBarWidth(name, 200) 
		GamonKillTimer.ACE:SetCandyBarPoint(name, "CENTER",nil,nil,nil,200)
	
	
	end
end

GamonKillTimer:SetScript("OnEvent", GamonKillTimer.OnEvent)

function GamonKillTimer:ShowBar()
	GamonKillTimer.ACE:StartCandyBar("Gamon")
end