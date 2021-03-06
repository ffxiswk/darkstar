-----------------------------------
-- Area:  VeLugannon Palace
-- NPC:   qm2 (???)
-- Notes: Used to spawn Brigandish Blade
-- !pos 0.1 0.1 -286 177
-----------------------------------
local ID = require("scripts/zones/VeLugannon_Palace/IDs");
require("scripts/globals/status");

function onTrade(player,npc,trade)
    if (not GetMobByID(ID.mob.BRIGANDISH_BLADE):isSpawned() and trade:hasItemQty(16575,1) and trade:getItemCount() == 1) then -- Trade Curtana
        player:tradeComplete();
        SpawnMob(ID.mob.BRIGANDISH_BLADE):updateClaim(player);
        npc:setStatus(dsp.status.DISAPPEAR);
    end
end;

function onTrigger(player,npc)
    player:startEvent(2);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
