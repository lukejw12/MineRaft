scoreboard players set #position_valid mr.data 0
execute positioned ~ ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #position_valid mr.data 1
execute positioned ~3 ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #position_valid mr.data 1
execute positioned ~-3 ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #position_valid mr.data 1
execute positioned ~ ~-2.79 ~3 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #position_valid mr.data 1
execute positioned ~ ~-2.79 ~-3 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #position_valid mr.data 1