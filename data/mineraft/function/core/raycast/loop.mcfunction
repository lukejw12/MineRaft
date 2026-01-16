execute store result score @s mr.prev_x run data get entity @s Pos[0] 10
execute store result score @s mr.prev_z run data get entity @s Pos[2] 10

tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute unless block ~ ~ ~ #mineraft:nonsolid if block ~ ~ ~ barrier if entity @e[type=item_display,tag=mr.foundation,distance=..2] run data modify storage mineraft:temp hit_function set from entity @s data.hit_function
execute unless block ~ ~ ~ #mineraft:nonsolid if block ~ ~ ~ barrier if entity @e[type=item_display,tag=mr.foundation,distance=..2] run return run function mineraft:core/raycast/call_hit with storage mineraft:temp

execute if score @s mr.raycast_dist matches ..0 run return run function mineraft:core/raycast/miss
execute positioned ^ ^ ^0.1 run function mineraft:core/raycast/loop_start
