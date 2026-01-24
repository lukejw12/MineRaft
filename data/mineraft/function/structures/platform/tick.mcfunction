execute positioned ~ ~-2 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run tag @s add mr.support_under

execute positioned ~1 ~-2 ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.5] run tag @s add mr.wall_under
execute positioned ~-1 ~-2 ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.5] run tag @s add mr.wall_under
execute positioned ~ ~-2 ~1 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.5] run tag @s add mr.wall_under
execute positioned ~ ~-2 ~-1 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.5] run tag @s add mr.wall_under

execute unless block ~ ~ ~ barrier run function mineraft:structures/platform/check_supports
execute unless block ~ ~ ~ iron_bars run function mineraft:structures/platform/check_supports

execute positioned ~ ~-2 ~ unless entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run tag @s remove mr.support_under

scoreboard players set #wall_check mr.data 0
execute positioned ~1 ~-2 ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.5] run scoreboard players set #wall_check mr.data 1
execute positioned ~-1 ~-2 ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.5] run scoreboard players set #wall_check mr.data 1
execute positioned ~ ~-2 ~1 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.5] run scoreboard players set #wall_check mr.data 1
execute positioned ~ ~-2 ~-1 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.5] run scoreboard players set #wall_check mr.data 1
execute if score #wall_check mr.data matches 0 run tag @s remove mr.wall_under