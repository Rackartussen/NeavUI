local f = CreateFrame('Frame')
f:RegisterEvent('PLAYER_LOGIN')
--f:RegisterEvent('CHAT_MSG_WHISPER')
--f:RegisterEvent('ACTIVE_TALENT_GROUP_CHANGED')
f:SetScript('OnEvent', function(_, event, ...)
    if (event == 'PLAYER_LOGIN') then
        SetCVar('ScreenshotQuality', 10)
		SetCVar('digSites', 1)
    end
    
    -- if (event == 'CHAT_MSG_WHISPER') then 
        -- if (arg1 == 'raid' or arg1 == 'RAID' or arg1 == 'Raid' or arg1 == 'invite' or arg1 == 'inv') then
            -- SendChatMessage('Autoinvite', 'WHISPER', nil, arg2)
            -- InviteUnit(arg2)
        -- end
    -- end
	
	if (event == 'ACTIVE_TALENT_GROUP_CHANGED') then
		LoadAddOn("Blizzard_GlyphUI")
	end
end)

SlashCmdList['FRAMENAME'] = function()
    local name = GetMouseFocus():GetName()
    
    if (name) then
        DEFAULT_CHAT_FRAME:AddMessage('|cff00FF00   '..name)
    else
        DEFAULT_CHAT_FRAME:AddMessage('|cff00FF00This frame has no name!')
    end
end
SLASH_FRAMENAME1 = '/frame'

SlashCmdList['RELOADUI'] = function()
    ReloadUI()
end
SLASH_RELOADUI1 = '/rl'

WatchFrameTitle:SetAlpha(0)

local p1, p2, p3, p4, p5 = WatchFrameCollapseExpandButton:GetPoint()
WatchFrameCollapseExpandButton:ClearAllPoints()
WatchFrameCollapseExpandButton:SetPoint(p1, p2, p3, p4 - 15, p5)

local a, b, c, d, e = RaidFrameNotInRaidRaidBrowserButton:GetPoint() 
RaidFrameNotInRaidRaidBrowserButton:SetPoint(a, b, c, d, e - 25)

TicketStatusFrame:ClearAllPoints()
TicketStatusFrame:SetPoint('BOTTOMRIGHT', UIParent, 0, 0)

--WorldMapShowDigSites:ClearAllPoints()
--WorldMapShowDigSites:SetPoint('LEFT', WorldMapTrackQuest, 'RIGHT', 70, 0)
WorldMapShowDigSites:HookScript('OnShow', function(self) self:Hide() end)

--[[
function UnitAura() 
    return "TestAura", nil, "Interface\\Icons\\Spell_Nature_RavenForm", 9, nil, 120, 120, 1, 0 
end
--]]
