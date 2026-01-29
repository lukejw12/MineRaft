tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute if block ~ ~ ~ barrier if entity @e[type=item_display,tag=mr.foundation,distance=..2] run return run function mineraft:structures/stairs/raycast/preview/hit
execute if block ~ ~ ~ barrier if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run function mineraft:structures/stairs/raycast/preview/hit
execute if block ~ ~ ~ iron_bars if entity @e[type=item_display,tag=mr.support_display,distance=..2] run return run function mineraft:structures/stairs/raycast/preview/hit

execute if score @s mr.raycast_dist matches ..0 run function mineraft:structures/stairs/raycast/preview/miss
execute if score @s mr.raycast_dist matches ..0 run return run kill @s

execute positioned ^ ^ ^0.1 run function mineraft:structures/stairs/raycast/preview/loop