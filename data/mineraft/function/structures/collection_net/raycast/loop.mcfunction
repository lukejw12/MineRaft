tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute if block ~ ~ ~ water run return run function mineraft:structures/collection_net/raycast/hit

execute if score @s mr.raycast_dist matches ..0 run return run kill @s
execute positioned ^ ^ ^0.1 run function mineraft:structures/collection_net/raycast/loop