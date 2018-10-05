-----------------------------------
-- Area: Seas Serpent Grotto
--  MOB: Royal Leech
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 804, 1, dsp.regime.type.GROUNDS)
end;