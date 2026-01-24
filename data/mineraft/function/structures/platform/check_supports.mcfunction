scoreboard players set #has_support mr.data 0
execute positioned ~ ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #has_support mr.data 1
execute positioned ~3 ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #has_support mr.data 1
execute positioned ~-3 ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #has_support mr.data 1
execute positioned ~ ~-2.79 ~3 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #has_support mr.data 1
execute positioned ~ ~-2.79 ~-3 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #has_support mr.data 1
execute if score #has_support mr.data matches 1 run return 1

execute positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..1,tag=mr.support_under] run scoreboard players set #has_support mr.data 1
execute positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..1,tag=mr.support_under] run scoreboard players set #has_support mr.data 1
execute positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.platform_display,distance=..1,tag=mr.support_under] run scoreboard players set #has_support mr.data 1
execute positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.platform_display,distance=..1,tag=mr.support_under] run scoreboard players set #has_support mr.data 1

execute if score #has_support mr.data matches 1 run return 1

execute if entity @s[tag=mr.wall_under] run scoreboard players set #has_support mr.data 1

execute if score #has_support mr.data matches 0 run function mineraft:structures/platform/destroy