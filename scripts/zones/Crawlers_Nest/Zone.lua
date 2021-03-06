-----------------------------------
--
-- Zone: Crawlers_Nest (197)
--
-----------------------------------
local ID = require("scripts/zones/Crawlers_Nest/IDs")
require("scripts/globals/conquest")
-----------------------------------

function onInitialize(zone)
    UpdateTreasureSpawnPoint(ID.npc.CNEST_TREASURE_CHEST)
    UpdateTreasureSpawnPoint(ID.npc.CNEST_TREASURE_COFFER)
end

function onZoneIn(player,prevZone)
    local cs = -1
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(380.617,-34.61,4.581,59)
    end
    return cs
end

function onConquestUpdate(zone, updatetype)
    dsp.conq.onConquestUpdate(zone, updatetype)
end

function onRegionEnter(player,region)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end