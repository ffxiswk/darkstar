-----------------------------------
-- Area: Windurst Woods
--  NPC: Mono Nchaa
-- Standard Merchant NPC
-- Confirmed shop stock, August 2013
-----------------------------------
require("scripts/globals/shop");
local ID = require("scripts/zones/Windurst_Woods/IDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:showText(npc,ID.text.MONONCHAA_SHOP_DIALOG);

    stock = {
        17318,     3,2,     --Wooden Arrow
        17308,    55,2,     --Hawkeye
        17216,   165,2,     --Light Crossbow

        17319,     4,3,     --Bone Arrow
        17336,     5,3,     --Crossbow Bolt
        5009,  2649,3      --Scroll of Hunter's Prelude
    }
    dsp.shop.nation(player, stock, dsp.nation.WINDURST);

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
