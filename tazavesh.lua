-- upvalue the globals
local _G = getfenv(0)
local LibStub = _G.LibStub
local LE_EXPANSION_TAZAVESH = _G.LE_EXPANSION_TAZAVESH

local modName = 'Tazavesh'
local LazyCurve = LibStub('AceAddon-3.0'):GetAddon('LazyCurve')
local LazyCurveTazavesh = LazyCurve:NewModule(modName)
LazyCurveTazavesh.EXPANSION = LE_EXPANSION_TAZAVESH

function LazyCurveTazavesh:GetInfoTable()
    -- source: wowhead.com and https://wow.tools/dbc/?dbc=groupfinderactivity&build=9.1.0.39804#page=1&search=tazavesh

    local infoTable = {
        {
            shortName = "TAZ",
            alternativeKeyword = "taza",
            groupId = 272,
            achievements = {
                normal = 15177,
                curve = 15178,
                edge = 15178,
                mythic = {
                    15177, --normal-mode
                    15178, --hard-mode
                },
            },
        },
    }
    return infoTable
end
