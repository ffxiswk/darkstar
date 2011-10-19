-----------------------------------
-- Area: Lower Jeuno
-- NPC: Promurouve
-- Map Seller NPC
-----------------------------------

package.loaded["scripts/globals/quests"] = nil;
require("scripts/globals/quests");
require("scripts/globals/settings");
require("scripts/zones/Lower_Jeuno/textids");
require("scripts/globals/keyitems");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

mapVar = 0;

	if player:hasKeyItem(MAP_OF_THE_SANDORIA_AREA) then
		   mapVar = mapVar + 4;
	end
	if player:hasKeyItem(MAP_OF_THE_BASTOK_AREA) then
		   mapVar = mapVar + 8;
	end
	if player:hasKeyItem(MAP_OF_THE_WINDURST_AREA) then
		   mapVar = mapVar + 16;
	end
	if player:hasKeyItem(MAP_OF_THE_JEUNO_AREA) then
		  mapVar = mapVar + 32;
	end
	if player:hasKeyItem(MAP_OF_QUFIM_ISLAND) then
		   mapVar = mapVar +  64;
	end
	if player:hasKeyItem(MAP_OF_THE_ELDIEME_NECROPOLIS) then
		   mapVar = mapVar +  128;
	end
	if player:hasKeyItem(MAP_OF_THE_GARLAIGE_CITADEL) then
		   mapVar = mapVar +  256;
	end
	if player:hasKeyItem(MAP_OF_THE_ELSHIMO_REGIONS) then
		   mapVar = mapVar +  512;
	end

    player:startEvent(0x2710, mapVar);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID2: %u",csid);
--printf("RESULT2: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
keyItem = option;
gil = 0;

  if (csid==0x2710 and option ~= 1073741824) then
	if option == MAP_OF_THE_SANDORIA_AREA then
		gil = 200;
 	elseif option == MAP_OF_THE_BASTOK_AREA then
		gil = 200;
	elseif option == MAP_OF_THE_WINDURST_AREA then
		gil = 200;
	elseif option == MAP_OF_THE_JEUNO_AREA then
		gil = 600;
	elseif option == MAP_OF_QUFIM_ISLAND then
    		gil = 3000;
	elseif option == MAP_OF_THE_ELDIEME_NECROPOLIS then
	 	gil = 3000;
        elseif option == MAP_OF_THE_GARLAIGE_CITADEL then
   		gil = 3000; 
	elseif option == MAP_OF_THE_ELSHIMO_REGIONS then 
  		gil = 3000;
	end

	if (gil > 0 and player:getGil() >= gil) then
	   player:setGil(player:getGil() - gil);
	   player:addKeyItem(option);
	   player:messageSpecial(KEYITEM_OBTAINED,keyItem); 
	else
	   player:messageSpecial(6383);
    	end
  end
end;




