-----------------------------------
--  Area: Northern San d'Oria
--  NPC:  Arnau
--  Involved in Mission: Save the Children
--  @pos 148 0 139 231
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/missions");
require("scripts/zones/Northern_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
	if(player:getCurrentMission(SANDORIA) == SAVE_THE_CHILDREN and player:getVar("MissionStatus") < 2) then
		player:startEvent(0x02b5);
		player:setVar("MissionStatus",2);
	elseif(player:hasCompletedMission(SANDORIA,SAVE_THE_CHILDREN) and player:getVar("OptionalCSforSTC") == 1) then
		player:startEvent(0x02b6);
		player:setVar("OptionalCSforSTC",0);
	else
		player:startEvent(0x0014);
	end
	
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
end;