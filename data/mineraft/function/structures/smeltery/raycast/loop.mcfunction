tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute if block ~ ~ ~ barrier if entity @e[type=item_display,tag=mr.foundation,distance=..2] run return run function mineraft:structures/smeltery/raycast/hit
execute if block ~ ~ ~ barrier if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run function mineraft:structures/smeltery/raycast/hit

execute if score @s mr.raycast_dist matches ..0 run return run kill @s
execute positioned ^ ^ ^0.1 run function mineraft:structures/smeltery/raycast/loop