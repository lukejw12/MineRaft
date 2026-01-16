tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute if block ~ ~ ~ water run return run function mineraft:core/player/cup/fill_cup_hit

execute if score @s mr.raycast_dist matches ..0 run return run kill @s
execute if score @s mr.raycast_dist matches ..0 run return run tag @a[tag=mr.fill_water,sort=nearest] remove mr.fill_water
execute positioned ^ ^ ^0.1 run function mineraft:core/player/cup/fill_cup_loop