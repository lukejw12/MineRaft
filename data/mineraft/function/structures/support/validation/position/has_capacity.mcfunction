scoreboard players set #has_capacity mr.data 0

execute positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] at @s run function mineraft:structures/support/validation/position/count_platforms
execute positioned ~ ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] if score #platform_count mr.data matches ..4 run scoreboard players set #has_capacity mr.data 1

execute if score #has_capacity mr.data matches 1 run return 1

execute positioned ~3 ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] at @s run function mineraft:structures/support/validation/position/count_platforms
execute positioned ~3 ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] if score #platform_count mr.data matches ..4 run scoreboard players set #has_capacity mr.data 1

execute if score #has_capacity mr.data matches 1 run return 1

execute positioned ~-3 ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] at @s run function mineraft:structures/support/validation/position/count_platforms
execute positioned ~-3 ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] if score #platform_count mr.data matches ..4 run scoreboard players set #has_capacity mr.data 1

execute if score #has_capacity mr.data matches 1 run return 1

execute positioned ~ ~-2.79 ~3 as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] at @s run function mineraft:structures/support/validation/position/count_platforms
execute positioned ~ ~-2.79 ~3 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] if score #platform_count mr.data matches ..4 run scoreboard players set #has_capacity mr.data 1

execute if score #has_capacity mr.data matches 1 run return 1

execute positioned ~ ~-2.79 ~-3 as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] at @s run function mineraft:structures/support/validation/position/count_platforms
execute positioned ~ ~-2.79 ~-3 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] if score #platform_count mr.data matches ..4 run scoreboard players set #has_capacity mr.data 1